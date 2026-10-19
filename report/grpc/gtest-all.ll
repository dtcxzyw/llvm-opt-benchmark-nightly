Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/gtest-all?download=true
inline.NumInlined: 9417
inline.NumDeleted: 2443
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7testing8internal16BoolFromGTestEnvEPKcb:bb.a
.tail:                                            ; preds = %sub_1, %sub_0, %bb.a
  %i.h = phi i1 [ %1, %bb.a ], [ true, %sub_0 ], [ %i.g, %sub_1 ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.a, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.tail
  %i.k = load i64, ptr %i.i, align 8, !tbaa !592
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.l) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.tail, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7testing8internal16InDeathTestChildEv() local_unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 8), align 8, !tbaa !590
  %i.b = icmp eq i64 %i.a, 10
  br i1 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, align 8, !tbaa !589 ; 2 uses
  %i.d = load i64, ptr %i.c, align 1
  %i.e = xor i64 %i.d, 7022066613477337204
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i16, ptr %i.f, align 1
  %i.h = zext i16 %i.g to i64
  %i.i = xor i64 %i.h, 25958
  %i.j = or i64 %i.e, %i.i
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !590
  %i.o = icmp ne i64 %i.n, 0
  br label %bb.b

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.b = load i1, ptr @_ZN7testing8internalL26g_in_fast_death_test_childE, align 1
  br label %bb.b

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.0 = phi i1 [ %i.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7testing14ExitedWithCodeC2Ei(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #6 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !14804
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7testing14ExitedWithCodeclEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = and i32 %1, 127
  %i.b = icmp eq i32 %i.a, 0
  %i.c = lshr i32 %1, 8
  %i.d = and i32 %i.c, 255
  %i.e = load i32, ptr %0, align 4
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = select i1 %i.b, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7testing14KilledBySignalC2Ei(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #6 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !14806
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7testing14KilledBySignalclEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = and i32 %1, 127                          ; 2 uses
  %i.b = shl nuw nsw i32 %i.a, 24
  %sext = add nuw i32 %i.b, 16777216
  %i.c = icmp sgt i32 %sext, 33554431
  %i.d = load i32, ptr %0, align 4
  %i.e = icmp eq i32 %i.a, %i.d
  %i.f = select i1 %i.c, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.testing::ExitedWithCode", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @_ZN7testing14ExitedWithCodeC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 0)
  %i.a = and i32 %0, 127
  %i.b = icmp ne i32 %i.a, 0
  %i.c = lshr i32 %0, 8
  %i.d = and i32 %i.c, 255
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp ne i32 %i.d, %i.e
  %.not2 = select i1 %i.b, i1 true, i1 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  ret i1 %.not2
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal23GetLastErrnoDescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call ptr @__errno_location() #58
  %i.c = load i32, ptr %i.b, align 4, !tbaa !608  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !586
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @strerror(i32 noundef %i.c) #55 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !586
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.517) #57
  unreachable

bb.c:                                             ; preds = %.thread, %bb.b
  %i.i = phi ptr [ %i.e, %.thread ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = phi ptr [ @.str.4, %.thread ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.k, ptr %i.a, align 8, !tbaa !591
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !589
  %i.n = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.n, ptr %i.i, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !592
  store i8 %i.p, ptr %i.o, align 1, !tbaa !592
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.j, i64 %i.k, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !590
  %i.s = load ptr, ptr %0, align 8, !tbaa !589
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal9DeathTestC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing8internal9DeathTestE, i64 16), ptr %0, align 8, !tbaa !598
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
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
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !714
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
  %i.l = load ptr, ptr %1, align 8, !tbaa !589    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.o = load i64, ptr %i.m, align 8, !tbaa !592
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
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 680
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !715  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !717
  %i.k = tail call noundef ptr @_ZN7testing8internal5posix6FDOpenEiPKc(i32 noundef %i.j, ptr noundef nonnull @.str.383) ; 3 uses
  %i.l = tail call i32 @fputc(i32 noundef 73, ptr noundef %i.k) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !589
  %fputs7 = tail call i32 @fputs(ptr %i.m, ptr %i.k) ; 0 uses
  %i.n = tail call i32 @fflush(ptr noundef %i.k)  ; 0 uses
  tail call void @_Exit(i32 noundef 1) #59
  unreachable

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !719
  %i.p = load ptr, ptr %0, align 8, !tbaa !589
  %fputs = tail call i32 @fputs(ptr %i.p, ptr %i.o) #60 ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !719
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
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.ae, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 688
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !720  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724
  store ptr %i.k, ptr %i.i, align 8, !tbaa !724
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !592
  store i64 %i.n, ptr %i.l, align 8, !tbaa !592
  store ptr null, ptr %i.j, align 8, !tbaa !724
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !598
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !598
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %0, ptr noundef nonnull align 8 %5, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %bb.f unwind label %bb.j, !call_target !736

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !598
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !724  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1994
  %.not.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i5, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !592
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.h, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !724
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1994
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !592
  invoke void %i.aa(ptr noundef %i.ab)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.i, !inline_history !38

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #61, !inline_history !1995
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.f, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.g, %bb.h
  ret i1 %i.r

bb.j:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #55
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !598
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !724  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1994
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !592
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !724
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1994
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !592
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit unwind label %bb.d, !inline_history !14807

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #61
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv() local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, align 8, !tbaa !589
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal13DeathTestImpl26ReadAndInterpretStatusByteEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2000
  %i.f = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.b, i64 noundef 1)
  %i.g = trunc i64 %i.f to i32
  switch i32 %i.g, label %.critedge [
    i32 -1, label %bb.c
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #58
  %i.i = load i32, ptr %i.h, align 4, !tbaa !608
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.b, label %.critedge, !llvm.loop !14808

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.k, align 8, !tbaa !2002
  br label %.preheader

bb.e:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.b, align 1, !tbaa !592   ; 2 uses
  switch i8 %i.l, label %bb.af [
    i8 82, label %bb.f
    i8 84, label %bb.g
    i8 76, label %bb.h
    i8 73, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %i.m, align 8, !tbaa !2002
  br label %.preheader

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 4, ptr %i.n, align 8, !tbaa !2002
  br label %.preheader

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
begin_hunk_1_@_ZN7testing8internal15NoExecDeathTest10AssumeRoleEv:bb.a
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.15)
          to label %bb.ay unwind label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.34)
          to label %bb.az unwind label %bb.bi

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.17)
          to label %bb.ba unwind label %bb.bj

bb.ba:                                            ; preds = %bb.az
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %21) #57
          to label %bb.bb unwind label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %.critedge
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

bb.bd:                                            ; preds = %bb.at
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.be:                                            ; preds = %bb.au
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

bb.bf:                                            ; preds = %bb.av
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.bg:                                            ; preds = %bb.aw
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

bb.bh:                                            ; preds = %bb.ax
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

bb.bi:                                            ; preds = %bb.ay
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.bj:                                            ; preds = %bb.az
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.bk:                                            ; preds = %bb.ba
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gc = load ptr, ptr %21, align 8, !tbaa !589  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.bk
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !592
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.bj
  %.pn79 = phi { ptr, i32 } [ %i.ga, %bb.bj ], [ %i.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.gb, %bb.bk ] ; 2 uses
  %i.gh = load ptr, ptr %22, align 8, !tbaa !589  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !592
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.bi
  %.pn79.pn = phi { ptr, i32 } [ %i.fz, %bb.bi ], [ %.pn79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ] ; 2 uses
  %i.gm = load ptr, ptr %23, align 8, !tbaa !589  ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !592
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.bh
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.fy, %bb.bh ], [ %.pn79.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ] ; 2 uses
  %i.gr = load ptr, ptr %24, align 8, !tbaa !589  ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !592
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %bb.bg
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.fx, %bb.bg ], [ %.pn79.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %.pn79.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ] ; 2 uses
  %i.gw = load ptr, ptr %29, align 8, !tbaa !589  ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !592
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %bb.bf
  %.pn79.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.bf ], [ %.pn79.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %.pn79.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #55
  %i.hb = load ptr, ptr %25, align 8, !tbaa !589  ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !592
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162, %bb.be
  %.pn79.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fv, %bb.be ], [ %.pn79.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ], [ %.pn79.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ] ; 2 uses
  %i.hg = load ptr, ptr %26, align 8, !tbaa !589  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !592
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165, %bb.bd
  %.pn79.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fu, %bb.bd ], [ %.pn79.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %.pn79.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ] ; 2 uses
  %i.hl = load ptr, ptr %27, align 8, !tbaa !589  ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !592
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, %bb.bc
  %.pn79.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.bc ], [ %.pn79.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %.pn79.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #55
  br label %bb.ck

.critedge91:                                      ; preds = %.preheader
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !608
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.hr, ptr %i.hs, align 8, !tbaa !2005
  %i.ht = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.hu = icmp eq i8 %i.ht, 0
  br i1 %i.hu, label %bb.bl, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.bl:                                            ; preds = %.critedge91
  %i.hv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.bn unwind label %bb.bo, !inline_history !2

bb.bn:                                            ; preds = %bb.bm
  %i.hw = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %.body, %bb.ck, %bb.bo
  %common.resume.op = phi { ptr, i32 } [ %i.hx, %bb.bo ], [ %.pn79.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ck ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.bo:                                            ; preds = %bb.bm
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %.critedge91, %bb.bl, %bb.bn
  %i.hy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 616
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !2018
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i8 0, ptr %i.ib, align 8, !tbaa !2026
  store i1 true, ptr @_ZN7testing8internalL26g_in_fast_death_test_childE, align 1
  br label %bb.cj

bb.bp:                                            ; preds = %.preheader197, %bb.bq
  %i.ic = load i32, ptr %i.fm, align 4, !tbaa !608
  %i.id = call i32 @close(i32 noundef %i.ic)
  %i.ie = icmp eq i32 %i.id, -1
  br i1 %i.ie, label %bb.bq, label %.critedge92

bb.bq:                                            ; preds = %bb.bp
  %i.if = tail call ptr @__errno_location() #58
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !608
  %i.ih = icmp eq i32 %i.ig, 4
  br i1 %i.ih, label %bb.bp, label %.critedge2, !llvm.loop !14941

.critedge2:                                       ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #55
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.br unwind label %bb.ca

bb.br:                                            ; preds = %.critedge2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.8)
          to label %bb.bs unwind label %bb.cb

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.14)
          to label %bb.bt unwind label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  store i32 1137, ptr %i.e, align 4, !tbaa !608
  invoke void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.bu unwind label %bb.cd

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %bb.bv unwind label %bb.ce

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.15)
          to label %bb.bw unwind label %bb.cf

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.35)
          to label %bb.bx unwind label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.17)
          to label %bb.by unwind label %bb.ch

bb.by:                                            ; preds = %bb.bx
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %30) #57
          to label %bb.bz unwind label %bb.ci

bb.bz:                                            ; preds = %bb.by
  unreachable

bb.ca:                                            ; preds = %.critedge2
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

bb.cb:                                            ; preds = %bb.br
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

bb.cc:                                            ; preds = %bb.bs
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.cd:                                            ; preds = %bb.bt
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

bb.ce:                                            ; preds = %bb.bu
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.cf:                                            ; preds = %bb.bv
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.cg:                                            ; preds = %bb.bw
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.ch:                                            ; preds = %bb.bx
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

bb.ci:                                            ; preds = %bb.by
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load ptr, ptr %30, align 8, !tbaa !589  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.ci
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !592
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %bb.ch
  %.pn70 = phi { ptr, i32 } [ %i.ip, %bb.ch ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %i.iq, %bb.ci ] ; 2 uses
  %i.iw = load ptr, ptr %31, align 8, !tbaa !589  ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !592
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.cg
  %.pn70.pn = phi { ptr, i32 } [ %i.io, %bb.cg ], [ %.pn70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %.pn70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ] ; 2 uses
  %i.jb = load ptr, ptr %32, align 8, !tbaa !589  ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !592
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.cf
  %.pn70.pn.pn = phi { ptr, i32 } [ %i.in, %bb.cf ], [ %.pn70.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %.pn70.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ] ; 2 uses
  %i.jg = load ptr, ptr %33, align 8, !tbaa !589  ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.jj = load i64, ptr %i.jh, align 8, !tbaa !592
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jk) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.ce
  %.pn70.pn.pn.pn = phi { ptr, i32 } [ %i.im, %bb.ce ], [ %.pn70.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %.pn70.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ] ; 2 uses
  %i.jl = load ptr, ptr %38, align 8, !tbaa !589  ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !592
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.cd
  %.pn70.pn.pn.pn.pn = phi { ptr, i32 } [ %i.il, %bb.cd ], [ %.pn70.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %.pn70.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #55
  %i.jq = load ptr, ptr %34, align 8, !tbaa !589  ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
end_hunk_1
begin_hunk_2_@_ZN7testing8internal14GetThreadCountEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret i64 %i.ao

bb.g:                                             ; preds = %bb.a, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIiEERS0_RKT_.exit, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %3, align 8, !tbaa !596   ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i6, label %_ZN7testing7MessageD2Ev.exit8, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7: ; preds = %bb.g
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !598
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.bh) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit8

_ZN7testing7MessageD2Ev.exit8:                    ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i
  %i.bl = load i64, ptr %i.az, align 8, !tbaa !592
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bm) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %_ZN7testing7MessageD2Ev.exit8
  %.pn4 = phi { ptr, i32 } [ %i.bg, %_ZN7testing7MessageD2Ev.exit8 ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %.pn4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef returned zeroext %0) local_unnamed_addr #17 {
bb.a:
  ret i1 %0
}

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal13CaptureStderrEv() local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN7testing8internalL13CaptureStreamEiPKcPPNS0_14CapturedStreamE(i32 noundef 2, ptr noundef nonnull @.str.67, ptr noundef nonnull @_ZN7testing8internalL17g_captured_stderrE)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #19

declare i32 @close(i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7testing18TestEventListeners23SuppressEventForwardingEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2018
  %i.b = xor i1 %1, true
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !2026
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN7testing8internal13ExecDeathTest10AssumeRoleEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %1 = alloca %"struct.testing::internal::ExecDeathTestArgs", align 8 ; 7 uses
  %2 = alloca %struct.sigaction, align 8          ; 5 uses
  %3 = alloca %struct.sigaction, align 8          ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator", align 1   ; 3 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %44 = alloca %"class.std::allocator", align 1   ; 3 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %52 = alloca %"class.std::allocator", align 1   ; 3 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %54 = alloca %"class.testing::Message", align 8 ; 8 uses
  %55 = alloca %"class.testing::Message", align 8 ; 8 uses
  %56 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.j = alloca [2 x i32], align 4                ; 7 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %63 = alloca %"class.std::allocator", align 1   ; 3 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %71 = alloca %"class.std::allocator", align 1   ; 3 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %92 = alloca %"class.std::vector.105", align 8  ; 13 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %101 = alloca %"class.std::allocator", align 1  ; 3 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.jv, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.e ], [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jv ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 680
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !715  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 480
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !714  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 248
  %i.y = load i32, ptr %i.x, align 8, !tbaa !2027
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !717
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !2005
  br label %bb.jw

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #55
  %i.ac = call i32 @pipe(ptr noundef nonnull %i.j) #55
  %.not479 = icmp eq i32 %i.ac, -1
  br i1 %.not479, label %bb.h, label %bb.y

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #55
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %63)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %61, ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull @.str.8)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.14)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #55
  store i32 1367, ptr %i.k, align 4, !tbaa !608
  invoke void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %64, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull align 8 dereferenceable(32) %64)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull @.str.15)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %57, ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull @.str.32)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %57) #57
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.r:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.s:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.t:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

bb.u:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.v:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.w:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.x:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %57, align 8, !tbaa !589  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !592
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.w
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.w ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ak, %bb.x ] ; 2 uses
  %i.aq = load ptr, ptr %58, align 8, !tbaa !589  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !592
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.v ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.av = load ptr, ptr %59, align 8, !tbaa !589  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !592
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.u ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ] ; 2 uses
  %i.ba = load ptr, ptr %64, align 8, !tbaa !589  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !592
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.t ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #55
  %i.bf = load ptr, ptr %60, align 8, !tbaa !589  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !592
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.s ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ] ; 2 uses
  %i.bk = load ptr, ptr %61, align 8, !tbaa !589  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !592
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.r
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.r ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
  %i.aqg = load i64, ptr %i.aqe, align 8, !tbaa !592
  %i.aqh = add i64 %i.aqg, 1
  call void @_ZdlPvm(ptr noundef %i.aqd, i64 noundef %i.aqh) #56
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aqi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i458 = icmp eq ptr %i.aqi, %i.aqc
  br i1 %.not.i.i.i458, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %92, align 8, !tbaa !2033
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPcSaIS0_EED2Ev.exit
  %i.aqj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aqb, %_ZNSt6vectorIPcSaIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aqj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.js

bb.js:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.aqk = load ptr, ptr %i.ug, align 8, !tbaa !2032
  %i.aql = ptrtoint ptr %i.aqk to i64
  %i.aqm = ptrtoint ptr %i.aqj to i64
  %i.aqn = sub i64 %i.aql, %i.aqm
  call void @_ZdlPvm(ptr noundef nonnull %i.aqj, i64 noundef %i.aqn) #56
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #55
  %i.aqo = load ptr, ptr %79, align 8, !tbaa !589 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.aqq = icmp eq ptr %i.aqo, %i.aqp
  br i1 %i.aqq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aqr = load i64, ptr %i.aqp, align 8, !tbaa !592
  %i.aqs = add i64 %i.aqr, 1
  call void @_ZdlPvm(ptr noundef %i.aqo, i64 noundef %i.aqs) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #55
  %i.aqt = load ptr, ptr %73, align 8, !tbaa !589 ; 2 uses
  %i.aqu = icmp eq ptr %i.aqt, %i.gi
  br i1 %i.aqu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461
  %i.aqv = load i64, ptr %i.gi, align 8, !tbaa !592
  %i.aqw = add i64 %i.aqv, 1
  call void @_ZdlPvm(ptr noundef %i.aqt, i64 noundef %i.aqw) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #55
  br label %bb.jw

.body377:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456
  %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456 ], [ %.pn116.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ia ], [ %lpad.loopexit.split-lp824, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i465 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i.i.i465, label %.body372, label %bb.jt

bb.jt:                                            ; preds = %.body377
  %i.aqx = ptrtoint ptr %.sroa.15.4 to i64
  %i.aqy = ptrtoint ptr %.sroa.0.4 to i64
  %i.aqz = sub i64 %i.aqx, %i.aqy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.aqz) #56
  br label %.body372

.body372:                                         ; preds = %.loopexit.split-lp.i, %bb.dl, %.body377, %bb.jt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, %bb.jg
  %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ans, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432 ], [ %i.anr, %bb.jg ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jt ], [ %lpad.phi.i, %bb.dl ], [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body377 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %92) #55
  br label %bb.ju

bb.ju:                                            ; preds = %.body372, %bb.jf
  %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body372 ], [ %i.anq, %bb.jf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #55
  %i.ara = load ptr, ptr %79, align 8, !tbaa !589 ; 2 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.arc = icmp eq ptr %i.ara, %i.arb
  br i1 %i.arc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467: ; preds = %bb.ju
  %i.ard = load i64, ptr %i.arb, align 8, !tbaa !592
  %i.are = add i64 %i.ard, 1
  call void @_ZdlPvm(ptr noundef %i.ara, i64 noundef %i.are) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469: ; preds = %bb.ju, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ], [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467 ], [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ju ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #55
  %i.arf = load ptr, ptr %73, align 8, !tbaa !589 ; 2 uses
  %i.arg = icmp eq ptr %i.arf, %i.gi
  br i1 %i.arg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469
  %i.arh = load i64, ptr %i.gi, align 8, !tbaa !592
  %i.ari = add i64 %i.arh, 1
  call void @_ZdlPvm(ptr noundef %i.arf, i64 noundef %i.ari) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393 ], [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470 ], [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #55
  br label %bb.jv

bb.jv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472 ], [ %.pn70.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #55
  br label %common.resume

bb.jw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464, %bb.f
  %.061 = phi i32 [ 1, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464 ]
  ret i32 %.061
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2033   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2031 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !589 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !592
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #56
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !40

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !2033
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2032
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #56
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7testing8internal23DefaultDeathTestFactory6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPNS0_9DeathTestE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef align 8 captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %8 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.testing::Matcher", align 8 ; 4 uses
  %19 = alloca %"class.testing::Matcher", align 8 ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %.body.i, %.body.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZN7testing7MessageD2Ev.exit4.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.x, %_ZN7testing7MessageD2Ev.exit4.i ], [ %i.iq, %.body.i114 ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn37.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %i.hr, %.body.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.jj, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 680
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !715  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !714
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !2027 ; 2 uses
  %i.m = add nsw i32 %i.l, 1                      ; 3 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !2027
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.af, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 36 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !2039 ; 2 uses
  %.not149 = icmp slt i32 %i.l, %i.o
  br i1 %.not149, label %bb.ad, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #55, !noalias !15044
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11), !noalias !15044
  %i.p = load ptr, ptr %11, align 8, !tbaa !596, !noalias !15044
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %i.m)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %bb.h, !noalias !15044 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %bb.g
  %i.s = load ptr, ptr %11, align 8, !tbaa !596, !noalias !15045
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef %i.s)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.h

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.t = load ptr, ptr %11, align 8, !tbaa !596, !noalias !15044 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !598
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #55, !call_target !607, !inline_history !39
  br label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.h:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %11, align 8, !tbaa !596, !noalias !15044 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i2.i, label %_ZN7testing7MessageD2Ev.exit4.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i: ; preds = %bb.h
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !598
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #55, !call_target !607, !inline_history !39
  br label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #55, !noalias !15044
  br label %common.resume

_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #55, !noalias !15044
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.43, i64 noundef 18)
          to label %.noexc unwind label %bb.x     ; 6 uses

.noexc:                                           ; preds = %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.ad, ptr %15, align 8, !tbaa !586, !alias.scope !15046
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !589 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !590 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ae, ptr %15, align 8, !tbaa !589, !alias.scope !15046
  %i.al = load i64, ptr %i.af, align 8, !tbaa !592
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !592, !alias.scope !15046
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !590
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.am = phi i64 [ %i.ai, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !590, !alias.scope !15046
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !589
  store i64 0, ptr %i.an, align 8, !tbaa !590
  store i8 0, ptr %i.af, align 8, !tbaa !592
  call void @llvm.experimental.noalias.scope.decl(metadata !15047)
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !590, !noalias !15047
  %i.aq = add i64 %i.ap, -4611686018427387867
  %i.ar = icmp ult i64 %i.aq, 37
  br i1 %i.ar, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.noexc47 unwind label %bb.y

.noexc47:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.j
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.44, i64 noundef 37)
          to label %.noexc48 unwind label %bb.y   ; 6 uses

.noexc48:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.at, ptr %14, align 8, !tbaa !586, !alias.scope !15047
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !589 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

bb.l:                                             ; preds = %.noexc48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !590 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %.noexc48
  store ptr %i.au, ptr %14, align 8, !tbaa !589, !alias.scope !15047
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !592
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !592, !alias.scope !15047
  %.phi.trans.insert.i45 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.pre.i46 = load i64, ptr %.phi.trans.insert.i45, align 8, !tbaa !590
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.l
  %i.bc = phi i64 [ %i.ay, %bb.l ], [ %.pre.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !590, !alias.scope !15047
  store ptr %i.av, ptr %i.as, align 8, !tbaa !589
  store i64 0, ptr %i.bd, align 8, !tbaa !590
  store i8 0, ptr %i.av, align 8, !tbaa !592
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #55
  %i.bf = load i32, ptr %i.n, align 4, !tbaa !2039
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55, !noalias !15048
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc56 unwind label %bb.z

.noexc56:                                         ; preds = %bb.m
  %i.bg = load ptr, ptr %10, align 8, !tbaa !596, !noalias !15048
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 noundef %i.bf)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i52 unwind label %bb.n, !noalias !15048 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i52:       ; preds = %.noexc56
  %i.bj = load ptr, ptr %10, align 8, !tbaa !596, !noalias !15049
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef %i.bj)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i53 unwind label %bb.n

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i53: ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i52
  %i.bk = load ptr, ptr %10, align 8, !tbaa !596, !noalias !15048 ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i54, label %bb.o, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i55

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i55: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i53
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !598
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(128) %i.bk) #55, !call_target !607, !inline_history !39
  br label %bb.o

bb.n:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i52, %.noexc56
  %i.bo = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_ZN7testing8internal2RE4InitEPKc:bb.a
