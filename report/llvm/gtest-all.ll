Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/gtest-all?download=true
inline.NumInlined: 8188
inline.NumDeleted: 2579
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7testing8internal16BoolFromGTestEnvEPKcb:bb.a
  %i.g = icmp ne i8 %i.f, 0
  br label %.tail

.tail:                                            ; preds = %sub_1, %sub_0, %bb.a
  %i.h = phi i1 [ %1, %bb.a ], [ true, %sub_0 ], [ %i.g, %sub_1 ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.a, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.tail
  %i.k = load i64, ptr %i.i, align 8, !tbaa !82
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.l) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.tail, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal16InDeathTestChildEv() local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 8), align 8, !tbaa !80
  %i.b = icmp eq i64 %i.a, 10
  br i1 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, align 8, !tbaa !79 ; 2 uses
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
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !80
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
define dso_local void @_ZN7testing14ExitedWithCodeC2Ei(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #4 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !538
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK7testing14ExitedWithCodeclEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
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
define dso_local void @_ZN7testing14KilledBySignalC2Ei(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #4 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !540
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK7testing14KilledBySignalclEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
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

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.testing::ExitedWithCode", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @_ZN7testing14ExitedWithCodeC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 0) #48
  %i.a = and i32 %0, 127
  %i.b = icmp ne i32 %i.a, 0
  %i.c = lshr i32 %0, 8
  %i.d = and i32 %i.c, 255
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp ne i32 %i.d, %i.e
  %.not2 = select i1 %i.b, i1 true, i1 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret i1 %.not2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal23GetLastErrnoDescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call ptr @__errno_location() #51
  %i.c = load i32, ptr %i.b, align 4, !tbaa !97   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !76
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @strerror(i32 noundef %i.c) #48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !76
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.d:                                             ; preds = %.thread, %bb.b
  %i.i = phi ptr [ %i.e, %.thread ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = phi ptr [ @.str.4, %.thread ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.k, ptr %i.a, align 8, !tbaa !81
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !79
  %i.n = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.n, ptr %i.i, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %i.m, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !82
  store i8 %i.p, ptr %i.o, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.q = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !80
  %i.s = load ptr, ptr %0, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal9DeathTestC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %2 = alloca %"class.std::allocator", align 1    ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing8internal9DeathTestE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) #52
  unreachable

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #9 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 568
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !195  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !197
  %i.j = tail call noundef ptr @_ZN7testing8internal5posix6FDOpenEiPKc(i32 noundef %i.i, ptr noundef nonnull @.str.378) ; 3 uses
  %i.k = tail call i32 @fputc(i32 noundef 73, ptr noundef %i.j) ; 0 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !79
  %fputs7 = tail call i32 @fputs(ptr %i.l, ptr %i.j) ; 0 uses
  %i.m = tail call i32 @fflush(ptr noundef %i.j)  ; 0 uses
  tail call void @_exit(i32 noundef 1) #50
  unreachable

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !199
  %i.o = load ptr, ptr %0, align 8, !tbaa !79
  %fputs = tail call i32 @fputs(ptr %i.o, ptr %i.n) #53 ; 0 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !199
  %i.q = tail call i32 @fflush(ptr noundef %i.p)  ; 0 uses
  tail call void @_ZN7testing8internal5posix5AbortEv() #52
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef %0, ptr nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.testing::Matcher", align 8  ; 5 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !200  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !204
  store ptr %i.j, ptr %i.h, align 8, !tbaa !204
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !82
  store i64 %i.m, ptr %i.k, align 8, !tbaa !82
  store ptr null, ptr %i.i, align 8, !tbaa !204
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !94
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %2, i32 noundef %3, ptr noundef %4) #48
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !94
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !204  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !206
  %.not.i.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i.i3, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.v = atomicrmw sub ptr %i.u, i32 1 acq_rel, align 4
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.e, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !204
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !206
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !82
  call void %i.z(ptr noundef %i.aa) #48, !inline_history !3
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.d, %bb.e
  ret i1 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  tail call void %i.k(ptr noundef %i.l) #48, !inline_history !541
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv() local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, align 8, !tbaa !79
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %0) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal13DeathTestImpl26ReadAndInterpretStatusByteEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %2 = alloca %"class.testing::Message", align 8  ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %17 = alloca %"class.std::allocator", align 1   ; 2 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !211
  %i.f = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.b, i64 noundef 1) #48
  %i.g = trunc i64 %i.f to i32
  switch i32 %i.g, label %.critedge [
    i32 -1, label %bb.c
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #51
  %i.i = load i32, ptr %i.h, align 4, !tbaa !97
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.b, label %.critedge, !llvm.loop !542

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.k, align 8, !tbaa !213
  br label %.preheader

bb.e:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.b, align 1, !tbaa !82    ; 2 uses
  switch i8 %i.l, label %bb.o [
    i8 82, label %bb.f
    i8 84, label %bb.g
    i8 76, label %bb.h
    i8 73, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %i.m, align 8, !tbaa !213
  br label %.preheader

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 4, ptr %i.n, align 8, !tbaa !213
  br label %.preheader

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.o, align 8, !tbaa !213
  br label %.preheader

bb.i:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.d, align 4, !tbaa !211  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.v = call i64 @read(i32 noundef %i.p, ptr noundef nonnull %i.a, i64 noundef 255) #48 ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i
  %i.y = phi i64 [ %i.af, %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i ], [ %i.v, %bb.j ]
  %i.z = and i64 %i.y, 2147483647
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !82
  %i.ab = load ptr, ptr %2, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store i32 0, ptr %i.q, align 8, !tbaa !90
  store i8 0, ptr %i.r, align 8, !tbaa !91
  store i32 1, ptr %i.s, align 4, !tbaa !92
end_hunk_0
begin_hunk_1_@_ZN7testing8internalL21FormatDeathTestOutputERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ag = load ptr, ptr %2, align 8, !tbaa !79
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ag, i64 noundef %i.ac) #48 ; 0 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !79    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.p
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !82
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.am = add nuw i64 %i.l, 1                     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.an = load i64, ptr %i.i, align 8, !tbaa !80, !noalias !590 ; 3 uses
  %i.ao = icmp ugt i64 %.01125, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.512, ptr noundef nonnull @.str.514, i64 noundef %.01125, i64 noundef %i.an) #50, !noalias !590
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13: ; preds = %bb.h
  %i.ap = sub i64 %i.am, %.01125
  store ptr %i.j, ptr %3, align 8, !tbaa !76, !alias.scope !590
  %i.aq = load ptr, ptr %1, align 8, !tbaa !79, !noalias !590
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.01125 ; 2 uses
  %i.as = sub nuw i64 %i.an, %.01125
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ap, i64 %i.as) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48, !noalias !590
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !81, !noalias !590
  %i.at = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.at, label %bb.j, label %._crit_edge.i.i.i14

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13
  %i.au = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.au, ptr %3, align 8, !tbaa !79, !alias.scope !590
  %i.av = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !590
  store i64 %i.av, ptr %i.j, align 8, !tbaa !82, !alias.scope !590
  br label %._crit_edge.i.i.i14

._crit_edge.i.i.i14:                              ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13
  %i.aw = phi ptr [ %i.au, %bb.j ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i13 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit15
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i14
  %i.ax = load i8, ptr %i.ar, align 1, !tbaa !82
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !82
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit15

bb.l:                                             ; preds = %._crit_edge.i.i.i14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.ar, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit15: ; preds = %._crit_edge.i.i.i14, %bb.k, %bb.l
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !590 ; 2 uses
  store i64 %i.ay, ptr %i.k, align 8, !tbaa !80, !alias.scope !590
  %i.az = load ptr, ptr %3, align 8, !tbaa !79, !alias.scope !590
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 0, ptr %i.ba, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48, !noalias !590
  %i.bb = load i64, ptr %i.k, align 8, !tbaa !80  ; 2 uses
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !80
  %i.bd = sub i64 4611686018427387903, %i.bc
  %i.be = icmp ult i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit16

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit15
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit15
  %i.bf = load ptr, ptr %3, align 8, !tbaa !79
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bf, i64 noundef %i.bb) #48 ; 0 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.j
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit16
  %i.bj = load i64, ptr %i.j, align 8, !tbaa !82
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %i.bl = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 10, i64 noundef %i.am) #48
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !80
  %i.bn = add i64 %i.bm, -4611686018427387891
  %i.bo = icmp ult i64 %i.bn, 13
  br i1 %i.bo, label %._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, !llvm.loop !588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.516, i32 noundef 245) #48
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.517, i64 noundef 37) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !204
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !239
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !86
  tail call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal16ForkingDeathTestC2EPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr nofree noundef align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.testing::Matcher", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !204
  store ptr %i.c, ptr %i.a, align 8, !tbaa !204
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !82
  store i64 %i.f, ptr %i.d, align 8, !tbaa !82
  store ptr null, ptr %i.b, align 8, !tbaa !204
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %3, align 8, !tbaa !94
  call void @_ZN7testing8internal13DeathTestImplC2EPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr nofree noundef nonnull align 8 dereferenceable(24) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %3, align 8, !tbaa !94
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !206
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.k = atomicrmw sub ptr %i.j, i32 1 acq_rel, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !206
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !82
  call void %i.o(ptr noundef %i.p) #48, !inline_history !3
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal16ForkingDeathTestE, i64 16), ptr %0, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 -1, ptr %i.q, align 4, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal13DeathTestImplC2EPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %4 = alloca %"class.std::allocator", align 1    ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing8internal9DeathTestE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !591
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !591
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !591 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !591
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_ZN7testing8internal9DeathTestC2Ev.exit

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %4), !inline_history !592
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #52, !inline_history !592
  unreachable

_ZN7testing8internal9DeathTestC2Ev.exit:          ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal13DeathTestImplE, i64 16), ptr %0, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.i, align 8, !tbaa !218
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !204
  store ptr %i.m, ptr %i.k, align 8, !tbaa !204
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !82
  store i64 %i.p, ptr %i.n, align 8, !tbaa !82
  store ptr null, ptr %i.l, align 8, !tbaa !204
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.j, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.q, align 8, !tbaa !217
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 -1>, ptr %i.r, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN7testing8internal16ForkingDeathTest4WaitEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %8 = alloca %"class.std::allocator", align 1    ; 2 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i8, ptr %i.c, align 8, !tbaa !217, !range !71, !noundef !72
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal13DeathTestImpl26ReadAndInterpretStatusByteEv(ptr noundef nonnull align 8 dereferenceable(60) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.g = load i32, ptr %i.f, align 4, !tbaa !244
  %i.h = call i32 @waitpid(i32 noundef %i.g, ptr noundef nonnull %i.a, i32 noundef 0) #48
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %.critedge3

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__errno_location() #51
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.c, label %.critedge, !llvm.loop !593

.critedge:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  store i32 1083, ptr %i.b, align 4, !tbaa !97
  call void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.31)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) #52
  unreachable

.critedge3:                                       ; preds = %bb.c
  %i.m = load i32, ptr %i.a, align 4, !tbaa !97   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.m, ptr %i.n, align 4, !tbaa !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.critedge3
  %.0 = phi i32 [ %i.m, %.critedge3 ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN7testing8internal15NoExecDeathTest10AssumeRoleEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %2 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %5 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %6 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.testing::Message", align 8 ; 15 uses
  %13 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %21 = alloca %"class.std::allocator", align 1   ; 2 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %30 = alloca %"class.std::allocator", align 1   ; 2 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %39 = alloca %"class.std::allocator", align 1   ; 2 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %48 = alloca %"class.std::allocator", align 1   ; 2 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = tail call noundef i64 @_ZN7testing8internal14GetThreadCountEv() ; 3 uses
  %.not = icmp eq i64 %i.f, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %13, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 1102) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #48, !noalias !601
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #48, !noalias !601
  %i.g = load ptr, ptr %12, align 8, !tbaa !86, !noalias !601
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #48, !noalias !601
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !90, !noalias !601
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !91, !noalias !601
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 1, ptr %i.k, align 4, !tbaa !92, !noalias !601
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !601
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %11, align 8, !tbaa !94, !noalias !601
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.h, ptr %i.m, align 8, !tbaa !96, !noalias !601
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.405, i64 noundef 52) #48, !noalias !601 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #48, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48, !noalias !601
  %i.o = load ptr, ptr %12, align 8, !tbaa !86, !noalias !601
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48, !noalias !601
end_hunk_1
begin_hunk_2_@_ZN7testing8internal15NoExecDeathTest10AssumeRoleEv:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.cc, align 8, !tbaa !91, !noalias !601
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.cd, align 4, !tbaa !92, !noalias !601
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false), !noalias !601
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !94, !noalias !601
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.ca, ptr %i.cf, align 8, !tbaa !96, !noalias !601
  %i.cg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.411, i64 noundef 60) #48, !noalias !601 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #48, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48, !noalias !601
  %i.ch = load ptr, ptr %12, align 8, !tbaa !86, !noalias !601
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48, !noalias !601
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.cj, align 8, !tbaa !90, !noalias !601
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.ck, align 8, !tbaa !91, !noalias !601
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 1, ptr %i.cl, align 4, !tbaa !92, !noalias !601
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false), !noalias !601
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %1, align 8, !tbaa !94, !noalias !601
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ci, ptr %i.cn, align 8, !tbaa !96, !noalias !601
  %i.co = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.412, i64 noundef 61) #48, !noalias !601 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #48, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48, !noalias !601
  %i.cp = load ptr, ptr %12, align 8, !tbaa !86, !noalias !602
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %i.cp)
  %i.cq = load ptr, ptr %12, align 8, !tbaa !86, !noalias !601 ; 3 uses
  %.not.i.i11.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i11.i, label %_ZN7testing8internalL22DeathTestThreadWarningB5cxx11Em.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZN7testing7MessagelsIA93_cEERS0_RKT_.exit.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !94
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(128) %i.cq) #48, !inline_history !598
  br label %_ZN7testing8internalL22DeathTestThreadWarningB5cxx11Em.exit

_ZN7testing8internalL22DeathTestThreadWarningB5cxx11Em.exit: ; preds = %_ZN7testing7MessagelsIA93_cEERS0_RKT_.exit.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #48, !noalias !601
  %i.cu = load ptr, ptr %14, align 8, !tbaa !79
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !80
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.cu, i64 noundef %i.cw) #48 ; 0 uses
  %i.cy = load ptr, ptr %14, align 8, !tbaa !79   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internalL22DeathTestThreadWarningB5cxx11Em.exit
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !82
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internalL22DeathTestThreadWarningB5cxx11Em.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #48
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %13) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  %i.dd = call i32 @pipe(ptr noundef nonnull %i.a) #48
  %.not18 = icmp eq i32 %i.dd, -1
  br i1 %.not18, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %21)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  store i32 1106, ptr %i.b, align 4, !tbaa !97
  call void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %22)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.32)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %15) #52
  unreachable

._crit_edge.i.i:                                  ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #48
  %i.de = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %i.de, ptr %23, align 8, !tbaa !76
  %i.df = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.df, align 8, !tbaa !80
  store i8 0, ptr %i.de, align 8, !tbaa !82
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %23) #48
  %i.dg = load ptr, ptr %23, align 8, !tbaa !79   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.de
  br i1 %i.dh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %._crit_edge.i.i
  %i.di = load i64, ptr %i.de, align 8, !tbaa !82
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #48
  call fastcc void @_ZN7testing8internalL13CaptureStreamEiPKcPPNS0_14CapturedStreamE(i32 noundef 2, ptr noundef nonnull @.str.67, ptr noundef nonnull @_ZN7testing8internalL17g_captured_stderrE)
  %i.dk = call i32 @fflush(ptr noundef null)      ; 0 uses
  %i.dl = call i32 @fork() #48                    ; 3 uses
  %.not19 = icmp eq i32 %i.dl, -1
  br i1 %.not19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %30)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #48
  store i32 1120, ptr %i.c, align 4, !tbaa !97
  call void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %31)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.33)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %24) #52
  unreachable

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !244
  %i.dn = icmp eq i32 %i.dl, 0
  br i1 %i.dn, label %.preheader, label %.preheader20

.preheader20:                                     ; preds = %bb.f
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.j

.preheader:                                       ; preds = %bb.f, %bb.g
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !97
  %i.dq = call i32 @close(i32 noundef %i.dp) #48
  %i.dr = icmp eq i32 %i.dq, -1
  br i1 %i.dr, label %bb.g, label %.critedge13

bb.g:                                             ; preds = %.preheader
  %i.ds = tail call ptr @__errno_location() #51
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !97
  %i.du = icmp eq i32 %i.dt, 4
  br i1 %i.du, label %.preheader, label %.critedge, !llvm.loop !599

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %39)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #48
  store i32 1123, ptr %i.d, align 4, !tbaa !97
  call void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %40)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.34)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.17)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %32) #52
  unreachable

.critedge13:                                      ; preds = %.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !97
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !216
  %i.dy = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %bb.h, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.h:                                             ; preds = %.critedge13
  %i.ea = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.eb = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %.critedge13, %bb.h, %bb.i
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 504
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !245
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i8 0, ptr %i.ef, align 8, !tbaa !253
  store i1 true, ptr @_ZN7testing8internalL26g_in_fast_death_test_childE, align 1
  br label %bb.l

bb.j:                                             ; preds = %.preheader20, %bb.k
  %i.eg = load i32, ptr %i.do, align 4, !tbaa !97
  %i.eh = call i32 @close(i32 noundef %i.eg) #48
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %bb.k, label %.critedge14

bb.k:                                             ; preds = %bb.j
  %i.ej = tail call ptr @__errno_location() #51
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !97
  %i.el = icmp eq i32 %i.ek, 4
  br i1 %i.el, label %bb.j, label %.critedge2, !llvm.loop !600

.critedge2:                                       ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %48)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %46, ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull @.str.8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #48
  store i32 1135, ptr %i.e, align 4, !tbaa !97
  call void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %49, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %44, ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(32) %49)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull @.str.35)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.17)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %41) #52
  unreachable

.critedge14:                                      ; preds = %bb.j
  %i.em = load i32, ptr %i.a, align 4, !tbaa !97
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.em, ptr %i.en, align 4, !tbaa !211
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.eo, align 8, !tbaa !217
  br label %bb.l

bb.l:                                             ; preds = %.critedge14, %_ZN7testing8internal15GetUnitTestImplEv.exit
  %.0 = phi i32 [ 1, %_ZN7testing8internal15GetUnitTestImplEv.exit ], [ 0, %.critedge14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN7testing8internal14GetThreadCountEv() local_unnamed_addr #0 {
_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %1 = alloca %"class.std::basic_ifstream", align 8 ; 32 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #48
  %i.b = load ptr, ptr %6, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.f, align 4, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %4, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.c, ptr %i.h, align 8, !tbaa !96
  %i.i = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.50, i64 noundef 6) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  %i.j = call i32 @getpid() #48
  %i.k = load ptr, ptr %6, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.m, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.n, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.o, align 4, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %3, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.l, ptr %i.q, align 8, !tbaa !96
  %i.r = sext i32 %i.j to i64
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.r) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %i.t = load ptr, ptr %6, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.w, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.x, align 4, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !94
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.u, ptr %i.z, align 8, !tbaa !96
  %i.aa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.51, i64 noundef 5) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.ab = load ptr, ptr %6, align 8, !tbaa !86, !noalias !605
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %i.ab)
  %i.ac = load ptr, ptr %6, align 8, !tbaa !86    ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i2, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #48, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  %.val = load ptr, ptr %5, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !80
  store i8 0, ptr %i.ag, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef %.val, i32 noundef 8)
  %i.ai = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.al = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.am = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.an = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.aq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.as = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.at = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.au = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.av = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.aw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.ax = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.ay = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.az = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  %i.ba = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0) #48 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 0, ptr %i.a, align 8, !tbaa !81
  %i.bb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #48 ; 0 uses
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.bd = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
  store ptr %i.bd, ptr %1, align 8, !tbaa !94
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bg
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !94
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !94
  %i.bj = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.bi) #48 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.bk) #48
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !94
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #48
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8 ; 2 uses
  store ptr %i.bm, ptr %1, align 8, !tbaa !94
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8
  %i.bo = getelementptr i8, ptr %i.bm, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bp
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !94
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !255
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bs) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.bt = load ptr, ptr %0, align 8, !tbaa !79    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ag
  br i1 %i.bu, label %_ZN7testing8internal12_GLOBAL__N_117ReadProcFileFieldImEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bv = load i64, ptr %i.ag, align 8, !tbaa !82
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #49
  br label %_ZN7testing8internal12_GLOBAL__N_117ReadProcFileFieldImEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

_ZN7testing8internal12_GLOBAL__N_117ReadProcFileFieldImEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #48
  %i.bx = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12_GLOBAL__N_117ReadProcFileFieldImEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !82
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12_GLOBAL__N_117ReadProcFileFieldImEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  ret i64 %i.bc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef returned zeroext %0) local_unnamed_addr #14 {
bb.a:
  ret i1 %0
}

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal13CaptureStderrEv() local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN7testing8internalL13CaptureStreamEiPKcPPNS0_14CapturedStreamE(i32 noundef 2, ptr noundef nonnull @.str.67, ptr noundef nonnull @_ZN7testing8internalL17g_captured_stderrE)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #16

declare i32 @close(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN7testing18TestEventListeners23SuppressEventForwardingEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !245
  %i.b = xor i1 %1, true
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN7testing8internal13ExecDeathTest10AssumeRoleEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %1 = alloca %"struct.testing::internal::ExecDeathTestArgs", align 8 ; 6 uses
  %2 = alloca %struct.sigaction, align 8          ; 4 uses
  %3 = alloca %struct.sigaction, align 8          ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %11 = alloca %"class.std::allocator", align 1   ; 2 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %19 = alloca %"class.std::allocator", align 1   ; 2 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %27 = alloca %"class.std::allocator", align 1   ; 2 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %35 = alloca %"class.std::allocator", align 1   ; 2 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %44 = alloca %"class.std::allocator", align 1   ; 2 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %52 = alloca %"class.std::allocator", align 1   ; 2 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %54 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %55 = alloca %"class.testing::Message", align 8 ; 6 uses
  %56 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %57 = alloca %"class.testing::Message", align 8 ; 6 uses
  %58 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %59 = alloca %"class.testing::Message", align 8 ; 6 uses
  %i.j = alloca [2 x i32], align 4                ; 6 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %66 = alloca %"class.std::allocator", align 1   ; 2 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %74 = alloca %"class.std::allocator", align 1   ; 2 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.l = alloca i32, align 4                      ; 3 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %95 = alloca %"class.std::vector.86", align 8   ; 11 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %104 = alloca %"class.std::allocator", align 1  ; 2 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.m = alloca i32, align 4                      ; 3 uses
  %i.n = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.q = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 568
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !195  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 368
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !194  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 248
  %i.x = load i32, ptr %i.w, align 8, !tbaa !256
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !197
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !216
  br label %bb.bx

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #48
  %i.ab = call i32 @pipe(ptr noundef nonnull %i.j) #48
  %.not178 = icmp eq i32 %i.ab, -1
  br i1 %.not178, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %66)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %64, ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @.str.8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %63, ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #48
  store i32 1365, ptr %i.k, align 4, !tbaa !97
  call void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %67, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(32) %67)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %61, ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull @.str.15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.32)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %60) #52
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !97
  %i.ae = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ad, i32 noundef 2, i32 noundef 0) #48
  %.not179 = icmp eq i32 %i.ae, -1
  br i1 %.not179, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %74)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull @.str.8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %71, ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #48
  store i32 1368, ptr %i.l, align 4, !tbaa !97
  call void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(32) %75)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %69, ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @.str.15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %68, ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull @.str.36)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %68) #52
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #48
  %i.af = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 4 uses
  store ptr %i.af, ptr %81, align 8, !tbaa !76
  store i16 11565, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 2, ptr %i.ag, align 8, !tbaa !80
  %i.ah = getelementptr inbounds nuw i8, ptr %81, i64 18
  store i8 0, ptr %i.ah, align 2, !tbaa !82
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.ai = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull @.str.38, i64 noundef 6) #48, !noalias !665 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 5 uses
  store ptr %i.aj, ptr %80, align 8, !tbaa !76, !alias.scope !665
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !79 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !80 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ak, ptr %80, align 8, !tbaa !79, !alias.scope !665
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !82
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !82, !alias.scope !665
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !80
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.as = phi i64 [ %i.ao, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 2 uses
  store i64 %i.as, ptr %i.au, align 8, !tbaa !80, !alias.scope !665
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !79
  store i64 0, ptr %i.at, align 8, !tbaa !80
  store i8 0, ptr %i.al, align 8, !tbaa !82
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.av = load i64, ptr %i.au, align 8, !tbaa !80, !noalias !666
  %i.aw = add i64 %i.av, -4611686018427387897
  %i.ax = icmp ult i64 %i.aw, 7
  br i1 %i.ax, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50, !noalias !666
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ay = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull @.str.39, i64 noundef 7) #48, !noalias !666 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 5 uses
  store ptr %i.az, ptr %79, align 8, !tbaa !76, !alias.scope !666
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !79 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !80 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13
  store ptr %i.ba, ptr %79, align 8, !tbaa !79, !alias.scope !666
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !82
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !82, !alias.scope !666
  %.phi.trans.insert.i15 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.pre.i16 = load i64, ptr %.phi.trans.insert.i15, align 8, !tbaa !80
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit17

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit17: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.bi = phi i64 [ %i.be, %bb.k ], [ %.pre.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !80, !alias.scope !666
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !79
  store i64 0, ptr %i.bj, align 8, !tbaa !80
  store i8 0, ptr %i.bb, align 8, !tbaa !82
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !79  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #48, !noalias !667 ; 2 uses
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !80, !noalias !667
  %i.bo = sub i64 4611686018427387903, %i.bn
  %i.bp = icmp ult i64 %i.bo, %i.bm
  br i1 %i.bp, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit17
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50, !noalias !667
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit17
  %i.bq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull %i.bl, i64 noundef %i.bm) #48, !noalias !667 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 5 uses
  store ptr %i.br, ptr %78, align 8, !tbaa !76, !alias.scope !667
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !79 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !80 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18
  store ptr %i.bs, ptr %78, align 8, !tbaa !79, !alias.scope !667
end_hunk_2
begin_hunk_3_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %bb.bt
  %i.wq = load i32, ptr %i.ac, align 4, !tbaa !97
  %i.wr = call i32 @close(i32 noundef %i.wq) #48
  %i.ws = icmp eq i32 %i.wr, -1
  br i1 %i.ws, label %bb.bv, label %_ZNSt10unique_ptrIA_PcSt14default_deleteIS1_EED2Ev.exit

bb.bv:                                            ; preds = %bb.bu
  %i.wt = tail call ptr @__errno_location() #51
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !97
  %i.wv = icmp eq i32 %i.wu, 4
  br i1 %i.wv, label %bb.bu, label %.critedge, !llvm.loop !664

.critedge:                                        ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %104)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %102, ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef nonnull @.str.8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %101, ptr noundef nonnull align 8 dereferenceable(32) %102, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #48
  store i32 1391, ptr %i.m, align 4, !tbaa !97
  call void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %105, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %100, ptr noundef nonnull align 8 dereferenceable(32) %101, ptr noundef nonnull align 8 dereferenceable(32) %105)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %99, ptr noundef nonnull align 8 dereferenceable(32) %100, ptr noundef nonnull @.str.15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %98, ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull @.str.35)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %97, ptr noundef nonnull align 8 dereferenceable(32) %98, ptr noundef nonnull @.str.17)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %97) #52
  unreachable