_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %bb.n
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !598
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(128) %i.ba) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22, %bb.n, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %.pn.pn.pn, %bb.n ], [ %.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.o:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.o, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  call void @_ZdaPv(ptr noundef nonnull %i.g) #56
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #19

declare i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.testing::Message", align 8  ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !583  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK7testing15AssertionResult7messageEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !589
  br label %_ZNK7testing15AssertionResult7messageEv.exit

_ZNK7testing15AssertionResult7messageEv.exit:     ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ @.str.4, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.e = load ptr, ptr %5, align 8, !tbaa !596
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.166, i64 noundef 10)
          to label %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit:       ; preds = %_ZNK7testing15AssertionResult7messageEv.exit
  %i.h = icmp eq ptr %2, null
  %i.i = load ptr, ptr %5, align 8, !tbaa !596
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br i1 %i.h, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #55
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.l = phi ptr [ %2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.188, %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit ]
  %i.m = phi i64 [ %i.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 6, %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit ]
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.l, i64 noundef %i.m)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  %i.o = load ptr, ptr %5, align 8, !tbaa !596
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.167, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.r = icmp eq ptr %3, null
  %i.s = load ptr, ptr %5, align 8, !tbaa !596
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br i1 %i.r, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #55
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4.invoke: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4
  %i.v = phi ptr [ %3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4 ], [ @.str.188, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit ]
  %i.w = phi i64 [ %i.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4 ], [ 6, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit ]
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.v, i64 noundef %i.w)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit7 unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit7:        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4.invoke
  %i.y = load i8, ptr %i.d, align 1, !tbaa !592
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit7
  %i.z = load ptr, ptr %5, align 8, !tbaa !596
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.168, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i9 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i9: ; preds = %bb.c
  %i.ac = load ptr, ptr %5, align 8, !tbaa !596
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #55
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.d, i64 noundef %i.ae)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit12 unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit12:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i9
  %i.ag = load ptr, ptr %5, align 8, !tbaa !596
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16.invoke, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i9, %bb.c, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit, %_ZNK7testing15AssertionResult7messageEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %5, align 8, !tbaa !596   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.d
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !598
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.d, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  resume { ptr, i32 } %i.aj

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit12, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit7
  %i.ao = load ptr, ptr %5, align 8, !tbaa !596
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.169, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15 unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15:     ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.ar = icmp eq ptr %4, null
  %i.as = load ptr, ptr %5, align 8, !tbaa !596
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br i1 %i.ar, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15
  %i.au = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #55
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16.invoke: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16
  %i.av = phi ptr [ %4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16 ], [ @.str.188, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15 ]
  %i.aw = phi i64 [ %i.au, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16 ], [ 6, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15 ]
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %i.av, i64 noundef %i.aw)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19 unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16.invoke
  %i.ay = load ptr, ptr %5, align 8, !tbaa !596, !noalias !15150
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.ay)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.d

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19
  %i.az = load ptr, ptr %5, align 8, !tbaa !596   ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.az, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !598
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(128) %i.az) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2062

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !2065   ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2068
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2069
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2070
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @_ZN7testing8internal17AppendUserMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7MessageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.m = load ptr, ptr %0, align 8, !tbaa !2065
  %i.n = load i32, ptr %i.m, align 8, !tbaa !2068
  switch i32 %i.n, label %bb.f [
    i32 3, label %._crit_edge.i.i
    i32 0, label %._crit_edge.i.i
  ]

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.o = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.g, label %_ZN7testing8UnitTest11GetInstanceEv.exit18, !prof !609

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i17 = icmp eq i32 %i.q, 0
  br i1 %.not.i17, label %_ZN7testing8UnitTest11GetInstanceEv.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.i unwind label %bb.j, !inline_history !2062

bb.i:                                             ; preds = %bb.h
  %i.r = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit18

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %.critedge16

_ZN7testing8UnitTest11GetInstanceEv.exit18:       ; preds = %bb.i, %bb.g, %bb.f
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  invoke void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(713) %i.t, i32 noundef 1)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread

._crit_edge.i.i:                                  ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !586
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !590
  store i8 0, ptr %i.u, align 8, !tbaa !592
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i, %_ZN7testing8UnitTest11GetInstanceEv.exit18
  invoke void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i32 noundef %i.g, ptr noundef %i.i, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr %3, align 8, !tbaa !589    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.z = load i64, ptr %i.x, align 8, !tbaa !592
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #56
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.ab = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %.critedge
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !592
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit18
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.critedge16

bb.m:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %.critedge16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.m
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !592
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #56
  br label %.critedge16

.critedge16:                                      ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.s, %bb.j ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread ], [ %i.ah, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.an = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %.critedge16
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !592
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %.critedge16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %common.resume
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.b = icmp eq ptr %1, null
  %i.c = select i1 %i.b, ptr @_ZN7testing8internalL12kUnknownFileE, ptr %1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !586
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.e, ptr %i.a, align 8, !tbaa !591
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !589
  %i.h = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.h, ptr %i.d, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !592
  store i8 %i.j, ptr %i.i, align 1, !tbaa !592
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !590
  %i.m = load ptr, ptr %4, align 8, !tbaa !589
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.o = icmp slt i32 %2, 0
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !15167)
  %i.p = load ptr, ptr %4, align 8, !tbaa !589, !noalias !15167
  %i.q = load i64, ptr %i.l, align 8, !tbaa !590, !noalias !15167 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !586, !alias.scope !15168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.s, align 8, !tbaa !590, !alias.scope !15168
  store i8 0, ptr %i.r, align 8, !tbaa !592, !alias.scope !15168
  %i.t = add i64 %i.q, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.t)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.s, align 8, !tbaa !590, !alias.scope !15168
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.q
  br i1 %i.w, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.p, i64 noundef %i.q)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.y = load i64, ptr %i.s, align 8, !tbaa !590, !alias.scope !15168
  %i.z = icmp eq i64 %i.y, 4611686018427387903
  br i1 %i.z, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.cont.i.i unwind label %bb.g

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.60, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !589, !alias.scope !15168 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.r
  br i1 %i.ad, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !592, !alias.scope !15168
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #56
end_hunk_4
begin_hunk_5_@_ZN7testinglsERSoRKNS_14TestPartResultE:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %bb.b
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.86, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !589  ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !598
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2098
  %i.ab = or i32 %i.aa, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.y, i32 noundef %i.ab)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.h

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #55
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.u, i64 noundef %i.ac)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !598
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.k, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2085 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  invoke void @_ZSt16__throw_bad_castv() #57
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.e
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !2090
  %.not.i1.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !592
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
          to label %.noexc17 unwind label %bb.h

.noexc17:                                         ; preds = %bb.g
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !598
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.h, !inline_history !48

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc17, %bb.f
  %.0.i.i.i = phi i8 [ %i.an, %bb.f ], [ %i.ar, %.noexc17 ]
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %.0.i.i.i)
          to label %.noexc19 unwind label %bb.h

.noexc19:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.h

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc19
  %i.au = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !592
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret ptr %i.at

bb.h:                                             ; preds = %.noexc19, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc17, %bb.g, %bb.e, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %bb.b, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.h
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !592
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2121 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2122
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !2121
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.f, ptr %i.a, align 8, !tbaa !2121
  br label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(112) ptr @_ZNK7testing19TestPartResultArray17GetTestPartResultEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2121
  %i.d = load ptr, ptr %0, align 8, !tbaa !2123   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 112
  %i.i = trunc i64 %i.h to i32
  %.not = icmp slt i32 %1, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, i32 noundef %1) ; 0 uses
  tail call void @_ZN7testing8internal5posix5AbortEv() #57
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %i.k
  ret ptr %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK7testing19TestPartResultArray4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2121
  %i.c = load ptr, ptr %0, align 8, !tbaa !2123
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 112
  %i.h = trunc i64 %i.g to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelperC2Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 9)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24HasNewFatalFailureHelperE, i64 16), ptr %0, align 8, !tbaa !598
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !2125
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %.body, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2126
  store ptr %i.j, ptr %i.b, align 8, !tbaa !2127
  %i.k = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.i, !prof !609

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i2 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i2, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %.body, !inline_history !2

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %bb.i

.body:                                            ; preds = %bb.c, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55
  resume { ptr, i32 } %i.o

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  store ptr %0, ptr %i.r, align 8, !tbaa !2126
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7testing8internal12UnitTestImpl41GetTestPartResultReporterForCurrentThreadEv(ptr noundef nonnull align 8 dereferenceable(713) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2126
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  store ptr %1, ptr %i.b, align 8, !tbaa !2126
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelperD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24HasNewFatalFailureHelperE, i64 16), ptr %0, align 8, !tbaa !598
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2127
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.j = invoke noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr %i.j, align 8, !tbaa !2126
  ret void

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.e, %bb.e ]
  %i.l = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.l) #61
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelperD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing8internal24HasNewFatalFailureHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #55
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #56
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelper20ReportTestPartResultERKNS_14TestPartResultE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !2120
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !2125
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2127 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !598
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %1), !call_target !2134
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7testing8internal20TypedTestSuitePState25VerifyRegisteredTestNamesEPKcS3_iS3_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef returned %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::vector.105", align 8   ; 12 uses
  %10 = alloca %"class.testing::Message", align 8 ; 15 uses
  %11 = alloca %"class.std::set", align 8         ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  store ptr %i.b, ptr %8, align 8, !tbaa !586
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.517) #57
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.d, ptr %i.a, align 8, !tbaa !591
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !589
  %i.g = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.g, ptr %i.b, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %2, align 1, !tbaa !592
  store i8 %i.i, ptr %i.h, align 1, !tbaa !592
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %2, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !590
  %i.l = load ptr, ptr %8, align 8, !tbaa !589
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !586
  %i.o = load ptr, ptr %8, align 8, !tbaa !589    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.k, align 8, !tbaa !590  ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.s, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.o, ptr %7, align 8, !tbaa !589
  %i.t = load i64, ptr %i.b, align 8, !tbaa !592
  store i64 %i.t, ptr %i.n, align 8, !tbaa !592
  %.pre = load i64, ptr %i.k, align 8, !tbaa !590
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = phi i64 [ %i.q, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !590
  store ptr %i.b, ptr %8, align 8, !tbaa !589
  store i64 0, ptr %i.k, align 8, !tbaa !590
  store i8 0, ptr %i.b, align 8, !tbaa !592
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %3, ptr %i.w, align 8, !tbaa !2178
  invoke void @_ZN7testing8internal34RegisterTypeParameterizedTestSuiteEPKcNS0_12CodeLocationE(ptr noundef %1, ptr noundef nonnull align 8 %7)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.x = load ptr, ptr %7, align 8, !tbaa !589    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.n
  br i1 %i.y, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.z = load i64, ptr %i.n, align 8, !tbaa !592
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #56
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ab = load ptr, ptr %8, align 8, !tbaa !589   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.b
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !592
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  store i8 1, ptr %0, align 8, !tbaa !15256
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !15257)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !15257
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i.i = phi ptr [ %4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ai, %bb.h ] ; 3 uses
  %i.af = load i8, ptr %.0.i.i, align 1, !tbaa !592, !noalias !15257
  %i.ag = zext i8 %i.af to i32
  %i.ah = call i32 @isspace(i32 noundef %i.ag) #62
  %.not.i.i = icmp eq i32 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br i1 %.not.i.i, label %_ZN7testing8internalL10SkipSpacesEPKc.exit.preheader.i, label %bb.h, !llvm.loop !15239

_ZN7testing8internalL10SkipSpacesEPKc.exit.preheader.i: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN7testing8internal20TypedTestSuitePState25VerifyRegisteredTestNamesEPKcS3_iS3_:bb.a
  br i1 %i.gt, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit98.thread, label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit98.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i83, %.lr.ph154, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit98
  %i.gu = load ptr, ptr %10, align 8, !tbaa !596
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull @.str.92, i64 noundef 24)
          to label %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit:       ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit98.thread
  %i.gx = load ptr, ptr %10, align 8, !tbaa !596
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.ga, align 8, !tbaa !589
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0117.0152, i64 40
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !590
  %i.hc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef %i.gz, i64 noundef %i.hb)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101: ; preds = %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit
  %i.hd = load ptr, ptr %10, align 8, !tbaa !596
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.93, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit98
  %i.hg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0117.0152) #62 ; 2 uses
  %.not139 = icmp eq ptr %i.hg, %i.db
  br i1 %.not139, label %._crit_edge155, label %.lr.ph154, !llvm.loop !15249

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %._crit_edge155
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !590
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !719
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #55
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull %2, i32 noundef %3)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hl = load ptr, ptr %13, align 8, !tbaa !589
  %i.hm = load ptr, ptr %12, align 8, !tbaa !589
  %i.hn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hk, ptr noundef nonnull @.str.94, ptr noundef %i.hl, ptr noundef %i.hm) #63 ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #55
  %i.ho = load ptr, ptr @stderr, align 8, !tbaa !719
  %i.hp = call i32 @fflush(ptr noundef %i.ho)     ; 0 uses
  call void @_ZN7testing8internal5posix5AbortEv() #57
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit101, %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit98.thread, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit66.invoke, %_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal12CodeLocationESt4lessIvESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread, %bb.ac, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %bb.z, %._crit_edge155
  %lpad.loopexit.split-lp229 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.af
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #55
  %i.hr = load ptr, ptr %12, align 8, !tbaa !589  ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.ah
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !592
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #55
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.hw = load ptr, ptr %12, align 8, !tbaa !589  ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.ai
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !592
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #55
  %i.ib = load ptr, ptr %i.cr, align 8, !tbaa !2180
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.ib)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #61
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #55
  %i.ie = load ptr, ptr %10, align 8, !tbaa !596  ; 3 uses
  %.not.i.i109 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i109, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !598
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(128) %i.ie) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #55
  %i.ii = load ptr, ptr %9, align 8, !tbaa !2033  ; 3 uses
  %i.ij = load ptr, ptr %i.an, align 8, !tbaa !2031 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ii, %i.ij
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i110

.lr.ph.i.i.i110:                                  ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ip, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ii, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.ik = load ptr, ptr %.05.i.i.i, align 8, !tbaa !589 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i110
  %i.in = load i64, ptr %i.il, align 8, !tbaa !592
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #56
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.ip, %i.ij
  br i1 %.not.i.i.i111, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i110, !llvm.loop !40

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !2033
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing7MessageD2Ev.exit
  %i.iq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ii, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ir = load ptr, ptr %i.ao, align 8, !tbaa !2032
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iu) #56
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  ret ptr %4

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %.pn25 = phi { ptr, i32 } [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %lpad.loopexit.split-lp229, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #55
  %i.iv = load ptr, ptr %10, align 8, !tbaa !596  ; 3 uses
  %.not.i.i112 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i112, label %_ZN7testing7MessageD2Ev.exit114, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !598
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(128) %i.iv) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit114

_ZN7testing7MessageD2Ev.exit114:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113, %.loopexit.split-lp.loopexit.split-lp, %bb.v
  %.pn25.pn = phi { ptr, i32 } [ %i.dl, %bb.v ], [ %.pn25, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn25, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #55
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal34RegisterTypeParameterizedTestSuiteEPKcNS0_12CodeLocationE(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef align 8 %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2 ], [ %i.aa, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !586
  %i.i = load ptr, ptr %1, align 8, !tbaa !589    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !590  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  store ptr %i.i, ptr %2, align 8, !tbaa !589
  %i.p = load i64, ptr %i.j, align 8, !tbaa !592
  store i64 %i.p, ptr %i.h, align 8, !tbaa !592
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !590
  br label %_ZN7testing8internal12CodeLocationC2EOS1_.exit

_ZN7testing8internal12CodeLocationC2EOS1_.exit:   ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.q = phi i64 [ %i.m, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.s, align 8, !tbaa !590
  store ptr %i.j, ptr %1, align 8, !tbaa !589
  store i64 0, ptr %i.r, align 8, !tbaa !590
  store i8 0, ptr %i.j, align 8, !tbaa !592
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !2178
  store i32 %i.v, ptr %i.t, align 8, !tbaa !2178
  invoke void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry17RegisterTestSuiteEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %0, ptr noundef nonnull align 8 %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !589    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.h
  br i1 %i.x, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.h, align 8, !tbaa !592
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #56
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void

bb.h:                                             ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.h
  br i1 %i.ac, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2: ; preds = %bb.h
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !592
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #56
  br label %common.resume
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2180
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #61
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, -1) i32 @_ZN7testing8internal6Random8GenerateEj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !2185
  %i.b = mul i32 %i.a, 1103515245
  %i.c = add i32 %i.b, 12345
  %i.d = and i32 %i.c, 2147483647
  store i32 %i.d, ptr %0, align 4, !tbaa !2185
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.137, i32 noundef 416)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.138, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.139, i64 noundef 45)
          to label %.thread unwind label %bb.c    ; 0 uses

.thread:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.g

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %1, -2147483647
  br i1 %i.h, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.137, i32 noundef 417)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.140, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.e
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.141, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = zext i32 %1 to i64
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %i.k)
          to label %_ZNSolsEj.exit unwind label %bb.f ; 3 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.142, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZNSolsEj.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.143, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 2147483648)
          to label %_ZNSolsEj.exit13 unwind label %bb.f

_ZNSolsEj.exit13:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.144, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZNSolsEj.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %bb.g

bb.f:                                             ; preds = %_ZNSolsEj.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %bb.h

bb.g:                                             ; preds = %.thread, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.r = load i32, ptr %0, align 4, !tbaa !2185
  %i.s = urem i32 %i.r, %1
  ret i32 %i.s

bb.h:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12AssertHelperC2ENS_14TestPartResult4TypeEPKciS5_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #54 ; 8 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !2068
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !2069
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %3, ptr %i.d, align 8, !tbaa !2070
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !586
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.517) #57
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.h, ptr %i.a, align 8, !tbaa !591
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.f    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i
  store ptr %i.j, ptr %i.e, align 8, !tbaa !589
  %i.k = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.k, ptr %i.f, align 8, !tbaa !592
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc6 ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %4, align 1, !tbaa !592
  store i8 %i.m, ptr %i.l, align 1, !tbaa !592
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %4, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !590
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !589
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  store ptr %i.b, ptr %0, align 8, !tbaa !2065
  ret void

bb.f:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #56
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal12AssertHelperD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2065   ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !589  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !592
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #56
  br label %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit

_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #56
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7testing8UnitTest11GetInstanceEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %8 = alloca %"class.testing::Message", align 8  ; 17 uses
  %9 = alloca %"class.testing::internal::GTestMutexLock", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.testing::TestPartResult", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.a = load ptr, ptr %8, align 8, !tbaa !596
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %4, align 8, !tbaa !589
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !590
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.g, ptr %9, align 8, !tbaa !2188
  %i.h = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #55 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 3, ptr noundef nonnull @.str.454, i32 noundef 1654)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.455, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.456, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.h)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %7) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %7) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  br label %.body

bb.e:                                             ; preds = %bb.c, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.m = tail call i64 @pthread_self() #58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.m, ptr %i.n, align 8, !tbaa !2189
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.o, align 8, !tbaa !2190
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !614
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 696
  %i.s = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit: ; preds = %bb.e
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15264
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15264
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit
  %i.x = load ptr, ptr %8, align 8, !tbaa !596
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %bb.f
  %i.aa = load ptr, ptr %8, align 8, !tbaa !596
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.238, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.ad = load ptr, ptr %8, align 8, !tbaa !596
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.372, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !614
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 696
  %i.ai = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit45: ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2193 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !2194 ; 2 uses
  %.not80 = icmp eq ptr %i.ak, %i.al
  br i1 %.not80, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit45
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.h:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.081 = phi i64 [ %i.ap, %.lr.ph ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !614
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 696
  %i.aw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit47: ; preds = %bb.i
  %i.ax = add i64 %.081, -1                       ; 3 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !2194
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %i.ax ; 4 uses
  %i.ba = load ptr, ptr %8, align 8, !tbaa !596
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit49:      ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !2196
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !2197
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.bd, i32 noundef %i.bf)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit49
  %i.bg = load ptr, ptr %8, align 8, !tbaa !596
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %10, align 8, !tbaa !589
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !590
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bi, i64 noundef %i.bj)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit51 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit51: ; preds = %bb.j
  %i.bl = load ptr, ptr %8, align 8, !tbaa !596
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.65, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit53 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit53:      ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit51
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bp = load ptr, ptr %8, align 8, !tbaa !596
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !589
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !590
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef %i.br, i64 noundef %i.bt)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit55 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit55: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit53
  %i.bv = load ptr, ptr %10, align 8, !tbaa !589  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ar
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit55
  %i.bx = load i64, ptr %i.ar, align 8, !tbaa !592
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #55
end_hunk_6
begin_hunk_7_@_ZN7testing8internal17AppendUserMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7MessageE:bb.a
bb.k:                                             ; preds = %bb.j
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !590, !alias.scope !15277
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.v
  br i1 %i.ao, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.k
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ai, i64 noundef %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !590, !alias.scope !15277
  %i.ar = icmp eq i64 %i.aq, 4611686018427387903
  br i1 %i.ar, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.cont.i.i unwind label %bb.l

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !589, !alias.scope !15277 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aj
  br i1 %i.av, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15278)
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !590, !noalias !15278 ; 2 uses
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !590, !noalias !15278
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.aw
  br i1 %i.az, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.noexc14 unwind label %bb.p

.noexc14:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ba = load ptr, ptr %3, align 8, !tbaa !589, !noalias !15278
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ba, i64 noundef %i.aw)
          to label %.noexc15 unwind label %bb.p   ; 6 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !586, !alias.scope !15278
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !589 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %.noexc15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !590 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc15
  store ptr %i.bd, ptr %0, align 8, !tbaa !589, !alias.scope !15278
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !592
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !592, !alias.scope !15278
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !590
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.bl = phi i64 [ %i.bh, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !590, !alias.scope !15278
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !589
  store i64 0, ptr %i.bm, align 8, !tbaa !590
  store i8 0, ptr %i.be, align 8, !tbaa !592
  %i.bo = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aj
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.o
  %i.bq = load i64, ptr %i.aj, align 8, !tbaa !592
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aj
  br i1 %i.bu, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.p, %bb.l
  %.sink = phi ptr [ %i.au, %bb.l ], [ %i.bt, %bb.p ]
  %.pn.ph = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.bs, %bb.p ]
  %i.bv = load i64, ptr %i.aj, align 8, !tbaa !592
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bw) #56
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.p, %bb.l
  %.pn = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.bs, %bb.p ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.q
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !592
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void

bb.r:                                             ; preds = %.body, %bb.e
  %.pn8 = phi { ptr, i32 } [ %i.t, %bb.e ], [ %.pn, %.body ]
  %i.cc = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.r
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !592
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(713) %1, i32 noundef %2) local_unnamed_addr #29 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2198 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !598
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.d, align 8, !tbaa !598
  store ptr %i.d, ptr %i.a, align 8, !tbaa !2198
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.b
  %i.e = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.b ], [ %.pre, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.f = phi ptr [ %i.d, %bb.b ], [ %i.b, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.g = load i32, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !608
  %i.h = add nsw i32 %2, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.g, i32 noundef %i.h), !call_target !2203
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2062

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  resume { ptr, i32 } %i.e

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal13MarkAsIgnoredC2EPKc(ptr nofree nonnull readnone align 1 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2062

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !586
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.517) #57
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.k, ptr %i.a, align 8, !tbaa !591
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.p    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i
  store ptr %i.m, ptr %2, align 8, !tbaa !589
  %i.n = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.n, ptr %i.i, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc4, %bb.g
  %i.o = phi ptr [ %i.m, %.noexc4 ], [ %i.i, %bb.g ] ; 2 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %1, align 1, !tbaa !592
  store i8 %i.p, ptr %i.o, align 1, !tbaa !592
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %1, i64 %i.k, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !590
  %i.s = load ptr, ptr %2, align 8, !tbaa !589
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.u = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc6 unwind label %bb.q    ; 2 uses

.noexc6:                                          ; preds = %bb.j
  %i.v = extractvalue { ptr, ptr } %i.u, 1        ; 5 uses
  %.not.i.i5 = icmp eq ptr %i.v, null
  br i1 %.not.i.i5, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.noexc6
  %i.w = extractvalue { ptr, ptr } %i.u, 0
  %.not.i = icmp ne ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 424 ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.y
  br i1 %or.cond.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.r, align 8, !tbaa !590  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !590 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.z) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !589
  %i.af = load ptr, ptr %2, align 8, !tbaa !589
  %i.ag = call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i) #55 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.l
  %i.ah = sub i64 %i.z, %i.ab
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.ai = icmp slt i32 %.0.i.i.i.i, 0
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.k
  %i.aj = phi i1 [ %i.ai, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.k ]
  %i.ak = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #54
          to label %.noexc11 unwind label %bb.q   ; 4 uses

.noexc11:                                         ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !586
  %i.an = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.n:                                             ; preds = %.noexc11
  %i.ap = load i64, ptr %i.r, align 8, !tbaa !590 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ar, i1 false)
  br label %.noexc7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.noexc11
  store ptr %i.an, ptr %i.al, align 8, !tbaa !589
  %i.as = load i64, ptr %i.i, align 8, !tbaa !592
  store i64 %i.as, ptr %i.am, align 8, !tbaa !592
  %.pre.i.i.i = load i64, ptr %i.r, align 8, !tbaa !590
  br label %.noexc7

.noexc7:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.n
  %i.at = phi i64 [ %i.ap, %bb.n ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 %i.at, ptr %i.au, align 8, !tbaa !590
  store ptr %i.i, ptr %2, align 8, !tbaa !589
  store i64 0, ptr %i.r, align 8, !tbaa !590
  store i8 0, ptr %i.i, align 8, !tbaa !592
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.x) #55
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 456 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !2183
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !2183
  br label %bb.o

bb.o:                                             ; preds = %.noexc7, %.noexc6
  %i.ay = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.i
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ba = load i64, ptr %i.i, align 8, !tbaa !592
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.p:                                             ; preds = %.noexc.i, %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.q:                                             ; preds = %bb.m, %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.i
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.q
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !592
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.bd, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly align 8 captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %class.anon, align 8                ; 12 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca [378 x i8], align 16              ; 5 uses
  %i.f = alloca [348 x i8], align 16              ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %class.anon, align 8               ; 15 uses
  %i.g = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2062

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

common.resume:                                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.e ], [ %.pn20.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.as, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2180 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 424 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.n, null
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre121 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !590 ; 7 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.n, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.o, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !590  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.pre121, i64 %i.q) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !589
  %i.u = tail call i32 @memcmp(ptr noundef %i.t, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #55 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = sub i64 %i.q, %.pre121
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.w, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !2184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !53

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.x = icmp eq ptr %.19.i.i.i, %i.o
  br i1 %i.x, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !590  ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %.pre121) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !589
  %i.ad = tail call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.ae = sub i64 %.pre121, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.af = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.af, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.ax

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(378) %i.e, ptr noundef nonnull align 16 dereferenceable(378) @__const._ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb.kMissingInstantiation, i64 378, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(348) %i.f, ptr noundef nonnull align 16 dereferenceable(348) @__const._ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb.kMissingTestCase, i64 348, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #55
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.ah, ptr %11, align 8, !tbaa !586, !alias.scope !15297
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !590, !alias.scope !15297
  store i8 0, ptr %i.ah, align 8, !tbaa !592, !alias.scope !15297
  %i.aj = add i64 %.pre121, 25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.aj)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !590, !alias.scope !15297
  %i.al = add i64 %i.ak, -4611686018427387879
  %i.am = icmp ult i64 %i.al, 25
  br i1 %i.am, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.g
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.145, i64 noundef 25)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !590, !alias.scope !15297
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %.pre121
  br i1 %i.aq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.cont.i.i unwind label %bb.h

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %.pre, i64 noundef %.pre121)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %11, align 8, !tbaa !589, !alias.scope !15297 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ah
  br i1 %i.au, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !592, !alias.scope !15297
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #56
  br label %common.resume

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ax = select i1 %2, ptr %i.e, ptr %i.f        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15298)
  %i.ay = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #55, !noalias !15298 ; 2 uses
  %i.az = load i64, ptr %i.ai, align 8, !tbaa !590, !noalias !15298
  %i.ba = sub i64 4611686018427387903, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.ay
  br i1 %i.bb, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %i.ax, i64 noundef %i.ay)
          to label %.noexc24 unwind label %bb.ay  ; 6 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.bd, ptr %10, align 8, !tbaa !586, !alias.scope !15298
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !589 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !590 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc24
  store ptr %i.be, ptr %10, align 8, !tbaa !589, !alias.scope !15298
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !592
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !592, !alias.scope !15298
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !590
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.bm = phi i64 [ %i.bi, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !590, !alias.scope !15298
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !589
  store i64 0, ptr %i.bn, align 8, !tbaa !590
  store i8 0, ptr %i.bf, align 8, !tbaa !592
end_hunk_7
begin_hunk_8_@_ZN7testing8internal34TypeParameterizedTestSuiteRegistry17RegisterTestSuiteEPKcNS0_12CodeLocationE:bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.d, ptr %i.a, align 8, !tbaa !591
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !589
  %i.g = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.g, ptr %i.b, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !592
  store i8 %i.i, ptr %i.h, align 1, !tbaa !592
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !590
  %i.l = load ptr, ptr %3, align 8, !tbaa !589
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !589    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !590  ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.o, ptr %5, align 8, !tbaa !589
  %i.v = load i64, ptr %i.p, align 8, !tbaa !592
  store i64 %i.v, ptr %i.n, align 8, !tbaa !592
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !590
  br label %_ZN7testing8internal12CodeLocationC2EOS1_.exit

_ZN7testing8internal12CodeLocationC2EOS1_.exit:   ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi ptr [ %i.n, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.x = phi i64 [ %i.s, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.p, ptr %2, align 8, !tbaa !589
  store i64 0, ptr %i.y, align 8, !tbaa !590
  store i8 0, ptr %i.p, align 8, !tbaa !592
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2178 ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !2178
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !586
  %i.ae = icmp eq ptr %i.w, %i.n
  br i1 %i.ae, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.af = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.ag, i1 false)
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoC2ENS0_12CodeLocationE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  store ptr %i.w, ptr %4, align 8, !tbaa !589
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !592
  store i64 %i.ah, ptr %i.ad, align 8, !tbaa !592
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoC2ENS0_12CodeLocationE.exit

_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoC2ENS0_12CodeLocationE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.x, ptr %i.ai, align 8, !tbaa !590
  store ptr %i.n, ptr %5, align 8, !tbaa !589
  store i64 0, ptr %i.z, align 8, !tbaa !590
  store i8 0, ptr %i.n, align 8, !tbaa !592
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.ac, ptr %i.aj, align 8, !tbaa !2178
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.ak, align 8, !tbaa !2222
  %i.al = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJS5_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoC2ENS0_12CodeLocationE.exit
  %i.am = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ad
  br i1 %i.an, label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.ao = load i64, ptr %i.ad, align 8, !tbaa !592
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #56
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit

_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aq = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.n
  br i1 %i.ar, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit
  %i.as = load i64, ptr %i.n, align 8, !tbaa !592
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #56
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.au = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.b
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !592
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void

bb.i:                                             ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoC2ENS0_12CodeLocationE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ad
  br i1 %i.ba, label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8: ; preds = %bb.i
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !592
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #56
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit10

_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit10: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8
  %i.bd = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.n
  br i1 %i.be, label %_ZN7testing8internal12CodeLocationD2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit10
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !592
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #56
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit13

_ZN7testing8internal12CodeLocationD2Ev.exit13:    ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.bh = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.b
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit13
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !592
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal47RegisterTypeParameterizedTestSuiteInstantiationEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  tail call void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry21RegisterInstantiationEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry21RegisterInstantiationEPKc(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !586
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.517) #57
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.d, ptr %i.a, align 8, !tbaa !591
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !589
  %i.g = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.g, ptr %i.b, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !592
  store i8 %i.i, ptr %i.h, align 1, !tbaa !592
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !590
  %i.l = load ptr, ptr %2, align 8, !tbaa !589
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2180 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  %.pre = load ptr, ptr %2, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.q = load i64, ptr %i.k, align 8, !tbaa !590  ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !590  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !589
  %i.w = call i32 @memcmp(ptr noundef %i.v, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #55 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.x = sub i64 %i.s, %i.q
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.y, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !2184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.f, !llvm.loop !55

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.z, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !590 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.q) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !589
  %i.af = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.ag = sub i64 %i.q, %i.ab
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ah, ptr %i.p, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.p, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.ai = icmp eq ptr %.pre, %i.b
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !592
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %.not = icmp eq ptr %.sroa.0.0.i.i, %i.p
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 104
  store i8 1, ptr %i.al, align 8, !tbaa !2224
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 2, ptr noundef nonnull @.str.137, i32 noundef 607)
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.151, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %1, i64 noundef %i.an)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.152, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %i.aq

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJS5_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(41) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2180 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !590  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !590  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !589
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #55 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !2184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !55

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !590  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !589
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #55 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i21 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJS5_SB_EEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(41) %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.019.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry22CheckForInstantiationsEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %class.anon.154, align 8            ; 16 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %class.anon.154, align 8           ; 15 uses
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2062

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %.pn24.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %lpad.loopexit.split-lp512, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit.split-lp512, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2181 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not384 = icmp eq ptr %i.j, %i.k
  br i1 %.not384, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 424 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.aq, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.aq
  %.sroa.0110.0385 = phi ptr [ %i.j, %.lr.ph ], [ %i.kk, %bb.aq ] ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0110.0385, i64 32 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0110.0385, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0110.0385, i64 104
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !2224, !range !581, !noundef !582
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.aq, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !2180 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0110.0385, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !590 ; 4 uses
  %i.bb = load ptr, ptr %i.at, align 8            ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !590 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.bd) ; 2 uses
  %i.be = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.be, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !589
  %i.bh = call i32 @memcmp(ptr noundef %i.bg, ptr noundef %i.bb, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #55 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.h
  %i.bi = sub i64 %i.bd, %i.ba
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bi, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bj = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.bj, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.bj, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !2184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.h, !llvm.loop !53

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bk = icmp eq ptr %.19.i.i.i, %i.n
  br i1 %i.bk, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !590 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.ba) ; 2 uses
  %i.bn = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !589
  %i.bq = call i32 @memcmp(ptr noundef %i.bb, ptr noundef %i.bp, i64 noundef %.sroa.speculated.i.i.i.i.i) #55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.i
  %i.br = sub i64 %i.ba, %i.bm
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.br, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bs = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bs, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.aq

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.g, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  call void @llvm.experimental.noalias.scope.decl(metadata !15321)
  %i.bt = load ptr, ptr %i.at, align 8, !tbaa !589, !noalias !15321
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0110.0385, i64 40 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !590, !noalias !15321 ; 3 uses
  store ptr %i.o, ptr %8, align 8, !tbaa !586, !alias.scope !15322
  store i64 0, ptr %i.p, align 8, !tbaa !590, !alias.scope !15322
  store i8 0, ptr %i.o, align 8, !tbaa !592, !alias.scope !15322
  %i.bw = add i64 %i.bv, 30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bw)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.bx = load i64, ptr %i.p, align 8, !tbaa !590, !alias.scope !15322
  %i.by = add i64 %i.bx, -4611686018427387874
  %i.bz = icmp ult i64 %i.by, 30
  br i1 %i.bz, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.153, i64 noundef 30)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cb = load i64, ptr %i.p, align 8, !tbaa !590, !alias.scope !15322
  %i.cc = sub i64 4611686018427387903, %i.cb
  %i.cd = icmp ult i64 %i.cc, %i.bv
  br i1 %i.cd, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.bt, i64 noundef %i.bv)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, %.invoke.i.i
  %lpad.loopexit.split-lp512 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %8, align 8, !tbaa !589, !alias.scope !15322 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.o
  br i1 %i.cg, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !592, !alias.scope !15322
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #56
  br label %common.resume

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
end_hunk_8
begin_hunk_9_@_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.p, i64 %i.aa, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.i.i32, %bb.h, %bb.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !591 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !590
  %i.aj = load ptr, ptr %0, align 8, !tbaa !589
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.critedge25

.critedge28:                                      ; preds = %bb.f, %bb.e, %._crit_edge.i.i29
  %i.al = load i64, ptr %i.b, align 8, !tbaa !591 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !590
  %i.an = load ptr, ptr %0, align 8, !tbaa !589
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %.critedge25

.critedge25:                                      ; preds = %.critedge, %.critedge28
  %i.ap = load ptr, ptr %1, align 8, !tbaa !589   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge25
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !592
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  ret void

.critedge27:                                      ; preds = %.noexc.i33, %.noexc.i30
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %1, align 8, !tbaa !589   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.d
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.critedge27
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !592
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.critedge27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal15UnitTestOptions27GetAbsolutePathToOutputFileB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %5 = alloca %"class.testing::internal::FilePath", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.testing::internal::FilePath", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.testing::internal::FilePath", align 8 ; 15 uses
  %12 = alloca %"class.testing::internal::FilePath", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.testing::internal::FilePath", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %17 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !586
  %i.j = load ptr, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, align 8, !tbaa !589 ; 2 uses
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, i64 8), align 8, !tbaa !590 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #55
  store i64 %i.k, ptr %i.h, align 8, !tbaa !591
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !589
  %i.n = load i64, ptr %i.h, align 8, !tbaa !591
  store i64 %i.n, ptr %i.i, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !592
  store i8 %i.p, ptr %i.o, align 1, !tbaa !592
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !591  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !590
  %i.s = load ptr, ptr %1, align 8, !tbaa !589
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #55
  %i.u = load ptr, ptr %1, align 8, !tbaa !589
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  invoke void @_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !590
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge.i.i54, label %bb.f

._crit_edge.i.i54:                                ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.y, ptr noundef nonnull align 1 dereferenceable(3) @_ZN7testingL20kDefaultOutputFormatE, i64 3, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 3, ptr %i.z, align 8, !tbaa !590
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.aa, align 1, !tbaa !592
  %i.ab = load ptr, ptr %2, align 8, !tbaa !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ab, ptr noundef nonnull align 1 dereferenceable(3) @_ZN7testingL20kDefaultOutputFormatE, i64 3, i1 false)
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !590 ; 2 uses
  store i64 %i.ac, ptr %i.v, align 8, !tbaa !590
  %i.ad = load ptr, ptr %2, align 8, !tbaa !589
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !592
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !589
  store i64 0, ptr %i.z, align 8, !tbaa !590
  store i8 0, ptr %.pre.i, align 1, !tbaa !592
  %i.af = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.y
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i54
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !592
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %i.ak = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.u, i32 noundef 58) #62 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.g, label %bb.ad

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.am = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.l, !prof !609

bb.h:                                             ; preds = %bb.g
  %i.ao = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i56 = icmp eq i32 %i.ao, 0
  br i1 %.not.i56, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.j unwind label %bb.k, !inline_history !2062

bb.j:                                             ; preds = %bb.i
  %i.ap = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %.body

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.j
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !589 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.au, ptr %6, align 8, !tbaa !586
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.517) #57
          to label %.noexc59 unwind label %bb.aa

.noexc59:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #55
  store i64 %i.aw, ptr %i.g, align 8, !tbaa !591
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %.noexc.i58, label %._crit_edge.i.i57

.noexc.i58:                                       ; preds = %bb.n
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc60 unwind label %bb.aa  ; 2 uses

.noexc60:                                         ; preds = %.noexc.i58
  store ptr %i.ay, ptr %6, align 8, !tbaa !589
  %i.az = load i64, ptr %i.g, align 8, !tbaa !591
  store i64 %i.az, ptr %i.au, align 8, !tbaa !592
  br label %._crit_edge.i.i57

._crit_edge.i.i57:                                ; preds = %.noexc60, %bb.n
  %i.ba = phi ptr [ %i.ay, %.noexc60 ], [ %i.au, %bb.n ] ; 2 uses
  switch i64 %i.aw, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i57
  %i.bb = load i8, ptr %i.at, align 1, !tbaa !592
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !592
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr nonnull align 1 %i.at, i64 %i.aw, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i57
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !591 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !590
  %i.be = load ptr, ptr %6, align 8, !tbaa !589
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #55
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.bg, ptr %5, align 8, !tbaa !586
  %i.bh = load ptr, ptr %6, align 8, !tbaa !589   ; 3 uses
  %i.bi = icmp eq ptr %i.bh, %i.au
  br i1 %i.bi, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