_ZNSt10unique_ptrIA_PcSt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bu
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.1.i, ptr %i.ww, align 4, !tbaa !244
  %i.wx = load i32, ptr %i.j, align 4, !tbaa !97
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.wx, ptr %i.wy, align 4, !tbaa !211
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.wz, align 8, !tbaa !217
  call void @_ZdaPv(ptr noundef nonnull %i.sz) #49
  %i.xa = load ptr, ptr %95, align 8, !tbaa !264  ; 3 uses
  %i.xb = load ptr, ptr %i.qz, align 8, !tbaa !262 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.xa, %i.xb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIA_PcSt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.xh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.xa, %_ZNSt10unique_ptrIA_PcSt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.xc = load ptr, ptr %.05.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.xe = icmp eq ptr %i.xc, %i.xd
  br i1 %i.xe, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.xf = load i64, ptr %i.xd, align 8, !tbaa !82
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xg) #49
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.xh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i167 = icmp eq ptr %i.xh, %i.xb
  br i1 %.not.i.i.i167, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %95, align 8, !tbaa !264
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %_ZNSt10unique_ptrIA_PcSt14default_deleteIS1_EED2Ev.exit
  %i.xi = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.xa, %_ZNSt10unique_ptrIA_PcSt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.xi, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.xj = load ptr, ptr %i.rb, align 8, !tbaa !263
  %i.xk = ptrtoint ptr %i.xj to i64
  %i.xl = ptrtoint ptr %i.xi to i64
  %i.xm = sub i64 %i.xk, %i.xl
  call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef %i.xm) #49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #48
  %i.xn = load ptr, ptr %82, align 8, !tbaa !79   ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  %i.xp = icmp eq ptr %i.xn, %i.xo
  br i1 %i.xp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.xq = load i64, ptr %i.xo, align 8, !tbaa !82
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xn, i64 noundef %i.xr) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #48
  %i.xs = load ptr, ptr %76, align 8, !tbaa !79   ; 2 uses
  %i.xt = icmp eq ptr %i.xs, %i.cz
  br i1 %i.xt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.xu = load i64, ptr %i.cz, align 8, !tbaa !82
  %i.xv = add i64 %i.xu, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xv) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #48
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ]
  ret i32 %.0
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !262  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !79 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !82
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #49
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !264
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !263
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #49
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal23DefaultDeathTestFactory6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPNS0_9DeathTestE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef align 8 captures(none) dereferenceable(24) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 7 uses
  %8 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.testing::Message", align 8  ; 6 uses
  %10 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.testing::Message", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 568
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !195  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !194
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 248 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !256  ; 2 uses
  %i.l = add nsw i32 %i.k, 1                      ; 3 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !256
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.r, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !273  ; 2 uses
  %.not87 = icmp slt i32 %i.k, %i.n
  br i1 %.not87, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #48, !noalias !717
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #48, !noalias !717
  %i.o = load ptr, ptr %11, align 8, !tbaa !86, !noalias !717
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48, !noalias !717
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !90, !noalias !717
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i8 0, ptr %i.r, align 8, !tbaa !91, !noalias !717
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 1, ptr %i.s, align 4, !tbaa !92, !noalias !717
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !noalias !717
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %10, align 8, !tbaa !94, !noalias !717
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.p, ptr %i.u, align 8, !tbaa !96, !noalias !717
  %i.v = sext i32 %i.l to i64
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 noundef %i.v) #48, !noalias !717 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #48, !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48, !noalias !717
  %i.x = load ptr, ptr %11, align 8, !tbaa !86, !noalias !718
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef %i.x)
  %i.y = load ptr, ptr %11, align 8, !tbaa !86, !noalias !717 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.e
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #48, !inline_history !5
  br label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48, !noalias !717
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.ac = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.43, i64 noundef 18) #48, !noalias !719 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.ad, ptr %15, align 8, !tbaa !76, !alias.scope !719
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !79 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !80 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  store ptr %i.ae, ptr %15, align 8, !tbaa !79, !alias.scope !719
  %i.al = load i64, ptr %i.af, align 8, !tbaa !82
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !82, !alias.scope !719
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !80
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = phi i64 [ %i.ai, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !80, !alias.scope !719
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !79
  store i64 0, ptr %i.an, align 8, !tbaa !80
  store i8 0, ptr %i.af, align 8, !tbaa !82
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !80, !noalias !720
  %i.aq = add i64 %i.ap, -4611686018427387867
  %i.ar = icmp ult i64 %i.aq, 37
  br i1 %i.ar, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50, !noalias !720
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.as = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.44, i64 noundef 37) #48, !noalias !720 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.at, ptr %14, align 8, !tbaa !76, !alias.scope !720
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !79 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !80 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.au, ptr %14, align 8, !tbaa !79, !alias.scope !720
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !82
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !82, !alias.scope !720
  %.phi.trans.insert.i19 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.pre.i20 = load i64, ptr %.phi.trans.insert.i19, align 8, !tbaa !80
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.bc = phi i64 [ %i.ay, %bb.h ], [ %.pre.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !80, !alias.scope !720
  store ptr %i.av, ptr %i.as, align 8, !tbaa !79
  store i64 0, ptr %i.bd, align 8, !tbaa !80
  store i8 0, ptr %i.av, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #48
  %i.bf = load i32, ptr %i.m, align 4, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48, !noalias !721
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #48, !noalias !721
  %i.bg = load ptr, ptr %9, align 8, !tbaa !86, !noalias !721
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48, !noalias !721
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !90, !noalias !721
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 0, ptr %i.bj, align 8, !tbaa !91, !noalias !721
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 1, ptr %i.bk, align 4, !tbaa !92, !noalias !721
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false), !noalias !721
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %8, align 8, !tbaa !94, !noalias !721
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.bh, ptr %i.bm, align 8, !tbaa !96, !noalias !721
  %i.bn = sext i32 %i.bf to i64
  %i.bo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 noundef %i.bn) #48, !noalias !721 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #48, !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48, !noalias !721
  %i.bp = load ptr, ptr %9, align 8, !tbaa !86, !noalias !722
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef %i.bp)
  %i.bq = load ptr, ptr %9, align 8, !tbaa !86, !noalias !721 ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i21, label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !94
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(128) %i.bq) #48, !inline_history !5
  br label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit23

_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit23: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48, !noalias !721
  call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.bu = load i64, ptr %i.be, align 8, !tbaa !80, !noalias !723 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !80, !noalias !723 ; 4 uses
  %i.bx = add i64 %i.bw, %i.bu                    ; 2 uses
  %i.by = load ptr, ptr %14, align 8, !tbaa !79, !noalias !723 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.at
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit23
  %i.ca = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.ca)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit23
  %i.cb = load i64, ptr %i.at, align 8, !tbaa !82, !noalias !723
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cc = phi i64 [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.cd = icmp ugt i64 %i.bx, %i.cc
  br i1 %i.cd, label %bb.i, label %bb.k
end_hunk_3
begin_hunk_4_@_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 1, ptr %i.ab, align 4, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %11, align 8, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !96
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.165, i64 noundef 11) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48
  %i.af = icmp eq ptr %3, null
  %i.ag = load ptr, ptr %14, align 8, !tbaa !86
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  br i1 %i.af, label %bb.e, label %_ZN4llvm9StringRefC2EPKc.exit.i.i.i3

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.186, i64 noundef 6) #48 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit6

_ZN4llvm9StringRefC2EPKc.exit.i.i.i3:             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !90
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i8 0, ptr %i.ak, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 1, ptr %i.al, align 4, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %10, align 8, !tbaa !94
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.ah, ptr %i.an, align 8, !tbaa !96
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #48 ; 2 uses
  %.not.i.i4 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i4, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i5, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.i3
  %i.ap = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull %3, i64 noundef %i.ao) #48 ; 0 uses
  br label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i5

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i5: ; preds = %bb.f, %_ZN4llvm9StringRefC2EPKc.exit.i.i.i3
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit6

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit6:        ; preds = %bb.e, %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i5
  %i.aq = load i8, ptr %i.d, align 1, !tbaa !82
  %.not = icmp eq i8 %i.aq, 0
  br i1 %.not, label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit14, label %_ZN4llvm9StringRefC2EPKc.exit.i.i.i8

_ZN4llvm9StringRefC2EPKc.exit.i.i.i8:             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit6
  %i.ar = load ptr, ptr %14, align 8, !tbaa !86
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !90
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.au, align 8, !tbaa !91
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 1, ptr %i.av, align 4, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %9, align 8, !tbaa !94
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !96
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.166, i64 noundef 2) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  %i.az = load ptr, ptr %14, align 8, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.bb, align 8, !tbaa !90
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 0, ptr %i.bc, align 8, !tbaa !91
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 1, ptr %i.bd, align 4, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %8, align 8, !tbaa !94
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !96
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #48 ; 2 uses
  %.not.i.i9 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i9, label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit11, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.i8
  %i.bh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.d, i64 noundef %i.bg) #48 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit11

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit11:       ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.i8, %bb.g
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  %i.bi = load ptr, ptr %14, align 8, !tbaa !86
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.bk, align 8, !tbaa !90
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.bl, align 8, !tbaa !91
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 1, ptr %i.bm, align 4, !tbaa !92
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %7, align 8, !tbaa !94
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.bj, ptr %i.bo, align 8, !tbaa !96
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.11, i64 noundef 1) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  br label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit14

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit14:     ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit11, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit6
  %i.bq = load ptr, ptr %14, align 8, !tbaa !86
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.bs, align 8, !tbaa !90
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.bt, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.bu, align 4, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %6, align 8, !tbaa !94
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.br, ptr %i.bw, align 8, !tbaa !96
  %i.bx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.167, i64 noundef 11) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  %i.by = icmp eq ptr %4, null
  %i.bz = load ptr, ptr %14, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  br i1 %i.by, label %bb.h, label %_ZN4llvm9StringRefC2EPKc.exit.i.i.i15

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit14
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.186, i64 noundef 6) #48 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit18

_ZN4llvm9StringRefC2EPKc.exit.i.i.i15:            ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.cc, align 8, !tbaa !90
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.cd, align 8, !tbaa !91
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.ce, align 4, !tbaa !92
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %5, align 8, !tbaa !94
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ca, ptr %i.cg, align 8, !tbaa !96
  %i.ch = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #48 ; 2 uses
  %.not.i.i16 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i16, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i17, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.i15
  %i.ci = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %4, i64 noundef %i.ch) #48 ; 0 uses
  br label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i17

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i17: ; preds = %bb.i, %_ZN4llvm9StringRefC2EPKc.exit.i.i.i15
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit18

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit18:       ; preds = %bb.h, %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i17
  %i.cj = load ptr, ptr %14, align 8, !tbaa !86, !noalias !822
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.cj)
  %i.ck = load ptr, ptr %14, align 8, !tbaa !86   ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i19, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit18
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !94
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(128) %i.ck) #48, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit18, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !299    ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !302
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !303
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @_ZN7testing8internal17AppendUserMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7MessageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.l = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN7testing8UnitTest11GetInstanceEv.exit3, !prof !98

bb.d:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.n = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i2 = icmp eq i32 %i.n, 0
  br i1 %.not.i2, label %_ZN7testing8UnitTest11GetInstanceEv.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.o = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit3

_ZN7testing8UnitTest11GetInstanceEv.exit3:        ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %bb.d, %bb.e
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  call void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(601) %i.p, i32 noundef 1)
  call void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i32 noundef %i.f, ptr noundef %i.h, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.q = load ptr, ptr %3, align 8, !tbaa !79     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit3
  %i.t = load i64, ptr %i.r, align 8, !tbaa !82
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %i.v = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !82
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.testing::Message", align 8  ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.b = icmp eq ptr %1, null
  %i.c = select i1 %i.b, ptr @_ZN7testing8internalL12kUnknownFileE, ptr %1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !76
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.e, ptr %i.a, align 8, !tbaa !81
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !79
  %i.h = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.h, ptr %i.d, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !82
  store i8 %i.j, ptr %i.i, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !80
  %i.m = load ptr, ptr %5, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.o = icmp slt i32 %2, 0
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.p = load ptr, ptr %5, align 8, !tbaa !79, !noalias !839
  %i.q = load i64, ptr %i.l, align 8, !tbaa !80, !noalias !839 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !76, !alias.scope !840
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.s, align 8, !tbaa !80, !alias.scope !840
  store i8 0, ptr %i.r, align 8, !tbaa !82, !alias.scope !840
  %i.t = add i64 %i.q, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.t) #48
  %i.u = load i64, ptr %i.s, align 8, !tbaa !80, !alias.scope !840
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.q
  br i1 %i.w, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.e
  %i.x = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.p, i64 noundef %i.q) #48 ; 0 uses
  %i.y = load i64, ptr %i.s, align 8, !tbaa !80, !alias.scope !840
  %i.z = icmp eq i64 %i.y, 4611686018427387903
  br i1 %i.z, label %bb.g, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.aa = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.60, i64 noundef 1) #48 ; 0 uses
  br label %bb.r

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.ab = load ptr, ptr %5, align 8, !tbaa !79, !noalias !841
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !80, !noalias !841 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !76, !alias.scope !842
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !80, !alias.scope !842
  store i8 0, ptr %i.ad, align 8, !tbaa !82, !alias.scope !842
  %i.af = add i64 %i.ac, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.af) #48
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !80, !alias.scope !842
  %i.ah = sub i64 4611686018427387903, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.ac
  br i1 %i.ai, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i2

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i2: ; preds = %bb.h
  %i.aj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ab, i64 noundef %i.ac) #48 ; 0 uses
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !80, !alias.scope !842
  %i.al = icmp eq i64 %i.ak, 4611686018427387903
  br i1 %i.al, label %bb.j, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i2
  %i.am = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.60, i64 noundef 1) #48 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48, !noalias !843
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #48, !noalias !843
  %i.an = load ptr, ptr %4, align 8, !tbaa !86, !noalias !843
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48, !noalias !843
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !90, !noalias !843
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.aq, align 8, !tbaa !91, !noalias !843
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.ar, align 4, !tbaa !92, !noalias !843
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false), !noalias !843
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %3, align 8, !tbaa !94, !noalias !843
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.ao, ptr %i.at, align 8, !tbaa !96, !noalias !843
  %i.au = zext nneg i32 %2 to i64
  %i.av = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef %i.au) #48, !noalias !843 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #48, !noalias !843
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48, !noalias !843
  %i.aw = load ptr, ptr %4, align 8, !tbaa !86, !noalias !844
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.aw)
  %i.ax = load ptr, ptr %4, align 8, !tbaa !86, !noalias !843 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !94
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #48, !inline_history !5
  br label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48, !noalias !843
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !80, !noalias !845 ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN7testing14TestPartResult14ExtractSummaryB5cxx11EPKc:bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testinglsERSoRKNS_14TestPartResultE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !80
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %i.a, align 8
  %spec.select.i = select i1 %i.d, ptr null, ptr %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !331
  call void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %spec.select.i, i32 noundef %i.g)
  %i.h = load ptr, ptr %2, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !80
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.h, i64 noundef %i.j) #48 ; 9 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.65, i64 noundef 1) #48 ; 0 uses
  %i.m = load i32, ptr %1, align 8, !tbaa !332    ; 2 uses
  %i.n = icmp ult i32 %i.m, 4
  br i1 %i.n, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.o = zext nneg i32 %i.m to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN7testinglsERSoRKNS_14TestPartResultE, i64 %i.o
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %i.p = phi ptr [ %switch.load, %switch.lookup ], [ @.str.85, %bb.a ] ; 2 uses
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #48
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.p, i64 noundef %i.q) #48 ; 0 uses
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.86, i64 noundef 2) #48 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !79   ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !314
  %i.ab = or i32 %i.aa, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.y, i32 noundef %i.ab) #48
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #48
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.u, i64 noundef %i.ac) #48 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c, %bb.d
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !94
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.k, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !308 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZSt16__throw_bad_castv() #50
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !313
  %.not.i1.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !82
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj) #48
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10) #48, !inline_history !13
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.an, %bb.f ], [ %i.ar, %bb.g ]
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %.0.i.i.i) #48
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #48
  %i.au = load ptr, ptr %2, align 8, !tbaa !79    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !82
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret ptr %i.at
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !333  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !334
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !333
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.f, ptr %i.a, align 8, !tbaa !333
  br label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZNK7testing19TestPartResultArray17GetTestPartResultEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !333
  %i.d = load ptr, ptr %0, align 8, !tbaa !335    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 112
  %i.i = trunc i64 %i.h to i32
  %.not = icmp slt i32 %1, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, i32 noundef %1) ; 0 uses
  tail call void @_ZN7testing8internal5posix5AbortEv() #52
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %i.k
  ret ptr %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7testing19TestPartResultArray4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !333
  %i.c = load ptr, ptr %0, align 8, !tbaa !335
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 112
  %i.h = trunc i64 %i.g to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal24HasNewFatalFailureHelperC2Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 9), (16, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24HasNewFatalFailureHelperE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !337
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.f = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !338
  store ptr %i.j, ptr %i.b, align 8, !tbaa !339
  %i.k = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZN7testing8internal15GetUnitTestImplEv.exit2, !prof !98

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i1 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i1, label %_ZN7testing8internal15GetUnitTestImplEv.exit2, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.n = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit2

_ZN7testing8internal15GetUnitTestImplEv.exit2:    ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.d, %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.q = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  store ptr %0, ptr %i.q, align 8, !tbaa !338
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN7testing8internal12UnitTestImpl41GetTestPartResultReporterForCurrentThreadEv(ptr noundef nonnull align 8 dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !338
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  store ptr %1, ptr %i.b, align 8, !tbaa !338
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal24HasNewFatalFailureHelperD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24HasNewFatalFailureHelperE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !339
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.i = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  store ptr %i.g, ptr %i.i, align 8, !tbaa !338
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal24HasNewFatalFailureHelperD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7testing8internal24HasNewFatalFailureHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal24HasNewFatalFailureHelper20ReportTestPartResultERKNS_14TestPartResultE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !332
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !337
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !339  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %1) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN7testing8internal20TypedTestSuitePState25VerifyRegisteredTestNamesEPKcS3_iS3_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef returned %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %6 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %12 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %13 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %14 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %17 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::vector.86", align 8   ; 9 uses
  %20 = alloca %"class.testing::Message", align 8 ; 14 uses
  %21 = alloca %"class.std::set", align 8         ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #48
  %i.c = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.c, ptr %18, align 8, !tbaa !76
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  store i64 %i.e, ptr %i.b, align 8, !tbaa !81
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #48 ; 2 uses
  store ptr %i.g, ptr %18, align 8, !tbaa !79
  %i.h = load i64, ptr %i.b, align 8, !tbaa !81
  store i64 %i.h, ptr %i.c, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !82
  store i8 %i.j, ptr %i.i, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %2, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.k = load i64, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !80
  %i.m = load ptr, ptr %18, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.o, ptr %17, align 8, !tbaa !76
  %i.p = load ptr, ptr %18, align 8, !tbaa !79    ; 2 uses
  %i.q = load i64, ptr %i.l, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.q, ptr %i.a, align 8, !tbaa !81
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.s, ptr %17, align 8, !tbaa !79
  %i.t = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.t, ptr %i.o, align 8, !tbaa !82
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.u = phi ptr [ %i.s, %bb.g ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  switch i64 %i.q, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN7testing8internal12CodeLocationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.p, align 1, !tbaa !82
  store i8 %i.v, ptr %i.u, align 1, !tbaa !82
  br label %_ZN7testing8internal12CodeLocationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

_ZN7testing8internal12CodeLocationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !80
  %i.y = load ptr, ptr %17, align 8, !tbaa !79
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i32 %3, ptr %i.aa, align 8, !tbaa !341
  call void @_ZN7testing8internal34RegisterTypeParameterizedTestSuiteEPKcNS0_12CodeLocationE(ptr noundef %1, ptr nofree noundef nonnull align 8 dereferenceable(40) %17)
  %i.ab = load ptr, ptr %17, align 8, !tbaa !79   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.o
  br i1 %i.ac, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal12CodeLocationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !82
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #49
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %_ZN7testing8internal12CodeLocationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.af = load ptr, ptr %18, align 8, !tbaa !79   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !82
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #48
  store i8 1, ptr %0, align 8, !tbaa !924
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #48
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !alias.scope !925
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i.i = phi ptr [ %4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.am, %bb.j ] ; 3 uses
  %i.aj = load i8, ptr %.0.i.i, align 1, !tbaa !82, !noalias !925
  %i.ak = zext i8 %i.aj to i32
  %i.al = call i32 @isspace(i32 noundef %i.ak) #54, !noalias !925
  %.not.i.i = icmp eq i32 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br i1 %.not.i.i, label %_ZN7testing8internalL10SkipSpacesEPKc.exit.preheader.i, label %bb.j, !llvm.loop !907

_ZN7testing8internalL10SkipSpacesEPKc.exit.preheader.i: ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 10 uses
end_hunk_5
begin_hunk_6_@_ZN7testing8internal20TypedTestSuitePState25VerifyRegisteredTestNamesEPKcS3_iS3_:bb.a
  %i.hu = sub i64 %i.hp, %i.hm
  %spec.select7.i.i.i.i.i.i.i67 = call i64 @llvm.smax.i64(i64 %i.hu, i64 -2147483648)
  %.08.i.i.i.i.i.i.i68 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i67, i64 2147483647)
  %.0.i6.i.i.i.i.i.i69 = trunc nsw i64 %.08.i.i.i.i.i.i.i68 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i48

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i66, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i46
  %.0.i.i.i.i.i.i49 = phi i32 [ %i.ht, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i46 ], [ %.0.i6.i.i.i.i.i.i69, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i66 ]
  %i.hv = icmp slt i32 %.0.i.i.i.i.i.i49, 0       ; 4 uses
  %.19.i.i.i50 = select i1 %i.hv, ptr %.0811.i.i.i44, ptr %.012.i.i.i43 ; 2 uses
  %.1.in.v.i.i.i51 = select i1 %i.hv, i64 24, i64 16
  %.1.in.i.i.i52 = getelementptr inbounds nuw i8, ptr %.012.i.i.i43, i64 %.1.in.v.i.i.i51
  %.1.i.i.i53 = load ptr, ptr %.1.in.i.i.i52, align 8, !tbaa !347 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %.1.i.i.i53, null
  br i1 %.not.i.i.i54, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i55, label %bb.x, !llvm.loop !17

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i55: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i48
  %i.hw = icmp eq ptr %.19.i.i.i50, %i.cj
  br i1 %i.hw, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit70.thread, label %bb.y

bb.y:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i55
  %.19.i.i.i50.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hv, ptr %.0811.i.i.i44, ptr %.012.i.i.i43
  %.19.i.i.i50.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i50.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.hx = load i64, ptr %.19.i.i.i50.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !80 ; 2 uses
  %.sroa.speculated.i.i.i.i.i56 = call i64 @llvm.umin.i64(i64 %i.hx, i64 %i.hm) ; 2 uses
  %i.hy = icmp eq i64 %.sroa.speculated.i.i.i.i.i56, 0
  br i1 %i.hy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i62, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i57

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i57: ; preds = %bb.y
  %.19.i.i.i50.sroa.sel95.v.sroa.sel.v.sroa.sel.v = select i1 %i.hv, ptr %.0811.i.i.i44, ptr %.012.i.i.i43
  %.19.i.i.i50.sroa.sel95.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i50.sroa.sel95.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.hz = load ptr, ptr %.19.i.i.i50.sroa.sel95.v.sroa.sel.v.sroa.sel, align 8, !tbaa !79
  %i.ia = call i32 @memcmp(ptr noundef %i.hn, ptr noundef %i.hz, i64 noundef %.sroa.speculated.i.i.i.i.i56) #48 ; 2 uses
  %.not.i.i.i.i.i58 = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i.i.i.i58, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i62, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit70

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i62: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i57, %bb.y
  %i.ib = sub i64 %i.hm, %i.hx
  %spec.select7.i.i.i.i.i.i63 = call i64 @llvm.smax.i64(i64 %i.ib, i64 -2147483648)
  %.08.i.i.i.i.i.i64 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i63, i64 2147483647)
  %.0.i6.i.i.i.i.i65 = trunc nsw i64 %.08.i.i.i.i.i.i64 to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit70

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit70: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i57, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i62
  %.0.i.i.i.i.i60 = phi i32 [ %i.ia, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i57 ], [ %.0.i6.i.i.i.i.i65, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i62 ]
  %i.ic = icmp slt i32 %.0.i.i.i.i.i60, 0
  br i1 %i.ic, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit70.thread, label %bb.z

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit70.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i55, %bb.w, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit70
  %i.id = load ptr, ptr %20, align 8, !tbaa !86
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  store i32 0, ptr %i.dz, align 8, !tbaa !90
  store i8 0, ptr %i.ea, align 8, !tbaa !91
  store i32 1, ptr %i.eb, align 4, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %7, align 8, !tbaa !94
  store ptr %i.ie, ptr %i.ed, align 8, !tbaa !96
  %i.if = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.92, i64 noundef 24) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  %i.ig = load ptr, ptr %20, align 8, !tbaa !86
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store i32 0, ptr %i.ee, align 8, !tbaa !90
  store i8 0, ptr %i.ef, align 8, !tbaa !91
  store i32 1, ptr %i.eg, align 4, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %6, align 8, !tbaa !94
  store ptr %i.ih, ptr %i.ei, align 8, !tbaa !96
  %i.ii = load ptr, ptr %i.hj, align 8, !tbaa !79
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.081.0113, i64 40
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !80
  %i.il = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.ii, i64 noundef %i.ik) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  %i.im = load ptr, ptr %20, align 8, !tbaa !86
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store i32 0, ptr %i.ej, align 8, !tbaa !90
  store i8 0, ptr %i.ek, align 8, !tbaa !91
  store i32 1, ptr %i.el, align 4, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %5, align 8, !tbaa !94
  store ptr %i.in, ptr %i.en, align 8, !tbaa !96
  %i.io = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.93, i64 noundef 2) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit70, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit70.thread
  %i.ip = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.081.0113) #54 ; 2 uses
  %.not103 = icmp eq ptr %i.ip, %i.dy
  br i1 %.not103, label %._crit_edge116, label %bb.w, !llvm.loop !917

bb.aa:                                            ; preds = %._crit_edge116
  %i.iq = load ptr, ptr @stderr, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #48
  call void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull %2, i32 noundef %3)
  %i.ir = load ptr, ptr %23, align 8, !tbaa !79
  %i.is = load ptr, ptr %22, align 8, !tbaa !79
  %i.it = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iq, ptr noundef nonnull @.str.94, ptr noundef %i.ir, ptr noundef %i.is) #55 ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #48
  %i.iu = load ptr, ptr @stderr, align 8, !tbaa !199
  %i.iv = call i32 @fflush(ptr noundef %i.iu)     ; 0 uses
  call void @_ZN7testing8internal5posix5AbortEv() #52
  unreachable

bb.ab:                                            ; preds = %._crit_edge116
  %i.iw = load ptr, ptr %22, align 8, !tbaa !79   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.ab
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !82
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #48
  %i.jb = load ptr, ptr %i.ck, align 8, !tbaa !343
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.jb)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #48
  %i.jc = load ptr, ptr %20, align 8, !tbaa !86   ; 3 uses
  %.not.i.i76 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i76, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !94
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(128) %i.jc) #48, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #48
  %i.jg = load ptr, ptr %19, align 8, !tbaa !264  ; 3 uses
  %i.jh = load ptr, ptr %i.ar, align 8, !tbaa !262 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jg, %i.jh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.jg, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.ji = load ptr, ptr %.05.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i77
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !82
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #49
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.jn, %i.jh
  br i1 %.not.i.i.i78, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i77, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !264
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %_ZN7testing7MessageD2Ev.exit
  %i.jo = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.jg, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.jp = load ptr, ptr %i.as, align 8, !tbaa !263
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jo to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.js) #49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #48
  ret ptr %4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal34RegisterTypeParameterizedTestSuiteEPKcNS0_12CodeLocationE(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.e = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !76
  %i.i = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.k, ptr %i.a, align 8, !tbaa !81
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !79
  %i.n = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.n, ptr %i.h, align 8, !tbaa !82
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.o = phi ptr [ %i.m, %bb.d ], [ %i.h, %_ZN7testing8internal15GetUnitTestImplEv.exit ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !82
  store i8 %i.p, ptr %i.o, align 1, !tbaa !82
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

_ZN7testing8internal12CodeLocationC2ERKS1_.exit:  ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !80
  %i.s = load ptr, ptr %2, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !341
  store i32 %i.w, ptr %i.u, align 8, !tbaa !341
  call void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry17RegisterTestSuiteEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %0, ptr nofree noundef nonnull align 8 dereferenceable(40) %2)
  %i.x = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  %i.z = load i64, ptr %i.h, align 8, !tbaa !82
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #49
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %_ZN7testing8internal12CodeLocationC2ERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing7MessagelsIA3_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(3) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.b, ptr %i.g, align 8, !tbaa !96
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48 ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA3_cEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %1, i64 noundef %i.h) #48 ; 0 uses
  br label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA3_cEE.exit

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA3_cEE.exit: ; preds = %bb.a, %bb.b
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, -1) i32 @_ZN7testing8internal6Random8GenerateEj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !348
  %i.b = mul i32 %i.a, 1103515245
  %i.c = add i32 %i.b, 12345
  %i.d = and i32 %i.c, 2147483647
  store i32 %i.d, ptr %0, align 4, !tbaa !348
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.135, i32 noundef 406) #48
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.136, i64 noundef 28) #48 ; 0 uses
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.137, i64 noundef 45) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %1, -2147483647
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.135, i32 noundef 407) #48
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.138, i64 noundef 37) #48 ; 0 uses
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.139, i64 noundef 30) #48 ; 0 uses
  %i.j = zext i32 %1 to i64
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %i.j) #48 ; 3 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.140, i64 noundef 17) #48 ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.141, i64 noundef 42) #48 ; 0 uses
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 2147483648) #48
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.142, i64 noundef 2) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b, %bb.c
  %i.p = load i32, ptr %0, align 4, !tbaa !348
  %i.q = urem i32 %i.p, %1
  ret i32 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal12AssertHelperC2ENS_14TestPartResult4TypeEPKciS5_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #47 ; 7 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !302
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !303
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %3, ptr %i.d, align 8, !tbaa !304
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !76
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.h, ptr %i.a, align 8, !tbaa !81
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !79
  %i.k = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.k, ptr %i.f, align 8, !tbaa !82
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN7testing8internal12AssertHelper16AssertHelperDataC2ENS_14TestPartResult4TypeEPKciS6_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %4, align 1, !tbaa !82
  store i8 %i.m, ptr %i.l, align 1, !tbaa !82
  br label %_ZN7testing8internal12AssertHelper16AssertHelperDataC2ENS_14TestPartResult4TypeEPKciS6_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %4, i64 %i.h, i1 false)
  br label %_ZN7testing8internal12AssertHelper16AssertHelperDataC2ENS_14TestPartResult4TypeEPKciS6_.exit

_ZN7testing8internal12AssertHelper16AssertHelperDataC2ENS_14TestPartResult4TypeEPKciS6_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.n = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !80
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  store ptr %i.b, ptr %0, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal12AssertHelperD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !299    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !82
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #49
  br label %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit

_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #49
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN7testing8UnitTest11GetInstanceEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %7 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %13 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %14 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %15 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %16 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %17 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %18 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %19 = alloca %"class.testing::Message", align 8 ; 16 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %21 = alloca %"class.testing::TestPartResult", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #48
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #48
  %i.a = load ptr, ptr %19, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #48
  %i.c = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %18, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %18, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 48
  store ptr %i.b, ptr %i.g, align 8, !tbaa !96
  %i.h = load ptr, ptr %4, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !80
  %i.k = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %i.h, i64 noundef %i.j) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %18) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #48 ; 2 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %17, i32 noundef 3, ptr noundef nonnull @.str.449, i32 noundef 1650) #48
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.450, i64 noundef 27) #48 ; 0 uses
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.451, i64 noundef 18) #48 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.m) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %17) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #48
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.b
  %i.q = tail call i64 @pthread_self() #51
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.q, ptr %i.r, align 8, !tbaa !349
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 1, ptr %i.s, align 8, !tbaa !350
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 584
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !934
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !934
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %.loopexit, label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  %i.ab = load ptr, ptr %19, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #48
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %i.ad, align 8, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i8 0, ptr %i.ae, align 8, !tbaa !91
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 44
  store i32 1, ptr %i.af, align 4, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %16, align 8, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 48
  store ptr %i.ac, ptr %i.ah, align 8, !tbaa !96
  %i.ai = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull @.str.20, i64 noundef 1) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #48
  %i.aj = load ptr, ptr %19, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #48
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %i.al, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i8 0, ptr %i.am, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 44
  store i32 1, ptr %i.an, align 4, !tbaa !92
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %15, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 48
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !96
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str.235, i64 noundef 11) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #48
  %i.ar = load ptr, ptr %19, align 8, !tbaa !86
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #48
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !90
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i8 0, ptr %i.au, align 8, !tbaa !91
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 44
  store i32 1, ptr %i.av, align 4, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %14, align 8, !tbaa !94
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !96
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.368, i64 noundef 7) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #48
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 584
  %i.bb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !353 ; 2 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !354 ; 2 uses
  %.not32 = icmp eq ptr %i.bd, %i.be
  br i1 %.not32, label %.loopexit, label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit21.lr.ph

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit21.lr.ph: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 48
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  br label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit21

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit21:      ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit21.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.033 = phi i64 [ %i.bi, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit21.lr.ph ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 584
  %i.ch = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg)
  %i.ci = add i64 %.033, -1                       ; 3 uses
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !354
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %i.ci ; 4 uses
  %i.cl = load ptr, ptr %19, align 8, !tbaa !86
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #48
  store i32 0, ptr %i.bj, align 8, !tbaa !90
  store i8 0, ptr %i.bk, align 8, !tbaa !91
  store i32 1, ptr %i.bl, align 4, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %13, align 8, !tbaa !94
  store ptr %i.cm, ptr %i.bn, align 8, !tbaa !96
  %i.cn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.20, i64 noundef 1) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #48
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !356
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !357
  call void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef %i.co, i32 noundef %i.cq)
  %i.cr = load ptr, ptr %19, align 8, !tbaa !86
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #48
  store i32 0, ptr %i.bo, align 8, !tbaa !90
  store i8 0, ptr %i.bp, align 8, !tbaa !91