bb.r:                                             ; preds = %bb.q
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !590 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.q
  store ptr %i.bh, ptr %5, align 8, !tbaa !589
  %i.bm = load i64, ptr %i.au, align 8, !tbaa !592
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !592
  %.pr = load i64, ptr %i.bd, align 8, !tbaa !590
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.r
  %i.bn = phi ptr [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.bg, %bb.r ] ; 5 uses
  %i.bo = phi i64 [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.bj, %bb.r ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !590
  store ptr %i.au, ptr %6, align 8, !tbaa !589
  store i64 0, ptr %i.bd, align 8, !tbaa !590
  store i8 0, ptr %i.au, align 8, !tbaa !592
  %.not1820.i.i = icmp samesign eq i64 %i.bo, 0
  br i1 %.not1820.i.i, label %.lr.ph.i.i71.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %bb.t
  %i.bq = phi i64 [ %i.by, %bb.t ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %i.br = phi ptr [ %i.bz, %bb.t ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 2 uses
  %.sroa.013.022.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.t ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 5 uses
  %.sroa.010.021.i.i = phi ptr [ %i.ca, %bb.t ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 2 uses
  %i.bs = load i8, ptr %.sroa.010.021.i.i, align 1, !tbaa !592 ; 2 uses
  %i.bt = icmp ne i8 %i.bs, 47
  %i.bu = icmp eq ptr %.sroa.013.022.i.i, %i.br
  %or.cond.i = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %or.cond.i, label %.sink.split.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.bv = getelementptr inbounds i8, ptr %.sroa.013.022.i.i, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !592
  %.not.i.i = icmp eq i8 %i.bw, 47
  br i1 %.not.i.i, label %bb.t, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.s, %.lr.ph.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i, i64 1
  store i8 %i.bs, ptr %.sroa.013.022.i.i, align 1, !tbaa !592
  %.pre.i63 = load ptr, ptr %5, align 8, !tbaa !589
  %.pre2.i = load i64, ptr %i.bp, align 8, !tbaa !590
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i.i, %bb.s
  %i.by = phi i64 [ %i.bq, %bb.s ], [ %.pre2.i, %.sink.split.i.i ] ; 2 uses
  %i.bz = phi ptr [ %i.br, %bb.s ], [ %.pre.i63, %.sink.split.i.i ] ; 3 uses
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.022.i.i, %bb.s ], [ %i.bx, %.sink.split.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i, i64 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  %.not18.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not18.i.i, label %.lr.ph.i.i71.preheader, label %.lr.ph.i.i, !llvm.loop !41

.lr.ph.i.i71.preheader:                           ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.sroa.013.0.lcssa.i.i = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %.sroa.013.1.i.i, %bb.t ]
  %.lcssa19.i.i = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cc = ptrtoint ptr %.sroa.013.0.lcssa.i.i to i64
  %i.cd = ptrtoint ptr %.lcssa19.i.i to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  store i64 %i.ce, ptr %i.bp, align 8, !tbaa !590
  %i.cf = getelementptr inbounds nuw i8, ptr %.lcssa19.i.i, i64 %i.ce
  store i8 0, ptr %i.cf, align 1, !tbaa !592
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cg, ptr noundef nonnull align 1 dereferenceable(11) @_ZN7testingL18kDefaultOutputFileE, i64 11, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 27
  store i8 0, ptr %i.ci, align 1, !tbaa !592
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.cj, ptr %7, align 8, !tbaa !586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cj, ptr noundef nonnull align 8 dereferenceable(12) %i.cg, i64 12, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 11, ptr %i.ck, align 8, !tbaa !590
  store ptr %i.cg, ptr %8, align 8, !tbaa !589
  store i64 0, ptr %i.ch, align 8, !tbaa !590
  store i8 0, ptr %i.cg, align 8, !tbaa !592
  br label %.lr.ph.i.i71

.lr.ph.i.i71:                                     ; preds = %.lr.ph.i.i71.preheader, %bb.v
  %i.cl = phi i64 [ %i.ct, %bb.v ], [ 11, %.lr.ph.i.i71.preheader ]
  %i.cm = phi ptr [ %i.cu, %bb.v ], [ %i.cj, %.lr.ph.i.i71.preheader ] ; 2 uses
  %.sroa.013.022.i.i72 = phi ptr [ %.sroa.013.1.i.i79, %bb.v ], [ %i.cj, %.lr.ph.i.i71.preheader ] ; 5 uses
  %.sroa.010.021.i.i73 = phi ptr [ %i.cv, %bb.v ], [ %i.cj, %.lr.ph.i.i71.preheader ] ; 2 uses
  %i.cn = load i8, ptr %.sroa.010.021.i.i73, align 1, !tbaa !592 ; 2 uses
  %i.co = icmp ne i8 %i.cn, 47
  %i.cp = icmp eq ptr %.sroa.013.022.i.i72, %i.cm
  %or.cond.i74 = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.i74, label %.sink.split.i.i76, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i71
  %i.cq = getelementptr inbounds i8, ptr %.sroa.013.022.i.i72, i64 -1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !592
  %.not.i.i75 = icmp eq i8 %i.cr, 47
  br i1 %.not.i.i75, label %bb.v, label %.sink.split.i.i76

.sink.split.i.i76:                                ; preds = %bb.u, %.lr.ph.i.i71
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i72, i64 1
  store i8 %i.cn, ptr %.sroa.013.022.i.i72, align 1, !tbaa !592
  %.pre.i77 = load ptr, ptr %7, align 8, !tbaa !589
  %.pre2.i78 = load i64, ptr %i.ck, align 8, !tbaa !590
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i.i76, %bb.u
  %i.ct = phi i64 [ %i.cl, %bb.u ], [ %.pre2.i78, %.sink.split.i.i76 ] ; 2 uses
  %i.cu = phi ptr [ %i.cm, %bb.u ], [ %.pre.i77, %.sink.split.i.i76 ] ; 4 uses
  %.sroa.013.1.i.i79 = phi ptr [ %.sroa.013.022.i.i72, %bb.u ], [ %i.cs, %.sink.split.i.i76 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i73, i64 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  %.not18.i.i80 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not18.i.i80, label %.loopexit, label %.lr.ph.i.i71, !llvm.loop !41

.loopexit:                                        ; preds = %bb.v
  %i.cx = ptrtoint ptr %.sroa.013.1.i.i79 to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  store i64 %i.cz, ptr %i.ck, align 8, !tbaa !590
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz
  store i8 0, ptr %i.da, align 1, !tbaa !592
  %i.db = load ptr, ptr %2, align 8, !tbaa !589
  invoke void @_ZN7testing8internal8FilePath12MakeFileNameERKS1_S3_iPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 0, ptr noundef %i.db)
          to label %bb.w unwind label %bb.ab

end_hunk_9
begin_hunk_10_@_ZN7testing8internal15UnitTestOptions27GetAbsolutePathToOutputFileB5cxx11Ev:bb.a
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit105

_ZN7testing8internal8FilePathD2Ev.exit105:        ; preds = %_ZN7testing8internal8FilePathD2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i103
  %i.ew = load ptr, ptr %8, align 8, !tbaa !589   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.cg
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit105
  %i.ey = load i64, ptr %i.cg, align 8, !tbaa !592
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  %i.fa = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.bg
  br i1 %i.fb, label %_ZN7testing8internal8FilePathD2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.fc = load i64, ptr %i.bg, align 8, !tbaa !592
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit111

_ZN7testing8internal8FilePathD2Ev.exit111:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109
  %i.fe = load ptr, ptr %6, align 8, !tbaa !589   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.au
  br i1 %i.ff, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit111
  %i.fg = load i64, ptr %i.au, align 8, !tbaa !592
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #56
  br label %.body

.body:                                            ; preds = %_ZN7testing8internal8FilePathD2Ev.exit111, %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.k
  %.pn44.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %.pn44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %i.ek, %bb.aa ], [ %.pn44, %_ZN7testing8internal8FilePathD2Ev.exit111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.cf

bb.ad:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  store ptr %i.fj, ptr %10, align 8, !tbaa !586
  %i.fk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fi) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  store i64 %i.fk, ptr %i.e, align 8, !tbaa !591
  %i.fl = icmp ugt i64 %i.fk, 15
  br i1 %i.fl, label %.noexc.i116, label %._crit_edge.i.i115

.noexc.i116:                                      ; preds = %bb.ad
  %i.fm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc117 unwind label %bb.bj ; 2 uses

.noexc117:                                        ; preds = %.noexc.i116
  store ptr %i.fm, ptr %10, align 8, !tbaa !589
  %i.fn = load i64, ptr %i.e, align 8, !tbaa !591
  store i64 %i.fn, ptr %i.fj, align 8, !tbaa !592
  br label %._crit_edge.i.i115

._crit_edge.i.i115:                               ; preds = %.noexc117, %bb.ad
  %i.fo = phi ptr [ %i.fm, %.noexc117 ], [ %i.fj, %bb.ad ] ; 2 uses
  switch i64 %i.fk, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i115
  %i.fp = load i8, ptr %i.fi, align 1, !tbaa !592
  store i8 %i.fp, ptr %i.fo, align 1, !tbaa !592
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i115
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fo, ptr nonnull align 1 %i.fi, i64 %i.fk, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i115
  %i.fq = load i64, ptr %i.e, align 8, !tbaa !591 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !590
  %i.fs = load ptr, ptr %10, align 8, !tbaa !589
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fq
  store i8 0, ptr %i.ft, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  store ptr %i.fu, ptr %9, align 8, !tbaa !586
  %i.fv = load ptr, ptr %10, align 8, !tbaa !589  ; 3 uses
  %i.fw = icmp eq ptr %i.fv, %i.fj
  br i1 %i.fw, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

bb.ah:                                            ; preds = %bb.ag
  %i.fx = load i64, ptr %i.fr, align 8, !tbaa !590 ; 3 uses
  %i.fy = icmp ult i64 %i.fx, 16
  call void @llvm.assume(i1 %i.fy)
  %i.fz = add nuw nsw i64 %i.fx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fu, ptr noundef nonnull align 8 dereferenceable(1) %i.fj, i64 %i.fz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.ag
  store ptr %i.fv, ptr %9, align 8, !tbaa !589
  %i.ga = load i64, ptr %i.fj, align 8, !tbaa !592
  store i64 %i.ga, ptr %i.fu, align 8, !tbaa !592
  %.pr267 = load i64, ptr %i.fr, align 8, !tbaa !590
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.ah
  %i.gb = phi ptr [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.fu, %bb.ah ] ; 5 uses
  %i.gc = phi i64 [ %.pr267, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.fx, %bb.ah ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !590
  store ptr %i.fj, ptr %10, align 8, !tbaa !589
  store i64 0, ptr %i.fr, align 8, !tbaa !590
  store i8 0, ptr %i.fj, align 8, !tbaa !592
  %.not1820.i.i121 = icmp samesign eq i64 %i.gc, 0
  br i1 %.not1820.i.i121, label %.loopexit273, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120, %bb.aj
  %i.ge = phi i64 [ %i.gm, %bb.aj ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120 ]
  %i.gf = phi ptr [ %i.gn, %bb.aj ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120 ] ; 2 uses
  %.sroa.013.022.i.i123 = phi ptr [ %.sroa.013.1.i.i130, %bb.aj ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120 ] ; 5 uses
  %.sroa.010.021.i.i124 = phi ptr [ %i.go, %bb.aj ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120 ] ; 2 uses
  %i.gg = load i8, ptr %.sroa.010.021.i.i124, align 1, !tbaa !592 ; 2 uses
  %i.gh = icmp ne i8 %i.gg, 47
  %i.gi = icmp eq ptr %.sroa.013.022.i.i123, %i.gf
  %or.cond.i125 = select i1 %i.gh, i1 true, i1 %i.gi
  br i1 %or.cond.i125, label %.sink.split.i.i127, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i122
  %i.gj = getelementptr inbounds i8, ptr %.sroa.013.022.i.i123, i64 -1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !592
  %.not.i.i126 = icmp eq i8 %i.gk, 47
  br i1 %.not.i.i126, label %bb.aj, label %.sink.split.i.i127

.sink.split.i.i127:                               ; preds = %bb.ai, %.lr.ph.i.i122
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i123, i64 1
  store i8 %i.gg, ptr %.sroa.013.022.i.i123, align 1, !tbaa !592
  %.pre.i128 = load ptr, ptr %9, align 8, !tbaa !589
  %.pre2.i129 = load i64, ptr %i.gd, align 8, !tbaa !590
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i.i127, %bb.ai
  %i.gm = phi i64 [ %i.ge, %bb.ai ], [ %.pre2.i129, %.sink.split.i.i127 ] ; 2 uses
  %i.gn = phi ptr [ %i.gf, %bb.ai ], [ %.pre.i128, %.sink.split.i.i127 ] ; 3 uses
  %.sroa.013.1.i.i130 = phi ptr [ %.sroa.013.022.i.i123, %bb.ai ], [ %i.gl, %.sink.split.i.i127 ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i124, i64 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gm
  %.not18.i.i131 = icmp eq ptr %i.go, %i.gp
  br i1 %.not18.i.i131, label %.loopexit273, label %.lr.ph.i.i122, !llvm.loop !41

.loopexit273:                                     ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120
  %.sroa.013.0.lcssa.i.i132 = phi ptr [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120 ], [ %.sroa.013.1.i.i130, %bb.aj ]
  %.lcssa19.i.i133 = phi ptr [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i120 ], [ %i.gn, %bb.aj ] ; 2 uses
  %i.gq = ptrtoint ptr %.sroa.013.0.lcssa.i.i132 to i64
  %i.gr = ptrtoint ptr %.lcssa19.i.i133 to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 2 uses
  store i64 %i.gs, ptr %i.gd, align 8, !tbaa !590
  %i.gt = getelementptr inbounds nuw i8, ptr %.lcssa19.i.i133, i64 %i.gs
  store i8 0, ptr %i.gt, align 1, !tbaa !592
  %i.gu = load ptr, ptr %10, align 8, !tbaa !589  ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.fj
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %.loopexit273
  %i.gw = load i64, ptr %i.fj, align 8, !tbaa !592
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %.loopexit273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  %i.gy = load i64, ptr %i.gd, align 8, !tbaa !590 ; 2 uses
  %.not.i.i138 = icmp samesign eq i64 %i.gy, 0
  br i1 %.not.i.i138, label %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit.thread, label %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit

_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.gz = load ptr, ptr %9, align 8, !tbaa !589
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !592
  %i.hb = icmp eq i8 %i.ha, 47
  br i1 %i.hb, label %_ZNK7testing8internal8FilePath11IsDirectoryEv.exit, label %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit.thread

_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #55
  %i.hc = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.hd = icmp eq i8 %i.hc, 0
  br i1 %i.hd, label %bb.ak, label %bb.ao, !prof !609

bb.ak:                                            ; preds = %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit.thread
  %i.he = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i139 = icmp eq i32 %i.he, 0
  br i1 %.not.i139, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.am unwind label %bb.an, !inline_history !2062

bb.am:                                            ; preds = %bb.al
  %i.hf = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %.body140

bb.ao:                                            ; preds = %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit.thread, %bb.ak, %bb.am
  %i.hh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !589 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.hk, ptr %13, align 8, !tbaa !586
  %i.hl = icmp eq ptr %i.hj, null
  br i1 %i.hl, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.517) #57
          to label %.noexc145 unwind label %bb.bl

.noexc145:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.hm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hj) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  store i64 %i.hm, ptr %i.d, align 8, !tbaa !591
  %i.hn = icmp ugt i64 %i.hm, 15
  br i1 %i.hn, label %.noexc.i144, label %._crit_edge.i.i143

.noexc.i144:                                      ; preds = %bb.aq
  %i.ho = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc146 unwind label %bb.bl ; 2 uses

.noexc146:                                        ; preds = %.noexc.i144
  store ptr %i.ho, ptr %13, align 8, !tbaa !589
  %i.hp = load i64, ptr %i.d, align 8, !tbaa !591
  store i64 %i.hp, ptr %i.hk, align 8, !tbaa !592
  br label %._crit_edge.i.i143

._crit_edge.i.i143:                               ; preds = %.noexc146, %bb.aq
  %i.hq = phi ptr [ %i.ho, %.noexc146 ], [ %i.hk, %bb.aq ] ; 2 uses
  switch i64 %i.hm, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i143
  %i.hr = load i8, ptr %i.hj, align 1, !tbaa !592
  store i8 %i.hr, ptr %i.hq, align 1, !tbaa !592
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i143
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hq, ptr nonnull align 1 %i.hj, i64 %i.hm, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i143
  %i.hs = load i64, ptr %i.d, align 8, !tbaa !591 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !590
  %i.hu = load ptr, ptr %13, align 8, !tbaa !589
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hs
  store i8 0, ptr %i.hv, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  store ptr %i.hw, ptr %12, align 8, !tbaa !586
  %i.hx = load ptr, ptr %13, align 8, !tbaa !589  ; 3 uses
  %i.hy = icmp eq ptr %i.hx, %i.hk
  br i1 %i.hy, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

bb.au:                                            ; preds = %bb.at
  %i.hz = load i64, ptr %i.ht, align 8, !tbaa !590 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ia)
  %i.ib = add nuw nsw i64 %i.hz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hw, ptr noundef nonnull align 8 dereferenceable(1) %i.hk, i64 %i.ib, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.at
  store ptr %i.hx, ptr %12, align 8, !tbaa !589
  %i.ic = load i64, ptr %i.hk, align 8, !tbaa !592
  store i64 %i.ic, ptr %i.hw, align 8, !tbaa !592
  %.pr269 = load i64, ptr %i.ht, align 8, !tbaa !590
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i149: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.au
  %i.id = phi ptr [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %i.hw, %bb.au ] ; 5 uses
  %i.ie = phi i64 [ %.pr269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %i.hz, %bb.au ] ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !590
  store ptr %i.hk, ptr %13, align 8, !tbaa !589
  store i64 0, ptr %i.ht, align 8, !tbaa !590
  store i8 0, ptr %i.hk, align 8, !tbaa !592
  %.not1820.i.i150 = icmp samesign eq i64 %i.ie, 0
  br i1 %.not1820.i.i150, label %.loopexit272, label %.lr.ph.i.i151

.lr.ph.i.i151:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i149, %bb.aw
  %i.ig = phi i64 [ %i.io, %bb.aw ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i149 ]
  %i.ih = phi ptr [ %i.ip, %bb.aw ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i149 ] ; 2 uses
  %.sroa.013.022.i.i152 = phi ptr [ %.sroa.013.1.i.i159, %bb.aw ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i149 ] ; 5 uses
  %.sroa.010.021.i.i153 = phi ptr [ %i.iq, %bb.aw ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i149 ] ; 2 uses
  %i.ii = load i8, ptr %.sroa.010.021.i.i153, align 1, !tbaa !592 ; 2 uses
  %i.ij = icmp ne i8 %i.ii, 47
  %i.ik = icmp eq ptr %.sroa.013.022.i.i152, %i.ih
  %or.cond.i154 = select i1 %i.ij, i1 true, i1 %i.ik
  br i1 %or.cond.i154, label %.sink.split.i.i156, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i151
  %i.il = getelementptr inbounds i8, ptr %.sroa.013.022.i.i152, i64 -1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !592
  %.not.i.i155 = icmp eq i8 %i.im, 47
  br i1 %.not.i.i155, label %bb.aw, label %.sink.split.i.i156

.sink.split.i.i156:                               ; preds = %bb.av, %.lr.ph.i.i151
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i152, i64 1
  store i8 %i.ii, ptr %.sroa.013.022.i.i152, align 1, !tbaa !592
  %.pre.i157 = load ptr, ptr %12, align 8, !tbaa !589
  %.pre2.i158 = load i64, ptr %i.if, align 8, !tbaa !590
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split.i.i156, %bb.av
  %i.io = phi i64 [ %i.ig, %bb.av ], [ %.pre2.i158, %.sink.split.i.i156 ] ; 2 uses
  %i.ip = phi ptr [ %i.ih, %bb.av ], [ %.pre.i157, %.sink.split.i.i156 ] ; 3 uses
  %.sroa.013.1.i.i159 = phi ptr [ %.sroa.013.022.i.i152, %bb.av ], [ %i.in, %.sink.split.i.i156 ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i153, i64 1 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.io
  %.not18.i.i160 = icmp eq ptr %i.iq, %i.ir
  br i1 %.not18.i.i160, label %.loopexit272, label %.lr.ph.i.i151, !llvm.loop !41

.loopexit272:                                     ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i149
  %.sroa.013.0.lcssa.i.i161 = phi ptr [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i149 ], [ %.sroa.013.1.i.i159, %bb.aw ]
  %.lcssa19.i.i162 = phi ptr [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i149 ], [ %i.ip, %bb.aw ] ; 2 uses
  %i.is = ptrtoint ptr %.sroa.013.0.lcssa.i.i161 to i64
  %i.it = ptrtoint ptr %.lcssa19.i.i162 to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 2 uses
  store i64 %i.iu, ptr %i.if, align 8, !tbaa !590
  %i.iv = getelementptr inbounds nuw i8, ptr %.lcssa19.i.i162, i64 %i.iu
  store i8 0, ptr %i.iv, align 1, !tbaa !592
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #55
  %i.iw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 12 uses
  store ptr %i.iw, ptr %15, align 8, !tbaa !586
  %i.ix = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fi) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  store i64 %i.ix, ptr %i.c, align 8, !tbaa !591
  %i.iy = icmp ugt i64 %i.ix, 15
  br i1 %i.iy, label %.noexc.i165, label %._crit_edge.i.i164

.noexc.i165:                                      ; preds = %.loopexit272
  %i.iz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc166 unwind label %bb.bm ; 2 uses

.noexc166:                                        ; preds = %.noexc.i165
  store ptr %i.iz, ptr %15, align 8, !tbaa !589
  %i.ja = load i64, ptr %i.c, align 8, !tbaa !591
  store i64 %i.ja, ptr %i.iw, align 8, !tbaa !592
  br label %._crit_edge.i.i164

._crit_edge.i.i164:                               ; preds = %.noexc166, %.loopexit272
  %i.jb = phi ptr [ %i.iz, %.noexc166 ], [ %i.iw, %.loopexit272 ] ; 2 uses
  switch i64 %i.ix, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %bb.az
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i164
  %i.jc = load i8, ptr %i.fi, align 1, !tbaa !592
  store i8 %i.jc, ptr %i.jb, align 1, !tbaa !592
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i164
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jb, ptr nonnull align 1 %i.fi, i64 %i.ix, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i164
  %i.jd = load i64, ptr %i.c, align 8, !tbaa !591 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i64 %i.jd, ptr %i.je, align 8, !tbaa !590
  %i.jf = load ptr, ptr %15, align 8, !tbaa !589
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jd
  store i8 0, ptr %i.jg, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 8 uses
  store ptr %i.jh, ptr %14, align 8, !tbaa !586
  %i.ji = load ptr, ptr %15, align 8, !tbaa !589  ; 3 uses
  %i.jj = icmp eq ptr %i.ji, %i.iw
  br i1 %i.jj, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

bb.ba:                                            ; preds = %bb.az
  %i.jk = load i64, ptr %i.je, align 8, !tbaa !590 ; 3 uses
  %i.jl = icmp ult i64 %i.jk, 16
  call void @llvm.assume(i1 %i.jl)
  %i.jm = add nuw nsw i64 %i.jk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jh, ptr noundef nonnull align 8 dereferenceable(1) %i.iw, i64 %i.jm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.az
  store ptr %i.ji, ptr %14, align 8, !tbaa !589
  %i.jn = load i64, ptr %i.iw, align 8, !tbaa !592
end_hunk_10
begin_hunk_11_@_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %.0.val, i64 noundef %.8.val)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.h = load i64, ptr %i.b, align 8, !tbaa !590, !alias.scope !15358
  %i.i = icmp eq i64 %i.h, 4611686018427387903
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.40, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !589, !alias.scope !15358 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !592, !alias.scope !15358
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #56
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15359)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !590, !noalias !15359 ; 2 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !590, !noalias !15359
  %i.s = sub i64 4611686018427387903, %i.r
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.u = load ptr, ptr %1, align 8, !tbaa !589, !noalias !15359
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.u, i64 noundef %i.q)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !586, !alias.scope !15359
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !589  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !590 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.x, ptr %2, align 8, !tbaa !589, !alias.scope !15359
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !592
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !592, !alias.scope !15359
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !590
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.af = phi i64 [ %i.ab, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !590, !alias.scope !15359
  store ptr %i.y, ptr %i.v, align 8, !tbaa !589
  store i64 0, ptr %i.ag, align 8, !tbaa !590
  store i8 0, ptr %i.y, align 8, !tbaa !592
  %i.ai = invoke fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_114UnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc7 unwind label %bb.i

.noexc7:                                          ; preds = %bb.f
  br i1 %i.ai, label %bb.g, label %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %.noexc7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = invoke fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_114UnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.g
  %i.al = xor i1 %i.ak, true
  br label %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc8, %.noexc7
  %i.am = phi i1 [ false, %.noexc7 ], [ %i.al, %.noexc8 ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.w
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ap = load i64, ptr %i.w, align 8, !tbaa !592
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.ar = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.a, align 8, !tbaa !592
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret i1 %i.am

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.w
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.i
  %i.az = load i64, ptr %i.w, align 8, !tbaa !592
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.aw, %bb.i ]
  %i.bb = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.a
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !592
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterC2EPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 12), (24, 32)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !598
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !2237
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !2238
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !2237
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = tail call noundef ptr @_ZN7testing8internal12UnitTestImpl31GetGlobalTestPartResultReporterEv(ptr noundef nonnull align 8 dereferenceable(713) %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !2239
  tail call void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(713) %i.f, ptr noundef nonnull %0)
  br label %bb.h

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2126
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !2239
  %i.p = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  store ptr %0, ptr %i.p, align 8, !tbaa !2126
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterC2ENS0_13InterceptModeEPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 12), (24, 32)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !598
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !2237
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.b, align 8, !tbaa !2238
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7testing8internal12UnitTestImpl31GetGlobalTestPartResultReporterEv(ptr noundef nonnull align 8 dereferenceable(713) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #55 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.454, i32 noundef 1654)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.455, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.456, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.f

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.g, ptr %i.h, align 8, !tbaa !2189
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2240
  store i8 0, ptr %i.i, align 8, !tbaa !2190
  %i.l = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #55 ; 2 uses
  %.not.i.i1 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i1, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.454, i32 noundef 1666)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.457, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2: ; preds = %.noexc.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.456, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.l)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2, %.noexc.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %.body.i

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.p, %bb.g ]
  %i.r = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.r) #61
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, %bb.f
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #55 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.454, i32 noundef 1654)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.455, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.456, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %i.f

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.g, ptr %i.h, align 8, !tbaa !2189
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.j, align 8, !tbaa !2240
  store i8 0, ptr %i.i, align 8, !tbaa !2190
  %i.k = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #55 ; 2 uses
  %.not.i.i2 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i2, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.454, i32 noundef 1666)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.457, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3: ; preds = %.noexc.i
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.456, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.k)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3, %.noexc.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %.body.i

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.o, %bb.g ]
  %i.q = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.q) #61
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !598
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !2237
  %i.i = icmp eq i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2239 ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(713) %i.f, ptr noundef %i.k)
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.m = invoke noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE.exit unwind label %bb.j

_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE.exit: ; preds = %bb.h
  store ptr %i.k, ptr %i.m, align 8, !tbaa !2126
  br label %bb.i

bb.i:                                             ; preds = %_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE.exit, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.e, %bb.e ]
  %i.o = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.o) #61
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporterD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #55
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #56
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporter20ReportTestPartResultERKNS_14TestPartResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2238 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2121 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2122
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !2121
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.h, ptr %i.c, align 8, !tbaa !2121
  br label %_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE.exit

_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #17 {
bb.a:
  ret ptr @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal20SingleFailureCheckerC2EPKNS_19TestPartResultArrayENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 12)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !2242
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.b, align 8, !tbaa !2243
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !586
  %i.e = load ptr, ptr %3, align 8, !tbaa !589    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !590  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.g, ptr %i.a, align 8, !tbaa !591
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !589
  %i.j = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.j, ptr %i.d, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !592
  store i8 %i.l, ptr %i.k, align 1, !tbaa !592
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !590
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal20SingleFailureCheckerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.testing::Message", align 8 ; 15 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 12 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 14 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %19 = alloca %"class.testing::Message", align 8 ; 5 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #55
  %i.b = load ptr, ptr %0, align 8, !tbaa !2242   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !2243 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15378)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #55, !noalias !15378
  %.not1.i = icmp eq i32 %i.d, 2                  ; 3 uses
  %i.f = select i1 %.not1.i, ptr @.str.447, ptr @.str.448
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.g, ptr %13, align 8, !tbaa !586, !noalias !15378
  %i.h = select i1 %.not1.i, i64 15, i64 19       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !15378
  store i64 %i.h, ptr %i.a, align 8, !tbaa !591, !noalias !15378
  br i1 %.not1.i, label %._crit_edge.i.i.i, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.bm    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.i, ptr %13, align 8, !tbaa !589, !noalias !15378
  %i.j = load i64, ptr %i.a, align 8, !tbaa !591, !noalias !15378
  store i64 %i.j, ptr %i.g, align 8, !tbaa !592, !noalias !15378
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.g, %bb.a ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.k, ptr noundef nonnull align 1 dereferenceable(15) %i.f, i64 %i.h, i1 false), !noalias !15378
  %i.l = load i64, ptr %i.a, align 8, !tbaa !591, !noalias !15378 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !590, !noalias !15378
  %i.n = load ptr, ptr %13, align 8, !tbaa !589, !noalias !15378
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
end_hunk_11
begin_hunk_12_@_ZN7testing8internal14GTestFlagSaverC2Ev:bb.a
  %i.s = load i8, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !tbaa !593, !range !581, !noundef !582
  store i8 %i.s, ptr %0, align 8, !tbaa !14259
  %i.t = load i8, ptr @_ZN7testing28FLAGS_gtest_break_on_failureE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !14260
  %i.v = load i8, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.w, align 2, !tbaa !14261
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing17FLAGS_gtest_colorB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.x = load i8, ptr @_ZN7testing31FLAGS_gtest_death_test_use_forkE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.x, ptr %i.y, align 8, !tbaa !14262
  %i.z = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !14263
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_filterB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing35FLAGS_gtest_internal_run_death_testB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3
  %i.ab = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.ab, ptr %i.ac, align 8, !tbaa !14264
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_outputB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4
  %i.ad = load i8, ptr @_ZN7testing17FLAGS_gtest_briefE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !14265
  %i.af = load i8, ptr @_ZN7testing22FLAGS_gtest_print_timeE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !14266
  %i.ah = load i8, ptr @_ZN7testing22FLAGS_gtest_print_utf8E, align 1, !tbaa !593, !range !581, !noundef !582
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i8 %i.ah, ptr %i.ai, align 2, !tbaa !14267
  %i.aj = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !608
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !14268
  %i.al = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4, !tbaa !608
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.al, ptr %i.am, align 8, !tbaa !14269
  %i.an = load i8, ptr @_ZN7testing48FLAGS_gtest_recreate_environments_when_repeatingE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !14270
  %i.ap = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 197
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !14271
  %i.ar = load i32, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !608
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !14272
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit6 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5
  %i.at = load i8, ptr @_ZN7testing28FLAGS_gtest_throw_on_failureE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.at, ptr %i.au, align 8, !tbaa !14273
  ret void

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !589 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !592
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !589 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.n
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !592
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !589 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.k
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !592
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !589 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.h
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.bk = load i64, ptr %i.h, align 8, !tbaa !592
  %i.bl = add i64 %i.bk, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !589 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.e
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !592
  %i.bp = add i64 %i.bo, 1
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !589 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.b
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !592
  %i.bt = add i64 %i.bs, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing4TestD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing4TestE, i64 16), ptr %0, align 8, !tbaa !598
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14257 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i

_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN7testing8internal14GTestFlagSaverD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %i.b) #55
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 248) #56
  br label %_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN7testing4TestD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #34 align 2 {
bb.a:
  tail call void @llvm.trap() #61
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #35

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7testing4Test5SetUpEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7testing4Test8TearDownEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Test14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::TestProperty", align 8 ; 10 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2062

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.r, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(713) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !589  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !592
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !589    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !592
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #56
  br label %_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %common.resume

_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::TestProperty", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !614
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  invoke void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(713) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !589  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !592
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.i = load ptr, ptr %3, align 8, !tbaa !589    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN7testing12TestPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !592
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #56
  br label %_ZN7testing12TestPropertyD2Ev.exit

_ZN7testing12TestPropertyD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2062

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !586
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !590
  store i8 0, ptr %i.f, align 8, !tbaa !592
  invoke void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i32 noundef %0, ptr noundef null, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.h = load ptr, ptr %2, align 8, !tbaa !589    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.f, align 8, !tbaa !592
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !589    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.o = load i64, ptr %i.f, align 8, !tbaa !592
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test19HasSameFixtureClassEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.testing::Message", align 8  ; 20 uses
  %1 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %2 = alloca %"class.testing::Message", align 8  ; 20 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit59, %_ZN7testing7MessageD2Ev.exit92, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn33.pn.pn, %_ZN7testing7MessageD2Ev.exit59 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit92 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2245
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14214
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14205 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14274 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !589  ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !714  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14274 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !589  ; 5 uses
  %.not = icmp eq ptr %i.s, %i.m                  ; 2 uses
  br i1 %.not, label %bb.w, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.v = icmp eq ptr %i.m, @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E ; 3 uses
  %i.w = icmp eq ptr %i.s, @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E
  %or.cond = or i1 %i.v, %i.w
  br i1 %or.cond, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.x = select i1 %i.v, ptr %i.o, ptr %i.u       ; 3 uses
  %i.y = select i1 %i.v, ptr %i.u, ptr %i.o       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #55
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !596
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.192, i64 noundef 64)
          to label %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit:       ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !tbaa !596
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.193, i64 noundef 59)
          to label %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !596
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.194, i64 noundef 24)
          to label %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !589 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = load ptr, ptr %0, align 8, !tbaa !596
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  br i1 %i.aj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #55
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.an = phi ptr [ %i.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.188, %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit ]
  %i.ao = phi i64 [ %i.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 6, %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit ]
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.an, i64 noundef %i.ao)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  %i.aq = load ptr, ptr %0, align 8, !tbaa !596
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.175, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.at = load ptr, ptr %0, align 8, !tbaa !596
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.195, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit
  %i.aw = icmp eq ptr %i.y, null
  %i.ax = load ptr, ptr %0, align 8, !tbaa !596
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  br i1 %i.aw, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit
  %i.az = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #55
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41
  %i.ba = phi ptr [ %i.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41 ], [ @.str.188, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit ]
  %i.bb = phi i64 [ %i.az, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41 ], [ 6, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit ]
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke
  %i.bd = load ptr, ptr %0, align 8, !tbaa !596
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.196, i64 noundef 29)
          to label %_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44
  %i.bg = load ptr, ptr %0, align 8, !tbaa !596
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.195, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47:      ; preds = %_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit
  %i.bj = icmp eq ptr %i.x, null
  %i.bk = load ptr, ptr %0, align 8, !tbaa !596
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  br i1 %i.bj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #55
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48
  %i.bn = phi ptr [ %i.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48 ], [ @.str.188, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 ]
  %i.bo = phi i64 [ %i.bm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48 ], [ 6, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 ]
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.bn, i64 noundef %i.bo)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke
  %i.bq = load ptr, ptr %0, align 8, !tbaa !596
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.197, i64 noundef 38)
          to label %_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51
  %i.bt = load ptr, ptr %0, align 8, !tbaa !596
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.198, i64 noundef 61)
          to label %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit
  %i.bw = load ptr, ptr %0, align 8, !tbaa !596
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.199, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55:      ; preds = %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, ptr noundef nonnull @.str.137, i32 noundef 2583, ptr noundef nonnull @.str.200)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  %i.bz = load ptr, ptr %0, align 8, !tbaa !596   ; 3 uses
  %.not.i.i56 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i56, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !598
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(128) %i.bz) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #55
  br label %bb.w

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke, %bb.g, %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51, %_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44, %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #55
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn33 = phi { ptr, i32 } [ %i.cf, %bb.l ], [ %i.ce, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %bb.n

end_hunk_12
begin_hunk_13_@_ZN7testing8internal26GoogleTestFailureExceptionC2ERKNS_14TestPartResultE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !592
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal26GoogleTestFailureExceptionE, i64 16), ptr %0, align 8, !tbaa !598
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !589    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !592
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !590
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %i.a, align 8
  %spec.select.i = select i1 %i.d, ptr null, ptr %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2119
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %spec.select.i, i32 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !596
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %3, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !590
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !596
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.65, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.q = load i32, ptr %1, align 8, !tbaa !2120   ; 2 uses
  %i.r = icmp ult i32 %i.q, 4
  br i1 %i.r, label %switch.lookup, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

switch.lookup:                                    ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.s = zext nneg i32 %i.q to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE, i64 %i.s
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.475, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit ] ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !596
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #55
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %.0.i, i64 noundef %i.v)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !589  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = load ptr, ptr %2, align 8, !tbaa !596
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br i1 %i.z, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #55
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12
  %i.ad = phi ptr [ %i.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12 ], [ @.str.188, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit ]
  %i.ae = phi i64 [ %i.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12 ], [ 6, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit ]
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.ad, i64 noundef %i.ae)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15 unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke
  %i.ag = load ptr, ptr %2, align 8, !tbaa !596, !noalias !15624
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.ag)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.d

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15
  %i.ah = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !592
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.am = load ptr, ptr %2, align 8, !tbaa !596   ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !598
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(128) %i.am) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.c:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.b, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.d
  %i.av = load i64, ptr %i.at, align 8, !tbaa !592
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.c ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.ar, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.ax = load ptr, ptr %2, align 8, !tbaa !596   ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit22, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !598
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit22