end_hunk_6
begin_hunk_7_@_ZN7testing8internal17AppendUserMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7MessageE:bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !80   ; 4 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !76
  %i.x = load ptr, ptr %3, align 8, !tbaa !79     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.e, ptr %i.a, align 8, !tbaa !81
  %i.y = icmp ugt i64 %i.e, 15
  br i1 %i.y, label %._crit_edge.i.i4.thread, label %._crit_edge.i.i4

._crit_edge.i.i4.thread:                          ; preds = %bb.g
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !79
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !82
  br label %bb.i

._crit_edge.i.i4:                                 ; preds = %bb.g
  %cond = icmp eq i64 %i.e, 1
  br i1 %cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i4
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !82
  store i8 %i.ab, ptr %i.w, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5

bb.i:                                             ; preds = %._crit_edge.i.i4.thread, %._crit_edge.i.i4
  %i.ac = phi ptr [ %i.z, %._crit_edge.i.i4.thread ], [ %i.w, %._crit_edge.i.i4 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.x, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5: ; preds = %bb.h, %bb.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !80
  %i.af = load ptr, ptr %0, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  br label %bb.o

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %i.ah = load ptr, ptr %1, align 8, !tbaa !79, !noalias !946
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ai, ptr %4, align 8, !tbaa !76, !alias.scope !947
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !80, !alias.scope !947
  store i8 0, ptr %i.ai, align 8, !tbaa !82, !alias.scope !947
  %i.ak = add i64 %i.u, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ak) #48
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !80, !alias.scope !947
  %i.am = sub i64 4611686018427387903, %i.al
  %i.an = icmp ult i64 %i.am, %i.u
  br i1 %i.an, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.j
  %i.ao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ah, i64 noundef %i.u) #48 ; 0 uses
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !80, !alias.scope !947
  %i.aq = icmp eq i64 %i.ap, 4611686018427387903
  br i1 %i.aq, label %bb.l, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ar = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.20, i64 noundef 1) #48 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.as = load i64, ptr %i.d, align 8, !tbaa !80, !noalias !948 ; 2 uses
  %i.at = load i64, ptr %i.aj, align 8, !tbaa !80, !noalias !948
  %i.au = sub i64 4611686018427387903, %i.at
  %i.av = icmp ult i64 %i.au, %i.as
  br i1 %i.av, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50, !noalias !948
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.aw = load ptr, ptr %3, align 8, !tbaa !79, !noalias !948
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.aw, i64 noundef %i.as) #48, !noalias !948 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !76, !alias.scope !948
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !79 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !80 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.az, ptr %0, align 8, !tbaa !79, !alias.scope !948
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !82
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !82, !alias.scope !948
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !80
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bh = phi i64 [ %i.bd, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !80, !alias.scope !948
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !79
  store i64 0, ptr %i.bi, align 8, !tbaa !80
  store i8 0, ptr %i.ba, align 8, !tbaa !82
  %i.bk = load ptr, ptr %4, align 8, !tbaa !79    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ai
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  %i.bm = load i64, ptr %i.ai, align 8, !tbaa !82
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bo = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.o
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !82
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(601) %1, i32 noundef %2) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !358  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !94
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #47 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.d, align 8, !tbaa !94
  store ptr %i.d, ptr %i.a, align 8, !tbaa !358
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.b
  %i.e = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.b ], [ %.pre, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.f = phi ptr [ %i.d, %bb.b ], [ %i.b, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.g = load i32, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !97
  %i.h = add nsw i32 %2, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.g, i32 noundef %i.h) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal13MarkAsIgnoredC2EPKc(ptr nofree nonnull readnone align 1 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.e = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !76
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.e:                                             ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.j, ptr %i.a, align 8, !tbaa !81
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !79
  %i.m = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.m, ptr %i.h, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.n = phi ptr [ %i.l, %bb.f ], [ %i.h, %bb.e ] ; 2 uses
  switch i64 %i.j, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %1, align 1, !tbaa !82
  store i8 %i.o, ptr %i.n, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.p = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !80
  %i.r = load ptr, ptr %2, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.t = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 1        ; 5 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.v = extractvalue { ptr, ptr } %i.t, 0
  %.not.i = icmp ne ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 312 ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.x
  br i1 %or.cond.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.q, align 8, !tbaa !80   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !80  ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.y) ; 2 uses
  %i.ab = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ab, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !79
  %i.ae = load ptr, ptr %2, align 8, !tbaa !79
  %i.af = call i32 @memcmp(ptr noundef %i.ae, ptr noundef %i.ad, i64 noundef %.sroa.speculated.i.i.i.i) #48 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.j
  %i.ag = sub i64 %i.y, %i.aa
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i, 0
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.i
  %i.ai = phi i1 [ %i.ah, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.i ]
  %i.aj = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 3 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !76
  %i.am = load ptr, ptr %2, align 8, !tbaa !79    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.h
  br i1 %i.an, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !80  ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.aq, i1 false)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !79
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !82
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !82
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !80
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.as = phi i64 [ %i.ao, %bb.l ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 %i.as, ptr %i.at, align 8, !tbaa !80
  store ptr %i.h, ptr %2, align 8, !tbaa !79
  store i64 0, ptr %i.q, align 8, !tbaa !80
  store i8 0, ptr %i.h, align 8, !tbaa !82
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.w) #48
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !346
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !346
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %i.ax = load ptr, ptr %2, align 8, !tbaa !79    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.h
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit
  %i.az = load i64, ptr %i.h, align 8, !tbaa !82
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %class.anon, align 8                ; 11 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca [378 x i8], align 16              ; 4 uses
  %i.f = alloca [348 x i8], align 16              ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %class.anon, align 8               ; 13 uses
  %i.g = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.j = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !343  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 312 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.m, null
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre55 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !80 ; 7 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.m, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.n, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.pre55, i64 %i.p) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.u = sub i64 %i.p, %.pre55
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.v, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !347 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.w = icmp eq ptr %.19.i.i.i, %i.n
  br i1 %i.w, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %.pre55) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79
  %i.ac = tail call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i) #48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.ad = sub i64 %.pre55, %i.y
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.ak

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(378) %i.e, ptr noundef nonnull align 16 dereferenceable(378) @__const._ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb.kMissingInstantiation, i64 378, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(348) %i.f, ptr noundef nonnull align 16 dereferenceable(348) @__const._ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb.kMissingTestCase, i64 348, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.ag, ptr %10, align 8, !tbaa !76, !alias.scope !967
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !80, !alias.scope !967
  store i8 0, ptr %i.ag, align 8, !tbaa !82, !alias.scope !967
  %i.ai = add i64 %.pre55, 25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ai) #48
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !80, !alias.scope !967
  %i.ak = add i64 %i.aj, -4611686018427387879
  %i.al = icmp ult i64 %i.ak, 25
  br i1 %i.al, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.e:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.am = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.143, i64 noundef 25) #48 ; 0 uses
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !80, !alias.scope !967
  %i.ao = sub i64 4611686018427387903, %i.an
  %i.ap = icmp ult i64 %i.ao, %.pre55
  br i1 %i.ap, label %bb.f, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.aq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %.pre, i64 noundef %.pre55) #48 ; 0 uses
  %i.ar = select i1 %2, ptr %i.e, ptr %i.f        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #48, !noalias !968 ; 2 uses
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !80, !noalias !968
  %i.au = sub i64 4611686018427387903, %i.at
  %i.av = icmp ult i64 %i.au, %i.as
  br i1 %i.av, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50, !noalias !968
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.ar, i64 noundef %i.as) #48, !noalias !968 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !76, !alias.scope !968
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !79 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 5 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !80 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.be, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ay, ptr %9, align 8, !tbaa !79, !alias.scope !968
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !82
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !82, !alias.scope !968
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !80
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bg = phi i64 [ %i.bc, %bb.h ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !80, !alias.scope !968
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !79
  store i64 0, ptr %i.bh, align 8, !tbaa !80
  store i8 0, ptr %i.az, align 8, !tbaa !82
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !80, !noalias !969
  %i.bk = add i64 %i.bj, -4611686018427387732
  %i.bl = icmp ult i64 %i.bk, 172
  br i1 %i.bl, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50, !noalias !969
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.144, i64 noundef 172) #48, !noalias !969 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.bn, ptr %8, align 8, !tbaa !76, !alias.scope !969
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !79 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6
  store ptr %i.bo, ptr %8, align 8, !tbaa !79, !alias.scope !969
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !82
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !82, !alias.scope !969
  %.phi.trans.insert.i8 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre.i9 = load i64, ptr %.phi.trans.insert.i8, align 8, !tbaa !80
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit10

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit10: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
end_hunk_7
begin_hunk_8_@_ZN7testing8internal34TypeParameterizedTestSuiteRegistry17RegisterTestSuiteEPKcNS0_12CodeLocationE
define dso_local void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry17RegisterTestSuiteEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"struct.testing::internal::TypeParameterizedTestSuiteRegistry::TypeParameterizedTestSuiteInfo", align 8 ; 12 uses
  %5 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !76
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #48
  store i64 %i.f, ptr %i.c, align 8, !tbaa !81
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #48 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !79
  %i.i = load i64, ptr %i.c, align 8, !tbaa !81
  store i64 %i.i, ptr %i.d, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !82
  store i8 %i.k, ptr %i.j, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.l = load i64, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !80
  %i.n = load ptr, ptr %3, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !76
  %i.q = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  store i64 %i.s, ptr %i.b, align 8, !tbaa !81
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #48 ; 2 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !79
  %i.v = load i64, ptr %i.b, align 8, !tbaa !81
  store i64 %i.v, ptr %i.p, align 8, !tbaa !82
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.w = phi ptr [ %i.u, %bb.g ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  switch i64 %i.s, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !82
  store i8 %i.x, ptr %i.w, align 1, !tbaa !82
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

_ZN7testing8internal12CodeLocationC2ERKS1_.exit:  ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !80
  %i.aa = load ptr, ptr %5, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !341
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !341
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.af, ptr %4, align 8, !tbaa !76
  %i.ag = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !80  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !81
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(41) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !79
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !82
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  %i.al = phi ptr [ %i.aj, %bb.j ], [ %i.af, %_ZN7testing8internal12CodeLocationC2ERKS1_.exit ] ; 2 uses
  switch i64 %i.ah, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoC2ENS0_12CodeLocationE.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !82
  store i8 %i.am, ptr %i.al, align 1, !tbaa !82
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoC2ENS0_12CodeLocationE.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ag, i64 %i.ah, i1 false)
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoC2ENS0_12CodeLocationE.exit

_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoC2ENS0_12CodeLocationE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.k, %bb.l
  %i.an = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !80
  %i.ap = load ptr, ptr %4, align 8, !tbaa !79
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.as = load i32, ptr %i.ac, align 8, !tbaa !341
  store i32 %i.as, ptr %i.ar, align 8, !tbaa !341
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.at, align 8, !tbaa !360
  %i.au = call { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJS5_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(41) %4) ; 0 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !79    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.af
  br i1 %i.aw, label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoC2ENS0_12CodeLocationE.exit
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !82
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #49
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit

_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit: ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoC2ENS0_12CodeLocationE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.az = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.p
  br i1 %i.ba, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit
  %i.bb = load i64, ptr %i.p, align 8, !tbaa !82
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #49
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  %i.bd = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.d
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !82
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal47RegisterTypeParameterizedTestSuiteInstantiationEPKc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  tail call void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry21RegisterInstantiationEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry21RegisterInstantiationEPKc(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !76
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.d, ptr %i.a, align 8, !tbaa !81
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !79
  %i.g = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.g, ptr %i.b, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !82
  store i8 %i.i, ptr %i.h, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.j = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !80
  %i.l = load ptr, ptr %2, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !343  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  %.pre = load ptr, ptr %2, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.q = load i64, ptr %i.k, align 8, !tbaa !80   ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !80   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79
  %i.w = call i32 @memcmp(ptr noundef %i.v, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.g
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !347 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.g, !llvm.loop !18

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.z, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.q) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.af = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.h
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

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ], [ %i.p, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.ai = icmp eq ptr %.pre, %i.b
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !82
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %.not = icmp eq ptr %.sroa.0.0.i.i, %i.p
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 104
  store i8 1, ptr %i.al, align 8, !tbaa !362
  br label %bb.j

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 2, ptr noundef nonnull @.str.135, i32 noundef 581) #48
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.149, i64 noundef 38) #48 ; 0 uses
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %1, i64 noundef %i.an) #48 ; 0 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.150, i64 noundef 1) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJS5_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(41) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !80   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #48 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !347 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !18

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !80   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !79
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #48 ; 2 uses
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

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry22CheckForInstantiationsEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %class.anon.138, align 8            ; 13 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %class.anon.138, align 8           ; 13 uses
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.g = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !344  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not57 = icmp eq ptr %i.i, %i.j
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 312 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.ag, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.ag
  %.sroa.052.058 = phi ptr [ %i.i, %.lr.ph ], [ %i.iy, %bb.ag ] ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.052.058, i64 32 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.052.058, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.052.058, i64 104
  %i.at = load i8, ptr %i.as, align 8, !tbaa !362, !range !71, !noundef !72
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !343 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.052.058, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !80 ; 4 uses
  %i.ay = load ptr, ptr %i.aq, align 8            ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !80 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.ba) ; 2 uses
  %i.bb = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  %i.be = call i32 @memcmp(ptr noundef %i.bd, ptr noundef %i.ay, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.bf = sub i64 %i.ba, %i.ax
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bf, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.be, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bg = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.bg, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.bg, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !347 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.f, !llvm.loop !17

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bh = icmp eq ptr %.19.i.i.i, %i.m
  br i1 %i.bh, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !80 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.ax) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bn = call i32 @memcmp(ptr noundef %i.ay, ptr noundef %i.bm, i64 noundef %.sroa.speculated.i.i.i.i.i) #48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.bo = sub i64 %i.ax, %i.bj
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bo, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bp = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bp, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.ag

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.e, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %i.bq = load ptr, ptr %i.aq, align 8, !tbaa !79, !noalias !991
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.052.058, i64 40 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80, !noalias !991 ; 3 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !76, !alias.scope !992
  store i64 0, ptr %i.o, align 8, !tbaa !80, !alias.scope !992
  store i8 0, ptr %i.n, align 8, !tbaa !82, !alias.scope !992
  %i.bt = add i64 %i.bs, 30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bt) #48
  %i.bu = load i64, ptr %i.o, align 8, !tbaa !80, !alias.scope !992
  %i.bv = add i64 %i.bu, -4611686018427387874
  %i.bw = icmp ult i64 %i.bv, 30
  br i1 %i.bw, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.h:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.151, i64 noundef 30) #48 ; 0 uses
  %i.by = load i64, ptr %i.o, align 8, !tbaa !80, !alias.scope !992
  %i.bz = sub i64 4611686018427387903, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bs
  br i1 %i.ca, label %bb.i, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.bq, i64 noundef %i.bs) #48 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.cc = load i64, ptr %i.o, align 8, !tbaa !80, !noalias !993
  %i.cd = add i64 %i.cc, -4611686018427387385
  %i.ce = icmp ult i64 %i.cd, 519
  br i1 %i.ce, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50, !noalias !993
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.152, i64 noundef 519) #48, !noalias !993 ; 6 uses
  store ptr %i.p, ptr %6, align 8, !tbaa !76, !alias.scope !993
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !79 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !80 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.cg, ptr %6, align 8, !tbaa !79, !alias.scope !993
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !82
  store i64 %i.cn, ptr %i.p, align 8, !tbaa !82, !alias.scope !993
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !80
end_hunk_8
begin_hunk_9_@_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev:bb.a

bb.j:                                             ; preds = %bb.i
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !79
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !82
  br label %._crit_edge.i.i19

._crit_edge.i.i19:                                ; preds = %bb.j, %bb.i
  %i.af = phi ptr [ %i.ad, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  switch i64 %i.aa, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %.critedge
  ]

bb.k:                                             ; preds = %._crit_edge.i.i19
  %i.ag = load i8, ptr %i.p, align 1, !tbaa !82
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !82
  br label %.critedge

bb.l:                                             ; preds = %._crit_edge.i.i19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.p, i64 %i.aa, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.i.i19, %bb.k, %bb.l
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !80
  %i.aj = load ptr, ptr %0, align 8, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  br label %.critedge16

.critedge17:                                      ; preds = %bb.h, %bb.g, %._crit_edge.i.i18
  %i.al = load i64, ptr %i.b, align 8, !tbaa !81  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !80
  %i.an = load ptr, ptr %0, align 8, !tbaa !79
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  br label %.critedge16

.critedge16:                                      ; preds = %.critedge, %.critedge17
  %i.ap = load ptr, ptr %1, align 8, !tbaa !79    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge16
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !82
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal15UnitTestOptions27GetAbsolutePathToOutputFileB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %2 = alloca %"class.testing::internal::FilePath", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.testing::internal::FilePath", align 8 ; 7 uses
  %7 = alloca %"class.testing::internal::FilePath", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::FilePath", align 8 ; 15 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.testing::internal::FilePath", align 8 ; 6 uses
  %14 = alloca %"class.testing::internal::FilePath", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.testing::internal::FilePath", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %19 = alloca %"class.testing::internal::FilePath", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !76
  %i.n = load ptr, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, align 8, !tbaa !79 ; 2 uses
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, i64 8), align 8, !tbaa !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #48
  store i64 %i.o, ptr %i.l, align 8, !tbaa !81
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0) #48 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !79
  %i.r = load i64, ptr %i.l, align 8, !tbaa !81
  store i64 %i.r, ptr %i.m, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.s = phi ptr [ %i.q, %bb.b ], [ %i.m, %bb.a ] ; 2 uses
  switch i64 %i.o, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !82
  store i8 %i.t, ptr %i.s, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.n, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.u = load i64, ptr %i.l, align 8, !tbaa !81   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !80
  %i.w = load ptr, ptr %3, align 8, !tbaa !79
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #48
  %i.y = load ptr, ptr %3, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !80
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i.i4, label %bb.e

._crit_edge.i.i4:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ac, ptr noundef nonnull align 1 dereferenceable(3) @_ZN7testingL20kDefaultOutputFormatE, i64 3, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 3, ptr %i.ad, align 8, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 0, ptr %i.ae, align 1, !tbaa !82
  %i.af = load ptr, ptr %4, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.af, ptr noundef nonnull align 1 dereferenceable(3) @_ZN7testingL20kDefaultOutputFormatE, i64 3, i1 false)
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ag, ptr %i.z, align 8, !tbaa !80
  %i.ah = load ptr, ptr %4, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !82
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !79
  store i64 0, ptr %i.ad, align 8, !tbaa !80
  store i8 0, ptr %.pre.i, align 1, !tbaa !82
  %i.aj = load ptr, ptr %5, align 8, !tbaa !79    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ac
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i4
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !82
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.an = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.y, i32 noundef 58) #54 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.f, label %bb.x

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  %i.ap = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.g:                                             ; preds = %bb.f
  %i.ar = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i5 = icmp eq i32 %i.ar, 0
  br i1 %.not.i5, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.as = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.f, %bb.g, %bb.h
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !79 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.aw, ptr %8, align 8, !tbaa !76
  %i.ax = icmp eq ptr %i.av, null
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.j:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ay = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.av) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #48
  store i64 %i.ay, ptr %i.k, align 8, !tbaa !81
  %i.az = icmp ugt i64 %i.ay, 15
  br i1 %i.az, label %bb.k, label %._crit_edge.i.i6

bb.k:                                             ; preds = %bb.j
  %i.ba = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) #48 ; 2 uses
  store ptr %i.ba, ptr %8, align 8, !tbaa !79
  %i.bb = load i64, ptr %i.k, align 8, !tbaa !81
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !82
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %bb.k, %bb.j
  %i.bc = phi ptr [ %i.ba, %bb.k ], [ %i.aw, %bb.j ] ; 2 uses
  switch i64 %i.ay, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit7
  ]

bb.l:                                             ; preds = %._crit_edge.i.i6
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !82
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit7

bb.m:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr nonnull align 1 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit7: ; preds = %._crit_edge.i.i6, %bb.l, %bb.m
  %i.be = load i64, ptr %i.k, align 8, !tbaa !81  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !80
  %i.bg = load ptr, ptr %8, align 8, !tbaa !79
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #48
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.bi, ptr %7, align 8, !tbaa !76
  %i.bj = load ptr, ptr %8, align 8, !tbaa !79    ; 2 uses
  %i.bk = load i64, ptr %i.bf, align 8, !tbaa !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #48
  store i64 %i.bk, ptr %i.j, align 8, !tbaa !81
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %bb.n, label %._crit_edge.i.i.i

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit7
  %i.bm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0) #48 ; 2 uses
  store ptr %i.bm, ptr %7, align 8, !tbaa !79
  %i.bn = load i64, ptr %i.j, align 8, !tbaa !81
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !82
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit7
  %i.bo = phi ptr [ %i.bm, %bb.n ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit7 ] ; 2 uses
  switch i64 %i.bk, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !82
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bj, i64 %i.bk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !81  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !80
  %i.bs = load ptr, ptr %7, align 8, !tbaa !79
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #48
  %i.bu = load ptr, ptr %7, align 8, !tbaa !79    ; 5 uses
  %i.bv = load i64, ptr %i.br, align 8, !tbaa !80 ; 2 uses
  %.not1820.i.i = icmp samesign eq i64 %i.bv, 0
  br i1 %.not1820.i.i, label %.lr.ph.i.i14.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.r
  %i.bw = phi i64 [ %i.ce, %bb.r ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ]
  %i.bx = phi ptr [ %i.cf, %bb.r ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  %.sroa.013.022.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.r ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 5 uses
  %.sroa.010.021.i.i = phi ptr [ %i.cg, %bb.r ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  %i.by = load i8, ptr %.sroa.010.021.i.i, align 1, !tbaa !82 ; 2 uses
  %i.bz = icmp ne i8 %i.by, 47
  %i.ca = icmp eq ptr %.sroa.013.022.i.i, %i.bx
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond.i, label %.sink.split.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.013.022.i.i, i64 -1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !82
  %.not.i.i = icmp eq i8 %i.cc, 47
  br i1 %.not.i.i, label %bb.r, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.q, %.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i, i64 1
  store i8 %i.by, ptr %.sroa.013.022.i.i, align 1, !tbaa !82
  %.pre.i8 = load ptr, ptr %7, align 8, !tbaa !79
  %.pre2.i = load i64, ptr %i.br, align 8, !tbaa !80
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i, %bb.q
  %i.ce = phi i64 [ %i.bw, %bb.q ], [ %.pre2.i, %.sink.split.i.i ] ; 2 uses
  %i.cf = phi ptr [ %i.bx, %bb.q ], [ %.pre.i8, %.sink.split.i.i ] ; 3 uses
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.022.i.i, %bb.q ], [ %i.cd, %.sink.split.i.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i, i64 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  %.not18.i.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not18.i.i, label %.lr.ph.i.i14.preheader, label %.lr.ph.i.i, !llvm.loop !7

.lr.ph.i.i14.preheader:                           ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %.sroa.013.0.lcssa.i.i = phi ptr [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.sroa.013.1.i.i, %bb.r ]
  %.lcssa19.i.i = phi ptr [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %i.cf, %bb.r ] ; 2 uses
  %i.ci = ptrtoint ptr %.sroa.013.0.lcssa.i.i to i64
  %i.cj = ptrtoint ptr %.lcssa19.i.i to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  store i64 %i.ck, ptr %i.br, align 8, !tbaa !80
  %i.cl = getelementptr inbounds nuw i8, ptr %.lcssa19.i.i, i64 %i.ck
  store i8 0, ptr %i.cl, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.cm, ptr %10, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cm, ptr noundef nonnull align 1 dereferenceable(11) @_ZN7testingL18kDefaultOutputFileE, i64 11, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 11, ptr %i.cn, align 8, !tbaa !80
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 27
  store i8 0, ptr %i.co, align 1, !tbaa !82
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.cp, ptr %9, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cp, ptr noundef nonnull align 1 dereferenceable(11) @_ZN7testingL18kDefaultOutputFileE, i64 11, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 11, ptr %i.cq, align 8, !tbaa !80
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 27
  store i8 0, ptr %i.cr, align 1, !tbaa !82
  br label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i.i14.preheader, %bb.t
  %i.cs = phi i64 [ %i.da, %bb.t ], [ 11, %.lr.ph.i.i14.preheader ]
  %i.ct = phi ptr [ %i.db, %bb.t ], [ %i.cp, %.lr.ph.i.i14.preheader ] ; 2 uses
  %.sroa.013.022.i.i15 = phi ptr [ %.sroa.013.1.i.i22, %bb.t ], [ %i.cp, %.lr.ph.i.i14.preheader ] ; 5 uses
  %.sroa.010.021.i.i16 = phi ptr [ %i.dc, %bb.t ], [ %i.cp, %.lr.ph.i.i14.preheader ] ; 2 uses
  %i.cu = load i8, ptr %.sroa.010.021.i.i16, align 1, !tbaa !82 ; 2 uses
  %i.cv = icmp ne i8 %i.cu, 47
  %i.cw = icmp eq ptr %.sroa.013.022.i.i15, %i.ct
  %or.cond.i17 = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond.i17, label %.sink.split.i.i19, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i14
  %i.cx = getelementptr inbounds i8, ptr %.sroa.013.022.i.i15, i64 -1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !82
  %.not.i.i18 = icmp eq i8 %i.cy, 47
  br i1 %.not.i.i18, label %bb.t, label %.sink.split.i.i19

.sink.split.i.i19:                                ; preds = %bb.s, %.lr.ph.i.i14
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i15, i64 1
  store i8 %i.cu, ptr %.sroa.013.022.i.i15, align 1, !tbaa !82
  %.pre.i20 = load ptr, ptr %9, align 8, !tbaa !79
  %.pre2.i21 = load i64, ptr %i.cq, align 8, !tbaa !80
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i.i19, %bb.s
  %i.da = phi i64 [ %i.cs, %bb.s ], [ %.pre2.i21, %.sink.split.i.i19 ] ; 2 uses
  %i.db = phi ptr [ %i.ct, %bb.s ], [ %.pre.i20, %.sink.split.i.i19 ] ; 4 uses
  %.sroa.013.1.i.i22 = phi ptr [ %.sroa.013.022.i.i15, %bb.s ], [ %i.cz, %.sink.split.i.i19 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i16, i64 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  %.not18.i.i23 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not18.i.i23, label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26, label %.lr.ph.i.i14, !llvm.loop !7

_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26: ; preds = %bb.t
  %i.de = ptrtoint ptr %.sroa.013.1.i.i22 to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  store i64 %i.dg, ptr %i.cq, align 8, !tbaa !80
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dg
  store i8 0, ptr %i.dh, align 1, !tbaa !82
  %i.di = load ptr, ptr %4, align 8, !tbaa !79
end_hunk_9
begin_hunk_10_@_ZN7testing8internal15UnitTestOptions27GetAbsolutePathToOutputFileB5cxx11Ev:bb.a
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  %i.ej = load ptr, ptr %7, align 8, !tbaa !79    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.bi
  br i1 %i.ek, label %_ZN7testing8internal8FilePathD2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.el = load i64, ptr %i.bi, align 8, !tbaa !82
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #49
  br label %_ZN7testing8internal8FilePathD2Ev.exit37

_ZN7testing8internal8FilePathD2Ev.exit37:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  %i.en = load ptr, ptr %8, align 8, !tbaa !79    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.aw
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit37
  %i.ep = load i64, ptr %i.aw, align 8, !tbaa !82
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  br label %bb.bj

bb.x:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #48
  %i.er = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.es, ptr %12, align 8, !tbaa !76
  %i.et = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #48
  store i64 %i.et, ptr %i.h, align 8, !tbaa !81
  %i.eu = icmp ugt i64 %i.et, 15
  br i1 %i.eu, label %bb.y, label %._crit_edge.i.i41

bb.y:                                             ; preds = %bb.x
  %i.ev = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) #48 ; 2 uses
  store ptr %i.ev, ptr %12, align 8, !tbaa !79
  %i.ew = load i64, ptr %i.h, align 8, !tbaa !81
  store i64 %i.ew, ptr %i.es, align 8, !tbaa !82
  br label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %bb.y, %bb.x
  %i.ex = phi ptr [ %i.ev, %bb.y ], [ %i.es, %bb.x ] ; 2 uses
  switch i64 %i.et, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42
  ]

bb.z:                                             ; preds = %._crit_edge.i.i41
  %i.ey = load i8, ptr %i.er, align 1, !tbaa !82
  store i8 %i.ey, ptr %i.ex, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42

bb.aa:                                            ; preds = %._crit_edge.i.i41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ex, ptr nonnull align 1 %i.er, i64 %i.et, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42: ; preds = %._crit_edge.i.i41, %bb.z, %bb.aa
  %i.ez = load i64, ptr %i.h, align 8, !tbaa !81  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !80
  %i.fb = load ptr, ptr %12, align 8, !tbaa !79
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ez
  store i8 0, ptr %i.fc, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #48
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.fd, ptr %11, align 8, !tbaa !76
  %i.fe = load ptr, ptr %12, align 8, !tbaa !79   ; 2 uses
  %i.ff = load i64, ptr %i.fa, align 8, !tbaa !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #48
  store i64 %i.ff, ptr %i.g, align 8, !tbaa !81
  %i.fg = icmp ugt i64 %i.ff, 15
  br i1 %i.fg, label %bb.ab, label %._crit_edge.i.i.i43

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42
  %i.fh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #48 ; 2 uses
  store ptr %i.fh, ptr %11, align 8, !tbaa !79
  %i.fi = load i64, ptr %i.g, align 8, !tbaa !81
  store i64 %i.fi, ptr %i.fd, align 8, !tbaa !82
  br label %._crit_edge.i.i.i43

._crit_edge.i.i.i43:                              ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42
  %i.fj = phi ptr [ %i.fh, %bb.ab ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit42 ] ; 2 uses
  switch i64 %i.ff, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i43
  %i.fk = load i8, ptr %i.fe, align 1, !tbaa !82
  store i8 %i.fk, ptr %i.fj, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44

bb.ad:                                            ; preds = %._crit_edge.i.i.i43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fj, ptr align 1 %i.fe, i64 %i.ff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44: ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i43
  %i.fl = load i64, ptr %i.g, align 8, !tbaa !81  ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !80
  %i.fn = load ptr, ptr %11, align 8, !tbaa !79
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fl
  store i8 0, ptr %i.fo, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #48
  %i.fp = load ptr, ptr %11, align 8, !tbaa !79   ; 5 uses
  %i.fq = load i64, ptr %i.fm, align 8, !tbaa !80 ; 2 uses
  %.not1820.i.i45 = icmp samesign eq i64 %i.fq, 0
  br i1 %.not1820.i.i45, label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44, %bb.af
  %i.fr = phi i64 [ %i.fz, %bb.af ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44 ]
  %i.fs = phi ptr [ %i.ga, %bb.af ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44 ] ; 2 uses
  %.sroa.013.022.i.i47 = phi ptr [ %.sroa.013.1.i.i54, %bb.af ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44 ] ; 5 uses
  %.sroa.010.021.i.i48 = phi ptr [ %i.gb, %bb.af ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44 ] ; 2 uses
  %i.ft = load i8, ptr %.sroa.010.021.i.i48, align 1, !tbaa !82 ; 2 uses
  %i.fu = icmp ne i8 %i.ft, 47
  %i.fv = icmp eq ptr %.sroa.013.022.i.i47, %i.fs
  %or.cond.i49 = select i1 %i.fu, i1 true, i1 %i.fv
  br i1 %or.cond.i49, label %.sink.split.i.i51, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i46
  %i.fw = getelementptr inbounds i8, ptr %.sroa.013.022.i.i47, i64 -1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !82
  %.not.i.i50 = icmp eq i8 %i.fx, 47
  br i1 %.not.i.i50, label %bb.af, label %.sink.split.i.i51

.sink.split.i.i51:                                ; preds = %bb.ae, %.lr.ph.i.i46
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i47, i64 1
  store i8 %i.ft, ptr %.sroa.013.022.i.i47, align 1, !tbaa !82
  %.pre.i52 = load ptr, ptr %11, align 8, !tbaa !79
  %.pre2.i53 = load i64, ptr %i.fm, align 8, !tbaa !80
  br label %bb.af

bb.af:                                            ; preds = %.sink.split.i.i51, %bb.ae
  %i.fz = phi i64 [ %i.fr, %bb.ae ], [ %.pre2.i53, %.sink.split.i.i51 ] ; 2 uses
  %i.ga = phi ptr [ %i.fs, %bb.ae ], [ %.pre.i52, %.sink.split.i.i51 ] ; 3 uses
  %.sroa.013.1.i.i54 = phi ptr [ %.sroa.013.022.i.i47, %bb.ae ], [ %i.fy, %.sink.split.i.i51 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i48, i64 1 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fz
  %.not18.i.i55 = icmp eq ptr %i.gb, %i.gc
  br i1 %.not18.i.i55, label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58, label %.lr.ph.i.i46, !llvm.loop !7

_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58: ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44
  %.sroa.013.0.lcssa.i.i56 = phi ptr [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44 ], [ %.sroa.013.1.i.i54, %bb.af ]
  %.lcssa19.i.i57 = phi ptr [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i44 ], [ %i.ga, %bb.af ] ; 2 uses
  %i.gd = ptrtoint ptr %.sroa.013.0.lcssa.i.i56 to i64
  %i.ge = ptrtoint ptr %.lcssa19.i.i57 to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 2 uses
  store i64 %i.gf, ptr %i.fm, align 8, !tbaa !80
  %i.gg = getelementptr inbounds nuw i8, ptr %.lcssa19.i.i57, i64 %i.gf
  store i8 0, ptr %i.gg, align 1, !tbaa !82
  %i.gh = load ptr, ptr %12, align 8, !tbaa !79   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.es
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58
  %i.gj = load i64, ptr %i.es, align 8, !tbaa !82
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #48
  %i.gl = load i64, ptr %i.fm, align 8, !tbaa !80 ; 2 uses
  %.not.i.i62 = icmp samesign eq i64 %i.gl, 0
  br i1 %.not.i.i62, label %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit.thread, label %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit

_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.gm = load ptr, ptr %11, align 8, !tbaa !79
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !82
  %i.go = icmp eq i8 %i.gn, 47
  br i1 %i.go, label %_ZNK7testing8internal8FilePath11IsDirectoryEv.exit, label %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit.thread

_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #48
  %i.gp = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.ag, label %_ZN7testing8UnitTest11GetInstanceEv.exit64, !prof !98

bb.ag:                                            ; preds = %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit.thread
  %i.gr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i63 = icmp eq i32 %i.gr, 0
  br i1 %.not.i63, label %_ZN7testing8UnitTest11GetInstanceEv.exit64, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.gs = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit64

_ZN7testing8UnitTest11GetInstanceEv.exit64:       ; preds = %_ZNK7testing8internal8FilePath14IsAbsolutePathEv.exit.thread, %bb.ag, %bb.ah
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !79 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.gw, ptr %15, align 8, !tbaa !76
  %i.gx = icmp eq ptr %i.gv, null
  br i1 %i.gx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit64
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.aj:                                            ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit64
  %i.gy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gv) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #48
  store i64 %i.gy, ptr %i.f, align 8, !tbaa !81
  %i.gz = icmp ugt i64 %i.gy, 15
  br i1 %i.gz, label %bb.ak, label %._crit_edge.i.i65

bb.ak:                                            ; preds = %bb.aj
  %i.ha = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #48 ; 2 uses
  store ptr %i.ha, ptr %15, align 8, !tbaa !79
  %i.hb = load i64, ptr %i.f, align 8, !tbaa !81
  store i64 %i.hb, ptr %i.gw, align 8, !tbaa !82
  br label %._crit_edge.i.i65

._crit_edge.i.i65:                                ; preds = %bb.ak, %bb.aj
  %i.hc = phi ptr [ %i.ha, %bb.ak ], [ %i.gw, %bb.aj ] ; 2 uses
  switch i64 %i.gy, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit66
  ]