_ZN7testing7MessageD2Ev.exit22:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #16

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Test3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7testing4Test19HasSameFixtureClassEv()
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  resume { ptr, i32 } %i.f

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 640 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2198 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !598
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.k = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.k, align 8, !tbaa !598
  store ptr %i.k, ptr %i.h, align 8, !tbaa !2198
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.g
  %i.l = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.g ], [ %.pre, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.m = phi ptr [ %i.k, %bb.g ], [ %i.i, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.m), !call_target !2210
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 17, i64 0, ptr noundef nonnull @.str.208)
  %i.p = tail call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.p, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.q = tail call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.q, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !2198 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge: ; preds = %bb.i
  %.pre10 = load ptr, ptr %i.r, align 8, !tbaa !598
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8

bb.j:                                             ; preds = %bb.i
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.t, align 8, !tbaa !598
  store ptr %i.t, ptr %i.h, align 8, !tbaa !2198
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge, %bb.j
  %i.u = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.j ], [ %.pre10, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge ]
  %i.v = phi ptr [ %i.t, %bb.j ], [ %i.r, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.v), !call_target !2210
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 33, i64 0, ptr noundef nonnull @.str.209)
  br label %bb.k

bb.k:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8, %bb.h, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !2198 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge: ; preds = %bb.k
  %.pre11 = load ptr, ptr %i.y, align 8, !tbaa !598
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.aa, align 8, !tbaa !598
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !2198
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge, %bb.l
  %i.ab = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.l ], [ %.pre11, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge ]
  %i.ac = phi ptr [ %i.aa, %bb.l ], [ %i.y, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac), !call_target !2210
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 25, i64 0, ptr noundef nonnull @.str.210)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.bf, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  %i.h = load i8, ptr %i.g, align 8, !tbaa !14275, !range !581, !noundef !582
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !598
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !582
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !15625

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 3 uses
  %i.u = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #55
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.s) #55 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #55
  %i.y = icmp eq i32 %i.t, %i.x
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.s) #55 ; 0 uses
  invoke void @__cxa_rethrow() #57
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #55
  %i.ab = icmp eq i32 %i.t, %i.aa
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.s) #55 ; 2 uses
  br i1 %i.ab, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !598
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #55, !call_target !14281
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ag, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !592
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.t
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !592
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.v:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !592
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.as, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.x:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.x
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !592
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.w
  %.pn34 = phi { ptr, i32 } [ %i.ay, %bb.w ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.az, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.y:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.z:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !598
  %i.bh = getelementptr i8, ptr %i.bg, i64 %1
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  %i.bj = load ptr, ptr %i.bi, align 8, !nosanitize !582
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bk = inttoptr i64 %1 to ptr
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bl = phi ptr [ %i.bj, %bb.aa ], [ %i.bk, %bb.ab ]
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %bb.i, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ac
  ret void

bb.ad:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #61
  unreachable

bb.ae:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !714  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2245 ; 2 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.i, %bb.f ], [ %i.l, %bb.h ], [ %i.m, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14255 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14255 ; 3 uses
  %.not7.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult15HasFatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %i.t = add i64 %i.r, -112
  %i.u = sub i64 %i.t, %i.s                       ; 2 uses
  %i.v = udiv i64 %i.u, 112
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.w, 576460752303423480       ; 3 uses
  %i.x = mul i64 %n.vec, 112
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.z = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.z
  %i.aa = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep6 = getelementptr i8, ptr %i.aa, i64 112
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep7 = getelementptr i8, ptr %i.ab, i64 224
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep8 = getelementptr i8, ptr %i.ac, i64 336
  %i.ad = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep9 = getelementptr i8, ptr %i.ad, i64 448
  %i.ae = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep10 = getelementptr i8, ptr %i.ae, i64 560
  %i.af = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep11 = getelementptr i8, ptr %i.af, i64 672
  %i.ag = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep12 = getelementptr i8, ptr %i.ag, i64 784
  %i.ah = load i32, ptr %next.gep, align 8, !tbaa !2120
  %i.ai = load i32, ptr %next.gep6, align 8, !tbaa !2120
  %i.aj = load i32, ptr %next.gep7, align 8, !tbaa !2120
  %i.ak = load i32, ptr %next.gep8, align 8, !tbaa !2120
  %i.al = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 1
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 2
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 3
  %i.ap = load i32, ptr %next.gep9, align 8, !tbaa !2120
  %i.aq = load i32, ptr %next.gep10, align 8, !tbaa !2120
  %i.ar = load i32, ptr %next.gep11, align 8, !tbaa !2120
  %i.as = load i32, ptr %next.gep12, align 8, !tbaa !2120
  %i.at = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 1
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 2
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 3
  %i.ax = icmp eq <4 x i32> %i.ao, splat (i32 2)
  %i.ay = icmp eq <4 x i32> %i.aw, splat (i32 2)
  %i.az = zext <4 x i1> %i.ax to <4 x i32>
  %i.ba = zext <4 x i1> %i.ay to <4 x i32>
  %i.bb = add <4 x i32> %vec.phi, %i.az           ; 2 uses
  %i.bc = add <4 x i32> %vec.phi5, %i.ba          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !15626

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader13

.lr.ph.i.i.preheader13:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.be, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader13, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader13 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i.i.preheader13 ] ; 2 uses
  %i.bf = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !2120
  %i.bg = icmp eq i32 %i.bf, 2
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bh ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bi, %i.q
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !15627

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.be, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bj = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult15HasFatalFailureEv.exit

_ZNK7testing10TestResult15HasFatalFailureEv.exit: ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ], [ %i.bj, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !714  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2245 ; 2 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.i, %bb.f ], [ %i.l, %bb.h ], [ %i.m, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2121 ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !2123 ; 13 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 112                 ; 5 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader.i.i, label %.loopexit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %wide.trip.count.i.i = and i64 %i.u, 2147483647
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !503

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.u
  br i1 %exitcond.not.i.i, label %bb.k, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.551, i64 noundef %i.u, i64 noundef %i.u) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.y = load i32, ptr %i.x, align 8, !tbaa !2120
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i = icmp ult i32 %i.z, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit, label %bb.j

.loopexit.i:                                      ; preds = %bb.j, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %.not7.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %i.aa = add i64 %i.r, -112
  %i.ab = sub i64 %i.aa, %i.s                     ; 2 uses
  %i.ac = udiv i64 %i.ab, 112
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.ad, 576460752303423480      ; 3 uses
  %i.ae = mul i64 %n.vec, 112
  %i.af = getelementptr i8, ptr %i.q, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.ag = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ag
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.ag
  %next.gep7 = getelementptr i8, ptr %i.ah, i64 112
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ag
  %next.gep8 = getelementptr i8, ptr %i.ai, i64 224
  %i.aj = getelementptr i8, ptr %i.q, i64 %i.ag
  %next.gep9 = getelementptr i8, ptr %i.aj, i64 336
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.ag
  %next.gep10 = getelementptr i8, ptr %i.ak, i64 448
  %i.al = getelementptr i8, ptr %i.q, i64 %i.ag
  %next.gep11 = getelementptr i8, ptr %i.al, i64 560
  %i.am = getelementptr i8, ptr %i.q, i64 %i.ag
  %next.gep12 = getelementptr i8, ptr %i.am, i64 672
  %i.an = getelementptr i8, ptr %i.q, i64 %i.ag
  %next.gep13 = getelementptr i8, ptr %i.an, i64 784
  %i.ao = load i32, ptr %next.gep, align 8, !tbaa !2120
  %i.ap = load i32, ptr %next.gep7, align 8, !tbaa !2120
  %i.aq = load i32, ptr %next.gep8, align 8, !tbaa !2120
  %i.ar = load i32, ptr %next.gep9, align 8, !tbaa !2120
  %i.as = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 1
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 2
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 3
  %i.aw = load i32, ptr %next.gep10, align 8, !tbaa !2120
  %i.ax = load i32, ptr %next.gep11, align 8, !tbaa !2120
  %i.ay = load i32, ptr %next.gep12, align 8, !tbaa !2120
  %i.az = load i32, ptr %next.gep13, align 8, !tbaa !2120
  %i.ba = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %i.bb = insertelement <4 x i32> %i.ba, i32 %i.ax, i64 1
  %i.bc = insertelement <4 x i32> %i.bb, i32 %i.ay, i64 2
  %i.bd = insertelement <4 x i32> %i.bc, i32 %i.az, i64 3
  %i.be = icmp eq <4 x i32> %i.av, splat (i32 3)
  %i.bf = icmp eq <4 x i32> %i.bd, splat (i32 3)
  %i.bg = zext <4 x i1> %i.be to <4 x i32>
  %i.bh = zext <4 x i1> %i.bf to <4 x i32>
  %i.bi = add <4 x i32> %vec.phi, %i.bg           ; 2 uses
  %i.bj = add <4 x i32> %vec.phi6, %i.bh          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !15628

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bj, %i.bi
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i.preheader14

.lr.ph.i1.i.preheader14:                          ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.bl, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.q, %.lr.ph.i1.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader14, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader14 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bp, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader14 ] ; 2 uses
  %i.bm = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !2120
  %i.bn = icmp eq i32 %i.bm, 3
  %i.bo = zext i1 %i.bn to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bo ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bp, %i.p
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !15629

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.bl, %middle.block ], [ %spec.select.i.i, %.lr.ph.i1.i ]
  %i.bq = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult7SkippedEv.exit

_ZNK7testing10TestResult7SkippedEv.exit:          ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %.loopexit.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %i.br = phi i1 [ %i.bq, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ]
  ret i1 %i.br
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test18HasNonfatalFailureEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !714  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2245 ; 2 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.i, %bb.f ], [ %i.l, %bb.h ], [ %i.m, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14255 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14255 ; 3 uses
  %.not7.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %i.t = add i64 %i.r, -112
  %i.u = sub i64 %i.t, %i.s                       ; 2 uses
  %i.v = udiv i64 %i.u, 112
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.w, 576460752303423480       ; 3 uses
  %i.x = mul i64 %n.vec, 112
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.z = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.z
  %i.aa = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep6 = getelementptr i8, ptr %i.aa, i64 112
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep7 = getelementptr i8, ptr %i.ab, i64 224
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep8 = getelementptr i8, ptr %i.ac, i64 336
  %i.ad = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep9 = getelementptr i8, ptr %i.ad, i64 448
  %i.ae = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep10 = getelementptr i8, ptr %i.ae, i64 560
  %i.af = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep11 = getelementptr i8, ptr %i.af, i64 672
  %i.ag = getelementptr i8, ptr %i.o, i64 %i.z
  %next.gep12 = getelementptr i8, ptr %i.ag, i64 784
  %i.ah = load i32, ptr %next.gep, align 8, !tbaa !2120
  %i.ai = load i32, ptr %next.gep6, align 8, !tbaa !2120
  %i.aj = load i32, ptr %next.gep7, align 8, !tbaa !2120
  %i.ak = load i32, ptr %next.gep8, align 8, !tbaa !2120
  %i.al = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 1
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 2
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 3
  %i.ap = load i32, ptr %next.gep9, align 8, !tbaa !2120
  %i.aq = load i32, ptr %next.gep10, align 8, !tbaa !2120
  %i.ar = load i32, ptr %next.gep11, align 8, !tbaa !2120
  %i.as = load i32, ptr %next.gep12, align 8, !tbaa !2120
  %i.at = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 1
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 2
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 3
  %i.ax = icmp eq <4 x i32> %i.ao, splat (i32 1)
  %i.ay = icmp eq <4 x i32> %i.aw, splat (i32 1)
  %i.az = zext <4 x i1> %i.ax to <4 x i32>
  %i.ba = zext <4 x i1> %i.ay to <4 x i32>
  %i.bb = add <4 x i32> %vec.phi, %i.az           ; 2 uses
  %i.bc = add <4 x i32> %vec.phi5, %i.ba          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !15630

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader13

.lr.ph.i.i.preheader13:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.be, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader13, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader13 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i.i.preheader13 ] ; 2 uses
  %i.bf = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !2120
  %i.bg = icmp eq i32 %i.bf, 1
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bh ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bi, %i.q
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !15631

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.be, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bj = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit

_ZNK7testing10TestResult18HasNonfatalFailureEv.exit: ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ], [ %i.bj, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfoC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_PKcS8_NS_8internal12CodeLocationEPKvPNS9_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef align 8 %1, ptr noundef align 8 %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef align 8 %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !586
  %i.d = load ptr, ptr %1, align 8, !tbaa !589    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !590  ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !589
  %i.k = load i64, ptr %i.e, align 8, !tbaa !592
  store i64 %i.k, ptr %i.c, align 8, !tbaa !592
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !590
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !590
  store ptr %i.e, ptr %1, align 8, !tbaa !589
  store i64 0, ptr %i.l, align 8, !tbaa !590
  store i8 0, ptr %i.e, align 8, !tbaa !592
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !586
  %i.q = load ptr, ptr %2, align 8, !tbaa !589    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i37

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !590  ; 2 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.q, ptr %i.o, align 8, !tbaa !589
  %i.x = load i64, ptr %i.r, align 8, !tbaa !592
  store i64 %i.x, ptr %i.p, align 8, !tbaa !592
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit38: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i37
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !590
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !590
end_hunk_13
begin_hunk_14_@_ZN7testing8TestInfoD2Ev:bb.a
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EED2Ev.exit5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !589   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !592
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef align 8 %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, ptr noundef align 8 %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #54 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.c, ptr %9, align 8, !tbaa !586
  %i.d = load ptr, ptr %0, align 8, !tbaa !589    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !590  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %9, align 8, !tbaa !589
  %i.k = load i64, ptr %i.e, align 8, !tbaa !592
  store i64 %i.k, ptr %i.c, align 8, !tbaa !592
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !590
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !590
  store ptr %i.e, ptr %0, align 8, !tbaa !589
  store i64 0, ptr %i.m, align 8, !tbaa !590
  store i8 0, ptr %i.e, align 8, !tbaa !592
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.o, ptr %10, align 8, !tbaa !586
  %i.p = icmp eq ptr %1, null
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.517) #57
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.q, ptr %i.a, align 8, !tbaa !591
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.n   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i
  store ptr %i.s, ptr %10, align 8, !tbaa !589
  %i.t = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.t, ptr %i.o, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc13, %bb.d
  %i.u = phi ptr [ %i.s, %.noexc13 ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.q, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %1, align 1, !tbaa !592
  store i8 %i.v, ptr %i.u, align 1, !tbaa !592
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %1, i64 %i.q, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !590
  %i.y = load ptr, ptr %10, align 8, !tbaa !589
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.aa, ptr %11, align 8, !tbaa !586
  %i.ab = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !590 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  store ptr %i.ab, ptr %11, align 8, !tbaa !589
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !592
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !592
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre28 = load i64, ptr %.phi.trans.insert27, align 8, !tbaa !590
  br label %_ZN7testing8internal12CodeLocationC2EOS1_.exit

_ZN7testing8internal12CodeLocationC2EOS1_.exit:   ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aj = phi i64 [ %i.af, %bb.h ], [ %.pre28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !590
  store ptr %i.ac, ptr %4, align 8, !tbaa !589
  store i64 0, ptr %i.ak, align 8, !tbaa !590
  store i8 0, ptr %i.ac, align 8, !tbaa !592
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !2178
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !2178
  invoke void @_ZN7testing8TestInfoC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_PKcS8_NS_8internal12CodeLocationEPKvPNS9_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 %10, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 %11, ptr noundef %5, ptr noundef %8)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.ap = load ptr, ptr %11, align 8, !tbaa !589  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.aa
  br i1 %i.aq, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.ar = load i64, ptr %i.aa, align 8, !tbaa !592
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #56
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.at = load ptr, ptr %10, align 8, !tbaa !589  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.o
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.av = load i64, ptr %i.o, align 8, !tbaa !592
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.ax = load ptr, ptr %9, align 8, !tbaa !589   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.c, align 8, !tbaa !592
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.bb = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.j, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.bd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.l unwind label %bb.m, !inline_history !2

bb.l:                                             ; preds = %bb.k
  %i.be = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.j, %bb.l
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  call void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(713) %i.bg, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.b)
  ret ptr %i.b

bb.n:                                             ; preds = %.noexc.i, %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.o:                                             ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %11, align 8, !tbaa !589  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.aa
  br i1 %i.bk, label %_ZN7testing8internal12CodeLocationD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.o
  %i.bl = load i64, ptr %i.aa, align 8, !tbaa !592
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #56
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit20

_ZN7testing8internal12CodeLocationD2Ev.exit20:    ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  %i.bn = load ptr, ptr %10, align 8, !tbaa !589  ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.o
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit20
  %i.bp = load i64, ptr %i.o, align 8, !tbaa !592
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.bi, %_ZN7testing8internal12CodeLocationD2Ev.exit20 ]
  %i.br = load ptr, ptr %9, align 8, !tbaa !589   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.c
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !592
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 272) #56
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::internal::FilePath", align 8 ; 14 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !590
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @_ZN7testing8internal8FilePath13GetCurrentDirEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %4)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !589  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  %i.h = load ptr, ptr %4, align 8, !tbaa !589    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i                   ; 2 uses
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  br i1 %i.j, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !590  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  switch i64 %i.l, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.h, align 1, !tbaa !592
  store i8 %i.n, ptr %i.e, align 1, !tbaa !592
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %i.h, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.o = load i64, ptr %i.k, align 8, !tbaa !590  ; 2 uses
  store i64 %i.o, ptr %i.b, align 8, !tbaa !590
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !589
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !592
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !589
  br label %_ZN7testing8internal8FilePathaSEOS1_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.h, ptr %i.a, align 8, !tbaa !589
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load <2 x i64>, ptr %i.r, align 8, !tbaa !592
  store <2 x i64> %i.s, ptr %i.b, align 8, !tbaa !592
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.t = load i64, ptr %i.f, align 8, !tbaa !592
  store ptr %i.h, ptr %i.a, align 8, !tbaa !589
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load <2 x i64>, ptr %i.u, align 8, !tbaa !592
  store <2 x i64> %i.v, ptr %i.b, align 8, !tbaa !592
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.e, ptr %4, align 8, !tbaa !589
  store i64 %i.t, ptr %i.i, align 8, !tbaa !592
  br label %_ZN7testing8internal8FilePathaSEOS1_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.i, ptr %4, align 8, !tbaa !589
  br label %_ZN7testing8internal8FilePathaSEOS1_.exit

_ZN7testing8internal8FilePathaSEOS1_.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.w = phi ptr [ %i.e, %bb.f ], [ %i.i, %bb.g ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !590
  store i8 0, ptr %i.w, align 1, !tbaa !592
  %i.y = load ptr, ptr %4, align 8, !tbaa !589    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN7testing8internal8FilePathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal8FilePathaSEOS1_.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !592
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit

_ZN7testing8internal8FilePathD2Ev.exit:           ; preds = %_ZN7testing8internal8FilePathaSEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !590
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN7testing8internal8FilePathD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.470, i32 noundef 688)
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.471, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.472, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  resume { ptr, i32 } %i.ag

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7, %_ZN7testing8internal8FilePathD2Ev.exit, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !583 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZNK7testing8TestInfo10type_paramEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !589
  br label %_ZNK7testing8TestInfo10type_paramEv.exit

_ZNK7testing8TestInfo10type_paramEv.exit:         ; preds = %bb.j, %bb.k
end_hunk_14
begin_hunk_15_@_ZN7testing8internal26ReportInvalidTestSuiteTypeEPKcRKNS0_12CodeLocationE:bb.a
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.65, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.az = load ptr, ptr %2, align 8, !tbaa !596, !noalias !15634
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %i.az)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.h

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ba = load ptr, ptr %5, align 8, !tbaa !589
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !590
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33 unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.be = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !592
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %i.bj = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !592
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.bo = load ptr, ptr %2, align 8, !tbaa !596   ; 3 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !598
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(128) %i.bo) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i17.invoke, %_ZN7testing7MessagelsIA68_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit25, %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA63_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit20, %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit, %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.e:                                             ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit28
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.i:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !592
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.h ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.bx, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.bv, %bb.g ] ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.j
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !592
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.f ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn.pn, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.bt, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.k ], [ %i.bs, %bb.d ]
  %i.ci = load ptr, ptr %2, align 8, !tbaa !596   ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit45, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %bb.l
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !598
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(128) %i.ci) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit45

_ZN7testing7MessageD2Ev.exit45:                   ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl26RegisterParameterizedTestsEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(713) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14283, !range !581, !noundef !582
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14284 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14284 ; 2 uses
  %.not7.i = icmp eq ptr %i.e, %i.g
  br i1 %.not7.i, label %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !14286 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !598
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !call_target !14290, !inline_history !15635
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i, label %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, label %.lr.ph.i

_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit: ; preds = %.lr.ph.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry22CheckForInstantiationsEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  store i8 1, ptr %i.a, align 8, !tbaa !14283
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %common.resume, !inline_history !2062

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2018 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i8, ptr %i.h, align 8, !tbaa !14208, !range !581, !noundef !582
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14212, !range !581, !noundef !582
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.o = load i8, ptr %i.n, align 2, !tbaa !14211, !range !581, !noundef !582
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.aa

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !598
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %0), !call_target !2281
  br label %bb.aa

bb.h:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.t = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit10, !prof !609

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i9 = icmp eq i32 %i.v, 0
  br i1 %.not.i9, label %_ZN7testing8UnitTest11GetInstanceEv.exit10, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.k unwind label %common.resume, !inline_history !2062

bb.k:                                             ; preds = %bb.j
  %i.w = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit10

_ZN7testing8UnitTest11GetInstanceEv.exit10:       ; preds = %bb.h, %bb.i, %bb.k
  tail call void @_ZN7testing8UnitTest21set_current_test_infoEPNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull %0)
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !598
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %0), !call_target !2280
  %i.aa = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #55
  %i.ab = sdiv i64 %i.aa, 1000000
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !14291
  %i.ad = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.ae = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.l, label %_ZN7testing8UnitTest11GetInstanceEv.exit12, !prof !609

bb.l:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit10
  %i.ag = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i11 = icmp eq i32 %i.ag, 0
  br i1 %.not.i11, label %_ZN7testing8UnitTest11GetInstanceEv.exit12, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.n unwind label %common.resume, !inline_history !2062

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit12

_ZN7testing8UnitTest11GetInstanceEv.exit12:       ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit10, %bb.l, %bb.n
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 640 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2198 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit12
  %.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !598
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit

bb.o:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit12
  %i.am = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.am, align 8, !tbaa !598
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !2198
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit

_ZN7testing8UnitTest16UponLeavingGTestEv.exit:    ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i, %bb.o
  %i.an = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.o ], [ %.pre.i, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i ]
  %i.ao = phi ptr [ %i.am, %bb.o ], [ %i.ak, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ao), !call_target !2210, !inline_history !14292
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !14282
  %i.at = tail call noundef ptr @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc(ptr noundef %i.as, i64 17, i64 0, ptr noundef nonnull @.str.218) ; 3 uses
  %i.au = tail call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.au, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit
  %i.av = tail call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.av, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.p
  tail call void @_ZN7testing4Test3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at)
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %_ZN7testing8UnitTest16UponLeavingGTestEv.exit
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.w, label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %i.aw = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %_ZN7testing8UnitTest11GetInstanceEv.exit14, !prof !609

bb.s:                                             ; preds = %bb.r
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i13 = icmp eq i32 %i.ay, 0
  br i1 %.not.i13, label %_ZN7testing8UnitTest11GetInstanceEv.exit14, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.u unwind label %common.resume, !inline_history !2062

bb.u:                                             ; preds = %bb.t
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit14

_ZN7testing8UnitTest11GetInstanceEv.exit14:       ; preds = %bb.r, %bb.s, %bb.u
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 640 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2198 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.v, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i15

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i15: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit14
  %.pre.i16 = load ptr, ptr %i.bc, align 8, !tbaa !598
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit17

bb.v:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit14
  %i.be = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.be, align 8, !tbaa !598
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !2198
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit17

_ZN7testing8UnitTest16UponLeavingGTestEv.exit17:  ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i15, %bb.v
  %i.bf = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.v ], [ %.pre.i16, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i15 ]
  %i.bg = phi ptr [ %i.be, %bb.v ], [ %i.bc, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i15 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bg), !call_target !2210, !inline_history !14292
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %i.at, i64 ptrtoint (ptr @_ZN7testing4Test11DeleteSelf_Ev to i64), i64 0, ptr noundef nonnull @.str.219)
  br label %bb.w

bb.w:                                             ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit17, %bb.q
  %i.bj = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.bk = sub nsw i64 %i.bj, %i.ad
  %i.bl = sdiv i64 %i.bk, 1000000
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !14254
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !598
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %0), !call_target !2282
  %i.bq = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.x, label %_ZN7testing8UnitTest11GetInstanceEv.exit19, !prof !609

bb.x:                                             ; preds = %bb.w
  %i.bs = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i18 = icmp eq i32 %i.bs, 0
  br i1 %.not.i18, label %_ZN7testing8UnitTest11GetInstanceEv.exit19, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.z unwind label %common.resume, !inline_history !2062

bb.z:                                             ; preds = %bb.y
  %i.bt = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit19

common.resume:                                    ; preds = %bb.t, %bb.m, %bb.j, %bb.c, %bb.y
  %i.bu = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55
  resume { ptr, i32 } %i.bu