bb.al:                                            ; preds = %._crit_edge.i.i65
  %i.hd = load i8, ptr %i.gv, align 1, !tbaa !82
  store i8 %i.hd, ptr %i.hc, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit66

bb.am:                                            ; preds = %._crit_edge.i.i65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hc, ptr nonnull align 1 %i.gv, i64 %i.gy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit66: ; preds = %._crit_edge.i.i65, %bb.al, %bb.am
  %i.he = load i64, ptr %i.f, align 8, !tbaa !81  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !80
  %i.hg = load ptr, ptr %15, align 8, !tbaa !79
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.he
  store i8 0, ptr %i.hh, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #48
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.hi, ptr %14, align 8, !tbaa !76
  %i.hj = load ptr, ptr %15, align 8, !tbaa !79   ; 2 uses
  %i.hk = load i64, ptr %i.hf, align 8, !tbaa !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #48
  store i64 %i.hk, ptr %i.e, align 8, !tbaa !81
  %i.hl = icmp ugt i64 %i.hk, 15
  br i1 %i.hl, label %bb.an, label %._crit_edge.i.i.i67

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit66
  %i.hm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #48 ; 2 uses
  store ptr %i.hm, ptr %14, align 8, !tbaa !79
  %i.hn = load i64, ptr %i.e, align 8, !tbaa !81
  store i64 %i.hn, ptr %i.hi, align 8, !tbaa !82
  br label %._crit_edge.i.i.i67

._crit_edge.i.i.i67:                              ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit66
  %i.ho = phi ptr [ %i.hm, %bb.an ], [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit66 ] ; 2 uses
  switch i64 %i.hk, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i67
  %i.hp = load i8, ptr %i.hj, align 1, !tbaa !82
  store i8 %i.hp, ptr %i.ho, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68

bb.ap:                                            ; preds = %._crit_edge.i.i.i67
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ho, ptr align 1 %i.hj, i64 %i.hk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68: ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i.i67
  %i.hq = load i64, ptr %i.e, align 8, !tbaa !81  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !80
  %i.hs = load ptr, ptr %14, align 8, !tbaa !79
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hq
  store i8 0, ptr %i.ht, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #48
  %i.hu = load ptr, ptr %14, align 8, !tbaa !79   ; 5 uses
  %i.hv = load i64, ptr %i.hr, align 8, !tbaa !80 ; 2 uses
  %.not1820.i.i69 = icmp samesign eq i64 %i.hv, 0
  br i1 %.not1820.i.i69, label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit82, label %.lr.ph.i.i70

.lr.ph.i.i70:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68, %bb.ar
  %i.hw = phi i64 [ %i.ie, %bb.ar ], [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68 ]
  %i.hx = phi ptr [ %i.if, %bb.ar ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68 ] ; 2 uses
  %.sroa.013.022.i.i71 = phi ptr [ %.sroa.013.1.i.i78, %bb.ar ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68 ] ; 5 uses
  %.sroa.010.021.i.i72 = phi ptr [ %i.ig, %bb.ar ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68 ] ; 2 uses
  %i.hy = load i8, ptr %.sroa.010.021.i.i72, align 1, !tbaa !82 ; 2 uses
  %i.hz = icmp ne i8 %i.hy, 47
  %i.ia = icmp eq ptr %.sroa.013.022.i.i71, %i.hx
  %or.cond.i73 = select i1 %i.hz, i1 true, i1 %i.ia
  br i1 %or.cond.i73, label %.sink.split.i.i75, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i70
  %i.ib = getelementptr inbounds i8, ptr %.sroa.013.022.i.i71, i64 -1
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !82
  %.not.i.i74 = icmp eq i8 %i.ic, 47
  br i1 %.not.i.i74, label %bb.ar, label %.sink.split.i.i75

.sink.split.i.i75:                                ; preds = %bb.aq, %.lr.ph.i.i70
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i71, i64 1
  store i8 %i.hy, ptr %.sroa.013.022.i.i71, align 1, !tbaa !82
  %.pre.i76 = load ptr, ptr %14, align 8, !tbaa !79
  %.pre2.i77 = load i64, ptr %i.hr, align 8, !tbaa !80
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split.i.i75, %bb.aq
  %i.ie = phi i64 [ %i.hw, %bb.aq ], [ %.pre2.i77, %.sink.split.i.i75 ] ; 2 uses
  %i.if = phi ptr [ %i.hx, %bb.aq ], [ %.pre.i76, %.sink.split.i.i75 ] ; 3 uses
  %.sroa.013.1.i.i78 = phi ptr [ %.sroa.013.022.i.i71, %bb.aq ], [ %i.id, %.sink.split.i.i75 ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i72, i64 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ie
  %.not18.i.i79 = icmp eq ptr %i.ig, %i.ih
  br i1 %.not18.i.i79, label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit82, label %.lr.ph.i.i70, !llvm.loop !7

_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit82: ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68
  %.sroa.013.0.lcssa.i.i80 = phi ptr [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68 ], [ %.sroa.013.1.i.i78, %bb.ar ]
  %.lcssa19.i.i81 = phi ptr [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i68 ], [ %i.if, %bb.ar ] ; 2 uses
  %i.ii = ptrtoint ptr %.sroa.013.0.lcssa.i.i80 to i64
  %i.ij = ptrtoint ptr %.lcssa19.i.i81 to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 2 uses
  store i64 %i.ik, ptr %i.hr, align 8, !tbaa !80
  %i.il = getelementptr inbounds nuw i8, ptr %.lcssa19.i.i81, i64 %i.ik
  store i8 0, ptr %i.il, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #48
  %i.im = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.im, ptr %17, align 8, !tbaa !76
  %i.in = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #48
  store i64 %i.in, ptr %i.d, align 8, !tbaa !81
  %i.io = icmp ugt i64 %i.in, 15
  br i1 %i.io, label %bb.as, label %._crit_edge.i.i83

bb.as:                                            ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit82
  %i.ip = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #48 ; 2 uses
  store ptr %i.ip, ptr %17, align 8, !tbaa !79
  %i.iq = load i64, ptr %i.d, align 8, !tbaa !81
  store i64 %i.iq, ptr %i.im, align 8, !tbaa !82
  br label %._crit_edge.i.i83

._crit_edge.i.i83:                                ; preds = %bb.as, %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit82
  %i.ir = phi ptr [ %i.ip, %bb.as ], [ %i.im, %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit82 ] ; 2 uses
  switch i64 %i.in, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit84
  ]

bb.at:                                            ; preds = %._crit_edge.i.i83
  %i.is = load i8, ptr %i.er, align 1, !tbaa !82
  store i8 %i.is, ptr %i.ir, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit84

bb.au:                                            ; preds = %._crit_edge.i.i83
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ir, ptr nonnull align 1 %i.er, i64 %i.in, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit84: ; preds = %._crit_edge.i.i83, %bb.at, %bb.au
  %i.it = load i64, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !80
  %i.iv = load ptr, ptr %17, align 8, !tbaa !79
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.it
  store i8 0, ptr %i.iw, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #48
  %i.ix = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.ix, ptr %16, align 8, !tbaa !76
  %i.iy = load ptr, ptr %17, align 8, !tbaa !79   ; 2 uses
  %i.iz = load i64, ptr %i.iu, align 8, !tbaa !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #48
  store i64 %i.iz, ptr %i.c, align 8, !tbaa !81
  %i.ja = icmp ugt i64 %i.iz, 15
  br i1 %i.ja, label %bb.av, label %._crit_edge.i.i.i85

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit84
  %i.jb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #48 ; 2 uses
  store ptr %i.jb, ptr %16, align 8, !tbaa !79
  %i.jc = load i64, ptr %i.c, align 8, !tbaa !81
  store i64 %i.jc, ptr %i.ix, align 8, !tbaa !82
  br label %._crit_edge.i.i.i85

._crit_edge.i.i.i85:                              ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit84
  %i.jd = phi ptr [ %i.jb, %bb.av ], [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit84 ] ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilterC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.not.i.i1.i.i83 = icmp eq ptr %i.je, null
  br i1 %.not.i.i1.i.i83, label %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit86, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i82
  %i.jf = load ptr, ptr %i.hs, align 16, !tbaa !263
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.ji) #49
  br label %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit86

_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit86: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i82, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN7testing8internal12_GLOBAL__N_114UnitTestFilterD2Ev.exit86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.not4.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.q, %bb.ad ] ; 3 uses
  %i.jj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !82
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #49
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jo, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %bb.ad
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !263
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = sub i64 %i.jr, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.js) #49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr %.0.val, i64 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !76, !alias.scope !1029
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !80, !alias.scope !1029
  store i8 0, ptr %i.a, align 8, !tbaa !82, !alias.scope !1029
  %i.c = add i64 %.8.val, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.c) #48
  %i.d = load i64, ptr %i.b, align 8, !tbaa !80, !alias.scope !1029
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %.8.val
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.a
  %i.g = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %.0.val, i64 noundef %.8.val) #48 ; 0 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !80, !alias.scope !1029
  %i.i = icmp eq i64 %i.h, 4611686018427387903
  br i1 %i.i, label %bb.c, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.40, i64 noundef 1) #48 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !80, !noalias !1030 ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !80, !noalias !1030
  %i.n = sub i64 4611686018427387903, %i.m
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50, !noalias !1030
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !79, !noalias !1030
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.p, i64 noundef %i.l) #48, !noalias !1030 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !76, !alias.scope !1030
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !79   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !80   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.s, ptr %2, align 8, !tbaa !79, !alias.scope !1030
  %i.z = load i64, ptr %i.t, align 8, !tbaa !82
  store i64 %i.z, ptr %i.r, align 8, !tbaa !82, !alias.scope !1030
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !80
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !80, !alias.scope !1030
  store ptr %i.t, ptr %i.q, align 8, !tbaa !79
  store i64 0, ptr %i.ab, align 8, !tbaa !80
  store i8 0, ptr %i.t, align 8, !tbaa !82
  %i.ad = call fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_114UnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.ad, label %bb.f, label %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.f:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = call fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_114UnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ag = xor i1 %i.af, true
  br label %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit, %bb.f
  %i.ah = phi i1 [ false, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit ], [ %i.ag, %bb.f ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !79    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.r
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !82
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  %i.am = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !82
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret i1 %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing32ScopedFakeTestPartResultReporterC2EPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 12), (16, 32)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !379
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !380
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) initializes((16, 24)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !379
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = tail call noundef ptr @_ZN7testing8internal12UnitTestImpl31GetGlobalTestPartResultReporterEv(ptr noundef nonnull align 8 dereferenceable(601) %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !381
  tail call void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %i.e, ptr noundef nonnull %0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !338
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !381
  %i.o = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  store ptr %0, ptr %i.o, align 8, !tbaa !338
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing32ScopedFakeTestPartResultReporterC2ENS0_13InterceptModeEPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 12), (16, 32)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !379
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.b, align 8, !tbaa !380
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN7testing8internal12UnitTestImpl31GetGlobalTestPartResultReporterEv(ptr noundef nonnull align 8 dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #48 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.449, i32 noundef 1650) #48
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.450, i64 noundef 27) #48 ; 0 uses
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.451, i64 noundef 18) #48 ; 0 uses
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.b
  %i.f = tail call i64 @pthread_self() #51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.f, ptr %i.g, align 8, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !382
  store i8 0, ptr %i.h, align 8, !tbaa !350
  %i.k = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #48 ; 2 uses
  %.not.i.i1 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i1, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.449, i32 noundef 1662) #48
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.452, i64 noundef 29) #48 ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.451, i64 noundef 18) #48 ; 0 uses
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.k) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, %bb.c
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #48 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.449, i32 noundef 1650) #48
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.450, i64 noundef 27) #48 ; 0 uses
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.451, i64 noundef 18) #48 ; 0 uses
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.b
  %i.f = tail call i64 @pthread_self() #51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.f, ptr %i.g, align 8, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.i, align 8, !tbaa !382
  store i8 0, ptr %i.h, align 8, !tbaa !350
  %i.j = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #48 ; 2 uses
  %.not.i.i2 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i2, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.449, i32 noundef 1662) #48
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.452, i64 noundef 29) #48 ; 0 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.451, i64 noundef 18) #48 ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.j) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing32ScopedFakeTestPartResultReporterD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !379
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !381  ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  tail call void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %i.e, ptr noundef %i.j)
  br label %bb.f

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.l = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  store ptr %i.j, ptr %i.l, align 8, !tbaa !338
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing32ScopedFakeTestPartResultReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporterD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing32ScopedFakeTestPartResultReporter20ReportTestPartResultERKNS_14TestPartResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !333  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !334
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !333
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.h, ptr %i.c, align 8, !tbaa !333
  br label %_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE.exit

_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #14 {
bb.a:
  ret ptr @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal20SingleFailureCheckerC2EPKNS_19TestPartResultArrayENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 12)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !384
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.b, align 8, !tbaa !385
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !76
  %i.e = load ptr, ptr %3, align 8, !tbaa !79     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.g, ptr %i.a, align 8, !tbaa !81
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !79
  %i.j = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.j, ptr %i.d, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !82
  store i8 %i.l, ptr %i.k, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !80
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal20SingleFailureCheckerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 6 uses
  %2 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.testing::Message", align 8  ; 6 uses
  %4 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 6 uses
  %6 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.testing::Message", align 8  ; 6 uses
  %8 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.testing::Message", align 8  ; 6 uses
  %10 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.testing::Message", align 8 ; 6 uses
  %12 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %13 = alloca %"class.testing::Message", align 8 ; 6 uses
  %14 = alloca %"class.testing::Message", align 8 ; 6 uses
  %15 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %16 = alloca %"class.testing::Message", align 8 ; 6 uses
  %17 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %18 = alloca %"class.testing::Message", align 8 ; 6 uses
  %19 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %20 = alloca %"class.testing::Message", align 8 ; 6 uses
  %21 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %22 = alloca %"class.testing::Message", align 8 ; 6 uses
  %23 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.testing::Message", align 8 ; 6 uses
  %26 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %27 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %28 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %29 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %30 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %31 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %33 = alloca %"class.testing::Message", align 8 ; 13 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 12 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %38 = alloca %"class.testing::Message", align 8 ; 5 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #48
  %i.b = load ptr, ptr %0, align 8, !tbaa !384    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !385  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #48, !noalias !1052
  %.not1.i = icmp eq i32 %i.d, 2                  ; 3 uses
  %i.f = select i1 %.not1.i, ptr @.str.441, ptr @.str.442
  %i.g = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 5 uses
  store ptr %i.g, ptr %32, align 8, !tbaa !76, !noalias !1052
  %i.h = select i1 %.not1.i, i64 15, i64 19       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48, !noalias !1052
  store i64 %i.h, ptr %i.a, align 8, !tbaa !81, !noalias !1052
  br i1 %.not1.i, label %._crit_edge.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48, !noalias !1052 ; 2 uses
  store ptr %i.i, ptr %32, align 8, !tbaa !79, !noalias !1052
  %i.j = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !1052
  store i64 %i.j, ptr %i.g, align 8, !tbaa !82, !noalias !1052
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.g, %bb.a ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.k, ptr noundef nonnull align 1 dereferenceable(15) %i.f, i64 %i.h, i1 false), !noalias !1052
  %i.l = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !1052 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !80, !noalias !1052
  %i.n = load ptr, ptr %32, align 8, !tbaa !79, !noalias !1052
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !82, !noalias !1052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48, !noalias !1052
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #48, !noalias !1052
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33) #48, !noalias !1052
end_hunk_11
begin_hunk_12_@_ZNK7testing10TestResult18HasNonfatalFailureEv:bb.a
  %i.ak = icmp eq <4 x i32> %i.ab, splat (i32 1)
  %i.al = icmp eq <4 x i32> %i.aj, splat (i32 1)
  %i.am = zext <4 x i1> %i.ak to <4 x i32>
  %i.an = zext <4 x i1> %i.al to <4 x i32>
  %i.ao = add <4 x i32> %vec.phi, %i.am           ; 2 uses
  %i.ap = add <4 x i32> %vec.phi2, %i.an          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1299

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit, label %.lr.ph.i.preheader10

.lr.ph.i.preheader10:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ar, %middle.block ]
  %.sroa.04.08.i.ph = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader10, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader10 ]
  %.sroa.04.08.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.sroa.04.08.i.ph, %.lr.ph.i.preheader10 ] ; 2 uses
  %i.as = load i32, ptr %.sroa.04.08.i, align 8, !tbaa !332
  %i.at = icmp eq i32 %i.as, 1
  %i.au = zext i1 %i.at to i32
  %spec.select.i = add nuw nsw i32 %.09.i, %i.au  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 112 ; 2 uses
  %.not.i = icmp eq ptr %i.av, %i.d
  br i1 %.not.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1300

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.ar, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.aw = icmp ne i32 %spec.select.i.lcssa, 0
  br label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit: ; preds = %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i1 [ false, %bb.a ], [ %i.aw, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit ]
  ret i1 %.0.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing4TestC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing4TestE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #47 ; 2 uses
  tail call void @_ZN7testing8internal14GTestFlagSaverC2Ev(ptr noundef nonnull align 8 dereferenceable(241) %i.b)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !435
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal14GTestFlagSaverC2Ev(ptr noundef nonnull align 8 dereferenceable(241) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !80
  store i8 0, ptr %i.b, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !80
  store i8 0, ptr %i.e, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.i, align 8, !tbaa !80
  store i8 0, ptr %i.h, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.l, align 8, !tbaa !80
  store i8 0, ptr %i.k, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.o, align 8, !tbaa !80
  store i8 0, ptr %i.n, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.r, align 8, !tbaa !80
  store i8 0, ptr %i.q, align 8, !tbaa !82
  %i.s = load i8, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !tbaa !83, !range !71, !noundef !72
  store i8 %i.s, ptr %0, align 8, !tbaa !437
  %i.t = load i8, ptr @_ZN7testing28FLAGS_gtest_break_on_failureE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !438
  %i.v = load i8, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.w, align 2, !tbaa !439
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing17FLAGS_gtest_colorB5cxx11E) #48
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E) #48
  %i.x = load i8, ptr @_ZN7testing31FLAGS_gtest_death_test_use_forkE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.x, ptr %i.y, align 8, !tbaa !440
  %i.z = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !441
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_filterB5cxx11E) #48
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing35FLAGS_gtest_internal_run_death_testB5cxx11E) #48
  %i.ab = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.ab, ptr %i.ac, align 8, !tbaa !442
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_outputB5cxx11E) #48
  %i.ad = load i8, ptr @_ZN7testing17FLAGS_gtest_briefE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !443
  %i.af = load i8, ptr @_ZN7testing22FLAGS_gtest_print_timeE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !444
  %i.ah = load i8, ptr @_ZN7testing22FLAGS_gtest_print_utf8E, align 1, !tbaa !83, !range !71, !noundef !72
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i8 %i.ah, ptr %i.ai, align 2, !tbaa !445
  %i.aj = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !97
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !446
  %i.al = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.al, ptr %i.am, align 8, !tbaa !447
  %i.an = load i8, ptr @_ZN7testing48FLAGS_gtest_recreate_environments_when_repeatingE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !448
  %i.ap = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 197
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !449
  %i.ar = load i32, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !97
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !450
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E) #48
  %i.at = load i8, ptr @_ZN7testing28FLAGS_gtest_throw_on_failureE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.at, ptr %i.au, align 8, !tbaa !451
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing4TestD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing4TestE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !435  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i

_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN7testing8internal14GTestFlagSaverD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %i.b) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 248) #49
  br label %_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN7testing4TestD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #30 align 2 {
bb.a:
  tail call void @llvm.trap() #50
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #31

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN7testing4Test5SetUpEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN7testing4Test8TearDownEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing4Test14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.testing::TestProperty", align 8 ; 8 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(601) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !82
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !82
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #49
  br label %_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit

_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.testing::TestProperty", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(601) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !82
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.i = load ptr, ptr %3, align 8, !tbaa !79     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN7testing12TestPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !82
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #49
  br label %_ZN7testing12TestPropertyD2Ev.exit

_ZN7testing12TestPropertyD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !80
  store i8 0, ptr %i.e, align 8, !tbaa !82
  call void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i32 noundef %0, ptr noundef null, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.i = load i64, ptr %i.e, align 8, !tbaa !82
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7testing4Test19HasSameFixtureClassEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %1 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %2 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %5 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %6 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %13 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %14 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %15 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %16 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %17 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %18 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %19 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %20 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %21 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %22 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %23 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %24 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %25 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %26 = alloca %"class.testing::Message", align 8 ; 18 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 5 uses
  %28 = alloca %"class.testing::Message", align 8 ; 18 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 5 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !387
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !414
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !407  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !452  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !194  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !452  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !79   ; 5 uses
  %.not = icmp eq ptr %i.r, %i.l                  ; 2 uses
  br i1 %.not, label %bb.q, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.u = icmp eq ptr %i.l, @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E ; 3 uses
  %i.v = icmp eq ptr %i.r, @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E
  %or.cond = or i1 %i.u, %i.v
  br i1 %or.cond, label %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit, label %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit43

_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit:       ; preds = %bb.d
  %i.w = select i1 %i.u, ptr %i.n, ptr %i.t       ; 3 uses
  %i.x = select i1 %i.u, ptr %i.t, ptr %i.n       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #48
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26) #48
  %i.y = load ptr, ptr %26, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #48
  %i.aa = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !90
  %i.ab = getelementptr inbounds nuw i8, ptr %25, i64 40
  store i8 0, ptr %i.ab, align 8, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %25, i64 44
  store i32 1, ptr %i.ac, align 4, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %25, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %25, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %25, i64 48
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !96
  %i.af = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str.190, i64 noundef 64) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %25) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #48
  %i.ag = load ptr, ptr %26, align 8, !tbaa !86
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #48
  %i.ai = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 0, ptr %i.ai, align 8, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i8 0, ptr %i.aj, align 8, !tbaa !91
  %i.ak = getelementptr inbounds nuw i8, ptr %24, i64 44
  store i32 1, ptr %i.ak, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %24, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %24, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %24, i64 48
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !96
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull @.str.191, i64 noundef 59) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %24) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #48
  %i.ao = load ptr, ptr %26, align 8, !tbaa !86
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #48
  %i.aq = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 0, ptr %i.aq, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw i8, ptr %23, i64 40
  store i8 0, ptr %i.ar, align 8, !tbaa !91
  %i.as = getelementptr inbounds nuw i8, ptr %23, i64 44
  store i32 1, ptr %i.as, align 4, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %23, align 8, !tbaa !94
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 48
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !96
  %i.av = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str.192, i64 noundef 24) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %23) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #48
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !79  ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = load ptr, ptr %26, align 8, !tbaa !86
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  br i1 %i.ax, label %bb.e, label %_ZN4llvm9StringRefC2EPKc.exit.i.i.i

bb.e:                                             ; preds = %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.186, i64 noundef 6) #48 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit

_ZN4llvm9StringRefC2EPKc.exit.i.i.i:              ; preds = %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #48
  %i.bb = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 0, ptr %i.bb, align 8, !tbaa !90
  %i.bc = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i8 0, ptr %i.bc, align 8, !tbaa !91
  %i.bd = getelementptr inbounds nuw i8, ptr %22, i64 44
  store i32 1, ptr %i.bd, align 4, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %22, align 8, !tbaa !94
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 48
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !96
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #48 ; 2 uses
  %.not.i.i23 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i23, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.i
  %i.bh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull %i.aw, i64 noundef %i.bg) #48 ; 0 uses
  br label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i: ; preds = %bb.f, %_ZN4llvm9StringRefC2EPKc.exit.i.i.i
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #48
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %bb.e, %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i
  %i.bi = load ptr, ptr %26, align 8, !tbaa !86
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #48
  %i.bk = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 0, ptr %i.bk, align 8, !tbaa !90
  %i.bl = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i8 0, ptr %i.bl, align 8, !tbaa !91
  %i.bm = getelementptr inbounds nuw i8, ptr %21, i64 44
  store i32 1, ptr %i.bm, align 4, !tbaa !92
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %21, align 8, !tbaa !94
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 48
  store ptr %i.bj, ptr %i.bo, align 8, !tbaa !96
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.173, i64 noundef 2) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %21) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #48
  %i.bq = load ptr, ptr %26, align 8, !tbaa !86
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #48
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 0, ptr %i.bs, align 8, !tbaa !90
  %i.bt = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i8 0, ptr %i.bt, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw i8, ptr %20, i64 44
  store i32 1, ptr %i.bu, align 4, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %20, align 8, !tbaa !94
  %i.bw = getelementptr inbounds nuw i8, ptr %20, i64 48
  store ptr %i.br, ptr %i.bw, align 8, !tbaa !96
  %i.bx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str.193, i64 noundef 5) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %20) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #48
  %i.by = icmp eq ptr %i.x, null
  %i.bz = load ptr, ptr %26, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  br i1 %i.by, label %bb.g, label %_ZN4llvm9StringRefC2EPKc.exit.i.i.i26

bb.g:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.186, i64 noundef 6) #48 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit29

_ZN4llvm9StringRefC2EPKc.exit.i.i.i26:            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #48
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 0, ptr %i.cc, align 8, !tbaa !90
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i8 0, ptr %i.cd, align 8, !tbaa !91
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 44
  store i32 1, ptr %i.ce, align 4, !tbaa !92
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %19, align 8, !tbaa !94
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr %i.ca, ptr %i.cg, align 8, !tbaa !96
  %i.ch = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #48 ; 2 uses
  %.not.i.i27 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i27, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i28, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.i26
  %i.ci = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull %i.x, i64 noundef %i.ch) #48 ; 0 uses
  br label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i28

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i28: ; preds = %bb.h, %_ZN4llvm9StringRefC2EPKc.exit.i.i.i26
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %19) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #48
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit29

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit29:       ; preds = %bb.g, %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i28
  %i.cj = load ptr, ptr %26, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #48
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %i.cl, align 8, !tbaa !90
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i8 0, ptr %i.cm, align 8, !tbaa !91
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 44
end_hunk_12
begin_hunk_13_@_ZN7testing4Test19HasSameFixtureClassEv:bb.a
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.gq, ptr %i.gv, align 8, !tbaa !96
  %i.gw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.201, i64 noundef 10) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  %i.gx = icmp eq ptr %i.t, null
  %i.gy = load ptr, ptr %28, align 8, !tbaa !86
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  br i1 %i.gx, label %bb.o, label %_ZN4llvm9StringRefC2EPKc.exit.i.i.i57

bb.o:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit55
  %i.ha = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.186, i64 noundef 6) #48 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit60

_ZN4llvm9StringRefC2EPKc.exit.i.i.i57:            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.hb, align 8, !tbaa !90
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.hc, align 8, !tbaa !91
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.hd, align 4, !tbaa !92
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %5, align 8, !tbaa !94
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.gz, ptr %i.hf, align 8, !tbaa !96
  %i.hg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #48 ; 2 uses
  %.not.i.i58 = icmp eq i64 %i.hg, 0
  br i1 %.not.i.i58, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i59, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.i57
  %i.hh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.t, i64 noundef %i.hg) #48 ; 0 uses
  br label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i59

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i59: ; preds = %bb.p, %_ZN4llvm9StringRefC2EPKc.exit.i.i.i57
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit60

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit60:       ; preds = %bb.o, %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i59
  %i.hi = load ptr, ptr %28, align 8, !tbaa !86
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.hk, align 8, !tbaa !90
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.hl, align 8, !tbaa !91
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.hm, align 4, !tbaa !92
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %4, align 8, !tbaa !94
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.hj, ptr %i.ho, align 8, !tbaa !96
  %i.hp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.20, i64 noundef 1) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  %i.hq = load ptr, ptr %28, align 8, !tbaa !86
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.hs, align 8, !tbaa !90
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.ht, align 8, !tbaa !91
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.hu, align 4, !tbaa !92
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %3, align 8, !tbaa !94
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.hr, ptr %i.hw, align 8, !tbaa !96
  %i.hx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.202, i64 noundef 62) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %i.hy = load ptr, ptr %28, align 8, !tbaa !86
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ia, align 8, !tbaa !90
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.ib, align 8, !tbaa !91
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.ic, align 4, !tbaa !92
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !94
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.hz, ptr %i.ie, align 8, !tbaa !96
  %i.if = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.203, i64 noundef 61) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.ig = load ptr, ptr %28, align 8, !tbaa !86
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.ii, align 8, !tbaa !90
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.ij, align 8, !tbaa !91
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 1, ptr %i.ik, align 4, !tbaa !92
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.il, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %1, align 8, !tbaa !94
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ih, ptr %i.im, align 8, !tbaa !96
  %i.in = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.204, i64 noundef 62) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  %i.io = load ptr, ptr %28, align 8, !tbaa !86
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #48
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.iq, align 8, !tbaa !90
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.ir, align 8, !tbaa !91
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.is, align 4, !tbaa !92
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.it, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %0, align 8, !tbaa !94
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ip, ptr %i.iu, align 8, !tbaa !96
  %i.iv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.205, i64 noundef 59) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #48
  call void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 1, ptr noundef nonnull @.str.135, i32 noundef 2549, ptr noundef nonnull @.str.198) #48
  call void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #48
  %i.iw = load ptr, ptr %28, align 8, !tbaa !86   ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i69, label %_ZN7testing7MessageD2Ev.exit71, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit60
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !94
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(128) %i.iw) #48, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit71

_ZN7testing7MessageD2Ev.exit71:                   ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #48
  br label %bb.q

bb.q:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %_ZN7testing7MessageD2Ev.exit, %_ZN7testing7MessageD2Ev.exit71
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing7MessagelsIA18_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(18) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.b, ptr %i.g, align 8, !tbaa !96
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48 ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA18_cEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %1, i64 noundef %i.h) #48 ; 0 uses
  br label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA18_cEE.exit

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA18_cEE.exit: ; preds = %bb.a, %bb.b
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing4Test3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7testing4Test19HasSameFixtureClassEv()
  br i1 %i.a, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.e = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 528 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !358  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !94
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #47 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.j, align 8, !tbaa !94
  store ptr %i.j, ptr %i.g, align 8, !tbaa !358
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.e
  %i.k = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.e ], [ %.pre, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.l = phi ptr [ %i.j, %bb.e ], [ %i.h, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #48
  %i.o = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.f, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit, !prof !98

bb.f:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.r = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit, %bb.f, %bb.g
  %.pn = load ptr, ptr %0, align 8, !tbaa !94
  %.sink.i.in = getelementptr i8, ptr %.pn, i64 16
  %.sink.i = load ptr, ptr %.sink.i.in, align 8, !nosanitize !72
  tail call void %.sink.i(ptr noundef nonnull align 8 dereferenceable(16) %0) #48, !inline_history !1301
  %i.s = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.h, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i8, !prof !98

bb.h:                                             ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit
  %i.u = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i10 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i10, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i8, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.v = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i8

_ZN7testing8internal15GetUnitTestImplEv.exit.i8:  ; preds = %bb.i, %bb.h, %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !194  ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.y, null
  br i1 %.not.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

bb.k:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !387 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i = phi ptr [ %i.z, %bb.j ], [ %i.ac, %bb.l ], [ %i.ad, %bb.m ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !433 ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !433 ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not7.i.i.i, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = ptrtoaddr ptr %i.af to i64
  %i.ak = add i64 %i.ai, -112
  %i.al = sub i64 %i.ak, %i.aj                    ; 2 uses
  %i.am = udiv i64 %i.al, 112
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.an, 576460752303423480      ; 3 uses
  %i.ao = mul i64 %n.vec, 112
  %i.ap = getelementptr i8, ptr %i.af, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %vec.phi32 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bt, %vector.body ]
  %i.aq = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.aq
  %i.ar = getelementptr i8, ptr %i.af, i64 %i.aq
  %next.gep33 = getelementptr i8, ptr %i.ar, i64 112
  %i.as = getelementptr i8, ptr %i.af, i64 %i.aq
  %next.gep34 = getelementptr i8, ptr %i.as, i64 224
  %i.at = getelementptr i8, ptr %i.af, i64 %i.aq
  %next.gep35 = getelementptr i8, ptr %i.at, i64 336
  %i.au = getelementptr i8, ptr %i.af, i64 %i.aq
  %next.gep36 = getelementptr i8, ptr %i.au, i64 448
  %i.av = getelementptr i8, ptr %i.af, i64 %i.aq
  %next.gep37 = getelementptr i8, ptr %i.av, i64 560
  %i.aw = getelementptr i8, ptr %i.af, i64 %i.aq
  %next.gep38 = getelementptr i8, ptr %i.aw, i64 672
  %i.ax = getelementptr i8, ptr %i.af, i64 %i.aq
  %next.gep39 = getelementptr i8, ptr %i.ax, i64 784
  %i.ay = load i32, ptr %next.gep, align 8, !tbaa !332
  %i.az = load i32, ptr %next.gep33, align 8, !tbaa !332
  %i.ba = load i32, ptr %next.gep34, align 8, !tbaa !332
  %i.bb = load i32, ptr %next.gep35, align 8, !tbaa !332
  %i.bc = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %i.bd = insertelement <4 x i32> %i.bc, i32 %i.az, i64 1
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 2
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 3
  %i.bg = load i32, ptr %next.gep36, align 8, !tbaa !332
  %i.bh = load i32, ptr %next.gep37, align 8, !tbaa !332
  %i.bi = load i32, ptr %next.gep38, align 8, !tbaa !332
  %i.bj = load i32, ptr %next.gep39, align 8, !tbaa !332
  %i.bk = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 1
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 2
  %i.bn = insertelement <4 x i32> %i.bm, i32 %i.bj, i64 3
  %i.bo = icmp eq <4 x i32> %i.bf, splat (i32 2)
  %i.bp = icmp eq <4 x i32> %i.bn, splat (i32 2)
  %i.bq = zext <4 x i1> %i.bo to <4 x i32>
  %i.br = zext <4 x i1> %i.bp to <4 x i32>
  %i.bs = add <4 x i32> %vec.phi, %i.bq           ; 2 uses
  %i.bt = add <4 x i32> %vec.phi32, %i.br         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !1302

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bt, %i.bs
  %i.bv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i.preheader40

.lr.ph.i.i.i.preheader40:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader40, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader40 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i.i.i.preheader40 ] ; 2 uses
  %i.bw = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !332
  %i.bx = icmp eq i32 %i.bw, 2
  %i.by = zext i1 %i.bx to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.by ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bz, %i.ah
  br i1 %.not.i.i1.i, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1303

_ZN7testing4Test15HasFatalFailureEv.exit:         ; preds = %.lr.ph.i.i.i, %middle.block
  %spec.select.i.i.i.lcssa = phi i32 [ %i.bv, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.not = icmp eq i32 %spec.select.i.i.i.lcssa, 0
  br i1 %.not, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %bb.r

_ZN7testing4Test15HasFatalFailureEv.exit.thread:  ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i, %_ZN7testing4Test15HasFatalFailureEv.exit
  %i.ca = tail call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.ca, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.thread
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !358 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.o, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit11_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit11_crit_edge: ; preds = %bb.n
  %.pre24 = load ptr, ptr %i.cb, align 8, !tbaa !94
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit11

bb.o:                                             ; preds = %bb.n
  %i.cd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #47 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.cd, align 8, !tbaa !94
  store ptr %i.cd, ptr %i.g, align 8, !tbaa !358
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit11

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit11: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit11_crit_edge, %bb.o
  %i.ce = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.o ], [ %.pre24, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit11_crit_edge ]
  %i.cf = phi ptr [ %i.cd, %bb.o ], [ %i.cb, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit11_crit_edge ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) #48
  %i.ci = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.p, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit15, !prof !98

bb.p:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit11
  %i.ck = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i14 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i14, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit15, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.cl = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit15

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit15: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit11, %bb.p, %bb.q
  %.pn22 = load ptr, ptr %0, align 8, !tbaa !94
  %.sink.i13.in = getelementptr i8, ptr %.pn22, i64 32
  %.sink.i13 = load ptr, ptr %.sink.i13.in, align 8, !nosanitize !72
  tail call void %.sink.i13(ptr noundef nonnull align 8 dereferenceable(16) %0) #48, !inline_history !1301
  br label %bb.r

bb.r:                                             ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit15, %_ZN7testing4Test15HasFatalFailureEv.exit.thread, %_ZN7testing4Test15HasFatalFailureEv.exit
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !358 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.s, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16_crit_edge: ; preds = %bb.r
  %.pre25 = load ptr, ptr %i.cm, align 8, !tbaa !94
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16

bb.s:                                             ; preds = %bb.r
  %i.co = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #47 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.co, align 8, !tbaa !94
  store ptr %i.co, ptr %i.g, align 8, !tbaa !358
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16_crit_edge, %bb.s
  %i.cp = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.s ], [ %.pre25, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16_crit_edge ]
  %i.cq = phi ptr [ %i.co, %bb.s ], [ %i.cm, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16_crit_edge ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #48
  %i.ct = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit20, !prof !98

bb.t:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16
  %i.cv = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i19 = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i19, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit20, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.cw = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit20

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit20: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16, %bb.t, %bb.u
  %.pn23 = load ptr, ptr %0, align 8, !tbaa !94
  %.sink.i18.in = getelementptr i8, ptr %.pn23, i64 24
  %.sink.i18 = load ptr, ptr %.sink.i18.in, align 8, !nosanitize !72
  tail call void %.sink.i18(ptr noundef nonnull align 8 dereferenceable(16) %0) #48, !inline_history !1301
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !387  ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.h, %bb.d ], [ %i.k, %bb.f ], [ %i.l, %bb.g ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !433  ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !433  ; 3 uses
  %.not7.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult15HasFatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = ptrtoaddr ptr %i.n to i64
  %i.s = add i64 %i.q, -112
  %i.t = sub i64 %i.s, %i.r                       ; 2 uses
  %i.u = udiv i64 %i.t, 112
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.v, 576460752303423480       ; 3 uses
  %i.w = mul i64 %n.vec, 112
  %i.x = getelementptr i8, ptr %i.n, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.y = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.y
  %i.z = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep6 = getelementptr i8, ptr %i.z, i64 112
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep7 = getelementptr i8, ptr %i.aa, i64 224
  %i.ab = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep8 = getelementptr i8, ptr %i.ab, i64 336
  %i.ac = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep9 = getelementptr i8, ptr %i.ac, i64 448
  %i.ad = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep10 = getelementptr i8, ptr %i.ad, i64 560
  %i.ae = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 672
  %i.af = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep12 = getelementptr i8, ptr %i.af, i64 784
  %i.ag = load i32, ptr %next.gep, align 8, !tbaa !332
  %i.ah = load i32, ptr %next.gep6, align 8, !tbaa !332
  %i.ai = load i32, ptr %next.gep7, align 8, !tbaa !332
  %i.aj = load i32, ptr %next.gep8, align 8, !tbaa !332
  %i.ak = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 1
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 2
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 3
  %i.ao = load i32, ptr %next.gep9, align 8, !tbaa !332
  %i.ap = load i32, ptr %next.gep10, align 8, !tbaa !332
  %i.aq = load i32, ptr %next.gep11, align 8, !tbaa !332
  %i.ar = load i32, ptr %next.gep12, align 8, !tbaa !332
  %i.as = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 1
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 2
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 3
  %i.aw = icmp eq <4 x i32> %i.an, splat (i32 2)
  %i.ax = icmp eq <4 x i32> %i.av, splat (i32 2)
  %i.ay = zext <4 x i1> %i.aw to <4 x i32>
  %i.az = zext <4 x i1> %i.ax to <4 x i32>
  %i.ba = add <4 x i32> %vec.phi, %i.ay           ; 2 uses
  %i.bb = add <4 x i32> %vec.phi5, %i.az          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1304

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader13

.lr.ph.i.i.preheader13:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bd, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader13, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader13 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i.i.preheader13 ] ; 2 uses
  %i.be = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !332
  %i.bf = icmp eq i32 %i.be, 2
  %i.bg = zext i1 %i.bf to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bg ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bh, %i.p
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1305

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.bd, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bi = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult15HasFatalFailureEv.exit

_ZNK7testing10TestResult15HasFatalFailureEv.exit: ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ], [ %i.bi, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !387  ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.h, %bb.d ], [ %i.k, %bb.f ], [ %i.l, %bb.g ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !333  ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !335  ; 13 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 112                 ; 5 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader.i.i, label %.loopexit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %wide.trip.count.i.i = and i64 %i.t, 2147483647
  br label %.lr.ph.i.i

bb.h:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !23

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.t
  br i1 %exitcond.not.i.i, label %bb.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.544, i64 noundef %i.t, i64 noundef %i.t) #50
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw [112 x i8], ptr %i.p, i64 %indvars.iv.i.i
  %i.x = load i32, ptr %i.w, align 8, !tbaa !332
  %i.y = add i32 %i.x, -1
  %spec.select.i.i.i = icmp ult i32 %i.y, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit, label %bb.h

.loopexit.i:                                      ; preds = %bb.h, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %.not7.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %i.z = add i64 %i.q, -112
  %i.aa = sub i64 %i.z, %i.r                      ; 2 uses
  %i.ab = udiv i64 %i.aa, 112
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.ac, 576460752303423480      ; 3 uses
  %i.ad = mul i64 %n.vec, 112
  %i.ae = getelementptr i8, ptr %i.p, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.af = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep7 = getelementptr i8, ptr %i.ag, i64 112
  %i.ah = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep8 = getelementptr i8, ptr %i.ah, i64 224
  %i.ai = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep9 = getelementptr i8, ptr %i.ai, i64 336
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep10 = getelementptr i8, ptr %i.aj, i64 448
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep11 = getelementptr i8, ptr %i.ak, i64 560
  %i.al = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep12 = getelementptr i8, ptr %i.al, i64 672
  %i.am = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep13 = getelementptr i8, ptr %i.am, i64 784
  %i.an = load i32, ptr %next.gep, align 8, !tbaa !332
  %i.ao = load i32, ptr %next.gep7, align 8, !tbaa !332
  %i.ap = load i32, ptr %next.gep8, align 8, !tbaa !332
  %i.aq = load i32, ptr %next.gep9, align 8, !tbaa !332
  %i.ar = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 1
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 2
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 3
  %i.av = load i32, ptr %next.gep10, align 8, !tbaa !332
  %i.aw = load i32, ptr %next.gep11, align 8, !tbaa !332
  %i.ax = load i32, ptr %next.gep12, align 8, !tbaa !332
  %i.ay = load i32, ptr %next.gep13, align 8, !tbaa !332
  %i.az = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 1
  %i.bb = insertelement <4 x i32> %i.ba, i32 %i.ax, i64 2
  %i.bc = insertelement <4 x i32> %i.bb, i32 %i.ay, i64 3
  %i.bd = icmp eq <4 x i32> %i.au, splat (i32 3)
  %i.be = icmp eq <4 x i32> %i.bc, splat (i32 3)
  %i.bf = zext <4 x i1> %i.bd to <4 x i32>
  %i.bg = zext <4 x i1> %i.be to <4 x i32>
  %i.bh = add <4 x i32> %vec.phi, %i.bf           ; 2 uses
  %i.bi = add <4 x i32> %vec.phi6, %i.bg          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1306

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i.preheader14

.lr.ph.i1.i.preheader14:                          ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.bk, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.p, %.lr.ph.i1.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader14, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader14 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bo, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader14 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !332
  %i.bm = icmp eq i32 %i.bl, 3
  %i.bn = zext i1 %i.bm to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bn ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bo, %i.o
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !1307

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.bk, %middle.block ], [ %spec.select.i.i, %.lr.ph.i1.i ]
  %i.bp = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult7SkippedEv.exit

_ZNK7testing10TestResult7SkippedEv.exit:          ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %.loopexit.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %i.bq = phi i1 [ %i.bp, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ]
  ret i1 %i.bq
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7testing4Test18HasNonfatalFailureEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !387  ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.h, %bb.d ], [ %i.k, %bb.f ], [ %i.l, %bb.g ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !433  ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !433  ; 3 uses
  %.not7.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = ptrtoaddr ptr %i.n to i64
  %i.s = add i64 %i.q, -112
  %i.t = sub i64 %i.s, %i.r                       ; 2 uses
  %i.u = udiv i64 %i.t, 112
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.v, 576460752303423480       ; 3 uses
  %i.w = mul i64 %n.vec, 112
  %i.x = getelementptr i8, ptr %i.n, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.y = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.y
  %i.z = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep6 = getelementptr i8, ptr %i.z, i64 112
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep7 = getelementptr i8, ptr %i.aa, i64 224
  %i.ab = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep8 = getelementptr i8, ptr %i.ab, i64 336
  %i.ac = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep9 = getelementptr i8, ptr %i.ac, i64 448
  %i.ad = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep10 = getelementptr i8, ptr %i.ad, i64 560
  %i.ae = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep11 = getelementptr i8, ptr %i.ae, i64 672
  %i.af = getelementptr i8, ptr %i.n, i64 %i.y
  %next.gep12 = getelementptr i8, ptr %i.af, i64 784
  %i.ag = load i32, ptr %next.gep, align 8, !tbaa !332
  %i.ah = load i32, ptr %next.gep6, align 8, !tbaa !332
  %i.ai = load i32, ptr %next.gep7, align 8, !tbaa !332
  %i.aj = load i32, ptr %next.gep8, align 8, !tbaa !332
  %i.ak = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 1
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 2
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 3
  %i.ao = load i32, ptr %next.gep9, align 8, !tbaa !332
  %i.ap = load i32, ptr %next.gep10, align 8, !tbaa !332
  %i.aq = load i32, ptr %next.gep11, align 8, !tbaa !332
  %i.ar = load i32, ptr %next.gep12, align 8, !tbaa !332
  %i.as = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 1
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 2
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 3
  %i.aw = icmp eq <4 x i32> %i.an, splat (i32 1)
  %i.ax = icmp eq <4 x i32> %i.av, splat (i32 1)
  %i.ay = zext <4 x i1> %i.aw to <4 x i32>
  %i.az = zext <4 x i1> %i.ax to <4 x i32>
  %i.ba = add <4 x i32> %vec.phi, %i.ay           ; 2 uses
  %i.bb = add <4 x i32> %vec.phi5, %i.az          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1308

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader13

.lr.ph.i.i.preheader13:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bd, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader13, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader13 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i.i.preheader13 ] ; 2 uses
  %i.be = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !332
  %i.bf = icmp eq i32 %i.be, 1
  %i.bg = zext i1 %i.bf to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bg ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bh, %i.p
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1309

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.bd, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bi = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit

_ZNK7testing10TestResult18HasNonfatalFailureEv.exit: ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ], [ %i.bi, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8TestInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKcSA_NS_8internal12CodeLocationEPKvPNSB_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly align 8 captures(none) dereferenceable(40) %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !76
  %i.g = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #48
  store i64 %i.i, ptr %i.e, align 8, !tbaa !81
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #48 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !79
  %i.l = load i64, ptr %i.e, align 8, !tbaa !81
  store i64 %i.l, ptr %i.f, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !82
  store i8 %i.n, ptr %i.m, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !80
  %i.q = load ptr, ptr %0, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !80   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #48
  store i64 %i.v, ptr %i.d, align 8, !tbaa !81
  %i.y = icmp ugt i64 %i.v, 15
  br i1 %i.y, label %bb.e, label %._crit_edge.i.i27

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #48 ; 2 uses
  store ptr %i.z, ptr %i.s, align 8, !tbaa !79
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !81
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !82
  br label %._crit_edge.i.i27

end_hunk_13
begin_hunk_14_@_ZN7testing8TestInfoD2Ev:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly align 8 captures(none) dereferenceable(40) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.e, ptr %9, align 8, !tbaa !76
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #48
  store i64 %i.g, ptr %i.c, align 8, !tbaa !81
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #48 ; 2 uses
  store ptr %i.i, ptr %9, align 8, !tbaa !79
  %i.j = load i64, ptr %i.c, align 8, !tbaa !81
  store i64 %i.j, ptr %i.e, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.i, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %0, align 1, !tbaa !82
  store i8 %i.l, ptr %i.k, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %0, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.m = load i64, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !80
  %i.o = load ptr, ptr %9, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.q, ptr %10, align 8, !tbaa !76
  %i.r = icmp eq ptr %1, null
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  store i64 %i.s, ptr %i.b, align 8, !tbaa !81
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.i, label %._crit_edge.i.i10

bb.i:                                             ; preds = %bb.h
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #48 ; 2 uses
  store ptr %i.u, ptr %10, align 8, !tbaa !79
  %i.v = load i64, ptr %i.b, align 8, !tbaa !81
  store i64 %i.v, ptr %i.q, align 8, !tbaa !82
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %bb.i, %bb.h
  %i.w = phi ptr [ %i.u, %bb.i ], [ %i.q, %bb.h ] ; 2 uses
  switch i64 %i.s, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit11
  ]

bb.j:                                             ; preds = %._crit_edge.i.i10
  %i.x = load i8, ptr %1, align 1, !tbaa !82
  store i8 %i.x, ptr %i.w, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit11

bb.k:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %1, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit11: ; preds = %._crit_edge.i.i10, %bb.j, %bb.k
  %i.y = load i64, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !80
  %i.aa = load ptr, ptr %10, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.ac, ptr %11, align 8, !tbaa !76
  %i.ad = load ptr, ptr %4, align 8, !tbaa !79    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.af, ptr %i.a, align 8, !tbaa !81
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %bb.l, label %._crit_edge.i.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit11
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.ah, ptr %11, align 8, !tbaa !79
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !82
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit11
  %i.aj = phi ptr [ %i.ah, %bb.l ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit11 ] ; 2 uses
  switch i64 %i.af, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !82
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !82
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

_ZN7testing8internal12CodeLocationC2ERKS1_.exit:  ; preds = %._crit_edge.i.i.i, %bb.m, %bb.n
  %i.al = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !80
  %i.an = load ptr, ptr %11, align 8, !tbaa !79
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !341
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !341
  call void @_ZN7testing8TestInfoC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKcSA_NS_8internal12CodeLocationEPKvPNSB_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %5, ptr noundef %8) #48
  %i.as = load ptr, ptr %11, align 8, !tbaa !79   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ac
  br i1 %i.at, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !82
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #49
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %_ZN7testing8internal12CodeLocationC2ERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aw = load ptr, ptr %10, align 8, !tbaa !79   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !82
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  %i.ba = load ptr, ptr %9, align 8, !tbaa !79    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.e
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !82
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  %i.be = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.o, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.bh = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.o, %bb.p
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  call void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(601) %i.bi, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.d)
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.testing::internal::FilePath", align 8 ; 6 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @_ZN7testing8internal8FilePath13GetCurrentDirEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %4)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4) #48
  %i.e = load ptr, ptr %4, align 8, !tbaa !79     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN7testing8internal8FilePathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !82
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #49
  br label %_ZN7testing8internal8FilePathD2Ev.exit

_ZN7testing8internal8FilePathD2Ev.exit:           ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  %i.j = load i64, ptr %i.a, align 8, !tbaa !80
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN7testing8internal8FilePathD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.465, i32 noundef 685) #48
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.466, i64 noundef 51) #48 ; 0 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.467, i64 noundef 44) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN7testing8internal8FilePathD2Ev.exit, %bb.a
  %i.m = load ptr, ptr %3, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNK7testing8TestInfo10type_paramEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79
  br label %_ZNK7testing8TestInfo10type_paramEv.exit

_ZNK7testing8TestInfo10type_paramEv.exit:         ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ]
  %i.q = call noundef ptr @_ZN7testing8internal12UnitTestImpl12GetTestSuiteEPKcS3_PFvvES5_(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef %i.m, ptr noundef %.0.i, ptr noundef %1, ptr noundef %2)
  call void @_ZN7testing9TestSuite11AddTestInfoEPNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(264) %i.q, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal26ReportInvalidTestSuiteTypeEPKcNS0_12CodeLocationE(ptr noundef %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 {
_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit:
  %2 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %5 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %6 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %13 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %14 = alloca %"class.testing::Message", align 8 ; 17 uses
  %15 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #48
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #48
  %i.a = load ptr, ptr %14, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #48
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %13, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %i.b, ptr %i.g, align 8, !tbaa !96
  %i.h = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.209, i64 noundef 37) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #48
  %i.i = icmp eq ptr %0, null                     ; 2 uses
  %i.j = load ptr, ptr %14, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.i, label %bb.a, label %_ZN4llvm9StringRefC2EPKc.exit.i.i.i

bb.a:                                             ; preds = %_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.186, i64 noundef 6) #48 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit

_ZN4llvm9StringRefC2EPKc.exit.i.i.i:              ; preds = %_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #48
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %i.m, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i8 0, ptr %i.n, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 1, ptr %i.o, align 4, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %12, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %i.k, ptr %i.q, align 8, !tbaa !96
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48 ; 2 uses
  %.not.i.i1 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i1, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.i
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull %0, i64 noundef %i.r) #48 ; 0 uses
  br label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i: ; preds = %bb.b, %_ZN4llvm9StringRefC2EPKc.exit.i.i.i
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #48
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %bb.a, %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i
  %i.t = load ptr, ptr %14, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #48
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i8 0, ptr %i.w, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 1, ptr %i.x, align 4, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %11, align 8, !tbaa !94
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.u, ptr %i.z, align 8, !tbaa !96
  %i.aa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.93, i64 noundef 2) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48
  %i.ab = load ptr, ptr %14, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.ad, align 8, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i8 0, ptr %i.ae, align 8, !tbaa !91
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 1, ptr %i.af, align 4, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %10, align 8, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.ac, ptr %i.ah, align 8, !tbaa !96
  %i.ai = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str.190, i64 noundef 64) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  %i.aj = load ptr, ptr %14, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.al, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.am, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 1, ptr %i.an, align 4, !tbaa !92
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %9, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !96
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.199, i64 noundef 31) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  %i.ar = load ptr, ptr %14, align 8, !tbaa !86
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZN4llvm9StringRefC2EPKc.exit.i.i.i5

bb.c:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.186, i64 noundef 6) #48 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit8
end_hunk_14
begin_hunk_15_@_ZN7testing8internal26ReportInvalidTestSuiteTypeEPKcNS0_12CodeLocationE:_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  %i.bj = load ptr, ptr %14, align 8, !tbaa !86
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.bl, align 8, !tbaa !90
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.bm, align 8, !tbaa !91
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.bn, align 4, !tbaa !92
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %6, align 8, !tbaa !94
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.bk, ptr %i.bp, align 8, !tbaa !96
  %i.bq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.211, i64 noundef 62) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  %i.br = load ptr, ptr %14, align 8, !tbaa !86
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.bt, align 8, !tbaa !90
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.bu, align 8, !tbaa !91
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.bv, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %5, align 8, !tbaa !94
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.bs, ptr %i.bx, align 8, !tbaa !96
  %i.by = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.212, i64 noundef 61) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bz = load ptr, ptr %14, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.cb, align 8, !tbaa !90
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.cc, align 8, !tbaa !91
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.cd, align 4, !tbaa !92
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %4, align 8, !tbaa !94
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ca, ptr %i.cf, align 8, !tbaa !96
  %i.cg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.213, i64 noundef 61) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  %i.ch = load ptr, ptr %14, align 8, !tbaa !86
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.cj, align 8, !tbaa !90
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.ck, align 8, !tbaa !91
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.cl, align 4, !tbaa !92
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %3, align 8, !tbaa !94
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.ci, ptr %i.cn, align 8, !tbaa !96
  %i.co = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.214, i64 noundef 67) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %i.cp = load ptr, ptr %14, align 8, !tbaa !86
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.cr, align 8, !tbaa !90
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.cs, align 8, !tbaa !91
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.ct, align 4, !tbaa !92
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !94
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.cq, ptr %i.cv, align 8, !tbaa !96
  %i.cw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.215, i64 noundef 12) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %15, i32 noundef 2, ptr noundef nonnull @.str.135, i32 noundef 2789) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #48
  %i.cx = load ptr, ptr %1, align 8, !tbaa !79
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !341
  call void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef %i.cx, i32 noundef %i.cz)
  %i.da = load ptr, ptr %16, align 8, !tbaa !79
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !80
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.da, i64 noundef %i.dc) #48 ; 2 uses
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull @.str.65, i64 noundef 1) #48 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #48
  %i.df = load ptr, ptr %14, align 8, !tbaa !86, !noalias !1312
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef %i.df)
  %i.dg = load ptr, ptr %17, align 8, !tbaa !79
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !80
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef %i.dg, i64 noundef %i.di) #48 ; 0 uses
  %i.dk = load ptr, ptr %17, align 8, !tbaa !79   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit8
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !82
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #48
  %i.dp = load ptr, ptr %16, align 8, !tbaa !79   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !82
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #48
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %15) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #48
  %i.du = load ptr, ptr %14, align 8, !tbaa !86   ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.du, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !94
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(128) %i.du) #48, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal12UnitTestImpl26RegisterParameterizedTestsEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !454, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !455  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !455  ; 2 uses
  %.not7.i = icmp eq ptr %i.e, %i.g
  br i1 %.not7.i, label %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !457 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #48, !inline_history !1313
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i, label %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, label %.lr.ph.i

_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit: ; preds = %.lr.ph.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry22CheckForInstantiationsEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  store i8 1, ptr %i.a, align 8, !tbaa !454
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !245  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i8, ptr %i.h, align 8, !tbaa !410, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.l = load i8, ptr %i.k, align 1, !tbaa !412, !range !71, !noundef !72
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.o = load i8, ptr %i.n, align 2, !tbaa !411, !range !71, !noundef !72
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %0) #48
  br label %bb.y

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.t = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.h, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.w = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.g, %bb.h, %bb.i
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 368 ; 2 uses
  store ptr %0, ptr %i.y, align 8, !tbaa !194
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %0) #48
  %i.ac = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #48
  %i.ad = sdiv i64 %i.ac, 1000000
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !458
  %i.af = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 528 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !358 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %.pre = load ptr, ptr %i.ah, align 8, !tbaa !94
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.j:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.aj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #47 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.aj, align 8, !tbaa !94
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !358
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.j
  %i.ak = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.j ], [ %.pre, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.al = phi ptr [ %i.aj, %bb.j ], [ %i.ah, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #48
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !453 ; 2 uses
  %i.aq = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit, !prof !98

bb.k:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.as = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.at = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit, %bb.k, %bb.l
  %.pn = load ptr, ptr %i.ap, align 8, !tbaa !94
  %.sink.i.in = getelementptr i8, ptr %.pn, i64 16
  %.sink.i = load ptr, ptr %.sink.i.in, align 8, !nosanitize !72
  %i.au = tail call noundef ptr %.sink.i(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #48, !inline_history !1314 ; 4 uses
  %i.av = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i13, !prof !98

bb.m:                                             ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit
  %i.ax = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i15 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i15, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i13, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.ay = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i13

_ZN7testing8internal15GetUnitTestImplEv.exit.i13: ; preds = %bb.n, %bb.m, %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 368
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !194 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i14, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

bb.p:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 360
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !387 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.be, null
  br i1 %.not4.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i: ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i = phi ptr [ %i.bc, %bb.o ], [ %i.bf, %bb.q ], [ %i.bg, %bb.r ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !433 ; 12 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !433 ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not7.i.i.i, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i
  %i.bl = ptrtoaddr ptr %i.bk to i64
  %i.bm = ptrtoaddr ptr %i.bi to i64
  %i.bn = add i64 %i.bl, -112
  %i.bo = sub i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = udiv i64 %i.bo, 112
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bq, 576460752303423480      ; 3 uses
  %i.br = mul i64 %n.vec, 112
  %i.bs = getelementptr i8, ptr %i.bi, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi29 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.bt = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bt
  %i.bu = getelementptr i8, ptr %i.bi, i64 %i.bt
  %next.gep30 = getelementptr i8, ptr %i.bu, i64 112
  %i.bv = getelementptr i8, ptr %i.bi, i64 %i.bt
  %next.gep31 = getelementptr i8, ptr %i.bv, i64 224
  %i.bw = getelementptr i8, ptr %i.bi, i64 %i.bt
  %next.gep32 = getelementptr i8, ptr %i.bw, i64 336
  %i.bx = getelementptr i8, ptr %i.bi, i64 %i.bt
  %next.gep33 = getelementptr i8, ptr %i.bx, i64 448
  %i.by = getelementptr i8, ptr %i.bi, i64 %i.bt
  %next.gep34 = getelementptr i8, ptr %i.by, i64 560
  %i.bz = getelementptr i8, ptr %i.bi, i64 %i.bt
  %next.gep35 = getelementptr i8, ptr %i.bz, i64 672
  %i.ca = getelementptr i8, ptr %i.bi, i64 %i.bt
  %next.gep36 = getelementptr i8, ptr %i.ca, i64 784
  %i.cb = load i32, ptr %next.gep, align 8, !tbaa !332
  %i.cc = load i32, ptr %next.gep30, align 8, !tbaa !332
  %i.cd = load i32, ptr %next.gep31, align 8, !tbaa !332
  %i.ce = load i32, ptr %next.gep32, align 8, !tbaa !332
  %i.cf = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %i.cg = insertelement <4 x i32> %i.cf, i32 %i.cc, i64 1
  %i.ch = insertelement <4 x i32> %i.cg, i32 %i.cd, i64 2
  %i.ci = insertelement <4 x i32> %i.ch, i32 %i.ce, i64 3
  %i.cj = load i32, ptr %next.gep33, align 8, !tbaa !332
  %i.ck = load i32, ptr %next.gep34, align 8, !tbaa !332
  %i.cl = load i32, ptr %next.gep35, align 8, !tbaa !332
  %i.cm = load i32, ptr %next.gep36, align 8, !tbaa !332
  %i.cn = insertelement <4 x i32> poison, i32 %i.cj, i64 0
  %i.co = insertelement <4 x i32> %i.cn, i32 %i.ck, i64 1
  %i.cp = insertelement <4 x i32> %i.co, i32 %i.cl, i64 2
  %i.cq = insertelement <4 x i32> %i.cp, i32 %i.cm, i64 3
  %i.cr = icmp eq <4 x i32> %i.ci, splat (i32 2)
  %i.cs = icmp eq <4 x i32> %i.cq, splat (i32 2)
  %i.ct = zext <4 x i1> %i.cr to <4 x i32>
  %i.cu = zext <4 x i1> %i.cs to <4 x i32>
  %i.cv = add <4 x i32> %vec.phi, %i.ct           ; 2 uses
  %i.cw = add <4 x i32> %vec.phi29, %i.cu         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !1315

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cw, %i.cv
  %i.cy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i.preheader37

.lr.ph.i.i.i.preheader37:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.cy, %middle.block ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader37, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader37 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i.i.i.preheader37 ] ; 2 uses
  %i.cz = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !332
  %i.da = icmp eq i32 %i.cz, 2
  %i.db = zext i1 %i.da to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.dc, %i.bk
  br i1 %.not.i.i1.i, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1316

_ZN7testing4Test15HasFatalFailureEv.exit:         ; preds = %.lr.ph.i.i.i, %middle.block
  %spec.select.i.i.i.lcssa = phi i32 [ %i.cy, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.not22 = icmp eq i32 %spec.select.i.i.i.lcssa, 0
  br i1 %.not22, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %bb.s

_ZN7testing4Test15HasFatalFailureEv.exit.thread:  ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i, %_ZN7testing4Test15HasFatalFailureEv.exit
  %i.dd = tail call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.dd, label %bb.s, label %.thread

.thread:                                          ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.thread
  tail call void @_ZN7testing4Test3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au)
  br label %bb.t

bb.s:                                             ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.thread, %_ZN7testing4Test15HasFatalFailureEv.exit
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %bb.x, label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %i.de = load ptr, ptr %i.ag, align 8, !tbaa !358 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.u, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16_crit_edge: ; preds = %bb.t
  %.pre23 = load ptr, ptr %i.de, align 8, !tbaa !94
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16

bb.u:                                             ; preds = %bb.t
  %i.dg = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #47 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.dg, align 8, !tbaa !94
  store ptr %i.dg, ptr %i.ag, align 8, !tbaa !358
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16_crit_edge, %bb.u
  %i.dh = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.u ], [ %.pre23, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16_crit_edge ]
  %i.di = phi ptr [ %i.dg, %bb.u ], [ %i.de, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16_crit_edge ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.di) #48
  %i.dl = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %bb.v, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit, !prof !98

bb.v:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16
  %i.dn = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i19 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i.i19, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.do = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit16, %bb.v, %bb.w
  %i.dp = load ptr, ptr %i.au, align 8, !tbaa !94
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  tail call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #48, !inline_history !1317
  br label %bb.x

bb.x:                                             ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit, %bb.s
  %i.ds = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #48
  %i.dt = sub nsw i64 %i.ds, %i.af
  %i.du = sdiv i64 %i.dt, 1000000
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !432
  %i.dw = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  %i.dy = load ptr, ptr %i.dx, align 8
  tail call void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %0) #48
  store ptr null, ptr %i.y, align 8, !tbaa !194
  br label %bb.y

bb.y:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.x
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN7testing8UnitTest9listenersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.testing::TestPartResult", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !410, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.g = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 368 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !194
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.m = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.e, %bb.f
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 504
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245  ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(272) %0) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load i32, ptr %i.v, align 8, !tbaa !459
  call void @_ZN7testing14TestPartResultC2ENS0_4TypeEPKciS3_(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 3, ptr noundef %i.u, i32 noundef %i.w, ptr noundef nonnull @.str.4)
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !338  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(112) %1) #48
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(272) %0) #48
  store ptr null, ptr %i.i, align 8, !tbaa !194
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !82
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !79 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !82
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !79 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZN7testing14TestPartResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !82
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #49
  br label %_ZN7testing14TestPartResultD2Ev.exit

_ZN7testing14TestPartResultD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN7testing14TestPartResultD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing14TestPartResultC2ENS0_4TypeEPKciS3_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  store i32 %1, ptr %0, align 8, !tbaa !332
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = icmp eq ptr %2, null
  %i.e = select i1 %i.d, ptr @.str.4, ptr %2      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !76
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  store i64 %i.g, ptr %i.b, align 8, !tbaa !81
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #48 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !79
  %i.j = load i64, ptr %i.b, align 8, !tbaa !81
  store i64 %i.j, ptr %i.f, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !82
  store i8 %i.l, ptr %i.k, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.m = load i64, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !80
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.q, align 8, !tbaa !331
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZN7testing14TestPartResult14ExtractSummaryB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.r, ptr noundef %4)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !76
  %i.u = icmp eq ptr %4, null
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.v, ptr %i.a, align 8, !tbaa !81
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.g, label %._crit_edge.i.i6

bb.g:                                             ; preds = %bb.f
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !79
  %i.y = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.y, ptr %i.t, align 8, !tbaa !82
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %bb.g, %bb.f
  %i.z = phi ptr [ %i.x, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  switch i64 %i.v, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit7
  ]

bb.h:                                             ; preds = %._crit_edge.i.i6
  %i.aa = load i8, ptr %4, align 1, !tbaa !82
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit7

bb.i:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %4, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit7: ; preds = %._crit_edge.i.i6, %bb.h, %bb.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !80
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing9TestSuiteC2EPKcS2_PFvvES4_(ptr noundef nonnull align 8 dereferenceable(264) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing9TestSuiteE, i64 16), ptr %0, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !76
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  store i64 %i.f, ptr %i.b, align 8, !tbaa !81
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.d, label %._crit_edge.i.i
end_hunk_15
begin_hunk_16_@_ZNK7testing9TestSuite11GetTestInfoEi:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN7testing9TestSuite18GetMutableTestInfoEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !465
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !462  ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !97   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = zext nneg i32 %i.m to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !414
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !407
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread: ; preds = %bb.a, %bb.b, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit, %bb.c
  %i.t = phi ptr [ %i.s, %bb.c ], [ null, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing9TestSuite11AddTestInfoEPNS_8TestInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !413  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !464
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !407
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !413
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !414  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.440) #50
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
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #47 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !407
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
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !464
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #49
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !414
  store ptr %i.u, ptr %i.b, align 8, !tbaa !413
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !464
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !465 ; 4 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !462 ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 4 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !463
  %.not.i.i = icmp eq ptr %i.ab, %i.aj
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !97
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !465
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  %i.al = icmp eq i64 %i.af, 9223372036854775804
  br i1 %i.al, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.440) #50
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
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #47 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.af ; 2 uses
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !97
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
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !463
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ax) #49
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !462
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !465
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ay, ptr %i.ai, align 8, !tbaa !463
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !403, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.g = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !387
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.m = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.e, %bb.f
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 504
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245  ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !406  ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !406  ; 6 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit", label %bb.g

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = add nsw i64 %i.y, 1
  %i.aa = sdiv i64 %i.z, 2                        ; 4 uses
  %i.ab = icmp sgt i64 %i.y, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.ag, %select.unfold.i.i.i.i ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = shl nuw nsw i64 %.010.i.i.i.i, 3
  %i.ad = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ac, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #57 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.ae = icmp eq i64 %.010.i.i.i.i, 1
  %i.af = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.ag = lshr i64 %i.af, 1
  br i1 %i.ae, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1318

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.g
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.g ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i.i = phi ptr [ null, %bb.g ], [ %i.ad, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 6 uses
  %i.ah = icmp eq i64 %i.aa, %.sroa.4.0.i.i
  br i1 %i.ah, label %bb.h, label %bb.i, !prof !466

bb.h:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aa ; 4 uses
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_T0_T1_"(ptr %i.r, ptr %i.ai, ptr noundef %.sroa.10.0.i.i)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_T0_T1_"(ptr %i.ai, ptr %i.t, ptr noundef %.sroa.10.0.i.i)
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.v, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_SF_T0_SG_T1_T2_"(ptr %i.r, ptr %i.ai, ptr %i.t, i64 noundef %i.aa, i64 noundef %i.al, ptr noundef %.sroa.10.0.i.i)
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.am = icmp eq ptr %.sroa.10.0.i.i, null
  br i1 %i.am, label %bb.j, label %bb.k, !prof !315

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_T0_"(ptr %i.r, ptr %i.t)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_9TestSuite3RunEvE3$_0EEEvT_SF_T0_T1_T2_"(ptr %i.r, ptr %i.t, ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.an = shl i64 %.sroa.4.0.i.i, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.10.0.i.i, i64 noundef %i.an) #48
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit": ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %bb.l
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 528 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !358 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.m, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge": ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit"
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !94
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.m:                                             ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit"
  %i.ax = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #47 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.ax, align 8, !tbaa !94
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !358
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge", %bb.m
  %i.ay = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.m ], [ %.pre, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge" ]
  %i.az = phi ptr [ %i.ax, %bb.m ], [ %i.av, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7testing8TestInfoESt6vectorIS4_SaIS4_EEEEZNS2_9TestSuite3RunEvE3$_0EvT_SC_T0_.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge" ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.az) #48
  %i.bc = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.n, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit, !prof !98

bb.n:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.be = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.bf = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit, %bb.n, %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !460 ; 2 uses
  %.not.i50 = icmp eq ptr %i.bh, null
  br i1 %.not.i50, label %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit
  tail call void %i.bh() #48, !inline_history !1319
  br label %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit

_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit:  ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit, %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !333 ; 3 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !335 ; 14 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 112               ; 8 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit
  %wide.trip.count.i = and i64 %i.bp, 2147483647  ; 2 uses
  br label %.lr.ph.i

bb.q:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %.lr.ph.i.i, label %.lr.ph.i, !llvm.loop !23

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.bp
  br i1 %exitcond.not.i, label %bb.r, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.r:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.544, i64 noundef %i.bp, i64 noundef %i.bp) #50
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.bs = getelementptr inbounds nuw [112 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !332
  %i.bu = add i32 %i.bt, -1
  %spec.select.i.i = icmp ult i32 %i.bu, 2
  br i1 %spec.select.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.q

bb.s:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !23

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.s
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.s ], [ 0, %bb.q ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.bp
  br i1 %exitcond.not.i.i, label %bb.t, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.544, i64 noundef %i.bp, i64 noundef %i.bp) #50
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bv = getelementptr inbounds nuw [112 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !332
  %i.bx = add i32 %i.bw, -1
  %spec.select.i.i.i = icmp ult i32 %i.bx, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %bb.s

.loopexit.i:                                      ; preds = %bb.s, %_ZN7testing9TestSuite17RunSetUpTestSuiteEv.exit
  %.not7.i.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult6FailedEv.exit, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %i.by = add i64 %i.bm, -112
  %i.bz = sub i64 %i.by, %i.bn                    ; 2 uses
  %i.ca = udiv i64 %i.bz, 112
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader129, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.cb, 576460752303423480      ; 3 uses
  %i.cc = mul i64 %n.vec, 112
  %i.cd = getelementptr i8, ptr %i.bl, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi113 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %i.ce = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.ce
  %i.cf = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep114 = getelementptr i8, ptr %i.cf, i64 112
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep115 = getelementptr i8, ptr %i.cg, i64 224
  %i.ch = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep116 = getelementptr i8, ptr %i.ch, i64 336
  %i.ci = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep117 = getelementptr i8, ptr %i.ci, i64 448
  %i.cj = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep118 = getelementptr i8, ptr %i.cj, i64 560
  %i.ck = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep119 = getelementptr i8, ptr %i.ck, i64 672
  %i.cl = getelementptr i8, ptr %i.bl, i64 %i.ce
  %next.gep120 = getelementptr i8, ptr %i.cl, i64 784
  %i.cm = load i32, ptr %next.gep, align 8, !tbaa !332
  %i.cn = load i32, ptr %next.gep114, align 8, !tbaa !332
  %i.co = load i32, ptr %next.gep115, align 8, !tbaa !332
  %i.cp = load i32, ptr %next.gep116, align 8, !tbaa !332
  %i.cq = insertelement <4 x i32> poison, i32 %i.cm, i64 0
  %i.cr = insertelement <4 x i32> %i.cq, i32 %i.cn, i64 1
  %i.cs = insertelement <4 x i32> %i.cr, i32 %i.co, i64 2
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.cp, i64 3
  %i.cu = load i32, ptr %next.gep117, align 8, !tbaa !332
  %i.cv = load i32, ptr %next.gep118, align 8, !tbaa !332
  %i.cw = load i32, ptr %next.gep119, align 8, !tbaa !332
  %i.cx = load i32, ptr %next.gep120, align 8, !tbaa !332
  %i.cy = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.cv, i64 1
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cw, i64 2
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cx, i64 3
  %i.dc = icmp eq <4 x i32> %i.ct, splat (i32 3)
  %i.dd = icmp eq <4 x i32> %i.db, splat (i32 3)
  %i.de = zext <4 x i1> %i.dc to <4 x i32>
  %i.df = zext <4 x i1> %i.dd to <4 x i32>
  %i.dg = add <4 x i32> %vec.phi, %i.de           ; 2 uses
  %i.dh = add <4 x i32> %vec.phi113, %i.df        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !1320

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dh, %i.dg
  %i.dj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i.preheader129

.lr.ph.i1.i.preheader129:                         ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.dj, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i1.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader129, %.lr.ph.i1.i
  %.09.i.i = phi i32 [ %spec.select.i.i23, %.lr.ph.i1.i ], [ %.09.i.i.ph, %.lr.ph.i1.i.preheader129 ]
  %.sroa.04.08.i.i = phi ptr [ %i.dn, %.lr.ph.i1.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i1.i.preheader129 ] ; 2 uses
  %i.dk = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !332
  %i.dl = icmp eq i32 %i.dk, 3
  %i.dm = zext i1 %i.dl to i32
  %spec.select.i.i23 = add nuw nsw i32 %.09.i.i, %i.dm ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.dn, %i.bk
  br i1 %.not.i.i24, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !1321

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i23.lcssa = phi i32 [ %i.dj, %middle.block ], [ %spec.select.i.i23, %.lr.ph.i1.i ]
  %i.do = icmp ne i32 %spec.select.i.i23.lcssa, 0
  br label %_ZNK7testing10TestResult6FailedEv.exit

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, %.loopexit.i
  %i.dp = phi i1 [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ], [ %i.do, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ true, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ]
  %i.dq = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #48
  %i.dr = sdiv i64 %i.dq, 1000000
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !467
  %i.dt = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #48
  %i.du = load ptr, ptr %i.s, align 8, !tbaa !413
  %i.dv = load ptr, ptr %i.q, align 8, !tbaa !414 ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = lshr exact i64 %i.dy, 3
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7testing10TestResult6FailedEv.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit42.thread
  %indvars.iv75 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next76, %_ZNK7testing10TestResult6FailedEv.exit42.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit42.thread ] ; 6 uses
  %i.ee = phi ptr [ %i.dv, %.lr.ph ], [ %.pre82, %_ZNK7testing10TestResult6FailedEv.exit42.thread ]
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !465
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !462 ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = shl i64 %i.ej, 30
  %i.el = ashr i64 %i.ek, 32
  %.not.i.i25 = icmp slt i64 %indvars.iv, %i.el
  tail call void @llvm.assume(i1 %.not.i.i25)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.en = load i32, ptr %i.em, align 4, !tbaa !97 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, -1
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = zext nneg i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !407 ; 2 uses
  br i1 %i.dp, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i27

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %bb.u
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.er)
  br label %bb.v

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i27: ; preds = %bb.u
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %i.er)
  br label %bb.v

bb.v:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i27, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.es = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.et = trunc nuw i8 %i.es to i1
  %.pre82 = load ptr, ptr %i.q, align 8, !tbaa !414 ; 5 uses
  br i1 %i.et, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30, label %_ZNK7testing10TestResult6FailedEv.exit42.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30: ; preds = %bb.v
  %i.eu = load ptr, ptr %i.ed, align 8, !tbaa !465
  %i.ev = load ptr, ptr %i.ec, align 8, !tbaa !462 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = shl i64 %i.ey, 30
  %i.fa = ashr i64 %i.ez, 32
  %.not.i.i29 = icmp slt i64 %indvars.iv, %i.fa
  tail call void @llvm.assume(i1 %.not.i.i29)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !97 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, -1
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = zext nneg i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.pre82, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !407 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 200
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 208
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !333
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !335 ; 2 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = sdiv exact i64 %i.fn, 112               ; 5 uses
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.lr.ph.preheader.i33, label %_ZNK7testing10TestResult6FailedEv.exit42.thread

.lr.ph.preheader.i33:                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30
  %wide.trip.count.i34 = and i64 %i.fo, 2147483647
  br label %.lr.ph.i35

bb.w:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond16.not.i41 = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i34
  br i1 %exitcond16.not.i41, label %_ZNK7testing10TestResult6FailedEv.exit42.thread, label %.lr.ph.i35, !llvm.loop !23

.lr.ph.i35:                                       ; preds = %bb.w, %.lr.ph.preheader.i33
  %indvars.iv.i36 = phi i64 [ 0, %.lr.ph.preheader.i33 ], [ %indvars.iv.next.i40, %bb.w ] ; 3 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.i36, %i.fo
  br i1 %exitcond.not.i37, label %bb.x, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38

bb.x:                                             ; preds = %.lr.ph.i35
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.544, i64 noundef %i.fo, i64 noundef %i.fo) #50
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38: ; preds = %.lr.ph.i35
  %i.fr = getelementptr inbounds nuw [112 x i8], ptr %i.fk, i64 %indvars.iv.i36
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !332
  %i.ft = add i32 %i.fs, -1
  %spec.select.i.i39 = icmp ult i32 %i.ft, 2
  br i1 %spec.select.i.i39, label %_ZNK7testing10TestResult6FailedEv.exit42.preheader, label %bb.w

_ZNK7testing10TestResult6FailedEv.exit42.preheader: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i38
  %i.fu = trunc nuw nsw i64 %indvars.iv to i32
  %.067 = add nuw nsw i32 %i.fu, 1
  %i.fv = load ptr, ptr %i.s, align 8, !tbaa !413
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %.pre82 to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = lshr exact i64 %i.fy, 3
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = icmp slt i32 %.067, %i.ga
  br i1 %i.gb, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44: ; preds = %_ZNK7testing10TestResult6FailedEv.exit42.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44 ], [ %indvars.iv75, %_ZNK7testing10TestResult6FailedEv.exit42.preheader ] ; 3 uses
  %i.gc = phi ptr [ %i.gr, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44 ], [ %.pre82, %_ZNK7testing10TestResult6FailedEv.exit42.preheader ]
  %i.gd = load ptr, ptr %i.ed, align 8, !tbaa !465
  %i.ge = load ptr, ptr %i.ec, align 8, !tbaa !462 ; 2 uses
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = shl i64 %i.gh, 30
  %i.gj = ashr i64 %i.gi, 32
  %.not.i.i43 = icmp slt i64 %indvars.iv79, %i.gj
  tail call void @llvm.assume(i1 %.not.i.i43)
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv79
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !97 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, -1
  tail call void @llvm.assume(i1 %i.gm)
  %i.gn = zext nneg i32 %i.gl to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gn
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !407
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.gp)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.gq = load ptr, ptr %i.s, align 8, !tbaa !413
  %i.gr = load ptr, ptr %i.q, align 8, !tbaa !414 ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = lshr exact i64 %i.gu, 3
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = trunc nuw i64 %indvars.iv.next80 to i32
  %i.gy = icmp slt i32 %i.gx, %i.gw
  br i1 %i.gy, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44, label %.loopexit, !llvm.loop !1322

_ZNK7testing10TestResult6FailedEv.exit42.thread:  ; preds = %bb.w, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i30, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gz = load ptr, ptr %i.s, align 8, !tbaa !413
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %.pre82 to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = shl i64 %i.hc, 29
  %i.he = ashr i64 %i.hd, 32
  %i.hf = icmp slt i64 %indvars.iv.next, %i.he
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br i1 %i.hf, label %bb.u, label %.loopexit, !llvm.loop !1323

.loopexit:                                        ; preds = %_ZNK7testing10TestResult6FailedEv.exit42.thread, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i44, %_ZNK7testing10TestResult6FailedEv.exit, %_ZNK7testing10TestResult6FailedEv.exit42.preheader
  %i.hg = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #48
  %i.hh = sub nsw i64 %i.hg, %i.dt
  %i.hi = sdiv i64 %i.hh, 1000000
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !468
  %i.hk = load ptr, ptr %i.au, align 8, !tbaa !358 ; 3 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.y, label %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge

.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge: ; preds = %.loopexit
  %.pre83 = load ptr, ptr %i.hk, align 8, !tbaa !94
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46

bb.y:                                             ; preds = %.loopexit
  %i.hm = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #47 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.hm, align 8, !tbaa !94
  store ptr %i.hm, ptr %i.au, align 8, !tbaa !358
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46: ; preds = %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge, %bb.y
  %i.hn = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.y ], [ %.pre83, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge ]
  %i.ho = phi ptr [ %i.hm, %bb.y ], [ %i.hk, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46_crit_edge ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  tail call void %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.ho) #48
  %i.hr = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %bb.z, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49, !prof !98

bb.z:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46
  %i.ht = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i48 = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i.i48, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.hu = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit46, %bb.z, %bb.aa
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !461 ; 2 uses
  %.not.i51 = icmp eq ptr %i.hw, null
  br i1 %.not.i51, label %_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49
  tail call void %i.hw() #48, !inline_history !1324
  br label %_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit

_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit: ; preds = %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit49, %bb.ab
  %i.hx = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8
  tail call void %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  %i.ia = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %i.ic = load ptr, ptr %i.ib, align 8
  tail call void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  store ptr null, ptr %i.i, align 8, !tbaa !387
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %_ZN7testing9TestSuite20RunTearDownTestSuiteEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !403, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.g = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !387
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.e:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.m = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.e, %bb.f
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 504
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245  ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !413
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !414  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, label %._crit_edge

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i