_ZN7testing8UnitTest11GetInstanceEv.exit19:       ; preds = %bb.w, %bb.x, %bb.z
  tail call void @_ZN7testing8UnitTest21set_current_test_infoEPNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef null)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.e, %bb.f, %bb.g, %_ZN7testing8UnitTest11GetInstanceEv.exit19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN7testing8UnitTest9listenersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !614
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 616
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest21set_current_test_infoEPNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #55 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.454, i32 noundef 1654)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.455, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.456, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %i.f

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.g, ptr %i.h, align 8, !tbaa !2189
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !614
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  store ptr %1, ptr %i.l, align 8, !tbaa !714
  store i8 0, ptr %i.i, align 8, !tbaa !2190
  %i.m = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #55 ; 2 uses
  %.not.i.i2 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i2, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.454, i32 noundef 1666)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.457, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3: ; preds = %.noexc.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.456, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.m)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3, %.noexc.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %.body.i

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.q, %bb.g ]
  %i.s = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.s) #61
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest16UponLeavingGTestEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !614
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 640 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2198 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !598
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.f, align 8, !tbaa !598
  store ptr %i.f, ptr %i.c, align 8, !tbaa !2198
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.b
  %i.g = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.b ], [ %.pre, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.d, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !call_target !2210
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.bg, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  %i.h = load i8, ptr %i.g, align 8, !tbaa !14275, !range !581, !noundef !582
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !598
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !582
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  %i.r = invoke noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit unwind label %bb.j, !inline_history !15636

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0        ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.s, 1        ; 3 uses
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #55
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #55 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.y = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #55
  %i.z = icmp eq i32 %i.u, %i.y
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.t) #55 ; 0 uses
  invoke void @__cxa_rethrow() #57
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.ab = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #55
  %i.ac = icmp eq i32 %i.u, %i.ab
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.t) #55 ; 2 uses
  br i1 %i.ac, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !598
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #55, !call_target !14281
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ah, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !592
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.an = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.t
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !592
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.v:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !592
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.u
  %.pn = phi { ptr, i32 } [ %i.as, %bb.u ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.at, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.x:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.x
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !592
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.w
  %.pn36 = phi { ptr, i32 } [ %i.az, %bb.w ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.ba, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.y:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.z:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !598
  %i.bi = getelementptr i8, ptr %i.bh, i64 %1
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load ptr, ptr %i.bj, align 8, !nosanitize !582
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bl = inttoptr i64 %1 to ptr
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bm = phi ptr [ %i.bk, %bb.aa ], [ %i.bl, %bb.ab ]
  %i.bn = tail call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit: ; preds = %bb.i, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.ac
  %.0 = phi ptr [ %i.bn, %bb.ac ], [ null, %bb.k ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.r, %bb.i ]
  ret ptr %.0

bb.ad:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #61
  unreachable

bb.ae:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing4Test11DeleteSelf_Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !598
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #55, !call_target !3561
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::TestPartResult", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14208, !range !581, !noundef !582
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !609

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !2062

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %.body, %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.m, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.b, %bb.c, %bb.e
  tail call void @_ZN7testing8UnitTest21set_current_test_infoEPNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull %0)
  %i.i = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.g, label %_ZN7testing8UnitTest11GetInstanceEv.exit5, !prof !609

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i4 = icmp eq i32 %i.k, 0
  br i1 %.not.i4, label %_ZN7testing8UnitTest11GetInstanceEv.exit5, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.i unwind label %bb.j, !inline_history !2062

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit5

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit5:        ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %bb.g, %bb.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 616
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2018 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !598
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(272) %0), !call_target !2280
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !589
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load i32, ptr %i.v, align 8, !tbaa !14293
  call void @_ZN7testing14TestPartResultC2ENS0_4TypeEPKciS3_(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 3, ptr noundef %i.u, i32 noundef %i.w, ptr noundef nonnull @.str.4)
  %i.x = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.o, !prof !609

bb.k:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit5
  %i.z = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.m unwind label %bb.n, !inline_history !2

bb.m:                                             ; preds = %bb.l
  %i.aa = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %.body

bb.o:                                             ; preds = %bb.m, %bb.k, %_ZN7testing8UnitTest11GetInstanceEv.exit5
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2126 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !598
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.q unwind label %bb.y, !call_target !2134

bb.q:                                             ; preds = %bb.p
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !598
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(272) %0)
          to label %bb.r unwind label %bb.y, !call_target !2282

bb.r:                                             ; preds = %bb.q
  %i.am = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.s, label %_ZN7testing8UnitTest11GetInstanceEv.exit9, !prof !609

bb.s:                                             ; preds = %bb.r
  %i.ao = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i6 = icmp eq i32 %i.ao, 0
  br i1 %.not.i6, label %_ZN7testing8UnitTest11GetInstanceEv.exit9, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.u unwind label %bb.v, !inline_history !2062

bb.u:                                             ; preds = %bb.t
  %i.ap = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit9

bb.v:                                             ; preds = %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit9:        ; preds = %bb.u, %bb.s, %bb.r
  invoke void @_ZN7testing8UnitTest21set_current_test_infoEPNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef null)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit9
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !589 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.av = load i64, ptr %i.at, align 8, !tbaa !592
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !589 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !592
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !589 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN7testing14TestPartResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !592
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #56
  br label %_ZN7testing14TestPartResultD2Ev.exit

_ZN7testing14TestPartResultD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %_ZN7testing14TestPartResultD2Ev.exit
  ret void

bb.y:                                             ; preds = %bb.o, %_ZN7testing8UnitTest11GetInstanceEv.exit9, %bb.q, %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.bj, %bb.y ], [ %i.aq, %bb.v ]
  call void @_ZN7testing14TestPartResultD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %1) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing14TestPartResultC2ENS0_4TypeEPKciS3_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  store i32 %1, ptr %0, align 8, !tbaa !2120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = icmp eq ptr %2, null
  %i.e = select i1 %i.d, ptr @.str.4, ptr %2      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !586
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 %i.g, ptr %i.b, align 8, !tbaa !591
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !589
  %i.j = load i64, ptr %i.b, align 8, !tbaa !591
  store i64 %i.j, ptr %i.f, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !592
  store i8 %i.l, ptr %i.k, align 1, !tbaa !592
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !591  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !590
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.q, align 8, !tbaa !2119
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_ZN7testing14TestPartResult14ExtractSummaryB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.r, ptr noundef %4)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !586
  %i.u = icmp eq ptr %4, null
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.517) #57
          to label %.noexc14 unwind label %bb.l

.noexc14:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.v, ptr %i.a, align 8, !tbaa !591
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i13, label %._crit_edge.i.i12

.noexc.i13:                                       ; preds = %bb.g
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc15 unwind label %bb.l   ; 2 uses

.noexc15:                                         ; preds = %.noexc.i13
  store ptr %i.x, ptr %i.s, align 8, !tbaa !589
  %i.y = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.y, ptr %i.t, align 8, !tbaa !592
  br label %._crit_edge.i.i12

._crit_edge.i.i12:                                ; preds = %.noexc15, %bb.g
  %i.z = phi ptr [ %i.x, %.noexc15 ], [ %i.t, %bb.g ] ; 2 uses
  switch i64 %i.v, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i12
  %i.aa = load i8, ptr %4, align 1, !tbaa !592
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !592
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %4, i64 %i.v, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i12
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !591 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !590
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !589
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void

bb.k:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %.noexc.i13, %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !589 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !592
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_15
begin_hunk_16_@_ZN7testing9TestSuite18GetMutableTestInfoEi
define noundef ptr @_ZN7testing9TestSuite18GetMutableTestInfoEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14299
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !14296 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32
  %.not.i = icmp slt i32 %1, %i.j
  br i1 %.not.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit: ; preds = %bb.b
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !608  ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = zext nneg i32 %i.m to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !14214
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14205
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread: ; preds = %bb.a, %bb.b, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit, %bb.c
  %i.t = phi ptr [ %i.s, %bb.c ], [ null, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %i.t
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing9TestSuite11AddTestInfoEPNS_8TestInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14213 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14298
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !14205
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !14213
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !14214 ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.420) #57
  unreachable

_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #54 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !14205
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !14298
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #56
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !14214
  store ptr %i.u, ptr %i.b, align 8, !tbaa !14213
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !14298
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14299 ; 4 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !14296 ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 4 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14297
  %.not.i.i = icmp eq ptr %i.ab, %i.aj
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !608
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !14299
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  %i.al = icmp eq i64 %i.af, 9223372036854775804
  br i1 %i.al, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.420) #57
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ag
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 2305843009213693951)
  %i.ap = select i1 %i.an, i64 2305843009213693951, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #54 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.af ; 2 uses
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !608
  %i.at = icmp sgt i64 %i.af, 0
  br i1 %i.at, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !14297
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ax) #56
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !14296
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !14299
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ay, ptr %i.ai, align 8, !tbaa !14297
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14201, !range !581, !noundef !582
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !609

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !2062

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.am, %bb.ah, %bb.u, %bb.m, %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.m, %bb.j ], [ %i.am, %bb.m ], [ %i.ba, %bb.u ], [ %i.hq, %bb.ah ], [ %i.ik, %bb.am ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.b, %bb.c, %bb.e
  tail call void @_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull %0)
  %i.i = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.g, label %_ZN7testing8UnitTest11GetInstanceEv.exit20, !prof !609

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i19 = icmp eq i32 %i.k, 0
  br i1 %.not.i19, label %_ZN7testing8UnitTest11GetInstanceEv.exit20, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.i unwind label %bb.j, !inline_history !2062

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit20

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit20:       ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %bb.g, %bb.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 616
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2018 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14204 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14204 ; 6 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit", label %bb.k

bb.k:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit20
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = add nsw i64 %i.y, 1
  %i.aa = sdiv i64 %i.z, 2                        ; 4 uses
  %i.ab = icmp sgt i64 %i.y, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.ag, %select.unfold.i.i.i.i ], [ %i.aa, %bb.k ] ; 4 uses
  %i.ac = shl nuw nsw i64 %.010.i.i.i.i, 3
  %i.ad = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ac, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.ae = icmp eq i64 %.010.i.i.i.i, 1
  %i.af = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.ag = lshr i64 %i.af, 1
  br i1 %i.ae, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15637

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.k
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.k ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 4 uses
  %.sroa.12.0.i.i = phi ptr [ null, %bb.k ], [ %i.ad, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 7 uses
  %i.ah = icmp eq i64 %i.aa, %.sroa.5.0.i.i
  br i1 %i.ah, label %bb.l, label %bb.n, !prof !14300

bb.l:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aa ; 4 uses
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_T0_T1_"(ptr %i.r, ptr %i.ai, ptr noundef %.sroa.12.0.i.i)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_T0_T1_"(ptr %i.ai, ptr %i.t, ptr noundef %.sroa.12.0.i.i)
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.v, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_SF_T0_SG_T1_T2_"(ptr %i.r, ptr %i.ai, ptr %i.t, i64 noundef %i.aa, i64 noundef %i.al, ptr noundef %.sroa.12.0.i.i)
  br label %bb.q

bb.m:                                             ; preds = %bb.p, %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = shl i64 %.sroa.5.0.i.i, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i, i64 noundef %i.an) #55
  br label %common.resume

bb.n:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.ao = icmp eq ptr %.sroa.12.0.i.i, null
  br i1 %i.ao, label %bb.o, label %bb.p, !prof !2101

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_T0_"(ptr %i.r, ptr %i.t)
          to label %bb.q unwind label %bb.m

bb.p:                                             ; preds = %bb.n
  invoke fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_T0_T1_T2_"(ptr %i.r, ptr %i.t, ptr noundef nonnull %.sroa.12.0.i.i, i64 noundef %.sroa.5.0.i.i)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ap = shl i64 %.sroa.5.0.i.i, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i, i64 noundef %i.ap) #55
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit": ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit20, %bb.q
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !598
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0), !call_target !2269
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !598
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0), !call_target !2275
  %i.aw = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.r, label %_ZN7testing8UnitTest11GetInstanceEv.exit22, !prof !609

bb.r:                                             ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit"
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i21 = icmp eq i32 %i.ay, 0
  br i1 %.not.i21, label %_ZN7testing8UnitTest11GetInstanceEv.exit22, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.t unwind label %bb.u, !inline_history !2062

bb.t:                                             ; preds = %bb.s
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit22

bb.u:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit22:       ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit", %bb.r, %bb.t
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 640 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2198 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.v, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit22
  %.pre.i = load ptr, ptr %i.bd, align 8, !tbaa !598
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit

bb.v:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit22
  %i.bf = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.bf, align 8, !tbaa !598
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !2198
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit

_ZN7testing8UnitTest16UponLeavingGTestEv.exit:    ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i, %bb.v
  %i.bg = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.v ], [ %.pre.i, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i ]
  %i.bh = phi ptr [ %i.bf, %bb.v ], [ %i.bd, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bh), !call_target !2210, !inline_history !14292
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite17RunSetUpTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.220)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2121 ; 3 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !2123 ; 14 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 112               ; 8 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit
  %wide.trip.count.i = and i64 %i.br, 2147483647  ; 2 uses
  br label %.lr.ph.i

bb.w:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %.lr.ph.i.i, label %.lr.ph.i, !llvm.loop !503

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.w ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.br
  br i1 %exitcond.not.i, label %bb.x, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.x:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.551, i64 noundef %i.br, i64 noundef %i.br) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.bu = getelementptr inbounds nuw [112 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !2120
  %i.bw = add i32 %i.bv, -1
  %spec.select.i.i = icmp ult i32 %i.bw, 2
  br i1 %spec.select.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.w

bb.y:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !503

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.y
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.y ], [ 0, %bb.w ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.br
  br i1 %exitcond.not.i.i, label %bb.z, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.z:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.551, i64 noundef %i.br, i64 noundef %i.br) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bx = getelementptr inbounds nuw [112 x i8], ptr %i.bn, i64 %indvars.iv.i.i
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !2120
  %i.bz = add i32 %i.by, -1
  %spec.select.i.i.i = icmp ult i32 %i.bz, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.y

.loopexit.i:                                      ; preds = %bb.y, %_ZN7testing8UnitTest16UponLeavingGTestEv.exit
  %.not7.i.i = icmp eq ptr %i.bn, %i.bm
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %i.ca = add i64 %i.bo, -112
  %i.cb = sub i64 %i.ca, %i.bp                    ; 2 uses
  %i.cc = udiv i64 %i.cb, 112
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.cd, 576460752303423480      ; 3 uses
  %i.ce = mul i64 %n.vec, 112
  %i.cf = getelementptr i8, ptr %i.bn, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi109 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %i.cg = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.cg
  %i.ch = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep110 = getelementptr i8, ptr %i.ch, i64 112
  %i.ci = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep111 = getelementptr i8, ptr %i.ci, i64 224
  %i.cj = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep112 = getelementptr i8, ptr %i.cj, i64 336
  %i.ck = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep113 = getelementptr i8, ptr %i.ck, i64 448
  %i.cl = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep114 = getelementptr i8, ptr %i.cl, i64 560
  %i.cm = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep115 = getelementptr i8, ptr %i.cm, i64 672
  %i.cn = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep116 = getelementptr i8, ptr %i.cn, i64 784
  %i.co = load i32, ptr %next.gep, align 8, !tbaa !2120
  %i.cp = load i32, ptr %next.gep110, align 8, !tbaa !2120
  %i.cq = load i32, ptr %next.gep111, align 8, !tbaa !2120
  %i.cr = load i32, ptr %next.gep112, align 8, !tbaa !2120
  %i.cs = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.cp, i64 1
  %i.cu = insertelement <4 x i32> %i.ct, i32 %i.cq, i64 2
  %i.cv = insertelement <4 x i32> %i.cu, i32 %i.cr, i64 3
  %i.cw = load i32, ptr %next.gep113, align 8, !tbaa !2120
  %i.cx = load i32, ptr %next.gep114, align 8, !tbaa !2120
  %i.cy = load i32, ptr %next.gep115, align 8, !tbaa !2120
  %i.cz = load i32, ptr %next.gep116, align 8, !tbaa !2120
  %i.da = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cx, i64 1
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.cy, i64 2
  %i.dd = insertelement <4 x i32> %i.dc, i32 %i.cz, i64 3
  %i.de = icmp eq <4 x i32> %i.cv, splat (i32 3)
  %i.df = icmp eq <4 x i32> %i.dd, splat (i32 3)
  %i.dg = zext <4 x i1> %i.de to <4 x i32>
  %i.dh = zext <4 x i1> %i.df to <4 x i32>
  %i.di = add <4 x i32> %vec.phi, %i.dg           ; 2 uses
  %i.dj = add <4 x i32> %vec.phi109, %i.dh        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !15638

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dj, %i.di
  %i.dl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i.preheader125

.lr.ph.i1.i.preheader125:                         ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.dl, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.bn, %.lr.ph.i1.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader125, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i23, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader125 ]
  %.sroa.04.08.i.i = phi ptr [ %i.dp, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader125 ] ; 2 uses
  %i.dm = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !2120
  %i.dn = icmp eq i32 %i.dm, 3
  %i.do = zext i1 %i.dn to i32
  %spec.select.i.i23 = add nuw nsw i32 %.09.i.i, %i.do ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dp, %i.bm
  br i1 %.not.i.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !15639

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i23.lcssa = phi i32 [ %i.dl, %middle.block ], [ %spec.select.i.i23, %.lr.ph.i1.i ]
  %i.dq = icmp ne i32 %spec.select.i.i23.lcssa, 0
  br label %_ZNK7testing10TestResult6FailedEv.exit

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, %.loopexit.i
  %i.dr = phi i1 [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ], [ %i.dq, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ true, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ]
  %i.ds = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #55
  %i.dt = sdiv i64 %i.ds, 1000000
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !14301
  %i.dv = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.dw = load ptr, ptr %i.s, align 8, !tbaa !14213
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !14214 ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = lshr exact i64 %i.ea, 3
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7testing10TestResult6FailedEv.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit41.thread
  %indvars.iv75 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next76, %_ZNK7testing10TestResult6FailedEv.exit41.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit41.thread ] ; 6 uses
  %i.eg = phi ptr [ %i.dx, %.lr.ph ], [ %.pre, %_ZNK7testing10TestResult6FailedEv.exit41.thread ]
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !14299
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !14296 ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = shl i64 %i.el, 30
  %i.en = ashr i64 %i.em, 32
  %.not.i.i24 = icmp slt i64 %indvars.iv, %i.en
  tail call void @llvm.assume(i1 %.not.i.i24)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !608 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, -1
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = zext nneg i32 %i.ep to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !14205 ; 2 uses
  br i1 %i.dr, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %bb.aa
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.et)
  br label %bb.ab

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26: ; preds = %bb.aa
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %i.et)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.eu = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.ev = trunc nuw i8 %i.eu to i1
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !14214 ; 5 uses
  br i1 %i.ev, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29, label %_ZNK7testing10TestResult6FailedEv.exit41.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29: ; preds = %bb.ab
  %i.ew = load ptr, ptr %i.ef, align 8, !tbaa !14299
  %i.ex = load ptr, ptr %i.ee, align 8, !tbaa !14296 ; 2 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = shl i64 %i.fa, 30
  %i.fc = ashr i64 %i.fb, 32
  %.not.i.i28 = icmp slt i64 %indvars.iv, %i.fc
  tail call void @llvm.assume(i1 %.not.i.i28)
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !608 ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, -1
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = zext nneg i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !14205 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 200
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 208
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !2121
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !2123 ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = sdiv exact i64 %i.fp, 112               ; 5 uses
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.preheader.i32, label %_ZNK7testing10TestResult6FailedEv.exit41.thread

.lr.ph.preheader.i32:                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29
  %wide.trip.count.i33 = and i64 %i.fq, 2147483647
  br label %.lr.ph.i34

bb.ac:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %exitcond16.not.i40 = icmp eq i64 %indvars.iv.next.i39, %wide.trip.count.i33
  br i1 %exitcond16.not.i40, label %_ZNK7testing10TestResult6FailedEv.exit41.thread, label %.lr.ph.i34, !llvm.loop !503

.lr.ph.i34:                                       ; preds = %bb.ac, %.lr.ph.preheader.i32
  %indvars.iv.i35 = phi i64 [ 0, %.lr.ph.preheader.i32 ], [ %indvars.iv.next.i39, %bb.ac ] ; 3 uses
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.i35, %i.fq
  br i1 %exitcond.not.i36, label %bb.ad, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37

bb.ad:                                            ; preds = %.lr.ph.i34
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.551, i64 noundef %i.fq, i64 noundef %i.fq) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37: ; preds = %.lr.ph.i34
  %i.ft = getelementptr inbounds nuw [112 x i8], ptr %i.fm, i64 %indvars.iv.i35
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !2120
  %i.fv = add i32 %i.fu, -1
  %spec.select.i.i38 = icmp ult i32 %i.fv, 2
  br i1 %spec.select.i.i38, label %_ZNK7testing10TestResult6FailedEv.exit41.preheader, label %bb.ac

_ZNK7testing10TestResult6FailedEv.exit41.preheader: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i37
  %i.fw = trunc nuw nsw i64 %indvars.iv to i32
  %.067 = add nuw nsw i32 %i.fw, 1
  %i.fx = load ptr, ptr %i.s, align 8, !tbaa !14213
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %.pre to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = lshr exact i64 %i.ga, 3
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = icmp slt i32 %.067, %i.gc
  br i1 %i.gd, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43: ; preds = %_ZNK7testing10TestResult6FailedEv.exit41.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43 ], [ %indvars.iv75, %_ZNK7testing10TestResult6FailedEv.exit41.preheader ] ; 3 uses
  %i.ge = phi ptr [ %i.gt, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43 ], [ %.pre, %_ZNK7testing10TestResult6FailedEv.exit41.preheader ]
  %i.gf = load ptr, ptr %i.ef, align 8, !tbaa !14299
  %i.gg = load ptr, ptr %i.ee, align 8, !tbaa !14296 ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = shl i64 %i.gj, 30
  %i.gl = ashr i64 %i.gk, 32
  %.not.i.i42 = icmp slt i64 %indvars.iv79, %i.gl
  tail call void @llvm.assume(i1 %.not.i.i42)
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv79
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !608 ; 2 uses
  %i.go = icmp sgt i32 %i.gn, -1
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = zext nneg i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !14205
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.gr)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.gs = load ptr, ptr %i.s, align 8, !tbaa !14213
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !14214 ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = lshr exact i64 %i.gw, 3
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = trunc nuw i64 %indvars.iv.next80 to i32
  %i.ha = icmp slt i32 %i.gz, %i.gy
  br i1 %i.ha, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43, label %.loopexit, !llvm.loop !15640

_ZNK7testing10TestResult6FailedEv.exit41.thread:  ; preds = %bb.ac, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i29, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hb = load ptr, ptr %i.s, align 8, !tbaa !14213
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %.pre to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = shl i64 %i.he, 29
  %i.hg = ashr i64 %i.hf, 32
  %i.hh = icmp slt i64 %indvars.iv.next, %i.hg
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br i1 %i.hh, label %bb.aa, label %.loopexit, !llvm.loop !15641

.loopexit:                                        ; preds = %_ZNK7testing10TestResult6FailedEv.exit41.thread, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i43, %_ZNK7testing10TestResult6FailedEv.exit, %_ZNK7testing10TestResult6FailedEv.exit41.preheader
  %i.hi = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.hj = sub nsw i64 %i.hi, %i.dv
  %i.hk = sdiv i64 %i.hj, 1000000
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !14302
  %i.hm = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.hn = icmp eq i8 %i.hm, 0
  br i1 %i.hn, label %bb.ae, label %_ZN7testing8UnitTest11GetInstanceEv.exit46, !prof !609

bb.ae:                                            ; preds = %.loopexit
  %i.ho = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i45 = icmp eq i32 %i.ho, 0
  br i1 %.not.i45, label %_ZN7testing8UnitTest11GetInstanceEv.exit46, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.ag unwind label %bb.ah, !inline_history !2062

bb.ag:                                            ; preds = %bb.af
  %i.hp = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit46

bb.ah:                                            ; preds = %bb.af
  %i.hq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit46:       ; preds = %.loopexit, %bb.ae, %bb.ag
  %i.hr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 640 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !2198 ; 3 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.ai, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit46
  %.pre.i48 = load ptr, ptr %i.ht, align 8, !tbaa !598
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49

bb.ai:                                            ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit46
  %i.hv = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #54 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.hv, align 8, !tbaa !598
  store ptr %i.hv, ptr %i.hs, align 8, !tbaa !2198
  br label %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49

_ZN7testing8UnitTest16UponLeavingGTestEv.exit49:  ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47, %bb.ai
  %i.hw = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.ai ], [ %.pre.i48, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47 ]
  %i.hx = phi ptr [ %i.hv, %bb.ai ], [ %i.ht, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge.i47 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  tail call void %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.hx), !call_target !2210, !inline_history !14292
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite20RunTearDownTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.221)
  %i.ia = load ptr, ptr %i.p, align 8, !tbaa !598
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 96
  %i.ic = load ptr, ptr %i.ib, align 8
  tail call void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0), !call_target !2283
  %i.id = load ptr, ptr %i.p, align 8, !tbaa !598
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 104
  %i.if = load ptr, ptr %i.ie, align 8
  tail call void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0), !call_target !2284
  %i.ig = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %bb.aj, label %_ZN7testing8UnitTest11GetInstanceEv.exit51, !prof !609

bb.aj:                                            ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49
  %i.ii = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i50 = icmp eq i32 %i.ii, 0
  br i1 %.not.i50, label %_ZN7testing8UnitTest11GetInstanceEv.exit51, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.al unwind label %bb.am, !inline_history !2062

bb.al:                                            ; preds = %bb.ak
  %i.ij = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit51