._crit_edge:                                      ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0) #48
  store ptr null, ptr %i.i, align 8, !tbaa !387
  br label %bb.g

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %indvars.iv = phi i64 [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ] ; 3 uses
  %i.ao = phi ptr [ %i.z, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %i.bd, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ]
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !465
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !462 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = shl i64 %i.at, 30
  %i.av = ashr i64 %i.au, 32
  %.not.i.i9 = icmp slt i64 %indvars.iv, %i.av
  tail call void @llvm.assume(i1 %.not.i.i9)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !97 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !407
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.bb)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !413
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !414 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = shl i64 %i.bg, 29
  %i.bi = ashr i64 %i.bh, 32
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %._crit_edge, !llvm.loop !1325

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing9TestSuite11ClearResultEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN7testing10TestResult5ClearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !406  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not5.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.02.06.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.02.06.i.i, align 8, !tbaa !407
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  tail call void @_ZN7testing10TestResult5ClearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !36

_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing9TestSuite12ShuffleTestsEPNS_8internal6RandomE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !465
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !462
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  tail call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef %1, i32 noundef 0, i32 noundef %i.i, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN7testing9TestSuite14UnshuffleTestsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #32 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !465  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !462  ; 4 uses
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
  store <4 x i32> %vec.ind, ptr %i.i, align 4, !tbaa !97
  store <4 x i32> %step.add, ptr %i.j, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1326

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
  store i32 %i.l, ptr %i.m, align 4, !tbaa !97
  %i.n = add nuw i64 %.04, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1327
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal14ShouldUseColorEb(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !76
  %i.c = load ptr, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, align 8, !tbaa !79 ; 2 uses
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, i64 8), align 8, !tbaa !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.d, ptr %i.a, align 8, !tbaa !81
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !79
  %i.g = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.g, ptr %i.b, align 8, !tbaa !82
end_hunk_16
begin_hunk_17_@_ZN7testing8UnitTest14AddEnvironmentEPNS_11EnvironmentE:bb.a
bb.g:                                             ; preds = %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !489
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aa) #49
  br label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.u, ptr %i.d, align 8, !tbaa !492
  store ptr %i.x, ptr %i.e, align 8, !tbaa !1756
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !489
  br label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret ptr %1
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !80
  store i8 0, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !194
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.296, i64 noundef 8) #48 ; 0 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !194
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !387
  %.not3 = icmp eq ptr %i.i, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.286, i64 noundef 9) #48 ; 0 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !387
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.320, i64 noundef 10) #48 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  call void @_ZN7testing10TestResult14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(128) %.0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.o = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !82
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !76
  %i.d = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  store i64 %i.f, ptr %i.b, align 8, !tbaa !81
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #48 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !79
  %i.i = load i64, ptr %i.b, align 8, !tbaa !81
  store i64 %i.i, ptr %i.c, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !82
  store i8 %i.k, ptr %i.j, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.l = load i64, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !80
  %i.n = load ptr, ptr %0, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !76
  %i.r = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.t, ptr %i.a, align 8, !tbaa !81
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.e, label %._crit_edge.i.i3

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !79
  %i.w = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.w, ptr %i.q, align 8, !tbaa !82
  br label %._crit_edge.i.i3

._crit_edge.i.i3:                                 ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.v, %bb.e ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4
  ]

bb.f:                                             ; preds = %._crit_edge.i.i3
  %i.y = load i8, ptr %i.r, align 1, !tbaa !82
  store i8 %i.y, ptr %i.x, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4

bb.g:                                             ; preds = %._crit_edge.i.i3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit4: ; preds = %._crit_edge.i.i3, %bb.f, %bb.g
  %i.z = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !80
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN7testing8UnitTest3RunEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.testing::internal::ScopedPrematureExitFile", align 8 ; 4 uses
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !80
  %.not = icmp eq i64 %i.a, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @getenv(ptr noundef nonnull @.str.369) #48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @_ZN7testing8internal23ScopedPrematureExitFileC2EPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103  ; 2 uses
  %i.f = load i8, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  store i8 %i.f, ptr %i.g, align 8, !tbaa !493
  %i.h = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit, !prof !98

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.k = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.l = call noundef zeroext i1 @_ZN7testing8internal12UnitTestImpl11RunAllTestsEv(ptr noundef nonnull align 8 dereferenceable(601) %i.e) #48, !inline_history !1757
  %not. = xor i1 %i.l, true
  %i.m = zext i1 %not. to i32
  call void @_ZN7testing8internal23ScopedPrematureExitFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret i32 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal23ScopedPrematureExitFileC2EPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq ptr %1, null
  %i.b = select i1 %.not, ptr @.str.4, ptr %1     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !76
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.d, ptr %i.a, align 8, !tbaa !81
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !79
  %i.g = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.g, ptr %i.c, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !82
  store i8 %i.i, ptr %i.h, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !80
  %i.l = load ptr, ptr %0, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.n = load i64, ptr %i.k, align 8, !tbaa !80
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !79
  %i.q = call noalias noundef ptr @fopen(ptr noundef %i.p, ptr noundef nonnull @.str.378) ; 2 uses
  %fputc = call i32 @fputc(i32 48, ptr %i.q)      ; 0 uses
  %i.r = call i32 @fclose(ptr noundef %i.q)       ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal12UnitTestImpl11RunAllTestsEv(ptr noundef nonnull align 8 dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.86", align 8    ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E)
  %i.b = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d                  ; 2 uses
  br i1 %.not, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !82
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #49
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !264
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN7testing8internalL18GTestIsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !263
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #49
  br label %_ZN7testing8internalL18GTestIsInitializedEv.exit

_ZN7testing8internalL18GTestIsInitializedEv.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.q = load i8, ptr @_ZN7testing8internal11g_help_flagE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.bg, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internalL18GTestIsInitializedEv.exit
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(601) %0)
  %i.s = call noundef ptr @getenv(ptr noundef nonnull @_ZN7testingL20kTestShardStatusFileE) #48 ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call noalias noundef ptr @fopen(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.378) ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 1, ptr noundef nonnull @.str.379, ptr noundef nonnull %i.s, ptr noundef nonnull @_ZN7testingL20kTestShardStatusFileE)
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !199
  %i.w = call i32 @fflush(ptr noundef %i.v)       ; 0 uses
  call void @exit(i32 noundef 1) #56
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = call i32 @fclose(ptr noundef nonnull %i.t) ; 0 uses
  br label %_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit

_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit: ; preds = %bb.c, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !195
  %i.aa = icmp ne ptr %i.z, null                  ; 2 uses
  %i.ab = call noundef zeroext i1 @_ZN7testing8internal11ShouldShardEPKcS2_b(ptr noundef nonnull @_ZN7testingL16kTestTotalShardsE, ptr noundef nonnull @_ZN7testingL15kTestShardIndexE, i1 noundef zeroext %i.aa)
  %not. = xor i1 %i.ab, true
  %i.ac = zext i1 %not. to i32
  %i.ad = call noundef i32 @_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE(ptr noundef nonnull align 8 dereferenceable(601) %0, i32 noundef %i.ac)
  %i.ae = icmp sgt i32 %i.ad, 0                   ; 2 uses
  %i.af = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit
  call void @_ZN7testing8internal12UnitTestImpl23ListTestsMatchingFilterEv(ptr noundef nonnull align 8 dereferenceable(601) %0)
  br label %bb.bg

bb.h:                                             ; preds = %_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit
  %i.ah = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !97 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #48
  %i.ak = sdiv i64 %i.aj, 1000000
  %i.al = trunc i64 %i.ak to i32
  br label %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit

_ZN7testing8internal21GetRandomSeedFromFlagEi.exit: ; preds = %bb.h, %bb.i
  %i.am = phi i32 [ %i.al, %bb.i ], [ %i.ah, %bb.h ]
  %i.an = add i32 %i.am, -1
  %i.ao = urem i32 %i.an, 99999
  %i.ap = add nuw nsw i32 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 4 uses
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !469
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !245 ; 16 uses
  %i.at = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #48
  %i.au = sdiv i64 %i.at, 1000000
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %i.au, ptr %i.av, align 8, !tbaa !475
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !494
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !94
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.ax) #48
  %i.bb = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4
  %i.bc = select i1 %i.aa, i32 1, i32 %i.bb       ; 4 uses
  %i.bd = icmp slt i32 %i.bc, 0                   ; 2 uses
  %i.be = load i8, ptr @_ZN7testing48FLAGS_gtest_recreate_environments_when_repeatingE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = or i1 %i.bd, %i.bf                      ; 2 uses
  %.not150 = icmp eq i32 %i.bc, 0
  br i1 %.not150, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = add nsw i32 %i.bc, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %bb.j

._crit_edge149.loopexit:                          ; preds = %bb.be
  %i.bv = xor i1 %i.ru, true
  br label %._crit_edge149

._crit_edge149:                                   ; preds = %._crit_edge149.loopexit, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit
  %.058.lcssa = phi i1 [ true, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit ], [ %i.bv, %._crit_edge149.loopexit ] ; 2 uses
  %i.bw = load ptr, ptr %i.aw, align 8, !tbaa !494
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !94
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.bw) #48
  br i1 %.not, label %bb.bf, label %bb.bg

bb.j:                                             ; preds = %.lr.ph148, %bb.be
  %.057147 = phi i32 [ 0, %.lr.ph148 ], [ %i.th, %bb.be ] ; 5 uses
  %.058146 = phi i1 [ false, %.lr.ph148 ], [ %i.ru, %bb.be ] ; 2 uses
  call void @_ZN7testing8internal12UnitTestImpl23ClearNonAdHocTestResultEv(ptr noundef nonnull align 8 dereferenceable(601) %0)
  %i.ca = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #48
  %i.cb = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !range !71
  %i.cc = trunc nuw i8 %i.cb to i1
  %or.cond = select i1 %i.ae, i1 %i.cc, i1 false
  br i1 %or.cond, label %bb.k, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit

bb.k:                                             ; preds = %bb.j
  %i.cd = load i32, ptr %i.aq, align 4, !tbaa !469
  store i32 %i.cd, ptr %i.bh, align 8, !tbaa !348
  %i.ce = load i32, ptr %i.bi, align 4, !tbaa !495
  %i.cf = add nsw i32 %i.ce, 1
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.bh, i32 noundef 0, i32 noundef %i.cf, ptr noundef nonnull %i.bj)
  %i.cg = load i32, ptr %i.bi, align 4, !tbaa !495
  %i.ch = add nsw i32 %i.cg, 1
  %i.ci = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.cj = load ptr, ptr %i.bk, align 8, !tbaa !405
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = lshr exact i64 %i.cm, 3
  %i.co = trunc i64 %i.cn to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.bh, i32 noundef %i.ch, i32 noundef %i.co, ptr noundef nonnull %i.bj)
  %i.cp = load ptr, ptr %i.bk, align 8, !tbaa !389 ; 2 uses
  %i.cq = load ptr, ptr %i.bl, align 8, !tbaa !389 ; 2 uses
  %.not7.i = icmp eq ptr %i.cp, %i.cq
  br i1 %.not7.i, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.db, %.lr.ph.i ], [ %i.cp, %bb.k ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !390 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 72 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !465
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !462
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = lshr exact i64 %i.cy, 2
  %i.da = trunc i64 %i.cz to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.bh, i32 noundef 0, i32 noundef %i.da, ptr noundef nonnull %i.cs)
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i60 = icmp eq ptr %i.db, %i.cq
  br i1 %.not.i60, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, label %.lr.ph.i

_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit: ; preds = %.lr.ph.i, %bb.k, %bb.j
  %i.dc = load ptr, ptr %i.aw, align 8, !tbaa !494
  %i.dd = load ptr, ptr %i.as, align 8, !tbaa !94
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.dc, i32 noundef %.057147) #48
  br i1 %i.ae, label %bb.l, label %bb.as

bb.l:                                             ; preds = %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.dg = icmp eq i32 %.057147, 0
  %or.cond3 = select i1 %i.dg, i1 true, i1 %i.bg
  br i1 %or.cond3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dh = load ptr, ptr %i.aw, align 8, !tbaa !494
  %i.di = load ptr, ptr %i.as, align 8, !tbaa !94
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.dh) #48
  %i.dl = load ptr, ptr %i.bm, align 8, !tbaa !496 ; 2 uses
  %i.dm = load ptr, ptr %i.bn, align 8, !tbaa !496 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.dl, %i.dm
  br i1 %.not5.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.i
  %.sroa.02.06.i.i = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.dl, %bb.m ] ; 2 uses
  %i.dn = load ptr, ptr %.sroa.02.06.i.i, align 8, !tbaa !491 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !94
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dn) #48, !inline_history !1758
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dr, %i.dm
  br i1 %.not.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !40

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.m
  %i.ds = load ptr, ptr %i.aw, align 8, !tbaa !494
  %i.dt = load ptr, ptr %i.as, align 8, !tbaa !94
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.ds) #48
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.dw = call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  %i.dx = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.dy = icmp eq i8 %i.dx, 0                     ; 2 uses
  br i1 %i.dw, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %bb.n
  br i1 %i.dy, label %bb.p, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.p:                                             ; preds = %bb.o
  %i.dz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i61 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i61, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.ea = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.o, %bb.p, %bb.q
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 368
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !194 ; 2 uses
  %.not.i62 = icmp eq ptr %i.ed, null
  br i1 %.not.i62, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.s:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 360
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !387 ; 2 uses
  %.not4.i = icmp eq ptr %i.eg, null
  br i1 %.not4.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.u:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.r, %bb.t, %bb.u
  %.0.i = phi ptr [ %i.ee, %bb.r ], [ %i.eh, %bb.t ], [ %i.ei, %bb.u ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !333 ; 2 uses
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !335 ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 112               ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ac, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.et = load ptr, ptr @stdout, align 8, !tbaa !199
  %i.eu = call i32 @fflush(ptr noundef %i.et)     ; 0 uses
  br label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %bb.ac
  %i.ev = phi ptr [ %i.fs, %bb.ac ], [ %i.em, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %i.ew = phi ptr [ %i.ft, %bb.ac ], [ %i.el, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ]
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %bb.ac ], [ 0, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 4 uses
  %i.ex = phi i64 [ %i.fx, %bb.ac ], [ %i.eq, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.ex, %indvars.iv175
  br i1 %.not.i.i.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.544, i64 noundef %indvars.iv175, i64 noundef %i.ex) #50
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.ey = getelementptr inbounds nuw [112 x i8], ptr %i.ev, i64 %indvars.iv175 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !332
  %i.fa = icmp eq i32 %i.ez, 3
  br i1 %i.fa, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !79 ; 4 uses
  store ptr %i.bp, ptr %3, align 8, !tbaa !76
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.510) #50
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.fe = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fc) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i64 %i.fe, ptr %i.a, align 8, !tbaa !81
  %i.ff = icmp ugt i64 %i.fe, 15
  br i1 %i.ff, label %bb.z, label %._crit_edge.i.i

bb.z:                                             ; preds = %bb.y
  %i.fg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.fg, ptr %3, align 8, !tbaa !79
  %i.fh = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.fh, ptr %i.bp, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.z, %bb.y
  %i.fi = phi ptr [ %i.fg, %bb.z ], [ %i.bp, %bb.y ] ; 2 uses
  switch i64 %i.fe, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.fj = load i8, ptr %i.fc, align 1, !tbaa !82
  store i8 %i.fj, ptr %i.fi, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.ab:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fi, ptr nonnull align 1 %i.fc, i64 %i.fe, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.aa, %bb.ab
  %i.fk = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  store i64 %i.fk, ptr %i.bq, align 8, !tbaa !80
  %i.fl = load ptr, ptr %3, align 8, !tbaa !79
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk
  store i8 0, ptr %i.fm, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  %i.fn = load ptr, ptr %3, align 8, !tbaa !79
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.fn) ; 0 uses
  %i.fo = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bp
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.fq = load i64, ptr %i.bp, align 8, !tbaa !82
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %.pre = load ptr, ptr %i.ek, align 8, !tbaa !333
  %.pre178 = load ptr, ptr %i.ej, align 8, !tbaa !335
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.fs = phi ptr [ %.pre178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ev, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.ft = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ew, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 112               ; 2 uses
  %i.fy = shl i64 %i.fx, 32
  %i.fz = ashr exact i64 %i.fy, 32
  %i.ga = icmp slt i64 %indvars.iv.next176, %i.fz
  br i1 %i.ga, label %.lr.ph, label %._crit_edge, !llvm.loop !1759

bb.ad:                                            ; preds = %bb.n
  br i1 %i.dy, label %bb.ae, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !98

bb.ae:                                            ; preds = %bb.ad
  %i.gb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i65 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i.i65, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.gc = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.af, %bb.ae, %bb.ad
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 368
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !194 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i64, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

bb.ah:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 360
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !387 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.gi, null
  br i1 %.not4.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ag
  %.0.i.i = phi ptr [ %i.gg, %bb.ag ], [ %i.gj, %bb.ai ], [ %i.gk, %bb.aj ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !433 ; 12 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !433 ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.gm, %i.go
  br i1 %.not7.i.i.i, label %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i
  %i.gp = ptrtoaddr ptr %i.go to i64
  %i.gq = ptrtoaddr ptr %i.gm to i64
  %i.gr = add i64 %i.gp, -112
  %i.gs = sub i64 %i.gr, %i.gq                    ; 2 uses
  %i.gt = udiv i64 %i.gs, 112
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check270 = icmp ult i64 %i.gs, 784
  br i1 %min.iters.check270, label %.lr.ph.i.i.i.preheader296, label %vector.ph271

vector.ph271:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec272 = and i64 %i.gu, 576460752303423480   ; 3 uses
  %i.gv = mul i64 %n.vec272, 112
  %i.gw = getelementptr i8, ptr %i.gm, i64 %i.gv
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph271
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next285, %vector.body273 ] ; 2 uses
  %vec.phi275 = phi <4 x i32> [ zeroinitializer, %vector.ph271 ], [ %i.hz, %vector.body273 ]
  %vec.phi276 = phi <4 x i32> [ zeroinitializer, %vector.ph271 ], [ %i.ia, %vector.body273 ]
  %i.gx = mul i64 %index274, 112                  ; 8 uses
  %next.gep277 = getelementptr i8, ptr %i.gm, i64 %i.gx
  %i.gy = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep278 = getelementptr i8, ptr %i.gy, i64 112
  %i.gz = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep279 = getelementptr i8, ptr %i.gz, i64 224
  %i.ha = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep280 = getelementptr i8, ptr %i.ha, i64 336
  %i.hb = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep281 = getelementptr i8, ptr %i.hb, i64 448
  %i.hc = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep282 = getelementptr i8, ptr %i.hc, i64 560
  %i.hd = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep283 = getelementptr i8, ptr %i.hd, i64 672
  %i.he = getelementptr i8, ptr %i.gm, i64 %i.gx
  %next.gep284 = getelementptr i8, ptr %i.he, i64 784
  %i.hf = load i32, ptr %next.gep277, align 8, !tbaa !332
  %i.hg = load i32, ptr %next.gep278, align 8, !tbaa !332
  %i.hh = load i32, ptr %next.gep279, align 8, !tbaa !332
  %i.hi = load i32, ptr %next.gep280, align 8, !tbaa !332
  %i.hj = insertelement <4 x i32> poison, i32 %i.hf, i64 0
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.hg, i64 1
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hh, i64 2
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hi, i64 3
  %i.hn = load i32, ptr %next.gep281, align 8, !tbaa !332
  %i.ho = load i32, ptr %next.gep282, align 8, !tbaa !332
  %i.hp = load i32, ptr %next.gep283, align 8, !tbaa !332
  %i.hq = load i32, ptr %next.gep284, align 8, !tbaa !332
  %i.hr = insertelement <4 x i32> poison, i32 %i.hn, i64 0
  %i.hs = insertelement <4 x i32> %i.hr, i32 %i.ho, i64 1
  %i.ht = insertelement <4 x i32> %i.hs, i32 %i.hp, i64 2
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.hq, i64 3
  %i.hv = icmp eq <4 x i32> %i.hm, splat (i32 2)
  %i.hw = icmp eq <4 x i32> %i.hu, splat (i32 2)
  %i.hx = zext <4 x i1> %i.hv to <4 x i32>
  %i.hy = zext <4 x i1> %i.hw to <4 x i32>
  %i.hz = add <4 x i32> %vec.phi275, %i.hx        ; 2 uses
  %i.ia = add <4 x i32> %vec.phi276, %i.hy        ; 2 uses
  %index.next285 = add nuw i64 %index274, 8       ; 2 uses
  %i.ib = icmp eq i64 %index.next285, %n.vec272
  br i1 %i.ib, label %middle.block286, label %vector.body273, !llvm.loop !1760

middle.block286:                                  ; preds = %vector.body273
  %bin.rdx287 = add <4 x i32> %i.ia, %i.hz
  %i.ic = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx287) ; 2 uses
  %cmp.n288 = icmp eq i64 %i.gu, %n.vec272
  br i1 %cmp.n288, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader296

.lr.ph.i.i.i.preheader296:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block286
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ic, %middle.block286 ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.gm, %.lr.ph.i.i.i.preheader ], [ %i.gw, %middle.block286 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader296, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader296 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.ig, %.lr.ph.i.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i.i.i.preheader296 ] ; 2 uses
  %i.id = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !332
  %i.ie = icmp eq i32 %i.id, 2
  %i.if = zext i1 %i.ie to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.if ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ig, %i.go
  br i1 %.not.i.i1.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1761

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block286
  %spec.select.i.i.i.lcssa = phi i32 [ %i.ic, %middle.block286 ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.not117 = icmp eq i32 %spec.select.i.i.i.lcssa, 0
  br i1 %.not117, label %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, label %bb.ak

_ZN7testing4Test15HasFatalFailureEv.exit.preheader: ; preds = %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i
  %i.ih = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.ii = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = lshr exact i64 %i.il, 3
  %i.in = trunc i64 %i.im to i32
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, %_ZN7testing4Test15HasFatalFailureEv.exit
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %_ZN7testing4Test15HasFatalFailureEv.exit ], [ 1, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ] ; 2 uses
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %_ZN7testing4Test15HasFatalFailureEv.exit ], [ 0, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ] ; 6 uses
  %i.ip = phi ptr [ %i.lb, %_ZN7testing4Test15HasFatalFailureEv.exit ], [ %i.ii, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ]
  %i.iq = load ptr, ptr %i.bo, align 8, !tbaa !465
  %i.ir = load ptr, ptr %i.bj, align 8, !tbaa !462 ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = shl i64 %i.iu, 30
  %i.iw = ashr i64 %i.iv, 32
  %.not.i.i66 = icmp slt i64 %indvars.iv166, %i.iw
  call void @llvm.assume(i1 %.not.i.i66)
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv166
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !97 ; 2 uses
  %i.iz = icmp sgt i32 %i.iy, -1
  call void @llvm.assume(i1 %i.iz)
  %i.ja = zext nneg i32 %i.iy to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !390
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.jc)
  %i.jd = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !83, !range !71, !noundef !72
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i68, label %_ZN7testing4Test15HasFatalFailureEv.exit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i68: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.jf = load ptr, ptr %i.bo, align 8, !tbaa !465
  %i.jg = load ptr, ptr %i.bj, align 8, !tbaa !462 ; 2 uses
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = shl i64 %i.jj, 30
  %i.jl = ashr i64 %i.jk, 32
  %.not.i.i67 = icmp slt i64 %indvars.iv166, %i.jl
  call void @llvm.assume(i1 %.not.i.i67)
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv166
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !97 ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, -1
  call void @llvm.assume(i1 %i.jo)
  %i.jp = zext nneg i32 %i.jn to i64
  %i.jq = load ptr, ptr %i.bk, align 8, !tbaa !405
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.jp
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !390
  %i.jt = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.js)
  br i1 %i.jt, label %.preheader, label %_ZN7testing4Test15HasFatalFailureEv.exit

.preheader:                                       ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i68
  %i.ju = trunc nuw nsw i64 %indvars.iv166 to i32
  %.053143 = add nuw nsw i32 %i.ju, 1
  %i.jv = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.jw = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = lshr exact i64 %i.jz, 3
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = icmp slt i32 %.053143, %i.kb
  br i1 %i.kc, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71: ; preds = %.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71 ], [ %indvars.iv169, %.preheader ] ; 3 uses
  %i.kd = phi ptr [ %i.ks, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71 ], [ %i.jw, %.preheader ]
  %i.ke = load ptr, ptr %i.bo, align 8, !tbaa !465
  %i.kf = load ptr, ptr %i.bj, align 8, !tbaa !462 ; 2 uses
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = shl i64 %i.ki, 30
  %i.kk = ashr i64 %i.kj, 32
  %.not.i.i70 = icmp slt i64 %indvars.iv172, %i.kk
  call void @llvm.assume(i1 %.not.i.i70)
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv172
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !97 ; 2 uses
  %i.kn = icmp sgt i32 %i.km, -1
  call void @llvm.assume(i1 %i.kn)
  %i.ko = zext nneg i32 %i.km to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !390
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.kq)
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.kr = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.ks = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = lshr exact i64 %i.kv, 3
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = trunc nuw i64 %indvars.iv.next173 to i32
  %i.kz = icmp slt i32 %i.ky, %i.kx
  br i1 %i.kz, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread, !llvm.loop !1762

_ZN7testing4Test15HasFatalFailureEv.exit:         ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i68
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.la = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.lb = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = shl i64 %i.le, 29
  %i.lg = ashr i64 %i.lf, 32
  %i.lh = icmp slt i64 %indvars.iv.next167, %i.lg
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  br i1 %i.lh, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread, !llvm.loop !1763

bb.ak:                                            ; preds = %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i
  %i.li = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.lj = icmp eq i8 %i.li, 0
  br i1 %i.lj, label %bb.al, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i73, !prof !98

bb.al:                                            ; preds = %bb.ak
  %i.lk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i.i86 = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i.i86, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i73, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.ll = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i73

_ZN7testing8internal15GetUnitTestImplEv.exit.i73: ; preds = %bb.am, %bb.al, %bb.ak
  %i.lm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 368
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !194 ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i74, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i73
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75

bb.ao:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i73
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 360
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !387 ; 2 uses
  %.not4.i.i85 = icmp eq ptr %i.lr, null
  br i1 %.not4.i.i85, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75

bb.aq:                                            ; preds = %bb.ao
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lm, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75: ; preds = %bb.aq, %bb.ap, %bb.an
  %.0.i.i76 = phi ptr [ %i.lp, %bb.an ], [ %i.ls, %bb.ap ], [ %i.lt, %bb.aq ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i.i76, i64 56
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !433 ; 12 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.i.i76, i64 64
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !433 ; 3 uses
  %.not7.i.i.i77 = icmp eq ptr %i.lv, %i.lx
  br i1 %.not7.i.i.i77, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread, label %.lr.ph.i.i.i78.preheader

.lr.ph.i.i.i78.preheader:                         ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75
  %i.ly = ptrtoaddr ptr %i.lx to i64
  %i.lz = ptrtoaddr ptr %i.lv to i64
  %i.ma = add i64 %i.ly, -112
  %i.mb = sub i64 %i.ma, %i.lz                    ; 2 uses
  %i.mc = udiv i64 %i.mb, 112
  %i.md = add nuw nsw i64 %i.mc, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.mb, 784
  br i1 %min.iters.check252, label %.lr.ph.i.i.i78.preheader295, label %vector.ph253

vector.ph253:                                     ; preds = %.lr.ph.i.i.i78.preheader
  %n.vec254 = and i64 %i.md, 576460752303423480   ; 3 uses
  %i.me = mul i64 %n.vec254, 112
  %i.mf = getelementptr i8, ptr %i.lv, i64 %i.me
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next265, %vector.body255 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph253 ], [ %i.ni, %vector.body255 ]
  %vec.phi257 = phi <4 x i32> [ zeroinitializer, %vector.ph253 ], [ %i.nj, %vector.body255 ]
  %i.mg = mul i64 %index256, 112                  ; 8 uses
  %next.gep = getelementptr i8, ptr %i.lv, i64 %i.mg
  %i.mh = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep258 = getelementptr i8, ptr %i.mh, i64 112
  %i.mi = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep259 = getelementptr i8, ptr %i.mi, i64 224
  %i.mj = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep260 = getelementptr i8, ptr %i.mj, i64 336
  %i.mk = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep261 = getelementptr i8, ptr %i.mk, i64 448
  %i.ml = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep262 = getelementptr i8, ptr %i.ml, i64 560
  %i.mm = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep263 = getelementptr i8, ptr %i.mm, i64 672
  %i.mn = getelementptr i8, ptr %i.lv, i64 %i.mg
  %next.gep264 = getelementptr i8, ptr %i.mn, i64 784
  %i.mo = load i32, ptr %next.gep, align 8, !tbaa !332
  %i.mp = load i32, ptr %next.gep258, align 8, !tbaa !332
  %i.mq = load i32, ptr %next.gep259, align 8, !tbaa !332
  %i.mr = load i32, ptr %next.gep260, align 8, !tbaa !332
  %i.ms = insertelement <4 x i32> poison, i32 %i.mo, i64 0
  %i.mt = insertelement <4 x i32> %i.ms, i32 %i.mp, i64 1
  %i.mu = insertelement <4 x i32> %i.mt, i32 %i.mq, i64 2
  %i.mv = insertelement <4 x i32> %i.mu, i32 %i.mr, i64 3
  %i.mw = load i32, ptr %next.gep261, align 8, !tbaa !332
  %i.mx = load i32, ptr %next.gep262, align 8, !tbaa !332
  %i.my = load i32, ptr %next.gep263, align 8, !tbaa !332
  %i.mz = load i32, ptr %next.gep264, align 8, !tbaa !332
  %i.na = insertelement <4 x i32> poison, i32 %i.mw, i64 0
  %i.nb = insertelement <4 x i32> %i.na, i32 %i.mx, i64 1
  %i.nc = insertelement <4 x i32> %i.nb, i32 %i.my, i64 2
  %i.nd = insertelement <4 x i32> %i.nc, i32 %i.mz, i64 3
  %i.ne = icmp eq <4 x i32> %i.mv, splat (i32 2)
  %i.nf = icmp eq <4 x i32> %i.nd, splat (i32 2)
  %i.ng = zext <4 x i1> %i.ne to <4 x i32>
  %i.nh = zext <4 x i1> %i.nf to <4 x i32>
  %i.ni = add <4 x i32> %vec.phi, %i.ng           ; 2 uses
  %i.nj = add <4 x i32> %vec.phi257, %i.nh        ; 2 uses
  %index.next265 = add nuw i64 %index256, 8       ; 2 uses
  %i.nk = icmp eq i64 %index.next265, %n.vec254
  br i1 %i.nk, label %middle.block266, label %vector.body255, !llvm.loop !1764

middle.block266:                                  ; preds = %vector.body255
  %bin.rdx = add <4 x i32> %i.nj, %i.ni
  %i.nl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n267 = icmp eq i64 %i.md, %n.vec254
  br i1 %cmp.n267, label %_ZN7testing4Test15HasFatalFailureEv.exit87, label %.lr.ph.i.i.i78.preheader295

.lr.ph.i.i.i78.preheader295:                      ; preds = %.lr.ph.i.i.i78.preheader, %middle.block266
  %.09.i.i.i79.ph = phi i32 [ 0, %.lr.ph.i.i.i78.preheader ], [ %i.nl, %middle.block266 ]
  %.sroa.04.08.i.i.i80.ph = phi ptr [ %i.lv, %.lr.ph.i.i.i78.preheader ], [ %i.mf, %middle.block266 ]
  br label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i78.preheader295, %.lr.ph.i.i.i78
  %.09.i.i.i79 = phi i32 [ %spec.select.i.i.i81, %.lr.ph.i.i.i78 ], [ %.09.i.i.i79.ph, %.lr.ph.i.i.i78.preheader295 ]
  %.sroa.04.08.i.i.i80 = phi ptr [ %i.np, %.lr.ph.i.i.i78 ], [ %.sroa.04.08.i.i.i80.ph, %.lr.ph.i.i.i78.preheader295 ] ; 2 uses
  %i.nm = load i32, ptr %.sroa.04.08.i.i.i80, align 8, !tbaa !332
  %i.nn = icmp eq i32 %i.nm, 2
  %i.no = zext i1 %i.nn to i32
  %spec.select.i.i.i81 = add nuw nsw i32 %.09.i.i.i79, %i.no ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i80, i64 112 ; 2 uses
  %.not.i.i1.i82 = icmp eq ptr %i.np, %i.lx
  br i1 %.not.i.i1.i82, label %_ZN7testing4Test15HasFatalFailureEv.exit87, label %.lr.ph.i.i.i78, !llvm.loop !1765

_ZN7testing4Test15HasFatalFailureEv.exit87:       ; preds = %.lr.ph.i.i.i78, %middle.block266
  %spec.select.i.i.i81.lcssa = phi i32 [ %i.nl, %middle.block266 ], [ %spec.select.i.i.i81, %.lr.ph.i.i.i78 ]
  %.not118 = icmp eq i32 %spec.select.i.i.i81.lcssa, 0
  br i1 %.not118, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread, label %.preheader122

.preheader122:                                    ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit87
  %i.nq = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.nr = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = lshr exact i64 %i.nu, 3
  %i.nw = trunc i64 %i.nv to i32
  %i.nx = icmp sgt i32 %i.nw, 0
  br i1 %i.nx, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89: ; preds = %.preheader122, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89 ], [ 0, %.preheader122 ] ; 3 uses
  %i.ny = phi ptr [ %i.on, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89 ], [ %i.nr, %.preheader122 ]
  %i.nz = load ptr, ptr %i.bo, align 8, !tbaa !465
  %i.oa = load ptr, ptr %i.bj, align 8, !tbaa !462 ; 2 uses
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = shl i64 %i.od, 30
  %i.of = ashr i64 %i.oe, 32
  %.not.i.i88 = icmp slt i64 %indvars.iv, %i.of
  call void @llvm.assume(i1 %.not.i.i88)
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !97 ; 2 uses
  %i.oi = icmp sgt i32 %i.oh, -1
  call void @llvm.assume(i1 %i.oi)
  %i.oj = zext nneg i32 %i.oh to i64
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.oj
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !390
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ol)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.om = load ptr, ptr %i.bl, align 8, !tbaa !404
  %i.on = load ptr, ptr %i.bk, align 8, !tbaa !405 ; 2 uses
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = shl i64 %i.oq, 29
  %i.os = ashr i64 %i.or, 32
  %i.ot = icmp slt i64 %indvars.iv.next, %i.os
  br i1 %i.ot, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89, label %_ZN7testing4Test15HasFatalFailureEv.exit87.thread, !llvm.loop !1766

_ZN7testing4Test15HasFatalFailureEv.exit87.thread: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i89, %_ZN7testing4Test15HasFatalFailureEv.exit, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i71, %.preheader122, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, %.preheader, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit.i75, %_ZN7testing4Test15HasFatalFailureEv.exit87, %._crit_edge
  %i.ou = icmp eq i32 %.057147, %i.br
  %or.cond5 = select i1 %i.ou, i1 true, i1 %i.bg
  br i1 %or.cond5, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit87.thread
  %i.ov = load ptr, ptr %i.aw, align 8, !tbaa !494
  %i.ow = load ptr, ptr %i.as, align 8, !tbaa !94
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 112
  %i.oy = load ptr, ptr %i.ox, align 8
  call void %i.oy(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.ov) #48
  %i.oz = load ptr, ptr %i.bn, align 8, !tbaa !496, !noalias !1776 ; 2 uses
  %i.pa = load ptr, ptr %i.bm, align 8, !tbaa !496, !noalias !1777 ; 2 uses
  %.not4.i91 = icmp eq ptr %i.oz, %i.pa
  br i1 %.not4.i91, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %bb.ar, %.lr.ph.i92
  %.sroa.0113.0 = phi ptr [ %i.pb, %.lr.ph.i92 ], [ %i.oz, %bb.ar ]
  %i.pb = getelementptr inbounds i8, ptr %.sroa.0113.0, i64 -8 ; 3 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !491 ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !94
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(8) %i.pc) #48, !inline_history !1771
  %.not.i93 = icmp eq ptr %i.pb, %i.pa
  br i1 %.not.i93, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i92, !llvm.loop !1772

_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit: ; preds = %.lr.ph.i92, %bb.ar
  %i.pg = load ptr, ptr %i.aw, align 8, !tbaa !494
  %i.ph = load ptr, ptr %i.as, align 8, !tbaa !94
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 120
  %i.pj = load ptr, ptr %i.pi, align 8
end_hunk_17
begin_hunk_18_@_ZN7testing7MessagelsIA48_cEERS0_RKT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.b, ptr %i.g, align 8, !tbaa !96
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48 ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA48_cEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %1, i64 noundef %i.h) #48 ; 0 uses
  br label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA48_cEE.exit

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIA48_cEE.exit: ; preds = %bb.a, %bb.b
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal20ShouldRunTestOnShardEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = srem i32 %2, %0
  %i.b = icmp eq i32 %i.a, %1
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal24XmlUnitTestResultPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN7testing8internal24XmlUnitTestResultPrinterE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !82
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal25JsonUnitTestResultPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN7testing8internal25JsonUnitTestResultPrinterE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !82
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal12UnitTestImpl25set_os_stack_trace_getterEPNS0_27OsStackTraceGetterInterfaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(601) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !358  ; 4 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %1, ptr %i.a, align 8, !tbaa !358
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !465
  %i.c = load ptr, ptr %3, align 8, !tbaa !462
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %i.i = icmp sgt i32 %1, -1
  %i.j = icmp sle i32 %1, %i.h
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.465, i32 noundef 307) #48
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.547, i64 noundef 46) #48 ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.548, i64 noundef 28) #48 ; 0 uses
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1) #48 ; 2 uses
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.549, i64 noundef 23) #48 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %i.h) #48
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.506, i64 noundef 2) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.r = icmp sle i32 %1, %2
  %i.s = icmp sle i32 %2, %i.h
  %i.t = and i1 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.465, i32 noundef 310) #48
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.550, i64 noundef 46) #48 ; 0 uses
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.551, i64 noundef 29) #48 ; 0 uses
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %2) #48 ; 2 uses
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.552, i64 noundef 20) #48 ; 0 uses
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef %1) #48 ; 2 uses
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.387, i64 noundef 2) #48 ; 0 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef %i.h) #48
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.506, i64 noundef 2) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ac = sub nsw i32 %2, %1                      ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = sext i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = call noundef i32 @_ZN7testing8internal6Random8GenerateEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %i.ag)
  %i.ai = add nsw i32 %i.ah, %1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load ptr, ptr %3, align 8, !tbaa !462   ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.af
  %i.ao = getelementptr i8, ptr %i.an, i64 -4     ; 2 uses
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !97
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !97
  store i32 %i.aq, ptr %i.al, align 4, !tbaa !97
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !97
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ar = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !1819
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_ZN7testing8internal31GetCurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #25 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.d = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.f = add nsw i32 %1, 1
  call void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(601) %i.e, i32 noundef %i.f)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal10SkipPrefixEPKcPS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #34 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #54 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !265    ; 2 uses
  %i.c = tail call i32 @strncmp(ptr noundef %i.b, ptr noundef nonnull %0, i64 noundef %i.a) #54
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.a
  store ptr %i.e, ptr %1, align 8, !tbaa !265
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal9ParseFlagEPKcS2_Pi(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvm::raw_os_ostream", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %i.a = tail call fastcc noundef ptr @_ZN7testing8internalL14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit

_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit:       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #48
  %i.c = load ptr, ptr %5, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.f, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.g, align 4, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %4, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.d, ptr %i.i, align 8, !tbaa !96
  %i.j = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.392, i64 noundef 20) #48 ; 0 uses
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  %i.k = icmp eq ptr %1, null
  %i.l = load ptr, ptr %5, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_ZN4llvm9StringRefC2EPKc.exit.i.i.i

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.186, i64 noundef 6) #48 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit

_ZN4llvm9StringRefC2EPKc.exit.i.i.i:              ; preds = %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.o, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.p, align 8, !tbaa !91
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.q, align 4, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm14raw_os_ostreamE, i64 16), ptr %3, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.m, ptr %i.s, align 8, !tbaa !96
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48 ; 2 uses
  %.not.i.i6 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i6, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.i
  %i.u = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %1, i64 noundef %i.t) #48 ; 0 uses
  br label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i: ; preds = %bb.c, %_ZN4llvm9StringRefC2EPKc.exit.i.i.i
  call void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %bb.b, %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i
  %i.v = call noundef zeroext i1 @_ZN7testing8internal10ParseInt32ERKNS_7MessageEPKcPi(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, ptr noundef %2)
  %i.w = load ptr, ptr %5, align 8, !tbaa !86     ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i7, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #48, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %.0 = phi i1 [ %i.v, %_ZN7testing7MessageD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN7testing8internalL14ParseFlagValueEPKcS2_b(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !76
  store i16 11565, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !82
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.f = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.38, i64 noundef 6) #48, !noalias !1824 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !76, !alias.scope !1824
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !79   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !80   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.h, ptr %4, align 8, !tbaa !79, !alias.scope !1824
  %i.o = load i64, ptr %i.i, align 8, !tbaa !82
  store i64 %i.o, ptr %i.g, align 8, !tbaa !82, !alias.scope !1824
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !80
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = phi i64 [ %i.l, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !80, !alias.scope !1824
  store ptr %i.i, ptr %i.f, align 8, !tbaa !79
  store i64 0, ptr %i.q, align 8, !tbaa !80
  store i8 0, ptr %i.i, align 8, !tbaa !82
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48, !noalias !1825 ; 2 uses
  %i.t = sub i64 4611686018427387903, %i.p
  %i.u = icmp ult i64 %i.t, %i.s
  br i1 %i.u, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16

bb.c:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.429) #50, !noalias !1825
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.v = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %1, i64 noundef %i.s) #48, !noalias !1825 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !76, !alias.scope !1825
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !79   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !80 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
end_hunk_18
begin_hunk_19_@_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIwEEvPiPPT_:bb.a
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.as, 8589934588              ; 3 uses
  %i.at = add nsw i64 %n.vec, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add i64 %index, %i.i                    ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %1, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = getelementptr i8, ptr %i.av, i64 24
  %wide.load = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !428
  %wide.load41 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !428
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.au ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x ptr> %wide.load, ptr %i.ay, align 8, !tbaa !428
  store <2 x ptr> %wide.load41, ptr %i.az, align 8, !tbaa !428
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1829

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.i, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.e
  %i.bb = add nsw i32 %i.ao, -1
  store i32 %i.bb, ptr %0, align 4, !tbaa !97
  %i.bc = add nsw i32 %.01929, -1
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader42 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !428
  %i.bf = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !428
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.ao, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !1830

.critedge:                                        ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread24, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge
  %.1 = phi i32 [ %i.bc, %._crit_edge ], [ %.01929, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.01929, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit ], [ %.01929, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread24 ], [ %.01929, %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i ]
  %i.bg = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.f
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !82
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %i.bk = add nsw i32 %.1, 1                      ; 2 uses
  %i.bl = load i32, ptr %0, align 4, !tbaa !97
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.b, label %._crit_edge32, !llvm.loop !1831

bb.f:                                             ; preds = %._crit_edge32
  call fastcc void @_ZN7testing8internalL17PrintColorEncodedEPKc()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge32
  %i.bn = load ptr, ptr %2, align 8, !tbaa !79    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.a
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.g
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !82
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing14InitGoogleTestEPiPPc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18InitGoogleTestImplIcEEvPiPPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal18InitGoogleTestImplIcEEvPiPPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.std::vector.86", align 8    ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E)
  %i.a = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %.not16 = icmp eq ptr %i.a, %i.c                ; 2 uses
  br i1 %.not16, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !82
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #49
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !264
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN7testing8internalL18GTestIsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !263
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #49
  br label %_ZN7testing8internalL18GTestIsInitializedEv.exit

_ZN7testing8internalL18GTestIsInitializedEv.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  br i1 %.not16, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN7testing8internalL18GTestIsInitializedEv.exit
  %i.p = load i32, ptr %0, align 4, !tbaa !97
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, align 8, !tbaa !264 ; 3 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !262 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10
  %.05.i.i.i.i8 = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10 ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i8, align 8, !tbaa !79 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9: ; preds = %.lr.ph.i.i.i.i7
  %i.w = load i64, ptr %i.u, align 8, !tbaa !82
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #49
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10: ; preds = %.lr.ph.i.i.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 32 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i7, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10
  store ptr %i.r, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !262
  %.pre = load i32, ptr %0, align 4, !tbaa !97
  %i.z = icmp eq i32 %.pre, 0
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  call void @_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIcEEvPiPPT_(ptr noundef nonnull %0, ptr noundef %1)
  %i.ac = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.e:                                             ; preds = %._crit_edge
  %i.ae = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i14 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i14, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.af = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %._crit_edge, %bb.e, %bb.f
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(601) %i.ag)
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  call void @_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !262 ; 7 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 16), align 8, !tbaa !263
  %.not.i.i15 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i15, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !76
  %i.al = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.aa
  br i1 %i.am, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.ab, align 8, !tbaa !80 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !79
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !82
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !82
  %.pre20 = load i64, ptr %i.ab, align 8, !tbaa !80
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = phi i64 [ %.pre20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.an, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !80
  store ptr %i.aa, ptr %3, align 8, !tbaa !79
  store i64 0, ptr %i.ab, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.at, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !262
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.g
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.pre21 = load ptr, ptr %3, align 8, !tbaa !79  ; 2 uses
  %i.au = icmp eq ptr %.pre21, %i.aa
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.av = load i64, ptr %i.aa, align 8, !tbaa !82
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %.pre21, i64 noundef %i.aw) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %0, align 4, !tbaa !97
  %i.ay = zext i32 %i.ax to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.ay
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !1832

bb.j:                                             ; preds = %bb.c, %_ZN7testing8internalL18GTestIsInitializedEv.exit, %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing14InitGoogleTestEPiPPw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18InitGoogleTestImplIwEEvPiPPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal18InitGoogleTestImplIwEEvPiPPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.std::vector.86", align 8    ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E)
  %i.a = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %.not16 = icmp eq ptr %i.a, %i.c                ; 2 uses
  br i1 %.not16, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !82
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #49
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !264
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN7testing8internalL18GTestIsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !263
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #49
  br label %_ZN7testing8internalL18GTestIsInitializedEv.exit

_ZN7testing8internalL18GTestIsInitializedEv.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  br i1 %.not16, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN7testing8internalL18GTestIsInitializedEv.exit
  %i.p = load i32, ptr %0, align 4, !tbaa !97
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, align 8, !tbaa !264 ; 3 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !262 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10
  %.05.i.i.i.i8 = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10 ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i8, align 8, !tbaa !79 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9: ; preds = %.lr.ph.i.i.i.i7
  %i.w = load i64, ptr %i.u, align 8, !tbaa !82
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #49
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10: ; preds = %.lr.ph.i.i.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i8, i64 32 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i7, !llvm.loop !6

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i10
  store ptr %i.r, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !262
  %.pre = load i32, ptr %0, align 4, !tbaa !97
  %i.z = icmp eq i32 %.pre, 0
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  call void @_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIwEEvPiPPT_(ptr noundef nonnull %0, ptr noundef %1)
  %i.ac = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !98

bb.e:                                             ; preds = %._crit_edge
  %i.ae = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %.not.i.i14 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i14, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  %i.af = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %._crit_edge, %bb.e, %bb.f
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(601) %i.ag)
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  call void @_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !262 ; 7 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 16), align 8, !tbaa !263
  %.not.i.i15 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i15, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !76
  %i.al = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.aa
  br i1 %i.am, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.ab, align 8, !tbaa !80 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !79
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !82
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !82
  %.pre20 = load i64, ptr %i.ab, align 8, !tbaa !80
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = phi i64 [ %.pre20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.an, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !80
  store ptr %i.aa, ptr %3, align 8, !tbaa !79
  store i64 0, ptr %i.ab, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.at, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !262
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.g
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.pre21 = load ptr, ptr %3, align 8, !tbaa !79  ; 2 uses
  %i.au = icmp eq ptr %.pre21, %i.aa
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.av = load i64, ptr %i.aa, align 8, !tbaa !82
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %.pre21, i64 noundef %i.aw) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %0, align 4, !tbaa !97
  %i.ay = zext i32 %i.ax to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.ay
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !1833

bb.j:                                             ; preds = %bb.c, %_ZN7testing8internalL18GTestIsInitializedEv.exit, %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing14InitGoogleTestEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i32 1, ptr %i.a, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  store ptr @.str.393, ptr %i.b, align 8, !tbaa !265
  call void @_ZN7testing8internal18InitGoogleTestImplIcEEvPiPPT_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing7TempDirB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store ptr @.str.394, ptr %i.a, align 8, !tbaa !265
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.395, ptr %i.b, align 8, !tbaa !265
  call fastcc void @_ZN7testingL13GetDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c(ptr dead_on_unwind noalias writable align 8 %0, ptr %i.a, i64 2, ptr noundef nonnull @.str.396)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN7testingL13GetDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree nonnull readonly captures(address) %1, i64 range(i64 1, 3) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #0 {
.lr.ph.preheader:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.idx = shl nuw nsw i64 %2, 3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.01935 = phi ptr [ %i.bb, %bb.n ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.f = load ptr, ptr %.01935, align 8, !tbaa !265
  %i.g = tail call noundef ptr @getenv(ptr noundef %i.f) #48 ; 10 uses
  %.not21 = icmp eq ptr %i.g, null
  br i1 %.not21, label %bb.n, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.h = load i8, ptr %i.g, align 1, !tbaa !82
  %.not22 = icmp eq i8 %i.h, 0
  br i1 %.not22, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #54
  %i.j = getelementptr i8, ptr %i.g, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !82
  %.not23 = icmp eq i8 %i.l, 47
  br i1 %.not23, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !76
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #48
  store i64 %i.n, ptr %i.d, align 8, !tbaa !81
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #48 ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !79
  %i.q = load i64, ptr %i.d, align 8, !tbaa !81
  store i64 %i.q, ptr %i.m, align 8, !tbaa !82
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.p, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.g, align 1, !tbaa !82
  store i8 %i.s, ptr %i.r, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.g, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.t = load i64, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !80
  %i.v = load ptr, ptr %4, align 8, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #48
  %i.x = load i64, ptr %i.u, align 8, !tbaa !80
  %i.y = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.x, i64 noundef 0, i64 noundef 1, i8 noundef signext 47) #48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !76
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !79  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #48
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !81
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.g, label %._crit_edge.i.i24

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #48 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !79
  %i.af = load i64, ptr %i.c, align 8, !tbaa !81
  store i64 %i.af, ptr %i.z, align 8, !tbaa !82
  br label %._crit_edge.i.i24

._crit_edge.i.i24:                                ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ag = phi ptr [ %i.ae, %bb.g ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  switch i64 %i.ac, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]
end_hunk_19
begin_hunk_20_@_ZN7testing6SrcDirB5cxx11Ev:bb.a
  br i1 %.not1820.i.i.i, label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %bb.f
  %i.t = phi i64 [ %i.ab, %bb.f ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ]
  %i.u = phi ptr [ %i.ac, %bb.f ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ] ; 2 uses
  %.sroa.013.022.i.i.i = phi ptr [ %.sroa.013.1.i.i.i, %bb.f ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ] ; 5 uses
  %.sroa.010.021.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ] ; 2 uses
  %i.v = load i8, ptr %.sroa.010.021.i.i.i, align 1, !tbaa !82, !noalias !1836 ; 2 uses
  %i.w = icmp ne i8 %i.v, 47
  %i.x = icmp eq ptr %.sroa.013.022.i.i.i, %i.u
  %or.cond.i.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i.i, label %.sink.split.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds i8, ptr %.sroa.013.022.i.i.i, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !82, !noalias !1836
  %.not.i.i.i = icmp eq i8 %i.z, 47
  br i1 %.not.i.i.i, label %bb.f, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.e, %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i.i, i64 1
  store i8 %i.v, ptr %.sroa.013.022.i.i.i, align 1, !tbaa !82, !noalias !1836
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !79, !noalias !1836
  %.pre2.i.i = load i64, ptr %i.o, align 8, !tbaa !80, !noalias !1836
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i.i, %bb.e
  %i.ab = phi i64 [ %i.t, %bb.e ], [ %.pre2.i.i, %.sink.split.i.i.i ] ; 2 uses
  %i.ac = phi ptr [ %i.u, %bb.e ], [ %.pre.i.i, %.sink.split.i.i.i ] ; 3 uses
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.022.i.i.i, %bb.e ], [ %i.aa, %.sink.split.i.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i.i, i64 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  %.not18.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not18.i.i.i, label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %.sroa.013.0.lcssa.i.i.i = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ], [ %.sroa.013.1.i.i.i, %bb.f ]
  %.lcssa19.i.i.i = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ], [ %i.ac, %bb.f ] ; 2 uses
  %i.af = ptrtoint ptr %.sroa.013.0.lcssa.i.i.i to i64
  %i.ag = ptrtoint ptr %.lcssa19.i.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  store i64 %i.ah, ptr %i.o, align 8, !tbaa !80, !noalias !1836
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa19.i.i.i, i64 %i.ah
  store i8 0, ptr %i.ai, align 1, !tbaa !82, !noalias !1836
  %i.aj = load ptr, ptr %2, align 8, !tbaa !264, !noalias !1836 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !262, !noalias !1836 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.aj, %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !79, !noalias !1836 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !82, !noalias !1836
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #49, !noalias !1836
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !264, !noalias !1836
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.as = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.aj, %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !263, !noalias !1836
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #49, !noalias !1836
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48, !noalias !1836
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48, !noalias !1836
  call void @_ZNK7testing8internal8FilePath14RemoveFileNameEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1), !noalias !1836
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ay, ptr %4, align 8, !tbaa !76, !alias.scope !1836
  %i.az = load ptr, ptr %3, align 8, !tbaa !79, !noalias !1836 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !80, !noalias !1836 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48, !noalias !1836
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !81, !noalias !1836
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.bd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #48 ; 2 uses
  store ptr %i.bd, ptr %4, align 8, !tbaa !79, !alias.scope !1836
  %i.be = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !1836
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !82, !alias.scope !1836
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.bf = phi ptr [ %i.bd, %bb.h ], [ %i.ay, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 2 uses
  switch i64 %i.bb, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !82
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !1836 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !80, !alias.scope !1836
  %i.bj = load ptr, ptr %4, align 8, !tbaa !79, !alias.scope !1836
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48, !noalias !1836
  %i.bl = load ptr, ptr %3, align 8, !tbaa !79, !noalias !1836 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZN7testing8internal8FilePathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !82, !noalias !1836
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #49
  br label %_ZN7testing8internal8FilePathD2Ev.exit.i

_ZN7testing8internal8FilePathD2Ev.exit.i:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48, !noalias !1836
  %i.bq = load ptr, ptr %1, align 8, !tbaa !79, !noalias !1836 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.e
  br i1 %i.br, label %_ZN7testingL29GetCurrentExecutableDirectoryB5cxx11Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit.i
  %i.bs = load i64, ptr %i.e, align 8, !tbaa !82, !noalias !1836
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #49
  br label %_ZN7testingL29GetCurrentExecutableDirectoryB5cxx11Ev.exit

_ZN7testingL29GetCurrentExecutableDirectoryB5cxx11Ev.exit: ; preds = %_ZN7testing8internal8FilePathD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48, !noalias !1836
  %i.bu = load ptr, ptr %4, align 8, !tbaa !79
  call fastcc void @_ZN7testingL13GetDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c(ptr dead_on_unwind noalias writable align 8 %0, ptr %i.c, i64 1, ptr noundef %i.bu)
  %i.bv = load ptr, ptr %4, align 8, !tbaa !79    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ay
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testingL29GetCurrentExecutableDirectoryB5cxx11Ev.exit
  %i.bx = load i64, ptr %i.ay, align 8, !tbaa !82
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testingL29GetCurrentExecutableDirectoryB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.testing::internal::TraceInfo", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !80
  store i8 0, ptr %i.b, align 8, !tbaa !82
  store ptr %1, ptr %4, align 8, !tbaa !356
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !357
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3) #48
  %i.e = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.h = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  call void @_ZN7testing8UnitTest14PushGTestTraceERKNS_8internal9TraceInfoE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZN7testing8internal9TraceInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.k = load i64, ptr %i.b, align 8, !tbaa !82
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #49
  br label %_ZN7testing8internal9TraceInfoD2Ev.exit

_ZN7testing8internal9TraceInfoD2Ev.exit:          ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #48
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing11ScopedTraceD2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN7testing8UnitTest13PopGTestTraceEv(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal13DeathTestImplD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #50
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal16ForkingDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #50
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15NoExecDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
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
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal13DeathTestImplE, i64 16), ptr %0, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !211
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i32 416, ptr %i.a, align 4, !tbaa !97
  call void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.509)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.e, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !204  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !206
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.l = atomicrmw sub ptr %i.k, i32 1 acq_rel, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !206
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !82
  tail call void %i.p(ptr noundef %i.q) #48, !inline_history !3
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.c, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal13ExecDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal16DeathTestFactoryD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal23DefaultDeathTestFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #49
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal35DefaultGlobalTestPartResultReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal38DefaultPerThreadTestPartResultReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal27PrettyUnitTestResultPrinterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal27PrettyUnitTestResultPrinter18OnTestProgramStartERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal27PrettyUnitTestResultPrinter22OnEnvironmentsSetUpEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing17TestEventListener16OnTestSuiteStartERKNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing17TestEventListener14OnTestSuiteEndERKNS_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal27PrettyUnitTestResultPrinter25OnEnvironmentsTearDownEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal27PrettyUnitTestResultPrinter16OnTestProgramEndERKNS_8UnitTestE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing17TestEventListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal26BriefUnitTestResultPrinterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #49
  ret void
}
end_hunk_20
begin_hunk_21_@_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE10DescribeToEPSo:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.516, i32 noundef 245) #48
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.517, i64 noundef 37) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !289
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !511
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.516, i32 noundef 251) #48
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.517, i64 noundef 37) #48 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !289
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !511
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true) #48
  ret void
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal5posix6FDOpenEiPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call noalias ptr @fdopen(i32 noundef %0, ptr noundef %1) #48
  ret ptr %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !204
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  tail call void %i.k(ptr noundef %i.l) #48, !inline_history !3
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #49
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind
declare void @_ZN4llvm14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #35

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @clone(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef i32 @_ZN7testing8internalL22ExecDeathTestChildMainEPv(ptr nofree noundef readonly captures(none) %0) #9 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %8 = alloca %"class.std::allocator", align 1    ; 2 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %14 = alloca %"class.std::allocator", align 1   ; 2 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %22 = alloca %"class.std::allocator", align 1   ; 2 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !272
  %i.d = tail call i32 @close(i32 noundef %i.c) #48
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %.critedge9

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #51
  %i.g = load i32, ptr %i.f, align 4, !tbaa !97
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.b, label %.critedge, !llvm.loop !1837

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.8)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  store i32 1185, ptr %i.a, align 4, !tbaa !97
  call void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.418)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) #52
  unreachable

.critedge9:                                       ; preds = %bb.b
  %i.i = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !98

bb.d:                                             ; preds = %.critedge9
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  %i.l = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #48, !inline_history !296 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #48, !inline_history !296
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %.critedge9, %bb.d, %bb.e
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !103
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79   ; 3 uses
  %i.p = tail call i32 @chdir(ptr noundef %i.o) #48
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.419, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.o)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.420)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #48
  call void @_ZN7testing8internal23GetLastErrnoDescriptionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %15)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %10) #52
  unreachable

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !265
  %i.s = tail call i32 @execv(ptr noundef %i.r, ptr noundef nonnull %i.q) #48 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.421, ptr noundef nonnull align 1 dereferenceable(1) %22)
  %i.t = load ptr, ptr %0, align 8, !tbaa !271
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !265
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %i.u)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.422)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %i.o)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.423)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #48
  call void @_ZN7testing8internal23GetLastErrnoDescriptionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %23)
  call fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %16) #52
  unreachable
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @_ZN7testing8internalL21StackLowerThanAddressEPKvPb(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %1) unnamed_addr #36 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  %i.b = icmp ult ptr %i.a, %0
  %i.c = zext i1 %i.b to i8
  store i8 %i.c, ptr %1, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void
}

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare i32 @execv(ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !281
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !279
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !281
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  tail call void %i.k(ptr noundef %i.l) #48, !inline_history !1838
  br label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !281
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !279
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !281
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  tail call void %i.k(ptr noundef %i.l) #48, !inline_history !43
  br label %_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !284  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !286
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !284
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !286
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !82
  tail call void %i.k(ptr noundef %i.l) #48, !inline_history !1839
  br label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit

_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE7DestroyEv.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !284  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !286
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

end_hunk_21