bb.am:                                            ; preds = %bb.ak
  %i.ik = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit51:       ; preds = %_ZN7testing8UnitTest16UponLeavingGTestEv.exit49, %bb.aj, %bb.al
  tail call void @_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef null)
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %_ZN7testing8UnitTest11GetInstanceEv.exit51
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #55 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.454, i32 noundef 1654)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.455, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.456, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %i.f

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.g, ptr %i.h, align 8, !tbaa !2189
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !614
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 472
  store ptr %1, ptr %i.l, align 8, !tbaa !2245
  store i8 0, ptr %i.i, align 8, !tbaa !2190
  %i.m = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #55 ; 2 uses
  %.not.i.i2 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i2, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.454, i32 noundef 1666)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.457, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3: ; preds = %.noexc.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.456, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.m)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3, %.noexc.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %.body.i

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.q, %bb.g ]
  %i.s = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.s) #61
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.bf, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  %i.h = load i8, ptr %i.g, align 8, !tbaa !14275, !range !581, !noundef !582
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !598
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !582
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(264) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !15642

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 3 uses
  %i.u = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #55
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.s) #55 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #55
  %i.y = icmp eq i32 %i.t, %i.x
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.s) #55 ; 0 uses
  invoke void @__cxa_rethrow() #57
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #55
  %i.ab = icmp eq i32 %i.t, %i.aa
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.s) #55 ; 2 uses
  br i1 %i.ab, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !598
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #55, !call_target !14281
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ag, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !592
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.t
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !592
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.v:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !592
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.as, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.x:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.x
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !592
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.w
  %.pn34 = phi { ptr, i32 } [ %i.ay, %bb.w ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.az, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.y:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.z:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !598
  %i.bh = getelementptr i8, ptr %i.bg, i64 %1
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  %i.bj = load ptr, ptr %i.bi, align 8, !nosanitize !582
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bk = inttoptr i64 %1 to ptr
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bl = phi ptr [ %i.bj, %bb.aa ], [ %i.bk, %bb.ab ]
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(264) %i.j)
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %bb.i, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ac
  ret void

bb.ad:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #61
  unreachable

bb.ae:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing9TestSuite17RunSetUpTestSuiteEv(ptr noundef nonnull align 8 dereferenceable(264) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14294 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing9TestSuite20RunTearDownTestSuiteEv(ptr noundef nonnull align 8 dereferenceable(264) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14295 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14201, !range !581, !noundef !582
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !609

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %common.resume, !inline_history !2062

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.b, %bb.c, %bb.e
  tail call void @_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull %0)
  %i.h = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit8, !prof !609

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i7 = icmp eq i32 %i.j, 0
  br i1 %.not.i7, label %_ZN7testing8UnitTest11GetInstanceEv.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %common.resume, !inline_history !2062

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit8

_ZN7testing8UnitTest11GetInstanceEv.exit8:        ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %bb.f, %bb.h
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 616
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2018 ; 8 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !598
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(264) %0), !call_target !2269
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !598
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(264) %0), !call_target !2275
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14213
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !14214 ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, label %._crit_edge

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i

._crit_edge:                                      ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8UnitTest11GetInstanceEv.exit8
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !598
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(264) %0), !call_target !2283
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !598
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(264) %0), !call_target !2284
  %i.am = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit10, !prof !609

bb.i:                                             ; preds = %._crit_edge
  %i.ao = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i9 = icmp eq i32 %i.ao, 0
  br i1 %.not.i9, label %_ZN7testing8UnitTest11GetInstanceEv.exit10, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.k unwind label %common.resume, !inline_history !2062

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit10

common.resume:                                    ; preds = %bb.g, %bb.d, %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55
  resume { ptr, i32 } %i.aq

_ZN7testing8UnitTest11GetInstanceEv.exit10:       ; preds = %._crit_edge, %bb.i, %bb.k
  tail call void @_ZN7testing8UnitTest22set_current_test_suiteEPNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef null)
  br label %bb.l

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %indvars.iv = phi i64 [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ] ; 3 uses
  %i.ar = phi ptr [ %i.x, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %i.bg, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ]
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !14299
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !14296 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = shl i64 %i.aw, 30
  %i.ay = ashr i64 %i.ax, 32
  %.not.i.i = icmp slt i64 %indvars.iv, %i.ay
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !608 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, -1
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !14205
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.be)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load ptr, ptr %i.v, align 8, !tbaa !14213
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !14214 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = shl i64 %i.bj, 29
  %i.bl = ashr i64 %i.bk, 32
  %i.bm = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %._crit_edge, !llvm.loop !15643

bb.l:                                             ; preds = %bb.a, %_ZN7testing8UnitTest11GetInstanceEv.exit10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing9TestSuite11ClearResultEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN7testing10TestResult5ClearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14204 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14204 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not5.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.02.06.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.02.06.i.i, align 8, !tbaa !14205
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  tail call void @_ZN7testing10TestResult5ClearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !522

_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing9TestSuite12ShuffleTestsEPNS_8internal6RandomE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14299
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14296
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  tail call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef %1, i32 noundef 0, i32 noundef %i.i, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7testing9TestSuite14UnshuffleTestsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #36 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14299 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14296 ; 4 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> %vec.ind, ptr %i.i, align 4, !tbaa !608
  store <4 x i32> %step.add, ptr %i.j, align 4, !tbaa !608
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !15644

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader5

.lr.ph.preheader5:                                ; preds = %.lr.ph.preheader, %middle.block
  %.04.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader5, %.lr.ph
  %.04 = phi i64 [ %i.n, %.lr.ph ], [ %.04.ph, %.lr.ph.preheader5 ] ; 3 uses
  %i.l = trunc i64 %.04 to i32
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.04
  store i32 %i.l, ptr %i.m, align 4, !tbaa !608
  %i.n = add nuw i64 %.04, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15645
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal14ShouldUseColorEb(i1 noundef zeroext %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !586
  %i.c = load ptr, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, align 8, !tbaa !589 ; 2 uses
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, i64 8), align 8, !tbaa !590 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.d, ptr %i.a, align 8, !tbaa !591
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !589
  %i.g = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.g, ptr %i.b, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.c, align 1, !tbaa !592
  store i8 %i.i, ptr %i.h, align 1, !tbaa !592
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.c, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !590
  %i.l = load ptr, ptr %1, align 8, !tbaa !589
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.n = load ptr, ptr %1, align 8, !tbaa !589    ; 22 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, label %_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit

_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
end_hunk_16
begin_hunk_17_@_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.v, ptr %i.p, align 8, !tbaa !589
  %i.w = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.w, ptr %i.q, align 8, !tbaa !592
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.y = load i8, ptr %i.r, align 1, !tbaa !592
  store i8 %i.y, ptr %i.x, align 1, !tbaa !592
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.z = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !590
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !589
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %0, align 8, !tbaa !589   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !592
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !589  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !592
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !589    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !592
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7testing8UnitTest3RunEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::ScopedPrematureExitFile", align 8 ; 6 uses
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !590
  %i.b = icmp eq i64 %i.a, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @getenv(ptr noundef nonnull @.str.373) #55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  call void @_ZN7testing8internal23ScopedPrematureExitFileC2EPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !614  ; 2 uses
  %i.g = load i8, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  store i8 %i.g, ptr %i.h, align 8, !tbaa !14275
  %i.i = invoke noundef zeroext i1 @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %i.f, i64 ptrtoint (ptr @_ZN7testing8internal12UnitTestImpl11RunAllTestsEv to i64), i64 0, ptr noundef nonnull @.str.374)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %not. = xor i1 %i.i, true
  %i.j = zext i1 %not. to i32
  call void @_ZN7testing8internal23ScopedPrematureExitFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  ret i32 %i.j

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal23ScopedPrematureExitFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal23ScopedPrematureExitFileC2EPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq ptr %1, null
  %i.b = select i1 %.not, ptr @.str.4, ptr %1     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !586
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.d, ptr %i.a, align 8, !tbaa !591
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !589
  %i.g = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.g, ptr %i.c, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !592
  store i8 %i.i, ptr %i.h, align 1, !tbaa !592
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !591  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !590
  %i.l = load ptr, ptr %0, align 8, !tbaa !589
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.n = load i64, ptr %i.k, align 8, !tbaa !590
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !tbaa !589
  %i.q = call noalias noundef ptr @fopen(ptr noundef %i.p, ptr noundef nonnull @.str.383) ; 2 uses
  %fputc = call i32 @fputc(i32 48, ptr %i.q)      ; 0 uses
  %i.r = call i32 @fclose(ptr noundef %i.q)       ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.bg, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  %i.h = load i8, ptr %i.g, align 8, !tbaa !14275, !range !581, !noundef !582
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !598
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !582
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(713) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !16086

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0        ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.s, 1        ; 3 uses
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #55
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #55 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.y = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #55
  %i.z = icmp eq i32 %i.u, %i.y
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.t) #55 ; 0 uses
  invoke void @__cxa_rethrow() #57
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.ab = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #55
  %i.ac = icmp eq i32 %i.u, %i.ab
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.t) #55 ; 2 uses
  br i1 %i.ac, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !598
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #55, !call_target !14281
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ah, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !592
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.an = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.t
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !592
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.v:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !592
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.u
  %.pn = phi { ptr, i32 } [ %i.as, %bb.u ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.at, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.x:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.x
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !592
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.w
  %.pn36 = phi { ptr, i32 } [ %i.az, %bb.w ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.ba, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.y:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.z:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !598
  %i.bi = getelementptr i8, ptr %i.bh, i64 %1
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load ptr, ptr %i.bj, align 8, !nosanitize !582
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bl = inttoptr i64 %1 to ptr
  br label %bb.ac
end_hunk_17
begin_hunk_18_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a
  %i.ca = add nuw nsw i32 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 4 uses
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !14303
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2018 ; 16 uses
  %i.ce = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #55
  %i.cf = sdiv i64 %i.ce, 1000000
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !14310
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !14329
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !598
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(72) %i.ci), !call_target !2259
  %i.cm = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4
  %i.cn = select i1 %i.bl, i32 1, i32 %i.cm       ; 4 uses
  %i.co = icmp slt i32 %i.cn, 0                   ; 2 uses
  %i.cp = load i8, ptr @_ZN7testing48FLAGS_gtest_recreate_environments_when_repeatingE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = or i1 %i.co, %i.cq                      ; 2 uses
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dc = add nsw i32 %i.cn, -1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 552
  br label %bb.l

._crit_edge138.loopexit:                          ; preds = %bb.az
  %i.dg = xor i1 %i.pf, true
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %._crit_edge138.loopexit, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit
  %.061.lcssa = phi i1 [ true, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit ], [ %i.dg, %._crit_edge138.loopexit ] ; 2 uses
  %i.dh = load ptr, ptr %i.ch, align 8, !tbaa !14329
  %i.di = load ptr, ptr %i.cd, align 8, !tbaa !598
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 136
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(72) %i.dh), !call_target !2288
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !14330 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !14330 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.dm, %i.do
  br i1 %.not5.i.i, label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge138, %_ZN7testing8internalL6DeleteINS_11EnvironmentEEEvPT_.exit
  %.sroa.02.06.i.i = phi ptr [ %i.du, %_ZN7testing8internalL6DeleteINS_11EnvironmentEEEvPT_.exit ], [ %i.dm, %._crit_edge138 ] ; 2 uses
  %i.dp = load ptr, ptr %.sroa.02.06.i.i, align 8, !tbaa !14327 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZN7testing8internalL6DeleteINS_11EnvironmentEEEvPT_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !598
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dp) #55, !call_target !14334, !inline_history !526
  br label %_ZN7testing8internalL6DeleteINS_11EnvironmentEEEvPT_.exit

_ZN7testing8internalL6DeleteINS_11EnvironmentEEEvPT_.exit: ; preds = %.lr.ph.i.i, %bb.k
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.du, %i.do
  br i1 %.not.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !527

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %_ZN7testing8internalL6DeleteINS_11EnvironmentEEEvPT_.exit
  %.pre169 = load ptr, ptr %i.dl, align 8, !tbaa !14328 ; 2 uses
  %.pre170 = load ptr, ptr %i.dn, align 8, !tbaa !14324
  %i.dv = icmp eq ptr %.pre170, %.pre169
  br i1 %i.dv, label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN7testing11EnvironmentES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7testing11EnvironmentES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  store ptr %.pre169, ptr %i.dn, align 8, !tbaa !14324
  br label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE5clearEv.exit

_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE5clearEv.exit: ; preds = %._crit_edge138, %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, %_ZSt8_DestroyIPPN7testing11EnvironmentES2_EvT_S4_RSaIT0_E.exit.i.i
  br i1 %i.b, label %bb.bb, label %bb.ba

bb.l:                                             ; preds = %.lr.ph137, %bb.az
  %.060136 = phi i32 [ 0, %.lr.ph137 ], [ %i.qt, %bb.az ] ; 5 uses
  %.061135 = phi i1 [ false, %.lr.ph137 ], [ %i.pf, %bb.az ] ; 2 uses
  call void @_ZN7testing8internal12UnitTestImpl23ClearNonAdHocTestResultEv(ptr noundef nonnull align 8 dereferenceable(713) %0)
  %i.dw = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.dx = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !range !581
  %i.dy = trunc nuw i8 %i.dx to i1
  %or.cond = select i1 %i.bp, i1 %i.dy, i1 false
  br i1 %or.cond, label %bb.m, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dz = load i32, ptr %i.cb, align 4, !tbaa !14303
  store i32 %i.dz, ptr %i.cs, align 8, !tbaa !2185
  %i.ea = load i32, ptr %i.ct, align 4, !tbaa !14335
  %i.eb = add nsw i32 %i.ea, 1
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.cs, i32 noundef 0, i32 noundef %i.eb, ptr noundef nonnull %i.cu)
  %i.ec = load i32, ptr %i.ct, align 4, !tbaa !14335
  %i.ed = add nsw i32 %i.ec, 1
  %i.ee = load ptr, ptr %i.cw, align 8, !tbaa !14202
  %i.ef = load ptr, ptr %i.cv, align 8, !tbaa !14203
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = lshr exact i64 %i.ei, 3
  %i.ek = trunc i64 %i.ej to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.cs, i32 noundef %i.ed, i32 noundef %i.ek, ptr noundef nonnull %i.cu)
  %i.el = load ptr, ptr %i.cv, align 8, !tbaa !14187 ; 2 uses
  %i.em = load ptr, ptr %i.cw, align 8, !tbaa !14187 ; 2 uses
  %.not7.i = icmp eq ptr %i.el, %i.em
  br i1 %.not7.i, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.ex, %.lr.ph.i ], [ %i.el, %bb.m ] ; 2 uses
  %i.en = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !14188 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 80
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !14299
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !14296
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = lshr exact i64 %i.eu, 2
  %i.ew = trunc i64 %i.ev to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.cs, i32 noundef 0, i32 noundef %i.ew, ptr noundef nonnull %i.eo)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i64 = icmp eq ptr %i.ex, %i.em
  br i1 %.not.i64, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, label %.lr.ph.i

_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit: ; preds = %.lr.ph.i, %bb.m, %bb.l
  %i.ey = load ptr, ptr %i.ch, align 8, !tbaa !14329
  %i.ez = load ptr, ptr %i.cd, align 8, !tbaa !598
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(72) %i.ey, i32 noundef %.060136), !call_target !2262
  br i1 %i.bp, label %bb.n, label %bb.ak

bb.n:                                             ; preds = %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.fc = icmp eq i32 %.060136, 0
  %or.cond3 = select i1 %i.fc, i1 true, i1 %i.cr
  br i1 %or.cond3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fd = load ptr, ptr %i.ch, align 8, !tbaa !14329
  %i.fe = load ptr, ptr %i.cd, align 8, !tbaa !598
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(72) %i.fd), !call_target !2263
  %i.fh = load ptr, ptr %i.cx, align 8, !tbaa !14330 ; 2 uses
  %i.fi = load ptr, ptr %i.cy, align 8, !tbaa !14330 ; 2 uses
  %.not5.i.i65 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not5.i.i65, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit69, label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %bb.o, %.lr.ph.i.i66
  %.sroa.02.06.i.i67 = phi ptr [ %i.fn, %.lr.ph.i.i66 ], [ %i.fh, %bb.o ] ; 2 uses
  %i.fj = load ptr, ptr %.sroa.02.06.i.i67, align 8, !tbaa !14327 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !598
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fj), !call_target !16101, !inline_history !16087
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i67, i64 8 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.fn, %i.fi
  br i1 %.not.i.i68, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit69, label %.lr.ph.i.i66, !llvm.loop !527

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit69: ; preds = %.lr.ph.i.i66, %bb.o
  %i.fo = load ptr, ptr %i.ch, align 8, !tbaa !14329
  %i.fp = load ptr, ptr %i.cd, align 8, !tbaa !598
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(72) %i.fo), !call_target !2264
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit69
  %i.fs = call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.fs, label %bb.q, label %bb.ag

bb.q:                                             ; preds = %bb.p
  %i.ft = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.fu = icmp eq i8 %i.ft, 0
  br i1 %i.fu, label %bb.r, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.r:                                             ; preds = %bb.q
  %i.fv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i70 = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i70, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.t unwind label %bb.u, !inline_history !2

bb.t:                                             ; preds = %bb.s
  %i.fw = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.ay, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.fx, %bb.u ], [ %i.qp, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.s
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.q, %bb.r, %bb.t
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 480
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !714 ; 2 uses
  %.not.i71 = icmp eq ptr %i.ga, null
  br i1 %.not.i71, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.w:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 472
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !2245 ; 2 uses
  %.not4.i = icmp eq ptr %i.gd, null
  br i1 %.not4.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.y:                                             ; preds = %bb.w
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 488
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.v, %bb.x, %bb.y
  %.0.i = phi ptr [ %i.gb, %bb.v ], [ %i.ge, %bb.x ], [ %i.gf, %bb.y ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !2121 ; 2 uses
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !2123 ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = sdiv exact i64 %i.gm, 112               ; 2 uses
  %i.go = trunc i64 %i.gn to i32
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.gq = load ptr, ptr @stdout, align 8, !tbaa !719
  %i.gr = call i32 @fflush(ptr noundef %i.gq)     ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %bb.af
  %i.gs = phi ptr [ %i.hp, %bb.af ], [ %i.gj, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %i.gt = phi ptr [ %i.hq, %bb.af ], [ %i.gi, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ]
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %bb.af ], [ 0, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 4 uses
  %i.gu = phi i64 [ %i.hu, %bb.af ], [ %i.gn, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.gu, %indvars.iv165
  br i1 %.not.i.i.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.551, i64 noundef %indvars.iv165, i64 noundef %i.gu) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.gv = getelementptr inbounds nuw [112 x i8], ptr %i.gs, i64 %indvars.iv165 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !2120
  %i.gx = icmp eq i32 %i.gw, 3
  br i1 %i.gx, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 80
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !589 ; 4 uses
  store ptr %i.da, ptr %2, align 8, !tbaa !586
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %.noexc, label %bb.ab

.noexc:                                           ; preds = %bb.aa
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.517) #57
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.hb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gz) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 %i.hb, ptr %i.a, align 8, !tbaa !591
  %i.hc = icmp ugt i64 %i.hb, 15
  br i1 %i.hc, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ab
  %i.hd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.hd, ptr %2, align 8, !tbaa !589
  %i.he = load i64, ptr %i.a, align 8, !tbaa !591
  store i64 %i.he, ptr %i.da, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.ab
  %i.hf = phi ptr [ %i.hd, %.noexc.i ], [ %i.da, %bb.ab ] ; 2 uses
  switch i64 %i.hb, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.hg = load i8, ptr %i.gz, align 1, !tbaa !592
  store i8 %i.hg, ptr %i.hf, align 1, !tbaa !592
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr nonnull align 1 %i.gz, i64 %i.hb, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i
  %i.hh = load i64, ptr %i.a, align 8, !tbaa !591 ; 2 uses
  store i64 %i.hh, ptr %i.db, align 8, !tbaa !590
  %i.hi = load ptr, ptr %2, align 8, !tbaa !589
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hh
  store i8 0, ptr %i.hj, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.hk = load ptr, ptr %2, align 8, !tbaa !589
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.hk) ; 0 uses
  %i.hl = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.da
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.hn = load i64, ptr %i.da, align 8, !tbaa !592
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %.pre = load ptr, ptr %i.gh, align 8, !tbaa !2121
  %.pre168 = load ptr, ptr %i.gg, align 8, !tbaa !2123
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.hp = phi ptr [ %.pre168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gs, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.hq = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gt, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = sdiv exact i64 %i.ht, 112               ; 2 uses
  %i.hv = shl i64 %i.hu, 32
  %i.hw = ashr exact i64 %i.hv, 32
  %i.hx = icmp slt i64 %indvars.iv.next166, %i.hw
  br i1 %i.hx, label %.lr.ph, label %._crit_edge, !llvm.loop !16088

bb.ag:                                            ; preds = %bb.p
  %i.hy = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.hy, label %bb.ai, label %.preheader108

.preheader108:                                    ; preds = %bb.ag
  %i.hz = load ptr, ptr %i.cw, align 8, !tbaa !14202
  %i.ia = load ptr, ptr %i.cv, align 8, !tbaa !14203 ; 2 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = lshr exact i64 %i.id, 3
  %i.if = trunc i64 %i.ie to i32
  %i.ig = icmp sgt i32 %i.if, 0
  br i1 %i.ig, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %.preheader108, %bb.ah
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %bb.ah ], [ 1, %.preheader108 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ah ], [ 0, %.preheader108 ] ; 6 uses
  %i.ih = phi ptr [ %i.kt, %bb.ah ], [ %i.ia, %.preheader108 ]
  %i.ii = load ptr, ptr %i.cz, align 8, !tbaa !14299
  %i.ij = load ptr, ptr %i.cu, align 8, !tbaa !14296 ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = shl i64 %i.im, 30
  %i.io = ashr i64 %i.in, 32
  %.not.i.i74 = icmp slt i64 %indvars.iv, %i.io
  call void @llvm.assume(i1 %.not.i.i74)
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !608 ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, -1
  call void @llvm.assume(i1 %i.ir)
  %i.is = zext nneg i32 %i.iq to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !14188
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.iu)
  %i.iv = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !593, !range !581, !noundef !582
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i76, label %bb.ah

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i76: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.ix = load ptr, ptr %i.cz, align 8, !tbaa !14299
  %i.iy = load ptr, ptr %i.cu, align 8, !tbaa !14296 ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
end_hunk_18
begin_hunk_19_@_ZN7testing8internal25JsonUnitTestResultPrinterD2Ev:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !592
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal12UnitTestImpl25set_os_stack_trace_getterEPNS0_27OsStackTraceGetterInterfaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(713) %0, ptr noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2198 ; 4 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !598
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #55, !call_target !2209
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %1, ptr %i.a, align 8, !tbaa !2198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14299
  %i.c = load ptr, ptr %3, align 8, !tbaa !14296
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %i.i = icmp sgt i32 %1, -1
  %i.j = icmp sle i32 %1, %i.h
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.470, i32 noundef 308)
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.557, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.558, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.559, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.513, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %bb.d
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  br label %bb.m

bb.f:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.s = icmp sle i32 %1, %2
  %i.t = icmp sle i32 %2, %i.h
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.470, i32 noundef 311)
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.560, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %bb.g
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.561, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %2)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.562, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.h
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef %1)
          to label %bb.i unwind label %bb.k       ; 2 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.393, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.h)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.513, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  %i.ae = sub nsw i32 %2, %1                      ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = sext i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = call noundef i32 @_ZN7testing8internal6Random8GenerateEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %i.ai)
  %i.ak = add nsw i32 %i.aj, %1
  %i.al = sext i32 %i.ak to i64
  %i.am = load ptr, ptr %3, align 8, !tbaa !14296 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.ah
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4     ; 2 uses
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !608
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !608
  store i32 %i.as, ptr %i.an, align 4, !tbaa !608
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !608
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.at = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !16134

bb.m:                                             ; preds = %bb.k, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.r, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN7testing8internal31GetCurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #29 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.g = add nsw i32 %1, 1
  call void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(713) %i.f, i32 noundef %i.g)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7testing8internal10SkipPrefixEPKcPS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #38 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #62 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2034   ; 2 uses
  %i.c = tail call i32 @strncmp(ptr noundef %i.b, ptr noundef nonnull %0, i64 noundef %i.a) #62
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.a
  store ptr %i.e, ptr %1, align 8, !tbaa !2034
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal9ParseFlagEPKcS2_Pi(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::Message", align 8  ; 9 uses
  %i.a = tail call fastcc noundef ptr @_ZN7testing8internalL14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.c = load ptr, ptr %3, align 8, !tbaa !596
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.398, i64 noundef 20)
          to label %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit:       ; preds = %bb.b
  %i.f = icmp eq ptr %1, null
  %i.g = load ptr, ptr %3, align 8, !tbaa !596
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br i1 %i.f, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.j = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.188, %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit ]
  %i.k = phi i64 [ %i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 6, %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit ]
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.j, i64 noundef %i.k)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  %i.m = invoke noundef zeroext i1 @_ZN7testing8internal10ParseInt32ERKNS_7MessageEPKcPi(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, ptr noundef %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.n = load ptr, ptr %3, align 8, !tbaa !596    ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !598
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.c, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %bb.b, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !596    ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.s, null
  br i1 %.not.i.i8, label %_ZN7testing7MessageD2Ev.exit10, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9: ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !598
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #55, !call_target !607, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit10

_ZN7testing7MessageD2Ev.exit10:                   ; preds = %bb.d, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %.0 = phi i1 [ %i.m, %_ZN7testing7MessageD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN7testing8internalL14ParseFlagValueEPKcS2_b(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !586
  store i16 11565, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !590
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !592
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.38, i64 noundef 6)
          to label %.noexc25 unwind label %bb.g   ; 6 uses

.noexc25:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !586, !alias.scope !16139
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !589  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc25
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !590  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc25
  store ptr %i.h, ptr %4, align 8, !tbaa !589, !alias.scope !16139
  %i.o = load i64, ptr %i.i, align 8, !tbaa !592
  store i64 %i.o, ptr %i.g, align 8, !tbaa !592, !alias.scope !16139
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !590
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.p = phi i64 [ %i.l, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !tbaa !590, !alias.scope !16139
  store ptr %i.i, ptr %i.f, align 8, !tbaa !589
  store i64 0, ptr %i.q, align 8, !tbaa !590
  store i8 0, ptr %i.i, align 8, !tbaa !592
  call void @llvm.experimental.noalias.scope.decl(metadata !16140)
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #55, !noalias !16140 ; 2 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !590, !noalias !16140
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.noexc30 unwind label %bb.h

.noexc30:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26: ; preds = %bb.c
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %1, i64 noundef %i.s)
          to label %.noexc31 unwind label %bb.h   ; 6 uses

.noexc31:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !586, !alias.scope !16140
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !589  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

bb.e:                                             ; preds = %.noexc31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !590 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
end_hunk_19
begin_hunk_20_@_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIwEEvPiPPT_:bb.a
  %i.ax = sext i32 %.02647 to i64                 ; 2 uses
  %i.ay = xor i32 %.02647, -1
  %i.az = add i32 %i.au, %i.ay
  %i.ba = add i32 %i.au, -2
  %i.bb = sub i32 %i.ba, %.02647
  %xtraiter = and i32 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.aw, %.lr.ph.preheader ] ; 4 uses
  %.0.in45.prol = phi i64 [ %indvars.iv.prol, %.lr.ph.prol ], [ %i.ax, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14250
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %.0.in45.prol
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !14250
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !16150

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.aw, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0.in45.unr = phi i64 [ %i.ax, %.lr.ph.preheader ], [ %indvars.iv.prol, %.lr.ph.prol ]
  %i.bf = icmp ult i32 %i.bb, 3
  br i1 %i.bf, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.j
  %i.bg = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.bg, ptr %0, align 4, !tbaa !608
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bh
  store ptr null, ptr %i.bi, align 8, !tbaa !14250
  %i.bj = add nsw i32 %.02647, -1
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.0.in45 = phi i64 [ %indvars.iv.next.2, %.lr.ph ], [ %.0.in45.unr, %.lr.ph.prol.loopexit ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !14250
  %i.bm = getelementptr inbounds [8 x i8], ptr %1, i64 %.0.in45
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !14250
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !14250
  %i.bp = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !14250
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !14250
  %i.bs = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !14250
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !14250
  %i.bv = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next.1
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !14250
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.au, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !16151

.critedge:                                        ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread42, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge
  %.127 = phi i32 [ %i.bj, %._crit_edge ], [ %.02647, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.02647, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit ], [ %.02647, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread42 ], [ %.02647, %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i ]
  %i.bw = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.f
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %.critedge
  %i.by = load i64, ptr %i.f, align 8, !tbaa !592
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.ca = add nsw i32 %.127, 1                    ; 2 uses
  %i.cb = load i32, ptr %0, align 4, !tbaa !608
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.b, label %._crit_edge50, !llvm.loop !16152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %bb.n

bb.k:                                             ; preds = %._crit_edge50
  invoke fastcc void @_ZN7testing8internalL17PrintColorEncodedEPKc()
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %._crit_edge50
  %i.ce = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.a
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.m
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !592
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  ret void

bb.n:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cd, %bb.l ]
  %i.ci = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.a
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.n
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !592
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing14InitGoogleTestEPiPPc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18InitGoogleTestImplIcEEvPiPPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18InitGoogleTestImplIcEEvPiPPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZN7testing8internalL18GTestIsInitializedEv()
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !608
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, align 8, !tbaa !2033 ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !2031 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !589 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !592
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #56
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !40

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !2031
  %.pre = load i32, ptr %0, align 4, !tbaa !608
  %i.l = icmp eq i32 %.pre, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  call void @_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIcEEvPiPPT_(ptr noundef nonnull %0, ptr noundef %1)
  %i.o = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.d:                                             ; preds = %._crit_edge
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i9 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i9, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.f unwind label %bb.g, !inline_history !2

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZN7testing7MessageD2Ev.exit6.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.ai, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %._crit_edge, %bb.d, %bb.f
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(713) %i.t)
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55, !noalias !16158
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !16158
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2034, !noalias !16158 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = load ptr, ptr %2, align 8, !tbaa !596, !noalias !16158
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br i1 %i.w, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.h
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #55, !noalias !16158
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.h
  %i.aa = phi ptr [ %i.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.188, %bb.h ]
  %i.ab = phi i64 [ %i.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %bb.h ]
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.aa, i64 noundef %i.ab)
          to label %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i unwind label %bb.i, !noalias !16158 ; 0 uses

_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i:        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !596, !noalias !16159
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %i.ad)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.i

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i
  %i.ae = load ptr, ptr %2, align 8, !tbaa !596, !noalias !16158 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !598
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #55, !call_target !607, !inline_history !548
  br label %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.i:                                             ; preds = %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8, !tbaa !596, !noalias !16158 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !598
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #55, !call_target !607, !inline_history !548
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55, !noalias !16158
  br label %common.resume

_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55, !noalias !16158
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !2031 ; 7 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 16), align 8, !tbaa !2032
  %.not.i.i10 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i10, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !586
  %i.aq = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.m
  br i1 %i.ar, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.as = load i64, ptr %i.n, align 8, !tbaa !590 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.au, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !589
  %i.av = load i64, ptr %i.m, align 8, !tbaa !592
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !592
  %.pre17 = load i64, ptr %i.n, align 8, !tbaa !590
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aw = phi i64 [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.as, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !590
  store ptr %i.m, ptr %3, align 8, !tbaa !589
  store i64 0, ptr %i.n, align 8, !tbaa !590
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !2031
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E, ptr %i.an, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.m

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.l
  %.pre18 = load ptr, ptr %3, align 8, !tbaa !589 ; 2 uses
  %i.az = icmp eq ptr %.pre18, %i.m
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !592
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre18, i64 noundef %i.bb) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i32, ptr %0, align 4, !tbaa !608
  %i.bd = zext i32 %i.bc to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.bd
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !16157

bb.m:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.m
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.m
  %i.bh = load i64, ptr %i.m, align 8, !tbaa !592
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  br label %common.resume

bb.n:                                             ; preds = %bb.b, %bb.a, %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing14InitGoogleTestEPiPPw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18InitGoogleTestImplIwEEvPiPPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18InitGoogleTestImplIwEEvPiPPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZN7testing8internalL18GTestIsInitializedEv()
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !608
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, align 8, !tbaa !2033 ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !2031 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !589 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !592
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #56
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !40

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !2031
  %.pre = load i32, ptr %0, align 4, !tbaa !608
  %i.l = icmp eq i32 %.pre, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  call void @_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIwEEvPiPPT_(ptr noundef nonnull %0, ptr noundef %1)
  %i.o = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !609

bb.d:                                             ; preds = %._crit_edge
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  %.not.i.i9 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i9, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.f unwind label %bb.g, !inline_history !2

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %._crit_edge, %bb.d, %bb.f
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(713) %i.t)
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  call void @_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !2031 ; 7 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 16), align 8, !tbaa !2032
  %.not.i.i10 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i10, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !586
  %i.y = load ptr, ptr %2, align 8, !tbaa !589    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.m
  br i1 %i.z, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !590 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  store ptr %i.y, ptr %i.v, align 8, !tbaa !589
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !592
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !592
  %.pre17 = load i64, ptr %i.n, align 8, !tbaa !590
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ae = phi i64 [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aa, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !590
  store ptr %i.m, ptr %2, align 8, !tbaa !589
  store i64 0, ptr %i.n, align 8, !tbaa !590
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !2031
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.l

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.k
  %.pre18 = load ptr, ptr %2, align 8, !tbaa !589 ; 2 uses
  %i.ah = icmp eq ptr %.pre18, %i.m
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !592
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %.pre18, i64 noundef %i.aj) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %0, align 4, !tbaa !608
  %i.al = zext i32 %i.ak to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.al
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !16160

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.m
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.l
  %i.ap = load i64, ptr %i.m, align 8, !tbaa !592
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %common.resume

bb.m:                                             ; preds = %bb.b, %bb.a, %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing14InitGoogleTestEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i32 1, ptr %i.a, align 4, !tbaa !608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store ptr @.str.399, ptr %i.b, align 8, !tbaa !2034
  call void @_ZN7testing8internal18InitGoogleTestImplIcEEvPiPPT_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7TempDirB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store ptr @.str.400, ptr %i.a, align 8, !tbaa !2034
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.401, ptr %i.b, align 8, !tbaa !2034
  call fastcc void @_ZN7testingL13GetDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c(ptr dead_on_unwind noalias writable align 8 %0, ptr %i.a, i64 2, ptr noundef nonnull @.str.402)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testingL13GetDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree nonnull readonly captures(address) %1, i64 range(i64 1, 3) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.lr.ph.preheader:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.idx = shl nuw nsw i64 %2, 3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.02659 = phi ptr [ %i.bg, %bb.o ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.f = load ptr, ptr %.02659, align 8, !tbaa !2034
  %i.g = tail call noundef ptr @getenv(ptr noundef %i.f) #55 ; 10 uses
  %.not28 = icmp eq ptr %i.g, null
  br i1 %.not28, label %bb.o, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.h = load i8, ptr %i.g, align 1, !tbaa !592
  %.not29 = icmp eq i8 %i.h, 0
  br i1 %.not29, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #62
  %i.j = getelementptr i8, ptr %i.g, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !592
  %.not30 = icmp eq i8 %i.l, 47
  br i1 %.not30, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !586
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  store i64 %i.n, ptr %i.d, align 8, !tbaa !591
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !589
  %i.q = load i64, ptr %i.d, align 8, !tbaa !591
  store i64 %i.q, ptr %i.m, align 8, !tbaa !592
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc.i ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.g, align 1, !tbaa !592
  store i8 %i.s, ptr %i.r, align 1, !tbaa !592
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.g, i64 %i.n, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.t = load i64, ptr %i.d, align 8, !tbaa !591  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN7testing6SrcDirB5cxx11Ev:bb.a
  %.not.i.i1.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.br = load ptr, ptr %i.p, align 8, !tbaa !2032, !noalias !16165
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bj to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bu) #56, !noalias !16165
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55, !noalias !16165
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55, !noalias !16165
  invoke void @_ZNK7testing8internal8FilePath14RemoveFileNameEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.m unwind label %bb.r, !noalias !16165

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bv, ptr %5, align 8, !tbaa !586, !alias.scope !16165
  %i.bw = load ptr, ptr %4, align 8, !tbaa !589, !noalias !16165 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !590, !noalias !16165 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55, !noalias !16165
  store i64 %i.by, ptr %i.a, align 8, !tbaa !591, !noalias !16165
  %i.bz = icmp ugt i64 %i.by, 15
  br i1 %i.bz, label %.noexc.i11.i, label %._crit_edge.i.i10.i

.noexc.i11.i:                                     ; preds = %bb.m
  %i.ca = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12.i unwind label %bb.s ; 2 uses

.noexc12.i:                                       ; preds = %.noexc.i11.i
  store ptr %i.ca, ptr %5, align 8, !tbaa !589, !alias.scope !16165
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !591, !noalias !16165
  store i64 %i.cb, ptr %i.bv, align 8, !tbaa !592, !alias.scope !16165
  br label %._crit_edge.i.i10.i

._crit_edge.i.i10.i:                              ; preds = %.noexc12.i, %bb.m
  %i.cc = phi ptr [ %i.ca, %.noexc12.i ], [ %i.bv, %bb.m ] ; 2 uses
  switch i64 %i.by, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i10.i
  %i.cd = load i8, ptr %i.bw, align 1, !tbaa !592
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !592
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i10.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.bw, i64 %i.by, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i10.i
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !591, !noalias !16165 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !590, !alias.scope !16165
  %i.cg = load ptr, ptr %5, align 8, !tbaa !589, !alias.scope !16165
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 0, ptr %i.ch, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55, !noalias !16165
  %i.ci = load ptr, ptr %4, align 8, !tbaa !589, !noalias !16165 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZN7testing8internal8FilePathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !592, !noalias !16165
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit.i

_ZN7testing8internal8FilePathD2Ev.exit.i:         ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55, !noalias !16165
  %i.cn = load ptr, ptr %1, align 8, !tbaa !589, !noalias !16165 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.af
  br i1 %i.co, label %_ZN7testingL29GetCurrentExecutableDirectoryB5cxx11Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14.i: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit.i
  %i.cp = load i64, ptr %i.af, align 8, !tbaa !592, !noalias !16165
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #56
  br label %_ZN7testingL29GetCurrentExecutableDirectoryB5cxx11Ev.exit

bb.q:                                             ; preds = %.noexc.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #55, !noalias !16165
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55, !noalias !16165
  br label %_ZN7testing8internal8FilePathD2Ev.exit25.i

bb.r:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal8FilePathD2Ev.exit22.i

bb.s:                                             ; preds = %.noexc.i11.i
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %4, align 8, !tbaa !589, !noalias !16165 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZN7testing8internal8FilePathD2Ev.exit22.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i: ; preds = %bb.s
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !592, !noalias !16165
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit22.i

_ZN7testing8internal8FilePathD2Ev.exit22.i:       ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i, %bb.r
  %.pn5.i = phi { ptr, i32 } [ %i.cs, %bb.r ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i ], [ %i.ct, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55, !noalias !16165
  %i.cz = load ptr, ptr %1, align 8, !tbaa !589, !noalias !16165 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.af
  br i1 %i.da, label %_ZN7testing8internal8FilePathD2Ev.exit25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit22.i
  %i.db = load i64, ptr %i.af, align 8, !tbaa !592, !noalias !16165
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #56
  br label %_ZN7testing8internal8FilePathD2Ev.exit25.i

_ZN7testing8internal8FilePathD2Ev.exit25.i:       ; preds = %_ZN7testing8internal8FilePathD2Ev.exit22.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i, %bb.q
  %.pn5.pn.i = phi { ptr, i32 } [ %i.cr, %bb.q ], [ %.pn5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i ], [ %.pn5.i, %_ZN7testing8internal8FilePathD2Ev.exit22.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55, !noalias !16165
  br label %common.resume

_ZN7testingL29GetCurrentExecutableDirectoryB5cxx11Ev.exit: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55, !noalias !16165
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dd = load ptr, ptr %5, align 8, !tbaa !589
  invoke fastcc void @_ZN7testingL13GetDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c(ptr dead_on_unwind noalias writable align 8 %0, ptr %i.c, i64 1, ptr noundef %i.dd)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %_ZN7testingL29GetCurrentExecutableDirectoryB5cxx11Ev.exit
  %i.de = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bv
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.dg = load i64, ptr %i.bv, align 8, !tbaa !592
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  ret void

bb.u:                                             ; preds = %_ZN7testingL29GetCurrentExecutableDirectoryB5cxx11Ev.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bv
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.u
  %i.dl = load i64, ptr %i.bv, align 8, !tbaa !592
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.testing::internal::TraceInfo", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !586
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !590
  store i8 0, ptr %i.b, align 8, !tbaa !592
  store ptr %1, ptr %4, align 8, !tbaa !2196
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !2197
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3) #55
  %i.e = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2062

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.d, %bb.b, %bb.a
  invoke void @_ZN7testing8UnitTest14PushGTestTraceERKNS_8internal9TraceInfoE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !589  ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZN7testing8internal9TraceInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.b, align 8, !tbaa !592
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
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !589  ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZN7testing8internal9TraceInfoD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %.body
  %i.q = load i64, ptr %i.b, align 8, !tbaa !592
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
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !609

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2062

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
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
  tail call void @__clang_call_terminate(ptr %i.g) #61
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal13DeathTestImplD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #61
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal16ForkingDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #61
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15NoExecDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #55
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal13DeathTestImplE, i64 16), ptr %0, align 8, !tbaa !598
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !2000
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
  store i32 418, ptr %i.a, align 4, !tbaa !608
  invoke void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.15)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.516)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) #57
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.e, align 8, !tbaa !598
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !724  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.k
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1994
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !592
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.m, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !724
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1994
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !592
  invoke void %i.p(ptr noundef %i.q)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.n, !inline_history !38

bb.n:                                             ; preds = %bb.m
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #61, !inline_history !1995
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.k, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.l, %bb.m
  ret void

bb.o:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #61
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal13ExecDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) #55
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal16DeathTestFactoryD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal23DefaultDeathTestFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #56
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal35DefaultGlobalTestPartResultReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #56
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal38DefaultPerThreadTestPartResultReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
end_hunk_21
begin_hunk_22_@_ZN7testing8internalL22ExecDeathTestChildMainEPv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !590
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !590, !alias.scope !16197
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !589
  store i64 0, ptr %i.cx, align 8, !tbaa !590
  store i8 0, ptr %i.cq, align 8, !tbaa !592
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.15)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.426)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.17)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #57
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %.critedge
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60, %bb.g
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.x:                                             ; preds = %bb.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.o, %.critedge.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.z:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.aa:                                            ; preds = %bb.q
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.ab:                                            ; preds = %bb.r
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ac:                                            ; preds = %bb.s
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %2, align 8, !tbaa !589   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !592
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.ab
  %.pn47 = phi { ptr, i32 } [ %i.dh, %bb.ab ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.di, %bb.ac ] ; 2 uses
  %i.do = load ptr, ptr %3, align 8, !tbaa !589   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !592
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.aa
  %.pn47.pn = phi { ptr, i32 } [ %i.dg, %bb.aa ], [ %.pn47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.dt = load ptr, ptr %4, align 8, !tbaa !589   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !592
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.z
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.df, %bb.z ], [ %.pn47.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.pn47.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ] ; 2 uses
  %i.dy = load ptr, ptr %5, align 8, !tbaa !589   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !592
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.y
  %.pn47.pn.pn.pn = phi { ptr, i32 } [ %i.de, %bb.y ], [ %.pn47.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn47.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ] ; 2 uses
  %i.ed = load ptr, ptr %9, align 8, !tbaa !589   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !592
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #56
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.x, %_ZN7testing7MessageD2Ev.exit4.i
  %.pn47.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %_ZN7testing7MessageD2Ev.exit4.i ], [ %i.dd, %bb.x ], [ %.pn47.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn47.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #55
  %i.ei = load ptr, ptr %6, align 8, !tbaa !589   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ai
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %.body
  %i.ek = load i64, ptr %i.ai, align 8, !tbaa !592
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.w
  %.pn47.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.w ], [ %.pn47.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn47.pn.pn.pn.pn, %.body ] ; 2 uses
  %i.em = load ptr, ptr %7, align 8, !tbaa !589   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.s
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.eo = load i64, ptr %i.s, align 8, !tbaa !592
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.v
  %.pn47.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.db, %bb.v ], [ %.pn47.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn47.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ] ; 2 uses
  %i.eq = load ptr, ptr %8, align 8, !tbaa !589   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.i
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.es = load i64, ptr %i.i, align 8, !tbaa !592
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.u
  %.pn47.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.u ], [ %.pn47.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn47.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  br label %common.resume

.critedge57:                                      ; preds = %bb.b
  %i.eu = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.ad, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !609

bb.ad:                                            ; preds = %.critedge57
  %i.ew = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  %.not.i95 = icmp eq i32 %i.ew, 0
  br i1 %.not.i95, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.af unwind label %bb.ag, !inline_history !2062

bb.af:                                            ; preds = %bb.ae
  %i.ex = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #55, !inline_history !2062 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.ey, %bb.ag ], [ %.pn47.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn40.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ]
  resume { ptr, i32 } %common.resume.op

bb.ag:                                            ; preds = %bb.ae
  %i.ey = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #55, !inline_history !2062
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %.critedge57, %bb.ad, %bb.af
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !614
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !589 ; 5 uses
  %i.fc = tail call i32 @chdir(ptr noundef %i.fb) #55
  %.not = icmp eq i32 %i.fc, 0
  br i1 %.not, label %._crit_edge.i.i148, label %._crit_edge.i.i96

._crit_edge.i.i96:                                ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #55
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.fd, ptr %13, align 8, !tbaa !586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.fd, ptr noundef nonnull align 1 dereferenceable(7) @.str.427, i64 7, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 7, ptr %i.fe, align 8, !tbaa !590
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 23
  store i8 0, ptr %i.ff, align 1, !tbaa !592
  call void @llvm.experimental.noalias.scope.decl(metadata !16198)
  %i.fg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fb) #55, !noalias !16198 ; 2 uses
  %i.fh = icmp ugt i64 %i.fg, 4611686018427387896
  br i1 %i.fh, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100

bb.ah:                                            ; preds = %._crit_edge.i.i96
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.noexc105 unwind label %bb.au

.noexc105:                                        ; preds = %bb.ah
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100: ; preds = %._crit_edge.i.i96
  %i.fi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %i.fb, i64 noundef %i.fg)
          to label %.noexc106 unwind label %bb.au ; 6 uses

.noexc106:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.fj, ptr %12, align 8, !tbaa !586, !alias.scope !16198
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !589 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 5 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

bb.ai:                                            ; preds = %.noexc106
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !590 ; 3 uses
  %i.fp = icmp ult i64 %i.fo, 16
  call void @llvm.assume(i1 %i.fp)
  %i.fq = add nuw nsw i64 %i.fo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fj, ptr noundef nonnull align 8 dereferenceable(1) %i.fl, i64 %i.fq, i1 false)
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %.noexc106
  store ptr %i.fk, ptr %12, align 8, !tbaa !589, !alias.scope !16198
  %i.fr = load i64, ptr %i.fl, align 8, !tbaa !592
  store i64 %i.fr, ptr %i.fj, align 8, !tbaa !592, !alias.scope !16198
  %.phi.trans.insert.i102 = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.pre.i103 = load i64, ptr %.phi.trans.insert.i102, align 8, !tbaa !590
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ai
  %i.fs = phi i64 [ %i.fo, %bb.ai ], [ %.pre.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.fs, ptr %i.fu, align 8, !tbaa !590, !alias.scope !16198
  store ptr %i.fl, ptr %i.fi, align 8, !tbaa !589
  store i64 0, ptr %i.ft, align 8, !tbaa !590
  store i8 0, ptr %i.fl, align 8, !tbaa !592
  call void @llvm.experimental.noalias.scope.decl(metadata !16199)
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !590, !noalias !16199
  %i.fw = add i64 %i.fv, -4611686018427387893
  %i.fx = icmp ult i64 %i.fw, 11
  br i1 %i.fx, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i108

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.437) #57
          to label %.noexc113 unwind label %bb.av

.noexc113:                                        ; preds = %bb.ak
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i108: ; preds = %bb.aj
  %i.fy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.428, i64 noundef 11)
          to label %.noexc114 unwind label %bb.av ; 6 uses

.noexc114:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i108
  %i.fz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.fz, ptr %11, align 8, !tbaa !586, !alias.scope !16199
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !589 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 5 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

bb.al:                                            ; preds = %.noexc114
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !590 ; 3 uses
  %i.gf = icmp ult i64 %i.ge, 16
  call void @llvm.assume(i1 %i.gf)
  %i.gg = add nuw nsw i64 %i.ge, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fz, ptr noundef nonnull align 8 dereferenceable(1) %i.gb, i64 %i.gg, i1 false)
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %.noexc114
  store ptr %i.ga, ptr %11, align 8, !tbaa !589, !alias.scope !16199
  %i.gh = load i64, ptr %i.gb, align 8, !tbaa !592
  store i64 %i.gh, ptr %i.fz, align 8, !tbaa !592, !alias.scope !16199
  %.phi.trans.insert.i110 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.pre.i111 = load i64, ptr %.phi.trans.insert.i110, align 8, !tbaa !590
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.al
  %i.gi = phi i64 [ %i.ge, %bb.al ], [ %.pre.i111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.gi, ptr %i.gk, align 8, !tbaa !590, !alias.scope !16199
  store ptr %i.gb, ptr %i.fy, align 8, !tbaa !589
  store i64 0, ptr %i.gj, align 8, !tbaa !590
  store i8 0, ptr %i.gb, align 8, !tbaa !592
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #55
  invoke void @_ZN7testing8internal23GetLastErrnoDescriptionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14)
          to label %bb.an unwind label %bb.aw

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !16200)
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !590, !noalias !16200 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !590, !noalias !16200 ; 4 uses
  %i.go = add i64 %i.gn, %i.gl                    ; 2 uses
  %i.gp = load ptr, ptr %11, align 8, !tbaa !589, !noalias !16200 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.fz
  br i1 %i.gq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128: ; preds = %bb.an
  %i.gr = icmp ult i64 %i.gl, 16
  call void @llvm.assume(i1 %i.gr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.an
  %i.gs = load i64, ptr %i.fz, align 8, !tbaa !592, !noalias !16200
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128
  %i.gt = phi i64 [ %i.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i128 ]
  %i.gu = icmp ugt i64 %i.go, %i.gt
  br i1 %i.gu, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i117
  %i.gv = load ptr, ptr %14, align 8, !tbaa !589, !noalias !16200
  %i.gw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i127: ; preds = %bb.ao
  %i.gy = icmp ult i64 %i.gn, 16
  call void @llvm.assume(i1 %i.gy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i121: ; preds = %bb.ao
  %i.gz = load i64, ptr %i.gw, align 8, !tbaa !592, !noalias !16200
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i122: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i127
  %i.ha = phi i64 [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i121 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i127 ]
  %.not.i123 = icmp ugt i64 %i.go, %i.ha
  br i1 %.not.i123, label %bb.aq, label %.critedge.i124

.critedge.i124:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i122
  %i.hb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.gp, i64 noundef %i.gl)
          to label %.noexc129 unwind label %bb.ax ; 5 uses

.noexc129:                                        ; preds = %.critedge.i124
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.hc, ptr %10, align 8, !tbaa !586, !alias.scope !16200
  %i.hd = load ptr, ptr %i.hb, align 8, !tbaa !589 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 5 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i125

bb.ap:                                            ; preds = %.noexc129
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !590 ; 2 uses
  %i.hi = icmp ult i64 %i.hh, 16
  call void @llvm.assume(i1 %i.hi)
  %i.hj = add nuw nsw i64 %i.hh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hc, ptr noundef nonnull align 8 dereferenceable(1) %i.he, i64 %i.hj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i126
end_hunk_22
