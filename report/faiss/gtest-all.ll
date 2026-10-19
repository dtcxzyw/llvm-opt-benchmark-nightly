Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/gtest-all?download=true
inline.NumInlined: 8800
inline.NumDeleted: 2313
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7testing8internal16BoolFromGTestEnvEPKcb:bb.a
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.l) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.tail, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7testing8internal16InDeathTestChildEv() local_unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 8), align 8, !tbaa !79
  %i.b = icmp eq i64 %i.a, 10
  br i1 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, align 8, !tbaa !78 ; 2 uses
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
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !79
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
  store i32 %1, ptr %0, align 4, !tbaa !578
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
  store i32 %1, ptr %0, align 4, !tbaa !580
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  call void @_ZN7testing14ExitedWithCodeC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 0)
  %i.a = and i32 %0, 127
  %i.b = icmp ne i32 %i.a, 0
  %i.c = lshr i32 %0, 8
  %i.d = and i32 %i.c, 255
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp ne i32 %i.d, %i.e
  %.not2 = select i1 %i.b, i1 true, i1 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  ret i1 %.not2
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal23GetLastErrnoDescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #59
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !75
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @strerror(i32 noundef %i.b) #58 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !75
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
  unreachable

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = phi ptr [ %i.d, %.thread ], [ %i.f, %bb.b ] ; 2 uses
  %i.i = phi ptr [ @.str.6, %.thread ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #58 ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc11.i:                                       ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #55 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !78
  store i64 %i.j, ptr %i.h, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.h, %bb.c ] ; 3 uses
  switch i64 %i.j, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.i, align 1, !tbaa !81
  store i8 %i.q, ptr %i.p, align 1, !tbaa !81
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.i, i64 %i.j, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.r, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal9DeathTestC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing8internal9DeathTestE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !185
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !75
  %i.k = invoke noalias noundef nonnull dereferenceable(62) ptr @_Znwm(i64 noundef 62) #55
          to label %.noexc6 unwind label %bb.f    ; 3 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.k, ptr %1, align 8, !tbaa !78
  store i64 61, ptr %i.j, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.k, ptr noundef nonnull align 1 dereferenceable(61) @.str.7, i64 61, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 61, ptr %i.l, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 61
  store i8 0, ptr %i.m, align 1, !tbaa !81
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.unreachable unwind label %bb.g

.unreachable:                                     ; preds = %.noexc6
  unreachable

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.g:                                             ; preds = %.noexc6
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  %i.r = load i64, ptr %i.j, align 8, !tbaa !81
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.f
  %.pn = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.o, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %common.resume

bb.h:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !188
  %i.k = tail call noundef ptr @_ZN7testing8internal5posix6FDOpenEiPKc(i32 noundef %i.j, ptr noundef nonnull @.str.383) ; 3 uses
  %i.l = tail call i32 @fputc(i32 noundef 73, ptr noundef %i.k) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !78
  %fputs7 = tail call i32 @fputs(ptr %i.m, ptr %i.k) ; 0 uses
  %i.n = tail call i32 @fflush(ptr noundef %i.k)  ; 0 uses
  tail call void @_exit(i32 noundef 1) #56
  unreachable

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !190
  %i.p = load ptr, ptr %0, align 8, !tbaa !78
  %fputs = tail call i32 @fputs(ptr %i.p, ptr %i.o) #60 ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !190
  %i.r = tail call i32 @fflush(ptr noundef %i.q)  ; 0 uses
  tail call void @_ZN7testing8internal5posix5AbortEv() #56
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef %0, ptr nofree noundef align 8 captures(none) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.ae, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !191  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !195
  store ptr %i.k, ptr %i.i, align 8, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !81
  store i64 %i.n, ptr %i.l, align 8, !tbaa !81
  store ptr null, ptr %i.j, align 8, !tbaa !195
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !87
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %0, ptr noundef nonnull align 8 %5, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !87
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !195  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !197
  %.not.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i5, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.h, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !195
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !197
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !81
  invoke void %i.aa(ptr noundef %i.ab)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.i, !inline_history !3

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #61, !inline_history !198
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.f, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.g, %bb.h
  ret i1 %i.r

bb.j:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #58
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !197
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !197
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !81
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit unwind label %bb.d, !inline_history !581

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
  %i.a = load ptr, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, align 8, !tbaa !78
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
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = load i32, ptr %i.c, align 4, !tbaa !203
  %i.e = call i64 @read(i32 noundef %i.d, ptr noundef nonnull %i.b, i64 noundef 1)
  %i.f = trunc i64 %i.e to i32
  switch i32 %i.f, label %.critedge [
    i32 -1, label %bb.c
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #59
  %i.h = load i32, ptr %i.g, align 4, !tbaa !88
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.b, label %.critedge, !llvm.loop !582

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.j, align 8, !tbaa !205
  br label %.preheader

bb.e:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.b, align 1, !tbaa !81    ; 2 uses
  switch i8 %i.k, label %bb.af [
    i8 82, label %bb.f
    i8 84, label %bb.g
    i8 76, label %bb.h
    i8 73, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %i.l, align 8, !tbaa !205
  br label %.preheader

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 4, ptr %i.m, align 8, !tbaa !205
  br label %.preheader

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.n, align 8, !tbaa !205
end_hunk_0
begin_hunk_1_@_ZN7testing8internal13DeathTestImpl5AbortENS0_9DeathTest11AbortReasonE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i67: ; preds = %.noexc73, %bb.ay
  %i.gt = phi i64 [ %i.gc, %.noexc73 ], [ %i.fu, %bb.ay ] ; 2 uses
  %i.gu = phi ptr [ %i.ge, %.noexc73 ], [ %i.fr, %bb.ay ] ; 5 uses
  %i.gv = phi ptr [ %i.gn, %.noexc73 ], [ %i.fk, %bb.ay ]
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !79, !noalias !642
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gt
  store i8 0, ptr %i.gw, align 1, !tbaa !81, !noalias !642
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  store ptr %i.gx, ptr %4, align 8, !tbaa !75, !alias.scope !642
  %i.gy = load ptr, ptr %5, align 8, !tbaa !78, !noalias !642 ; 5 uses
  %i.gz = icmp eq ptr %i.gy, %i.fj
  br i1 %i.gz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75.thread, label %bb.bg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i67
  %i.ha = load i64, ptr %i.gu, align 8, !tbaa !79, !noalias !642 ; 5 uses
  %i.hb = icmp samesign ult i64 %i.ha, 16
  call void @llvm.assume(i1 %i.hb)
  %i.hc = add nuw nsw i64 %i.ha, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gx, ptr noundef nonnull align 8 dereferenceable(1) %i.fj, i64 %i.hc, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ha, ptr %i.hd, align 8, !tbaa !79, !alias.scope !642
  store ptr %i.fj, ptr %5, align 8, !tbaa !78, !noalias !642
  store i64 0, ptr %i.gu, align 8, !tbaa !79, !noalias !642
  store i8 0, ptr %i.fj, align 8, !tbaa !81, !noalias !642
  %i.he = add nuw nsw i64 %i.ha, 6
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i67
  store ptr %i.gy, ptr %4, align 8, !tbaa !78, !alias.scope !642
  %i.hf = load i64, ptr %i.fj, align 8, !tbaa !81, !noalias !642
  store i64 %i.hf, ptr %i.gx, align 8, !tbaa !81, !alias.scope !642
  %.pre.i69 = load i64, ptr %i.gu, align 8, !tbaa !79, !noalias !642 ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %.pre.i69, ptr %i.hg, align 8, !tbaa !79, !alias.scope !642
  store ptr %i.fj, ptr %5, align 8, !tbaa !78, !noalias !642
  store i64 0, ptr %i.gu, align 8, !tbaa !79, !noalias !642
  store i8 0, ptr %i.fj, align 8, !tbaa !81, !noalias !642
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.hh = icmp sgt i64 %.pre.i69, 9223372036854775801
  br i1 %i.hh, label %.invoke393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75: ; preds = %bb.bg
  %i.hi = add nsw i64 %.pre.i69, 6                ; 4 uses
  %i.hj = icmp eq ptr %i.gy, %i.gx
  br i1 %i.hj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75
  %i.hk = phi i64 [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75.thread ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75 ] ; 2 uses
  %i.hl = phi ptr [ %i.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75.thread ], [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75 ]
  %i.hm = phi i64 [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75.thread ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75 ] ; 4 uses
  %i.hn = phi ptr [ %i.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75.thread ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75 ] ; 2 uses
  %i.ho = icmp ult i64 %i.hm, 16
  call void @llvm.assume(i1 %i.ho)
  %.not.i.i.i78 = icmp samesign ugt i64 %i.hm, 9
  br i1 %.not.i.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i245, label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i75
  %i.hp = load i64, ptr %i.gx, align 8, !tbaa !81, !noalias !643 ; 2 uses
  %.not.i.i.i78297 = icmp ugt i64 %i.hi, %i.hp
  br i1 %.not.i.i.i78297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i245, label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77
  %i.hq = phi i64 [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77 ]
  %i.hr = phi ptr [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread ], [ %i.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77 ]
  %i.hs = phi i64 [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77 ]
  %i.ht = phi ptr [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread ], [ %i.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77 ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.hu, ptr noundef nonnull align 1 dereferenceable(6) @.str.19, i64 6, i1 false), !noalias !643
  %.pre301 = load ptr, ptr %4, align 8, !tbaa !78, !noalias !643
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i245: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77
  %i.hv = phi i64 [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77 ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread ] ; 5 uses
  %i.hw = phi i64 [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77 ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread ] ; 4 uses
  %i.hx = phi ptr [ %i.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77 ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread ]
  %i.hy = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77 ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i77.thread ] ; 2 uses
  %i.hz = icmp slt i64 %i.hw, -6
  br i1 %i.hz, label %.invoke393, label %bb.bi

.invoke393:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i245, %bb.bg
  %i.ia = phi ptr [ @.str.407, %bb.bg ], [ @.str.402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i245 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ia) #56
          to label %.cont394 unwind label %bb.cd

.cont394:                                         ; preds = %.invoke393
  unreachable

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i245
  %i.ib = icmp ugt i64 %i.hv, %i.hy
  br i1 %i.ib, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.ic = shl nuw i64 %i.hy, 1                    ; 2 uses
  %i.id = icmp ult i64 %i.hv, %i.ic
  br i1 %i.id, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %spec.store.select.i.i260 = call i64 @llvm.umin.i64(i64 %i.ic, i64 9223372036854775807)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0.i246 = phi i64 [ %spec.store.select.i.i260, %bb.bk ], [ %i.hv, %bb.bj ], [ %i.hv, %bb.bi ] ; 2 uses
  %i.ie = add nuw i64 %.0.i246, 1                 ; 2 uses
  %i.if = icmp slt i64 %i.ie, 0
  br i1 %i.if, label %bb.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i247, !prof !80

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc263 unwind label %bb.cd

.noexc263:                                        ; preds = %bb.bm
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i247: ; preds = %bb.bl
  %i.ig = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #55
          to label %.noexc264 unwind label %bb.cd ; 5 uses

.noexc264:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i247
  %.pre.i254.pre = load ptr, ptr %4, align 8, !tbaa !78 ; 4 uses
  switch i64 %i.hw, label %bb.bo [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i250
    i64 1, label %bb.bn
  ]

bb.bn:                                            ; preds = %.noexc264
  %i.ih = load i8, ptr %.pre.i254.pre, align 1, !tbaa !81
  store i8 %i.ih, ptr %i.ig, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i250

bb.bo:                                            ; preds = %.noexc264
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ig, ptr align 1 %.pre.i254.pre, i64 %i.hw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i250: ; preds = %.noexc264, %bb.bo, %bb.bn
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ii, ptr noundef nonnull align 1 dereferenceable(6) @.str.19, i64 6, i1 false)
  %i.ij = icmp eq ptr %.pre.i254.pre, %i.gx
  br i1 %i.ij, label %.noexc87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i250
  %i.ik = load i64, ptr %i.gx, align 8, !tbaa !81
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %.pre.i254.pre, i64 noundef %i.il) #57
  br label %.noexc87

.noexc87:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i257
  store ptr %i.ig, ptr %4, align 8, !tbaa !78
  store i64 %.0.i246, ptr %i.gx, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i81: ; preds = %.noexc87, %bb.bh
  %i.im = phi i64 [ %i.hv, %.noexc87 ], [ %i.hq, %bb.bh ] ; 2 uses
  %i.in = phi ptr [ %i.hx, %.noexc87 ], [ %i.ht, %bb.bh ] ; 4 uses
  %i.io = phi ptr [ %i.ig, %.noexc87 ], [ %.pre301, %bb.bh ]
  store i64 %i.im, ptr %i.in, align 8, !tbaa !79, !noalias !643
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.im
  store i8 0, ptr %i.ip, align 1, !tbaa !81, !noalias !643
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.iq, ptr %3, align 8, !tbaa !75, !alias.scope !643
  %i.ir = load ptr, ptr %4, align 8, !tbaa !78, !noalias !643 ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.gx
  br i1 %i.is, label %bb.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i81
  %i.it = load i64, ptr %i.in, align 8, !tbaa !79, !noalias !643 ; 3 uses
  %i.iu = icmp ult i64 %i.it, 16
  call void @llvm.assume(i1 %i.iu)
  %i.iv = add nuw nsw i64 %i.it, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iq, ptr noundef nonnull align 8 dereferenceable(1) %i.gx, i64 %i.iv, i1 false)
  br label %bb.bq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i81
  store ptr %i.ir, ptr %3, align 8, !tbaa !78, !alias.scope !643
  %i.iw = load i64, ptr %i.gx, align 8, !tbaa !81, !noalias !643
  store i64 %i.iw, ptr %i.iq, align 8, !tbaa !81, !alias.scope !643
  %.pre.i83 = load i64, ptr %i.in, align 8, !tbaa !79, !noalias !643
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.bp
  %i.ix = phi i64 [ %i.it, %bb.bp ], [ %.pre.i83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !79, !alias.scope !643
  store ptr %i.gx, ptr %4, align 8, !tbaa !78, !noalias !643
  store i64 0, ptr %i.in, align 8, !tbaa !79, !noalias !643
  store i8 0, ptr %i.gx, align 8, !tbaa !81, !noalias !643
  %i.iz = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ja = icmp eq i8 %i.iz, 0
  br i1 %i.ja, label %bb.br, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !89

bb.br:                                            ; preds = %bb.bq
  %i.jb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !635
  %.not.i.i.i90 = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i.i90, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.bt unwind label %bb.bu, !inline_history !635

bb.bt:                                            ; preds = %bb.bs
  %i.jc = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !635 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !635
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !635
  br label %.body91

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.bt, %bb.br, %bb.bq
  %i.je = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 568
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !186 ; 2 uses
  %.not.i89 = icmp eq ptr %i.jg, null
  br i1 %.not.i89, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !188
  %i.jj = call noalias noundef ptr @fdopen(i32 noundef %i.ji, ptr noundef nonnull @.str.383) #58 ; 3 uses
  %i.jk = call i32 @fputc(i32 noundef 73, ptr noundef %i.jj), !inline_history !644 ; 0 uses
  %i.jl = load ptr, ptr %3, align 8, !tbaa !78
  %fputs7.i = call i32 @fputs(ptr %i.jl, ptr %i.jj), !inline_history !644 ; 0 uses
  %i.jm = call i32 @fflush(ptr noundef %i.jj), !inline_history !644 ; 0 uses
  invoke void @_exit(i32 noundef 1) #56
          to label %.noexc93 unwind label %bb.ce, !inline_history !644

.noexc93:                                         ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.jn = load ptr, ptr @stderr, align 8, !tbaa !190
  %i.jo = load ptr, ptr %3, align 8, !tbaa !78
  %fputs.i = call i32 @fputs(ptr %i.jo, ptr %i.jn) #60, !inline_history !644 ; 0 uses
  %i.jp = load ptr, ptr @stderr, align 8, !tbaa !190
  %i.jq = call i32 @fflush(ptr noundef %i.jp), !inline_history !644 ; 0 uses
  call void @_ZN7testing8internal5posix5AbortEv() #56, !inline_history !644
  unreachable

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i152
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i162
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ca:                                            ; preds = %.invoke387, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i269, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i173
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.cb:                                            ; preds = %.invoke389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i203, %bb.au
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

bb.cc:                                            ; preds = %.invoke391, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i225, %bb.bd
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.cd:                                            ; preds = %.invoke393, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i247, %bb.bm
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.ce:                                            ; preds = %bb.bv
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %.body91

.body91:                                          ; preds = %bb.bu, %bb.ce
  %eh.lpad-body92 = phi { ptr, i32 } [ %i.jy, %bb.ce ], [ %i.jd, %bb.bu ] ; 2 uses
  %i.jz = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.iq
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %.body91
  %i.kb = load i64, ptr %i.iq, align 8, !tbaa !81
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %.body91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.cd
  %.pn = phi { ptr, i32 } [ %i.jx, %bb.cd ], [ %eh.lpad-body92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %eh.lpad-body92, %.body91 ] ; 2 uses
  %i.kd = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.gx
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.kf = load i64, ptr %i.gx, align 8, !tbaa !81
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.cc
  %.pn.pn = phi { ptr, i32 } [ %i.jw, %bb.cc ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ] ; 2 uses
  %i.kh = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.fj
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.kj = load i64, ptr %i.fj, align 8, !tbaa !81
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %bb.cb
  %.pn.pn.pn = phi { ptr, i32 } [ %i.jv, %bb.cb ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ] ; 2 uses
  %i.kl = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !81
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.ca
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ju, %bb.ca ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ] ; 2 uses
  %i.kq = load ptr, ptr %10, align 8, !tbaa !78   ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !81
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #57
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.bz, %_ZN7testing7MessageD2Ev.exit4.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %_ZN7testing7MessageD2Ev.exit4.i ], [ %i.jt, %bb.bz ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  %i.kv = load ptr, ptr %7, align 8, !tbaa !78    ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.ah
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %.body
  %i.kx = load i64, ptr %i.ah, align 8, !tbaa !81
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.by
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.js, %bb.by ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  %i.kz = load ptr, ptr %8, align 8, !tbaa !78    ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.y
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.lb = load i64, ptr %i.y, align 8, !tbaa !81
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.bx
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jr, %bb.bx ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ]
  %i.ld = load ptr, ptr %9, align 8, !tbaa !78    ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.n
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.lf = load i64, ptr %i.n, align 8, !tbaa !81
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

.critedge22:                                      ; preds = %bb.b
  tail call void @_exit(i32 noundef 1) #56
  unreachable
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal13DeathTestImpl6PassedEb(ptr noundef nonnull align 8 dereferenceable(60) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN7testing8internal15NoExecDeathTest10AssumeRoleEv:bb.a
  br i1 %i.pl, label %bb.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i401
  %i.pm = load i64, ptr %i.pe, align 8, !tbaa !79, !noalias !776 ; 3 uses
  %i.pn = icmp ult i64 %i.pm, 16
  call void @llvm.assume(i1 %i.pn)
  %i.po = add nuw nsw i64 %i.pm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pj, ptr noundef nonnull align 8 dereferenceable(1) %i.oi, i64 %i.po, i1 false)
  br label %bb.bx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i401
  store ptr %i.pk, ptr %23, align 8, !tbaa !78, !alias.scope !776
  %i.pp = load i64, ptr %i.oi, align 8, !tbaa !81, !noalias !776
  store i64 %i.pp, ptr %i.pj, align 8, !tbaa !81, !alias.scope !776
  %.pre.i403 = load i64, ptr %i.pe, align 8, !tbaa !79, !noalias !776
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402, %bb.bw
  %i.pq = phi i64 [ %i.pm, %bb.bw ], [ %.pre.i403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402 ]
  %i.pr = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.pq, ptr %i.pr, align 8, !tbaa !79, !alias.scope !776
  store ptr %i.oi, ptr %24, align 8, !tbaa !78, !noalias !776
  store i64 0, ptr %i.pe, align 8, !tbaa !79, !noalias !776
  store i8 0, ptr %i.oi, align 8, !tbaa !81, !noalias !776
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %.unreachable598 unwind label %bb.cg

.unreachable598:                                  ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %.critedge
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

bb.bz:                                            ; preds = %bb.bf
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452

bb.ca:                                            ; preds = %bb.bh
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %.body366

bb.cc:                                            ; preds = %bb.bj
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

bb.cd:                                            ; preds = %bb.bn, %bb.bl
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

bb.ce:                                            ; preds = %bb.br, %bb.bp
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

bb.cf:                                            ; preds = %bb.bv, %bb.bt
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

bb.cg:                                            ; preds = %bb.bx
  %i.qa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qb = load ptr, ptr %23, align 8, !tbaa !78   ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.pj
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432: ; preds = %bb.cg
  %i.qd = load i64, ptr %i.pj, align 8, !tbaa !81
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432, %bb.cf
  %.pn79 = phi { ptr, i32 } [ %i.pz, %bb.cf ], [ %i.qa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432 ], [ %i.qa, %bb.cg ] ; 2 uses
  %i.qf = load ptr, ptr %24, align 8, !tbaa !78   ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.oi
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434
  %i.qh = load i64, ptr %i.oi, align 8, !tbaa !81
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qi) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435, %bb.ce
  %.pn79.pn = phi { ptr, i32 } [ %i.py, %bb.ce ], [ %.pn79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435 ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434 ] ; 2 uses
  %i.qj = load ptr, ptr %25, align 8, !tbaa !78   ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.nh
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437
  %i.ql = load i64, ptr %i.nh, align 8, !tbaa !81
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438, %bb.cd
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.px, %bb.cd ], [ %.pn79.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438 ], [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ] ; 2 uses
  %i.qn = load ptr, ptr %26, align 8, !tbaa !78   ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440
  %i.qq = load i64, ptr %i.qo, align 8, !tbaa !81
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qr) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441, %bb.cc
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.pw, %bb.cc ], [ %.pn79.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441 ], [ %.pn79.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440 ] ; 2 uses
  %i.qs = load ptr, ptr %30, align 8, !tbaa !78   ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.qu = icmp eq ptr %i.qs, %i.qt
  br i1 %i.qu, label %.body366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443
  %i.qv = load i64, ptr %i.qt, align 8, !tbaa !81
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qw) #57
  br label %.body366

.body366:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444, %bb.cb, %_ZN7testing7MessageD2Ev.exit4.i359
  %.pn79.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mo, %_ZN7testing7MessageD2Ev.exit4.i359 ], [ %i.pv, %bb.cb ], [ %.pn79.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444 ], [ %.pn79.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #58
  %i.qx = load ptr, ptr %27, align 8, !tbaa !78   ; 2 uses
  %i.qy = icmp eq ptr %i.qx, %i.mc
  br i1 %i.qy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447: ; preds = %.body366
  %i.qz = load i64, ptr %i.mc, align 8, !tbaa !81
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.ra) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449: ; preds = %.body366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447, %bb.ca
  %.pn79.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pu, %bb.ca ], [ %.pn79.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447 ], [ %.pn79.pn.pn.pn.pn, %.body366 ] ; 2 uses
  %i.rb = load ptr, ptr %28, align 8, !tbaa !78   ; 2 uses
  %i.rc = icmp eq ptr %i.rb, %i.ls
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449
  %i.rd = load i64, ptr %i.ls, align 8, !tbaa !81
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.re) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450, %bb.bz
  %.pn79.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pt, %bb.bz ], [ %.pn79.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450 ], [ %.pn79.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449 ] ; 2 uses
  %i.rf = load ptr, ptr %29, align 8, !tbaa !78   ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.ln
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452
  %i.rh = load i64, ptr %i.ln, align 8, !tbaa !81
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.ri) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453, %bb.by
  %.pn79.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ps, %bb.by ], [ %.pn79.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453 ], [ %.pn79.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #58
  br label %bb.dq

.critedge91:                                      ; preds = %.preheader
  %i.rj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !88
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.rk, ptr %i.rl, align 8, !tbaa !208
  %i.rm = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.rn = icmp eq i8 %i.rm, 0
  br i1 %i.rn, label %bb.ch, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.ch:                                            ; preds = %.critedge91
  %i.ro = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.ro, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.cj unwind label %bb.ck, !inline_history !2

bb.cj:                                            ; preds = %bb.ci
  %i.rp = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %.body, %bb.dq, %bb.ck
  %common.resume.op = phi { ptr, i32 } [ %i.rq, %bb.ck ], [ %.pn79.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dq ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.ck:                                            ; preds = %bb.ci
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %.critedge91, %bb.ch, %bb.cj
  %i.rr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 504
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !222
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store i8 0, ptr %i.ru, align 8, !tbaa !230
  store i1 true, ptr @_ZN7testing8internalL26g_in_fast_death_test_childE, align 1
  br label %bb.dp

bb.cl:                                            ; preds = %.preheader601, %bb.cm
  %i.rv = load i32, ptr %i.lg, align 4, !tbaa !88
  %i.rw = call i32 @close(i32 noundef %i.rv)
  %i.rx = icmp eq i32 %i.rw, -1
  br i1 %i.rx, label %bb.cm, label %.critedge92

bb.cm:                                            ; preds = %bb.cl
  %i.ry = tail call ptr @__errno_location() #59
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !88
  %i.sa = icmp eq i32 %i.rz, 4
  br i1 %i.sa, label %bb.cl, label %.critedge2, !llvm.loop !741

.critedge2:                                       ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #58
  %i.sb = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 8 uses
  store ptr %i.sb, ptr %37, align 8, !tbaa !75
  %i.sc = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #55
          to label %bb.cn unwind label %bb.dg     ; 3 uses

bb.cn:                                            ; preds = %.critedge2
  store ptr %i.sc, ptr %37, align 8, !tbaa !78
  store i64 19, ptr %i.sb, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.sc, ptr noundef nonnull align 1 dereferenceable(19) @.str.15, i64 19, i1 false)
  %i.sd = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 19, ptr %i.sd, align 8, !tbaa !79
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 19
  store i8 0, ptr %i.se, align 1, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %37, i64 noundef 19, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 89)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i470 unwind label %bb.dh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i470: ; preds = %bb.cn
  %.pre = load ptr, ptr %37, align 8, !tbaa !78, !noalias !777 ; 6 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.pre, i64 108
  store i8 0, ptr %i.sf, align 1, !tbaa !81, !noalias !777
  %i.sg = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 10 uses
  store ptr %i.sg, ptr %36, align 8, !tbaa !75, !alias.scope !777
  %i.sh = icmp ne ptr %.pre, %i.sb
  call void @llvm.assume(i1 %i.sh)
  store ptr %.pre, ptr %36, align 8, !tbaa !78, !alias.scope !777
  %i.si = load i64, ptr %i.sb, align 8, !tbaa !81, !noalias !777
  store i64 %i.si, ptr %i.sg, align 8, !tbaa !81, !alias.scope !777
  %i.sj = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  store i64 108, ptr %i.sj, align 8, !tbaa !79, !alias.scope !777
  store ptr %i.sb, ptr %37, align 8, !tbaa !78, !noalias !777
  store i64 0, ptr %i.sd, align 8, !tbaa !79, !noalias !777
  store i8 0, ptr %i.sb, align 8, !tbaa !81, !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.sk = icmp ne ptr %.pre, %i.sg
  call void @llvm.assume(i1 %i.sk)
  %i.sl = load i64, ptr %i.sg, align 8, !tbaa !81, !noalias !778
  %i.sm = icmp ult i64 %i.sl, 115
  br i1 %i.sm, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i470
  %i.sn = getelementptr inbounds nuw i8, ptr %.pre, i64 108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.sn, ptr noundef nonnull align 1 dereferenceable(7) @.str.16, i64 7, i1 false), !noalias !778
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i483

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i470
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef 108, i64 noundef 0, ptr noundef nonnull @.str.16, i64 noundef 7)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i483_crit_edge unwind label %bb.di

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i483_crit_edge: ; preds = %bb.cp
  %.pre602 = load ptr, ptr %36, align 8, !tbaa !78, !noalias !778
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i483: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i483_crit_edge, %bb.co
  %i.so = phi ptr [ %.pre602, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i483_crit_edge ], [ %.pre, %bb.co ] ; 3 uses
  store i64 115, ptr %i.sj, align 8, !tbaa !79, !noalias !778
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 115
  store i8 0, ptr %i.sp, align 1, !tbaa !81, !noalias !778
  %i.sq = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  store ptr %i.sq, ptr %35, align 8, !tbaa !75, !alias.scope !778
  %i.sr = icmp ne ptr %i.so, %i.sg
  call void @llvm.assume(i1 %i.sr)
  store ptr %i.so, ptr %35, align 8, !tbaa !78, !alias.scope !778
  %i.ss = load i64, ptr %i.sg, align 8, !tbaa !81, !noalias !778
  store i64 %i.ss, ptr %i.sq, align 8, !tbaa !81, !alias.scope !778
  %i.st = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 115, ptr %i.st, align 8, !tbaa !79, !alias.scope !778
  store ptr %i.sg, ptr %36, align 8, !tbaa !78, !noalias !778
  store i64 0, ptr %i.sj, align 8, !tbaa !79, !noalias !778
  store i8 0, ptr %i.sg, align 8, !tbaa !81, !noalias !778
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58, !noalias !779
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc498 unwind label %bb.dj

.noexc498:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i483
  %i.su = load ptr, ptr %1, align 8, !tbaa !85, !noalias !779
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.sv, i32 noundef 1141)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i493 unwind label %bb.cq, !noalias !779 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i493:      ; preds = %.noexc498
  %i.sx = load ptr, ptr %1, align 8, !tbaa !85, !noalias !780
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef %i.sx)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i494 unwind label %bb.cq

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i494: ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i493
  %i.sy = load ptr, ptr %1, align 8, !tbaa !85, !noalias !779 ; 3 uses
  %.not.i.i.i495 = icmp eq ptr %i.sy, null
  br i1 %.not.i.i.i495, label %bb.cr, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i496

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i496: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i494
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !87
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8
  call void %i.tb(ptr noundef nonnull align 8 dereferenceable(128) %i.sy) #58, !inline_history !4
  br label %bb.cr

bb.cq:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i493, %.noexc498
  %i.tc = landingpad { ptr, i32 }
          cleanup
  %i.td = load ptr, ptr %1, align 8, !tbaa !85, !noalias !779 ; 3 uses
  %.not.i.i2.i490 = icmp eq ptr %i.td, null
  br i1 %.not.i.i2.i490, label %_ZN7testing7MessageD2Ev.exit4.i492, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i491

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i491: ; preds = %bb.cq
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !87
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8
  call void %i.tg(ptr noundef nonnull align 8 dereferenceable(128) %i.td) #58, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit4.i492

_ZN7testing7MessageD2Ev.exit4.i492:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i491, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58, !noalias !779
  br label %.body499

bb.cr:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i496, %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i494
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58, !noalias !779
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %bb.cs unwind label %bb.dk

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.th = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 7 uses
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !79, !noalias !781 ; 5 uses
  %i.tj = and i64 %i.ti, -2
  %i.tk = icmp eq i64 %i.tj, 9223372036854775806
  br i1 %i.tk, label %bb.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i502

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
          to label %.noexc512 unwind label %bb.dl

.noexc512:                                        ; preds = %bb.ct
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i502: ; preds = %bb.cs
  %i.tl = add nsw i64 %i.ti, 2                    ; 3 uses
  %i.tm = load ptr, ptr %34, align 8, !tbaa !78, !noalias !781 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 8 uses
  %i.to = icmp eq ptr %i.tm, %i.tn
  br i1 %i.to, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i503

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i511: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i502
  %i.tp = icmp ult i64 %i.ti, 16
  call void @llvm.assume(i1 %i.tp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i504

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i503: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i502
  %i.tq = load i64, ptr %i.tn, align 8, !tbaa !81, !noalias !781
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i504

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i504: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i503, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i511
  %i.tr = phi i64 [ %i.tq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i503 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i511 ]
  %.not.i.i.i505 = icmp ugt i64 %i.tl, %i.tr
  br i1 %.not.i.i.i505, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i504
end_hunk_2
begin_hunk_3_@_ZN7testing8internal14GetThreadCountEv:bb.a
  %i.bb = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !81
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret i64 %i.ao

bb.g:                                             ; preds = %bb.a, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIiEERS0_RKT_.exit, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i6, label %_ZN7testing7MessageD2Ev.exit8, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7: ; preds = %bb.g
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.bh) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit8

_ZN7testing7MessageD2Ev.exit8:                    ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i
  %i.bl = load i64, ptr %i.az, align 8, !tbaa !81
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bm) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %_ZN7testing7MessageD2Ev.exit8
  %.pn4 = phi { ptr, i32 } [ %i.bg, %_ZN7testing7MessageD2Ev.exit8 ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
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
  tail call fastcc void @_ZN7testing8internalL13CaptureStreamEiPKcPPNS0_14CapturedStreamE(i32 noundef 2, ptr noundef nonnull @.str.69, ptr noundef nonnull @_ZN7testing8internalL17g_captured_stderrE)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #19

declare i32 @close(i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7testing18TestEventListeners23SuppressEventForwardingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !222
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !230
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7testing8internal13ExecDeathTest10AssumeRoleEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"struct.testing::internal::ExecDeathTestArgs", align 8 ; 7 uses
  %9 = alloca %struct.sigaction, align 8          ; 5 uses
  %10 = alloca %struct.sigaction, align 8         ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %55 = alloca %"class.testing::Message", align 8 ; 8 uses
  %56 = alloca %"class.testing::Message", align 8 ; 8 uses
  %57 = alloca %"class.testing::Message", align 8 ; 8 uses
  %58 = alloca %"class.testing::Message", align 8 ; 8 uses
  %59 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.e = alloca [2 x i32], align 4                ; 7 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %93 = alloca %"class.testing::internal::Arguments", align 8 ; 15 uses
  %94 = alloca %"class.std::vector.91", align 8   ; 8 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.f = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.lj, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn111.pn.pn.pn.pn.pn, %bb.lj ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 568
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !186  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !185  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  %i.q = load i32, ptr %i.p, align 8, !tbaa !232
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !188
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.s, ptr %i.t, align 8, !tbaa !208
  br label %bb.lk

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  %i.u = call i32 @pipe(ptr noundef nonnull %i.e) #58
  %.not797 = icmp eq i32 %i.u, -1
  br i1 %.not797, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #58
  %i.v = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 8 uses
  store ptr %i.v, ptr %65, align 8, !tbaa !75
  %i.w = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #55
          to label %bb.h unwind label %bb.w       ; 3 uses

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.w, ptr %65, align 8, !tbaa !78
  store i64 19, ptr %i.v, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.w, ptr noundef nonnull align 1 dereferenceable(19) @.str.15, i64 19, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  store i64 19, ptr %i.x, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 19
  store i8 0, ptr %i.y, align 1, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %65, i64 noundef 19, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 89)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.h
  %.pre813 = load ptr, ptr %65, align 8, !tbaa !78, !noalias !943 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre813, i64 108
  store i8 0, ptr %i.z, align 1, !tbaa !81, !noalias !943
  %i.aa = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 10 uses
  store ptr %i.aa, ptr %64, align 8, !tbaa !75, !alias.scope !943
  %i.ab = icmp ne ptr %.pre813, %i.v
  call void @llvm.assume(i1 %i.ab)
  store ptr %.pre813, ptr %64, align 8, !tbaa !78, !alias.scope !943
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !81, !noalias !943
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !81, !alias.scope !943
  %i.ad = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 3 uses
  store i64 108, ptr %i.ad, align 8, !tbaa !79, !alias.scope !943
  store ptr %i.v, ptr %65, align 8, !tbaa !78, !noalias !943
  store i64 0, ptr %i.x, align 8, !tbaa !79, !noalias !943
  store i8 0, ptr %i.v, align 8, !tbaa !81, !noalias !943
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.ae = icmp ne ptr %.pre813, %i.aa
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !81, !noalias !944
  %i.ag = icmp ult i64 %i.af, 115
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre813, i64 108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ah, ptr noundef nonnull align 1 dereferenceable(7) @.str.16, i64 7, i1 false), !noalias !944
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i129

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef 108, i64 noundef 0, ptr noundef nonnull @.str.16, i64 noundef 7)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i129_crit_edge unwind label %bb.y

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i129_crit_edge: ; preds = %bb.j
  %.pre814 = load ptr, ptr %64, align 8, !tbaa !78, !noalias !944
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i129: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i129_crit_edge, %bb.i
  %i.ai = phi ptr [ %.pre814, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i129_crit_edge ], [ %.pre813, %bb.i ] ; 3 uses
  store i64 115, ptr %i.ad, align 8, !tbaa !79, !noalias !944
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 115
  store i8 0, ptr %i.aj, align 1, !tbaa !81, !noalias !944
  %i.ak = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 4 uses
  store ptr %i.ak, ptr %63, align 8, !tbaa !75, !alias.scope !944
  %i.al = icmp ne ptr %i.ai, %i.aa
  call void @llvm.assume(i1 %i.al)
  store ptr %i.ai, ptr %63, align 8, !tbaa !78, !alias.scope !944
  %i.am = load i64, ptr %i.aa, align 8, !tbaa !81, !noalias !944
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !81, !alias.scope !944
  %i.an = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 115, ptr %i.an, align 8, !tbaa !79, !alias.scope !944
  store ptr %i.aa, ptr %64, align 8, !tbaa !78, !noalias !944
  store i64 0, ptr %i.ad, align 8, !tbaa !79, !noalias !944
  store i8 0, ptr %i.aa, align 8, !tbaa !81, !noalias !944
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #58, !noalias !945
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %.noexc137 unwind label %bb.z

.noexc137:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i129
  %i.ao = load ptr, ptr %59, align 8, !tbaa !85, !noalias !945
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i32 noundef 1400)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %bb.k, !noalias !945 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %.noexc137
  %i.ar = load ptr, ptr %59, align 8, !tbaa !85, !noalias !946
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %66, ptr noundef %i.ar)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.k

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.as = load ptr, ptr %59, align 8, !tbaa !85, !noalias !945 ; 3 uses
  %.not.i.i.i136 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i136, label %bb.l, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !87
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #58, !inline_history !4
  br label %bb.l

bb.k:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i, %.noexc137
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %59, align 8, !tbaa !85, !noalias !945 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i2.i, label %_ZN7testing7MessageD2Ev.exit4.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i: ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #58, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #58, !noalias !945
  br label %.body

bb.l:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #58, !noalias !945
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %bb.m unwind label %bb.aa

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.bb = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 7 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !79, !noalias !947 ; 5 uses
  %i.bd = and i64 %i.bc, -2
  %i.be = icmp eq i64 %i.bd, 9223372036854775806
  br i1 %i.be, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i138

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
          to label %.noexc148 unwind label %bb.ab

.noexc148:                                        ; preds = %bb.n
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i138: ; preds = %bb.m
  %i.bf = add nsw i64 %i.bc, 2                    ; 3 uses
  %i.bg = load ptr, ptr %62, align 8, !tbaa !78, !noalias !947 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 8 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i147: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i138
  %i.bj = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i138
  %i.bk = load i64, ptr %i.bh, align 8, !tbaa !81, !noalias !947
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i140: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i147
  %i.bl = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i147 ]
  %.not.i.i.i141 = icmp ugt i64 %i.bf, %i.bl
  br i1 %.not.i.i.i141, label %bb.p, label %bb.o
end_hunk_3
begin_hunk_4_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
  %i.blm = load ptr, ptr %80, align 8, !tbaa !78  ; 2 uses
  %i.bln = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.blo = icmp eq ptr %i.blm, %i.bln
  br i1 %i.blo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775: ; preds = %_ZN7testing8internal9ArgumentsD2Ev.exit
  %i.blp = load i64, ptr %i.bln, align 8, !tbaa !81
  %i.blq = add i64 %i.blp, 1
  call void @_ZdlPvm(ptr noundef %i.blm, i64 noundef %i.blq) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777: ; preds = %_ZN7testing8internal9ArgumentsD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #58
  %i.blr = load ptr, ptr %74, align 8, !tbaa !78  ; 2 uses
  %i.bls = icmp eq ptr %i.blr, %i.lu
  br i1 %i.bls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777
  %i.blt = load i64, ptr %i.lu, align 8, !tbaa !81
  %i.blu = add i64 %i.blt, 1
  call void @_ZdlPvm(ptr noundef %i.blr, i64 noundef %i.blu) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  br label %bb.lk

.body583:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746, %bb.kx
  %.pn111.pn = phi { ptr, i32 } [ %.pn97, %bb.kx ], [ %.pn101.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770 ], [ %i.bja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746 ], [ %.pn116.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.jj ], [ %lpad.loopexit.split-lp1215, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7testing8internal9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #58
  br label %.body560

.body560:                                         ; preds = %bb.cy, %bb.cx, %.body583
  %.pn111.pn.pn = phi { ptr, i32 } [ %.pn111.pn, %.body583 ], [ %i.uj, %bb.cx ], [ %i.uj, %bb.cy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #58
  %i.blv = load ptr, ptr %80, align 8, !tbaa !78  ; 2 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.blx = icmp eq ptr %i.blv, %i.blw
  br i1 %i.blx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i781

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i781: ; preds = %.body560
  %i.bly = load i64, ptr %i.blw, align 8, !tbaa !81
  %i.blz = add i64 %i.bly, 1
  call void @_ZdlPvm(ptr noundef %i.blv, i64 noundef %i.blz) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783: ; preds = %.body560, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i781, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743
  %.pn111.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit743 ], [ %.pn111.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i781 ], [ %.pn111.pn.pn, %.body560 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #58
  %i.bma = load ptr, ptr %74, align 8, !tbaa !78  ; 2 uses
  %i.bmb = icmp eq ptr %i.bma, %i.lu
  br i1 %i.bmb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783
  %i.bmc = load i64, ptr %i.lu, align 8, !tbaa !81
  %i.bmd = add i64 %i.bmc, 1
  call void @_ZdlPvm(ptr noundef %i.bma, i64 noundef %i.bmd) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707
  %.pn111.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707 ], [ %.pn111.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784 ], [ %.pn111.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #58
  br label %bb.lj

bb.lj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %.pn111.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn111.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786 ], [ %.pn70.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  br label %common.resume

bb.lk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780, %bb.f
  %.061 = phi i32 [ 1, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780 ]
  ret i32 %.061
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !247    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !248  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !78 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !81
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #57
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !247
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #57
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !241    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !241
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !237
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !238
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #57
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.04 = phi ptr [ %i.l, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.01.04, align 8, !tbaa !239
  tail call void @free(ptr noundef %i.k) #58
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.04, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !241
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !6
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal23DefaultDeathTestFactory6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPNS0_9DeathTestE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef align 8 captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %8 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %10 = alloca %"class.testing::Matcher", align 8 ; 6 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.testing::Matcher", align 8 ; 4 uses
  %20 = alloca %"class.testing::Matcher", align 8 ; 4 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %.body.i, %.body.i114, %_ZN7testing7MessageD2Ev.exit4.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.x, %_ZN7testing7MessageD2Ev.exit4.i ], [ %.pn37.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %i.gh, %.body.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %i.hg, %.body.i114 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !185
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !232  ; 2 uses
  %i.m = add nsw i32 %i.l, 1                      ; 3 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !232
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.af, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 36 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !249  ; 2 uses
  %.not153 = icmp slt i32 %i.l, %i.o
  br i1 %.not153, label %bb.ad, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #58, !noalias !1041
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12), !noalias !1041
  %i.p = load ptr, ptr %12, align 8, !tbaa !85, !noalias !1041
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %i.m)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %bb.h, !noalias !1041 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %bb.g
  %i.s = load ptr, ptr %12, align 8, !tbaa !85, !noalias !1042
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef %i.s)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.h

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.t = load ptr, ptr %12, align 8, !tbaa !85, !noalias !1041 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #58, !inline_history !4
  br label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.h:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %12, align 8, !tbaa !85, !noalias !1041 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i2.i, label %_ZN7testing7MessageD2Ev.exit4.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i: ; preds = %bb.h
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #58, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58, !noalias !1041
  br label %common.resume

_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58, !noalias !1041
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.45, i64 noundef 18)
          to label %.noexc unwind label %bb.x     ; 6 uses

.noexc:                                           ; preds = %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 14 uses
  store ptr %i.ad, ptr %16, align 8, !tbaa !75, !alias.scope !1043
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !79 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ae, ptr %16, align 8, !tbaa !78, !alias.scope !1043
  %i.al = load i64, ptr %i.af, align 8, !tbaa !81
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !81, !alias.scope !1043
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.am = phi i64 [ %i.ai, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !79, !alias.scope !1043
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !78
  store i64 0, ptr %i.an, align 8, !tbaa !79
  store i8 0, ptr %i.af, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !79, !noalias !1044 ; 5 uses
  %i.aq = icmp sgt i64 %i.ap, 9223372036854775770
  br i1 %i.aq, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
          to label %.noexc47 unwind label %bb.y

.noexc47:                                         ; preds = %bb.k
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.j
  %i.ar = add nsw i64 %i.ap, 37                   ; 3 uses
  %i.as = load ptr, ptr %16, align 8, !tbaa !78, !noalias !1044 ; 3 uses
  %i.at = icmp eq ptr %i.as, %i.ad
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.au = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.au)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.av = load i64, ptr %i.ad, align 8, !tbaa !81, !noalias !1044
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aw = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i44 = icmp ugt i64 %i.ar, %i.aw
  br i1 %.not.i.i.i44, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.ax, ptr noundef nonnull align 1 dereferenceable(37) @.str.46, i64 37, i1 false), !noalias !1044
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.ap, i64 noundef 0, ptr noundef nonnull @.str.46, i64 noundef 37)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i_crit_edge unwind label %bb.y

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %16, align 8, !tbaa !78, !noalias !1044
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i_crit_edge, %bb.l
  %i.ay = phi ptr [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i_crit_edge ], [ %i.as, %bb.l ]
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !79, !noalias !1044
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ar
  store i8 0, ptr %i.az, align 1, !tbaa !81, !noalias !1044
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.ba, ptr %15, align 8, !tbaa !75, !alias.scope !1044
  %i.bb = load ptr, ptr %16, align 8, !tbaa !78, !noalias !1044 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ad
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bd = load i64, ptr %i.ao, align 8, !tbaa !79, !noalias !1044 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.bf, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bb, ptr %15, align 8, !tbaa !78, !alias.scope !1044
  %i.bg = load i64, ptr %i.ad, align 8, !tbaa !81, !noalias !1044
  store i64 %i.bg, ptr %i.ba, align 8, !tbaa !81, !alias.scope !1044
  %.pre.i46 = load i64, ptr %i.ao, align 8, !tbaa !79, !noalias !1044
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.n
  %i.bh = phi i64 [ %i.bd, %bb.n ], [ %.pre.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !79, !alias.scope !1044
  store ptr %i.ad, ptr %16, align 8, !tbaa !78, !noalias !1044
  store i64 0, ptr %i.ao, align 8, !tbaa !79, !noalias !1044
  store i8 0, ptr %i.ad, align 8, !tbaa !81, !noalias !1044
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #58
  %i.bj = load i32, ptr %i.n, align 4, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #58, !noalias !1045
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
end_hunk_4
begin_hunk_5_@_ZN7testing8internal2RE4InitEPKc:bb.a
_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %bb.n
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22, %bb.n, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %.pn.pn.pn, %bb.n ], [ %.pn.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.o:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.o, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @_ZdaPv(ptr noundef nonnull %i.d) #57
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK7testing15AssertionResult7messageEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78
  br label %_ZNK7testing15AssertionResult7messageEv.exit

_ZNK7testing15AssertionResult7messageEv.exit:     ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ @.str.6, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.e = load ptr, ptr %5, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.166, i64 noundef 10)
          to label %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit:       ; preds = %_ZNK7testing15AssertionResult7messageEv.exit
  %i.h = icmp eq ptr %2, null
  %i.i = load ptr, ptr %5, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br i1 %i.h, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #58
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.l = phi ptr [ %2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.188, %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit ]
  %i.m = phi i64 [ %i.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 6, %_ZN7testing7MessagelsIA11_cEERS0_RKT_.exit ]
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.l, i64 noundef %i.m)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  %i.o = load ptr, ptr %5, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.167, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.r = icmp eq ptr %3, null
  %i.s = load ptr, ptr %5, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br i1 %i.r, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #58
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4.invoke: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4
  %i.v = phi ptr [ %3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4 ], [ @.str.188, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit ]
  %i.w = phi i64 [ %i.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4 ], [ 6, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit ]
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.v, i64 noundef %i.w)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit7 unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit7:        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4.invoke
  %i.y = load i8, ptr %i.d, align 1, !tbaa !81
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit7
  %i.z = load ptr, ptr %5, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.168, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i9 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i9: ; preds = %bb.c
  %i.ac = load ptr, ptr %5, align 8, !tbaa !85
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #58
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.d, i64 noundef %i.ae)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit12 unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit12:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i9
  %i.ag = load ptr, ptr %5, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i4.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16.invoke, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i9, %bb.c, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit, %_ZNK7testing15AssertionResult7messageEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %5, align 8, !tbaa !85    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.d
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.d, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  resume { ptr, i32 } %i.aj

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit12, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit7
  %i.ao = load ptr, ptr %5, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.169, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15 unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15:     ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.ar = icmp eq ptr %4, null
  %i.as = load ptr, ptr %5, align 8, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br i1 %i.ar, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15
  %i.au = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #58
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16.invoke: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16
  %i.av = phi ptr [ %4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16 ], [ @.str.188, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15 ]
  %i.aw = phi i64 [ %i.au, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16 ], [ 6, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit15 ]
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %i.av, i64 noundef %i.aw)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19 unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i16.invoke
  %i.ay = load ptr, ptr %5, align 8, !tbaa !85, !noalias !1131
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.ay)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.d

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit19
  %i.az = load ptr, ptr %5, align 8, !tbaa !85    ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.az, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !87
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(128) %i.az) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !273

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !276    ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !279
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !280
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @_ZN7testing8internal17AppendUserMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7MessageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.m = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit6, !prof !89

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i5 = icmp eq i32 %i.o, 0
  br i1 %.not.i5, label %_ZN7testing8UnitTest11GetInstanceEv.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %bb.i, !inline_history !273

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit6

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit6:        ; preds = %bb.h, %bb.f, %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  invoke void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(601) %i.r, i32 noundef 1)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit6
  invoke void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i32 noundef %i.g, ptr noundef %i.i, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.v = load i64, ptr %i.t, align 8, !tbaa !81
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %i.x = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !81
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void

bb.l:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit6
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.m
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !81
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #57
  br label %.body

.body:                                            ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.ac, %bb.l ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.ad, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %i.aj = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %.body
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !81
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %common.resume
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  %i.a = icmp eq ptr %1, null
  %i.b = select i1 %i.a, ptr @_ZN7testing8internalL12kUnknownFileE, ptr %1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !75
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #58 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc11.i:                                       ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #55 ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !78
  store i64 %i.d, ptr %i.c, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !81
  store i8 %i.k, ptr %i.j, align 1, !tbaa !81
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.d, ptr %i.l, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !81
  %i.n = icmp slt i32 %2, 0
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %6, align 8, !tbaa !78, !noalias !1142
  %i.p = load i64, ptr %i.l, align 8, !tbaa !79, !noalias !1142
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58, !noalias !1142
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.62, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.h

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58, !noalias !1142
  br label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  %i.r = load ptr, ptr %6, align 8, !tbaa !78, !noalias !1143
  %i.s = load i64, ptr %i.l, align 8, !tbaa !79, !noalias !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58, !noalias !1143
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.62, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58, !noalias !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !1144
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc19 unwind label %bb.s

.noexc19:                                         ; preds = %bb.j
  %i.t = load ptr, ptr %3, align 8, !tbaa !85, !noalias !1144
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 noundef %2)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %bb.k, !noalias !1144 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %.noexc19
  %i.w = load ptr, ptr %3, align 8, !tbaa !85, !noalias !1145
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.w)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.k

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.x = load ptr, ptr %3, align 8, !tbaa !85, !noalias !1144 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
end_hunk_5
begin_hunk_6_@_ZN7testinglsERSoRKNS_14TestPartResultE:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %bb.b
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.88, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !302
  %i.ab = or i32 %i.aa, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.y, i32 noundef %i.ab)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.h

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #58
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.u, i64 noundef %i.ac)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.k, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !296 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  invoke void @_ZSt16__throw_bad_castv() #56
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.e
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !301
  %.not.i1.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !81
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
          to label %.noexc17 unwind label %bb.h

.noexc17:                                         ; preds = %bb.g
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.h, !inline_history !12

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc17, %bb.f
  %.0.i.i.i = phi i8 [ %i.an, %bb.f ], [ %i.ar, %.noexc17 ]
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %.0.i.i.i)
          to label %.noexc19 unwind label %bb.h

.noexc19:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.h

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc19
  %i.au = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !81
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret ptr %i.at

bb.h:                                             ; preds = %.noexc19, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc17, %bb.g, %bb.e, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %bb.b, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.h
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !81
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !327
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !326
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.f, ptr %i.a, align 8, !tbaa !326
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !326
  %i.d = load ptr, ptr %0, align 8, !tbaa !328    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 112
  %i.i = trunc i64 %i.h to i32
  %.not = icmp slt i32 %1, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.89, i32 noundef %1) ; 0 uses
  tail call void @_ZN7testing8internal5posix5AbortEv() #56
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326
  %i.c = load ptr, ptr %0, align 8, !tbaa !328
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24HasNewFatalFailureHelperE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !330
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %.body, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !331
  store ptr %i.j, ptr %i.b, align 8, !tbaa !332
  %i.k = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.i, !prof !89

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i2 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i2, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %.body, !inline_history !2

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %bb.i

.body:                                            ; preds = %bb.c, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58
  resume { ptr, i32 } %i.o

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  store ptr %0, ptr %i.r, align 8, !tbaa !331
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7testing8internal12UnitTestImpl41GetTestPartResultReporterForCurrentThreadEv(ptr noundef nonnull align 8 dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !331
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  store ptr %1, ptr %i.b, align 8, !tbaa !331
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelperD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24HasNewFatalFailureHelperE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !332
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.j = invoke noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr %i.j, align 8, !tbaa !331
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
  tail call void @_ZN7testing8internal24HasNewFatalFailureHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #58
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #57
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelper20ReportTestPartResultERKNS_14TestPartResultE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !325
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !330
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !332  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7testing8internal20TypedTestSuitePState25VerifyRegisteredTestNamesEPKcS3_iS3_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef returned %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::vector.91", align 8    ; 12 uses
  %10 = alloca %"class.testing::Message", align 8 ; 15 uses
  %11 = alloca %"class.std::set", align 8         ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !75
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #58 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc33 unwind label %bb.ad

.noexc33:                                         ; preds = %.noexc.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc11.i:                                       ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc34 unwind label %bb.ad

.noexc34:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #55
          to label %.noexc35 unwind label %bb.ad  ; 2 uses

.noexc35:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.h, ptr %8, align 8, !tbaa !78
  store i64 %i.c, ptr %i.a, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc35, %bb.c
  %i.i = phi ptr [ %i.h, %.noexc35 ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !81
  store i8 %i.j, ptr %i.i, align 1, !tbaa !81
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.c, ptr %i.k, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !75
  %i.n = load ptr, ptr %8, align 8, !tbaa !78     ; 2 uses
  %i.o = load i64, ptr %i.k, align 8, !tbaa !79   ; 8 uses
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %bb.i, label %._crit_edge.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.q = icmp slt i64 %i.o, 0
  br i1 %i.q, label %.noexc.i.i, label %bb.j

.noexc.i.i:                                       ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc36 unwind label %bb.ae

.noexc36:                                         ; preds = %.noexc.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.r = add nuw i64 %i.o, 1                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !80

.noexc6.i.i:                                      ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc37 unwind label %bb.ae

.noexc37:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.j
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #55
          to label %.noexc38 unwind label %bb.ae  ; 2 uses

.noexc38:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.t, ptr %7, align 8, !tbaa !78
  store i64 %i.o, ptr %i.m, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc38, %bb.h
  %i.u = phi ptr [ %i.t, %.noexc38 ], [ %i.m, %bb.h ] ; 3 uses
  switch i64 %i.o, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.n, align 1, !tbaa !81
  store i8 %i.v, ptr %i.u, align 1, !tbaa !81
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.n, i64 %i.o, i1 false)
  br label %bb.m
end_hunk_6
begin_hunk_7_@_ZN7testing8internal20TypedTestSuitePState25VerifyRegisteredTestNamesEPKcS3_iS3_:bb.a
  br i1 %i.hl, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit115.thread, label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit115.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i100, %.lr.ph168, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit115
  %i.hm = load ptr, ptr %10, align 8, !tbaa !85
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef nonnull @.str.94, i64 noundef 24)
          to label %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit:       ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit115.thread
  %i.hp = load ptr, ptr %10, align 8, !tbaa !85
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.gs, align 8, !tbaa !78
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0134.0166, i64 40
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !79
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hq, ptr noundef %i.hr, i64 noundef %i.ht)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit118: ; preds = %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit
  %i.hv = load ptr, ptr %10, align 8, !tbaa !85
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull @.str.95, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit118, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit115
  %i.hy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0134.0166) #62 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.dp
  br i1 %i.hz, label %._crit_edge169, label %.lr.ph168, !llvm.loop !1224

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %._crit_edge169
  %i.ia = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !79
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread155

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread155: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #58
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull %2, i32 noundef %3)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread155
  %i.ie = load ptr, ptr %13, align 8, !tbaa !78
  %i.if = load ptr, ptr %12, align 8, !tbaa !78
  %i.ig = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.id, ptr noundef nonnull @.str.96, ptr noundef %i.ie, ptr noundef %i.if) #63 ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  %i.ih = load ptr, ptr @stderr, align 8, !tbaa !190
  %i.ii = call i32 @fflush(ptr noundef %i.ih)     ; 0 uses
  call void @_ZN7testing8internal5posix5AbortEv() #56
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit118, %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5countERKS5_.exit115.thread, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit83.invoke, %_ZN7testing7MessagelsIA15_cEERS0_RKT_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal12CodeLocationESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread, %bb.an, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %bb.ak, %._crit_edge169
  %lpad.loopexit.split-lp245 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread155
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  %i.ik = load ptr, ptr %12, align 8, !tbaa !78   ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.in = load ptr, ptr %12, align 8, !tbaa !78   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !81
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58
  %i.is = load ptr, ptr %i.de, align 8, !tbaa !336
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.is)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #61
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #58
  %i.iv = load ptr, ptr %10, align 8, !tbaa !85   ; 3 uses
  %.not.i.i123 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i123, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !87
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(128) %i.iv) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  %i.iz = load ptr, ptr %9, align 8, !tbaa !247   ; 3 uses
  %i.ja = load ptr, ptr %i.ap, align 8, !tbaa !248 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.iz, %i.ja
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i124

.lr.ph.i.i.i124:                                  ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.iz, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %i.jb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !78 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i124
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !81
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #57
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.jg, %i.ja
  br i1 %.not.i.i.i125, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i124, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !247
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing7MessageD2Ev.exit
  %i.jh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.iz, %_ZN7testing7MessageD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ji = load ptr, ptr %i.aq, align 8, !tbaa !243
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jh to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jl) #57
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  ret ptr %4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.ar
  %i.jm = load i64, ptr %i.il, align 8, !tbaa !81
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.jn) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.pn29 = phi { ptr, i32 } [ %i.ij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %lpad.loopexit.split-lp245, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #58
  %i.jo = load ptr, ptr %10, align 8, !tbaa !85   ; 3 uses
  %.not.i.i129 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i129, label %_ZN7testing7MessageD2Ev.exit131, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !87
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(128) %i.jo) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit131

_ZN7testing7MessageD2Ev.exit131:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130, %.loopexit.split-lp.loopexit.split-lp, %bb.ag
  %.pn29.pn = phi { ptr, i32 } [ %i.ec, %bb.ag ], [ %.pn29, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn29, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal34RegisterTypeParameterizedTestSuiteEPKcNS0_12CodeLocationE(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2 ], [ %i.ab, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !75
  %i.i = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79   ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.f, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %.noexc.i.i, label %bb.g

.noexc.i.i:                                       ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !80

.noexc6.i.i:                                      ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.g
  %i.p = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #55 ; 2 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !78
  store i64 %i.k, ptr %i.h, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.h, %_ZN7testing8internal15GetUnitTestImplEv.exit ] ; 3 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.i, align 1, !tbaa !81
  store i8 %i.r, ptr %i.q, align 1, !tbaa !81
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

_ZN7testing8internal12CodeLocationC2ERKS1_.exit:  ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.s, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !334
  store i32 %i.w, ptr %i.u, align 8, !tbaa !334
  invoke void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry17RegisterTestSuiteEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %0, ptr noundef nonnull align 8 %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  %i.x = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.z = load i64, ptr %i.h, align 8, !tbaa !81
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #57
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void

bb.k:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.h
  br i1 %i.ad, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2: ; preds = %bb.k
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !81
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #57
  br label %common.resume
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336
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
  %i.a = load i32, ptr %0, align 4, !tbaa !341
  %i.b = mul i32 %i.a, 1103515245
  %i.c = add i32 %i.b, 12345
  %i.d = and i32 %i.c, 2147483647
  store i32 %i.d, ptr %0, align 4, !tbaa !341
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.137, i32 noundef 383)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.138, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.139, i64 noundef 45)
          to label %.thread unwind label %bb.c    ; 0 uses

.thread:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.g

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %1, -2147483647
  br i1 %i.h, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.137, i32 noundef 384)
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
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.g

bb.f:                                             ; preds = %_ZNSolsEj.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.h

bb.g:                                             ; preds = %.thread, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.r = load i32, ptr %0, align 4, !tbaa !341
  %i.s = urem i32 %i.r, %1
  ret i32 %i.s

bb.h:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12AssertHelperC2ENS_14TestPartResult4TypeEPKciS5_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55 ; 8 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !279
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !280
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %3, ptr %i.c, align 8, !tbaa !281
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !75
  %i.f = icmp eq ptr %4, null
  br i1 %i.f, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #58 ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %.noexc.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !80

.noexc11.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #55
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.l, ptr %i.d, align 8, !tbaa !78
  store i64 %i.g, ptr %i.e, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8, %bb.b
  %i.m = phi ptr [ %i.l, %.noexc8 ], [ %i.e, %bb.b ] ; 3 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %4, align 1, !tbaa !81
  store i8 %i.n, ptr %i.m, align 1, !tbaa !81
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %4, i64 %i.g, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.g, ptr %i.o, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !81
  store ptr %i.a, ptr %0, align 8, !tbaa !276
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc11.i.i, %.noexc.i.i, %.noexc.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #57
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal12AssertHelperD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !276    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !81
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #57
  br label %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit

_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #57
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7testing8UnitTest11GetInstanceEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.a = load ptr, ptr %8, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %4, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.g, ptr %9, align 8, !tbaa !344
  %i.h = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #58 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 3, ptr noundef nonnull @.str.461, i32 noundef 1620)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.462, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.463, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.h)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %.body

bb.e:                                             ; preds = %bb.c, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.m = tail call i64 @pthread_self() #59
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.m, ptr %i.n, align 8, !tbaa !345
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.o, align 8, !tbaa !346
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 584
  %i.s = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !349
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !350
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit
  %i.w = load ptr, ptr %8, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %bb.f
  %i.z = load ptr, ptr %8, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.239, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.ac = load ptr, ptr %8, align 8, !tbaa !85
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.373, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 584
  %i.ah = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit46: ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !349 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !350 ; 2 uses
  %.not2879 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not2879, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit46
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 48
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.h:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.080 = phi i64 [ %i.ao, %.lr.ph ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 584
  %i.av = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit48: ; preds = %bb.i
  %i.aw = add i64 %.080, -1                       ; 3 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !350
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %i.aw ; 4 uses
  %i.az = load ptr, ptr %8, align 8, !tbaa !85
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit50:      ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !352
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !353
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.bc, i32 noundef %i.be)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit50
  %i.bf = load ptr, ptr %8, align 8, !tbaa !85
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %10, align 8, !tbaa !78
  %i.bi = load i64, ptr %i.ap, align 8, !tbaa !79
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.bh, i64 noundef %i.bi)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit52 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit52: ; preds = %bb.j
  %i.bk = load ptr, ptr %8, align 8, !tbaa !85
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.67, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit54 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit54:      ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit52
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bo = load ptr, ptr %8, align 8, !tbaa !85
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !78
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !79
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %i.bq, i64 noundef %i.bs)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit56 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit56: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit54
  %i.bu = load ptr, ptr %10, align 8, !tbaa !78   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.aq
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit56
  %i.bw = load i64, ptr %i.aq, align 8, !tbaa !81
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
end_hunk_7
begin_hunk_8_@_ZN7testing8internal17AppendUserMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7MessageE:bb.a
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !1246
  call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  %i.ai = load ptr, ptr %4, align 8, !tbaa !78, !noalias !1247 ; 3 uses
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !79, !noalias !1247 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !79, !noalias !1247 ; 5 uses
  %i.am = sub i64 9223372036854775807, %i.al
  %i.an = icmp ult i64 %i.am, %i.aj
  br i1 %i.an, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
          to label %.noexc21 unwind label %bb.x

.noexc21:                                         ; preds = %bb.p
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.o
  %i.ao = add i64 %i.al, %i.aj                    ; 3 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !78, !noalias !1247 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.as = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.as)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !81, !noalias !1247
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.au = phi i64 [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ao, %i.au
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.al ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.aj, 1
  br i1 %cond.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = load i8, ptr %i.ai, align 1, !tbaa !81, !noalias !1247
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !81, !noalias !1247
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ai, i64 %i.aj, i1 false), !noalias !1247
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.al, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.aj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  store i64 %i.ao, ptr %i.ak, align 8, !tbaa !79, !noalias !1247
  %i.ax = load ptr, ptr %5, align 8, !tbaa !78, !noalias !1247
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ao
  store i8 0, ptr %i.ay, align 1, !tbaa !81, !noalias !1247
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !75, !alias.scope !1247
  %i.ba = load ptr, ptr %5, align 8, !tbaa !78, !noalias !1247 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.aq
  br i1 %i.bb, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !79, !noalias !1247 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.ba, ptr %0, align 8, !tbaa !78, !alias.scope !1247
  %i.bf = load i64, ptr %i.aq, align 8, !tbaa !81, !noalias !1247
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !81, !alias.scope !1247
  %.pre.i = load i64, ptr %i.ak, align 8, !tbaa !79, !noalias !1247
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.v
  %i.bg = phi i64 [ %i.bc, %bb.v ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !79, !alias.scope !1247
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.y

bb.w:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.x:                                             ; preds = %bb.u, %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.x
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !81
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.w ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.bj, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.y
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !81
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret void

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.g
  %.pn8 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  %i.bu = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.z
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !81
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(601) %1, i32 noundef %2) local_unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !87
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.d, align 8, !tbaa !87
  store ptr %i.d, ptr %i.a, align 8, !tbaa !354
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.b
  %i.e = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.b ], [ %.pre, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.f = phi ptr [ %i.d, %bb.b ], [ %i.b, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.g = load i32, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !88
  %i.h = add nsw i32 %2, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.g, i32 noundef %i.h)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !273

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  resume { ptr, i32 } %i.e

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal13MarkAsIgnoredC2EPKc(ptr nofree nonnull readnone align 1 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !273

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %common.resume

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !75
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #58 ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.h, label %._crit_edge.i.i

bb.h:                                             ; preds = %bb.g
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.noexc.i, label %bb.i

.noexc.i:                                         ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc4 unwind label %bb.r

.noexc4:                                          ; preds = %.noexc.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc11.i:                                       ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc5 unwind label %bb.r

.noexc5:                                          ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.i
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #55
          to label %.noexc6 unwind label %bb.r    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.o, ptr %2, align 8, !tbaa !78
  store i64 %i.j, ptr %i.h, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc6, %bb.g
  %i.p = phi ptr [ %i.o, %.noexc6 ], [ %i.h, %bb.g ] ; 3 uses
  switch i64 %i.j, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %1, align 1, !tbaa !81
  store i8 %i.q, ptr %i.p, align 1, !tbaa !81
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %1, i64 %i.j, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 %i.j, ptr %i.r, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !81
  %i.t = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc8 unwind label %bb.s    ; 2 uses

.noexc8:                                          ; preds = %bb.l
  %i.u = extractvalue { ptr, ptr } %i.t, 1        ; 5 uses
  %.not.i.i7 = icmp eq ptr %i.u, null
  br i1 %.not.i.i7, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.noexc8
  %i.v = extractvalue { ptr, ptr } %i.t, 0
  %.not.i = icmp ne ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 312 ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.x
  br i1 %or.cond.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load i64, ptr %i.r, align 8, !tbaa !79   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !79  ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.y) ; 2 uses
  %i.ab = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ab, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.ae = load ptr, ptr %2, align 8, !tbaa !78
  %i.af = call i32 @memcmp(ptr noundef %i.ae, ptr noundef %i.ad, i64 noundef %.sroa.speculated.i.i.i.i) #58 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.n
  %i.ag = sub i64 %i.y, %i.aa
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i, 0
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.m
  %i.ai = phi i1 [ %i.ah, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.m ]
  %i.aj = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #55
          to label %.noexc13 unwind label %bb.s   ; 4 uses

.noexc13:                                         ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 3 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !75
  %i.am = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.h
  br i1 %i.an, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %.noexc13
  %i.ao = load i64, ptr %i.r, align 8, !tbaa !79  ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.aq, i1 false)
  br label %.noexc9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.noexc13
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !78
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !81
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !81
  %.pre.i.i.i = load i64, ptr %i.r, align 8, !tbaa !79
  br label %.noexc9

.noexc9:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.p
  %i.as = phi i64 [ %i.ao, %bb.p ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 %i.as, ptr %i.at, align 8, !tbaa !79
  store ptr %i.h, ptr %2, align 8, !tbaa !78
  store i64 0, ptr %i.r, align 8, !tbaa !79
  store i8 0, ptr %i.h, align 8, !tbaa !81
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.w) #58
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !339
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !339
  br label %bb.q

bb.q:                                             ; preds = %.noexc9, %.noexc8
  %i.ax = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.h
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.az = load i64, ptr %i.h, align 8, !tbaa !81
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc11.i, %.noexc.i, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

bb.s:                                             ; preds = %bb.o, %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.h
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.s
  %i.bf = load i64, ptr %i.h, align 8, !tbaa !81
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.r ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.bc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly align 8 captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %class.anon, align 8                ; 12 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca [378 x i8], align 16              ; 5 uses
  %i.b = alloca [348 x i8], align 16              ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %class.anon, align 8               ; 13 uses
  %i.c = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !273

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %.pn20.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %common.resume

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !336  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 312 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre139 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !79 ; 5 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.j, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.k, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !79   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.pre139, i64 %i.m) ; 2 uses
  %i.n = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #58 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.r = sub i64 %i.m, %.pre139
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.s, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i, %i.k
  br i1 %i.t, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !79   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %.pre139) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78
  %i.z = tail call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.y, i64 noundef %.sroa.speculated.i.i.i.i.i) #58 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.aa = sub i64 %.pre139, %i.v
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ab = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.bp

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(378) %i.a, ptr noundef nonnull align 16 dereferenceable(378) @__const._ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb.kMissingInstantiation, i64 378, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(348) %i.b, ptr noundef nonnull align 16 dereferenceable(348) @__const._ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb.kMissingTestCase, i64 348, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #58
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58, !noalias !1262
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.145, i64 noundef 25, ptr noundef %.pre, i64 noundef %.pre139, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58, !noalias !1262
  %i.ad = select i1 %2, ptr %i.a, ptr %i.b        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #58, !noalias !1263 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !79, !noalias !1263 ; 5 uses
  %i.ah = sub i64 9223372036854775807, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.ae
  br i1 %i.ai, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
          to label %.noexc unwind label %bb.bq

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.aj = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.ak = load ptr, ptr %12, align 8, !tbaa !78, !noalias !1263 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 10 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.an = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !81, !noalias !1263
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ap = phi i64 [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i24 = icmp ugt i64 %i.aj, %i.ap
  br i1 %.not.i.i.i24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ag ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.ae, 1
  br i1 %cond.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = load i8, ptr %i.ad, align 16, !tbaa !81, !noalias !1263
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !81, !noalias !1263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 16 %i.ad, i64 %i.ae, i1 false), !noalias !1263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.ag, i64 noundef 0, ptr noundef nonnull %i.ad, i64 noundef %i.ae)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.bq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  store i64 %i.aj, ptr %i.af, align 8, !tbaa !79, !noalias !1263
  %i.as = load ptr, ptr %12, align 8, !tbaa !78, !noalias !1263
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 0, ptr %i.at, align 1, !tbaa !81, !noalias !1263
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 14 uses
  store ptr %i.au, ptr %11, align 8, !tbaa !75, !alias.scope !1263
  %i.av = load ptr, ptr %12, align 8, !tbaa !78, !noalias !1263 ; 5 uses
  %i.aw = icmp eq ptr %i.av, %i.al
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i26.thread, label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i26.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !79, !noalias !1263 ; 5 uses
  %i.ay = icmp samesign ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.az, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.ba, align 8, !tbaa !79, !alias.scope !1263
  store ptr %i.al, ptr %12, align 8, !tbaa !78, !noalias !1263
  store i64 0, ptr %i.af, align 8, !tbaa !79, !noalias !1263
  store i8 0, ptr %i.al, align 8, !tbaa !81, !noalias !1263
  %i.bb = add nuw nsw i64 %i.ax, 172
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i35

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.av, ptr %11, align 8, !tbaa !78, !alias.scope !1263
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.bd = load <2 x i64>, ptr %i.af, align 8, !tbaa !81, !noalias !1263
  %.pre.i = load i64, ptr %i.af, align 8, !tbaa !79, !noalias !1263 ; 4 uses
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !tbaa !81, !alias.scope !1263
  store ptr %i.al, ptr %12, align 8, !tbaa !78, !noalias !1263
  store i64 0, ptr %i.af, align 8, !tbaa !79, !noalias !1263
  store i8 0, ptr %i.al, align 8, !tbaa !81, !noalias !1263
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %i.be = icmp sgt i64 %.pre.i, 9223372036854775635
  br i1 %i.be, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i26

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
end_hunk_8
begin_hunk_9_@_ZN7testing8internal34TypeParameterizedTestSuiteRegistry17RegisterTestSuiteEPKcNS0_12CodeLocationE:bb.a
  %i.v = phi ptr [ %i.u, %.noexc14 ], [ %i.m, %bb.g ] ; 3 uses
  switch i64 %i.p, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.n, align 1, !tbaa !81
  store i8 %i.w, ptr %i.v, align 1, !tbaa !81
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.x, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  store i8 0, ptr %i.y, align 1, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !334
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !334
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !75
  %i.ad = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !79  ; 8 uses
  %i.af = icmp ugt i64 %i.ae, 15
  br i1 %i.af, label %bb.m, label %._crit_edge.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp slt i64 %i.ae, 0
  br i1 %i.ag, label %.noexc.i.i.i, label %bb.n

.noexc.i.i.i:                                     ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc15 unwind label %bb.t

.noexc15:                                         ; preds = %.noexc.i.i.i
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ah = add nuw i64 %i.ae, 1                    ; 2 uses
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !80

.noexc6.i.i.i:                                    ; preds = %bb.n
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc16 unwind label %bb.t

.noexc16:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.n
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #55
          to label %.noexc17 unwind label %bb.t   ; 2 uses

.noexc17:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.aj, ptr %4, align 8, !tbaa !78
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !81
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc17, %bb.l
  %i.ak = phi ptr [ %i.aj, %.noexc17 ], [ %i.ac, %bb.l ] ; 3 uses
  switch i64 %i.ae, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !81
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !81
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ae, ptr %i.am, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ae
  store i8 0, ptr %i.an, align 1, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ap = load i32, ptr %i.z, align 8, !tbaa !334
  store i32 %i.ap, ptr %i.ao, align 8, !tbaa !334
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.aq, align 8, !tbaa !356
  %i.ar = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJS5_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %bb.r unwind label %bb.u       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.as = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ac
  br i1 %i.at, label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !81
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #57
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit

_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.m
  br i1 %i.ax, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !81
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #57
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %i.ba = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !81
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret void

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit23

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit20

bb.u:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ac
  br i1 %i.bi, label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18: ; preds = %bb.u
  %i.bj = load i64, ptr %i.ac, align 8, !tbaa !81
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #57
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit20

_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit20: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.t ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18 ], [ %i.bg, %bb.u ] ; 2 uses
  %i.bl = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.m
  br i1 %i.bm, label %_ZN7testing8internal12CodeLocationD2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit20
  %i.bn = load i64, ptr %i.m, align 8, !tbaa !81
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #57
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit23

_ZN7testing8internal12CodeLocationD2Ev.exit23:    ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.s ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21 ], [ %.pn, %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %i.bp = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.a
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit23
  %i.br = load i64, ptr %i.a, align 8, !tbaa !81
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal47RegisterTypeParameterizedTestSuiteInstantiationEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  tail call void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry21RegisterInstantiationEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry21RegisterInstantiationEPKc(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !75
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #58 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc11.i:                                       ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #55 ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !78
  store i64 %i.c, ptr %i.a, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.b ] ; 3 uses
  switch i64 %i.c, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !81
  store i8 %i.j, ptr %i.i, align 1, !tbaa !81
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.c, ptr %i.k, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !336  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.n, null
  %.pre = load ptr, ptr %2, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.p = load i64, ptr %i.k, align 8, !tbaa !79   ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !79   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.r) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78
  %i.v = call i32 @memcmp(ptr noundef %i.u, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #58 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.h
  %i.w = sub i64 %i.r, %i.p
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.x, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.x, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.h, !llvm.loop !15

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.y = icmp eq ptr %.19.i.i.i, %i.o
  br i1 %i.y, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !79  ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.p) ; 2 uses
  %i.ab = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.ae = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ad, i64 noundef %.sroa.speculated.i.i.i.i.i) #58 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.i
  %i.af = sub i64 %i.p, %i.aa
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ag, ptr %i.o, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.g
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.g ], [ %i.o, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.ah = icmp eq ptr %.pre, %i.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !81
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.aj) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %i.ak = icmp eq ptr %.sroa.0.0.i.i, %i.o
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 104
  store i8 1, ptr %i.al, align 8, !tbaa !358
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 2, ptr noundef nonnull @.str.137, i32 noundef 558)
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.151, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #58
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %1, i64 noundef %i.an)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.152, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  resume { ptr, i32 } %i.aq

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJS5_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(41) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #58 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !15

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !79   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #58 ; 2 uses
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
define void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry22CheckForInstantiationsEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %class.anon.139, align 8            ; 16 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %class.anon.139, align 8           ; 13 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !273

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn24.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %common.resume

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !337  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 312 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 15 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.be, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.be
  %.sroa.0117.0413 = phi ptr [ %i.g, %.lr.ph ], [ %i.jj, %bb.be ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0117.0413, i64 32 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0117.0413, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0117.0413, i64 104
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !358, !range !70, !noundef !71
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.be, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !336 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0117.0413, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !79 ; 4 uses
  %i.ax = load ptr, ptr %i.ap, align 8            ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !79 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.az) ; 2 uses
  %i.ba = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ba, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !78
  %i.bd = call i32 @memcmp(ptr noundef %i.bc, ptr noundef %i.ax, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #58 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.h
  %i.be = sub i64 %i.az, %i.aw
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.be, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bf = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.bf, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.bf, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.h, !llvm.loop !14

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bg = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.bg, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !79 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.aw) ; 2 uses
  %i.bj = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !78
  %i.bm = call i32 @memcmp(ptr noundef %i.ax, ptr noundef %i.bl, i64 noundef %.sroa.speculated.i.i.i.i.i) #58 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.i
  %i.bn = sub i64 %i.aw, %i.bi
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bn, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bo = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bo, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.be

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.g, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #58
  %i.bp = load ptr, ptr %i.ap, align 8, !tbaa !78, !noalias !1281
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0117.0413, i64 40 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !79, !noalias !1281
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58, !noalias !1281
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.153, i64 noundef 30, ptr noundef %i.bp, i64 noundef %i.br, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58, !noalias !1281
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %i.bs = load i64, ptr %i.m, align 8, !tbaa !79, !noalias !1282 ; 5 uses
  %i.bt = icmp sgt i64 %i.bs, 9223372036854775288
  br i1 %i.bt, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.j:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.bu = add nsw i64 %i.bs, 519                  ; 3 uses
  %i.bv = load ptr, ptr %9, align 8, !tbaa !78, !noalias !1282 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.n
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bx = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.by = load i64, ptr %i.n, align 8, !tbaa !81, !noalias !1282
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bz = phi i64 [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i28 = icmp ugt i64 %i.bu, %i.bz
  br i1 %.not.i.i.i28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(519) %i.ca, ptr noundef nonnull align 1 dereferenceable(519) @.str.154, i64 519, i1 false), !noalias !1282
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.bs, i64 noundef 0, ptr noundef nonnull @.str.154, i64 noundef 519)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %9, align 8, !tbaa !78, !noalias !1282
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i_crit_edge, %bb.k
  %i.cb = phi ptr [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i_crit_edge ], [ %i.bv, %bb.k ]
  store i64 %i.bu, ptr %i.m, align 8, !tbaa !79, !noalias !1282
end_hunk_9
begin_hunk_10_@_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev:bb.a

bb.o:                                             ; preds = %._crit_edge.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.m, i64 %i.z, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.i.i35, %bb.n, %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.ai, align 8, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.z
  store i8 0, ptr %i.aj, align 1, !tbaa !81
  br label %.critedge25

.critedge28:                                      ; preds = %bb.j, %bb.i, %._crit_edge.i.i29
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.ak, align 8, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  store i8 0, ptr %i.al, align 1, !tbaa !81
  br label %.critedge25

.critedge25:                                      ; preds = %.critedge, %.critedge28
  %i.am = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge25
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !81
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  ret void

.critedge27:                                      ; preds = %.noexc.i37.invoke, %.noexc9.i.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i30
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %.critedge27
  %i.at = load i64, ptr %i.a, align 8, !tbaa !81
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %.critedge27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal15UnitTestOptions27GetAbsolutePathToOutputFileB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %5 = alloca %"class.testing::internal::FilePath", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.testing::internal::FilePath", align 8 ; 32 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.testing::internal::FilePath", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %12 = alloca %"class.testing::internal::FilePath", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.testing::internal::FilePath", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %17 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !75
  %i.b = load ptr, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, align 8, !tbaa !78 ; 2 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, i64 8), align 8, !tbaa !79 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #55 ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !78
  store i64 %i.c, ptr %i.a, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !81
  store i8 %i.j, ptr %i.i, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.b, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !81
  %i.m = load ptr, ptr %1, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  invoke void @_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !79
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %._crit_edge.i.i56, label %bb.h

._crit_edge.i.i56:                                ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.q, ptr noundef nonnull align 1 dereferenceable(3) @_ZN7testingL20kDefaultOutputFormatE, i64 3, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 3, ptr %i.r, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.s, align 1, !tbaa !81
  %i.t = load ptr, ptr %2, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.t, ptr noundef nonnull align 1 dereferenceable(3) @_ZN7testingL20kDefaultOutputFormatE, i64 3, i1 false)
  %i.u = load i64, ptr %i.r, align 8, !tbaa !79   ; 2 uses
  store i64 %i.u, ptr %i.n, align 8, !tbaa !79
  %i.v = load ptr, ptr %2, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !81
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !78
  store i64 0, ptr %i.r, align 8, !tbaa !79
  store i8 0, ptr %.pre.i, align 1, !tbaa !81
  %i.x = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.q
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i56
  %i.z = load i64, ptr %i.q, align 8, !tbaa !81
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %i.ac = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.m, i32 noundef 58) #62 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %bb.av

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  %i.ae = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.n, !prof !89

bb.j:                                             ; preds = %bb.i
  %i.ag = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i61 = icmp eq i32 %i.ag, 0
  br i1 %.not.i61, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.l unwind label %bb.m, !inline_history !273

bb.l:                                             ; preds = %bb.k
  %i.ah = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %.body

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.l
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !78 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !75
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
          to label %.noexc66 unwind label %bb.ar

.noexc66:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #58 ; 8 uses
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %bb.q, label %._crit_edge.i.i62

bb.q:                                             ; preds = %bb.p
  %i.aq = icmp slt i64 %i.ao, 0
  br i1 %i.aq, label %.noexc.i65, label %bb.r

.noexc.i65:                                       ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc67 unwind label %bb.ar

.noexc67:                                         ; preds = %.noexc.i65
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ar = add nuw i64 %i.ao, 1                    ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %.noexc11.i64, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i63, !prof !80

.noexc11.i64:                                     ; preds = %bb.r
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc68 unwind label %bb.ar

.noexc68:                                         ; preds = %.noexc11.i64
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i63: ; preds = %bb.r
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #55
          to label %.noexc69 unwind label %bb.ar  ; 2 uses

.noexc69:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i63
  store ptr %i.at, ptr %6, align 8, !tbaa !78
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !81
  br label %._crit_edge.i.i62

._crit_edge.i.i62:                                ; preds = %.noexc69, %bb.p
  %i.au = phi ptr [ %i.at, %.noexc69 ], [ %i.am, %bb.p ] ; 3 uses
  switch i64 %i.ao, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i62
  %i.av = load i8, ptr %i.al, align 1, !tbaa !81
  store i8 %i.av, ptr %i.au, align 1, !tbaa !81
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i62
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.al, i64 %i.ao, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i62
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.aw, align 8, !tbaa !79
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  store i8 0, ptr %i.ax, align 1, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ay, ptr %5, align 8, !tbaa !75
  %i.az = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !79 ; 8 uses
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %bb.v, label %._crit_edge.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bc = icmp slt i64 %i.ba, 0
  br i1 %i.bc, label %.noexc.i.i, label %bb.w

.noexc.i.i:                                       ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc71 unwind label %bb.as

.noexc71:                                         ; preds = %.noexc.i.i
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bd = add nuw i64 %i.ba, 1                    ; 2 uses
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !80

.noexc6.i.i:                                      ; preds = %bb.w
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc72 unwind label %bb.as

.noexc72:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.w
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #55
          to label %.noexc73 unwind label %bb.as  ; 2 uses

.noexc73:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.bf, ptr %5, align 8, !tbaa !78
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc73, %bb.u
  %i.bg = phi ptr [ %i.bf, %.noexc73 ], [ %i.ay, %bb.u ] ; 3 uses
  switch i64 %i.ba, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !81
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.y:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.az, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.ba, ptr %i.bi, align 8, !tbaa !79
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ba
  store i8 0, ptr %i.bj, align 1, !tbaa !81
  %i.bk = load ptr, ptr %5, align 8, !tbaa !78    ; 10 uses
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !79 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = icmp samesign eq i64 %i.bl, 0
  br i1 %i.bn, label %.lr.ph.i.i84.1, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %xtraiter462 = and i64 %i.bl, 1
  %lcmp.mod463.not = icmp eq i64 %xtraiter462, 0
  br i1 %lcmp.mod463.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !81
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !81
  %.pre326.prol = load ptr, ptr %5, align 8       ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.pre.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.pre326.prol, %.lr.ph.i.i.prol ]
  %.sroa.015.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.prol ]
  %.unr464 = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %.pre326.prol, %.lr.ph.i.i.prol ]
  %.sroa.015.021.i.i.unr = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.prol ]
  %.sroa.012.020.i.i.unr = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.prol ]
  %i.br = icmp eq i64 %i.bl, 1
  br i1 %i.br, label %.lr.ph.i.i84.1, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.ab
  %i.bs = phi ptr [ %.pre.i.i.1, %bb.ab ], [ %.unr464, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.015.021.i.i = phi ptr [ %.sroa.015.1.i.i.1, %bb.ab ], [ %.sroa.015.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.012.020.i.i = phi ptr [ %i.cg, %bb.ab ], [ %.sroa.012.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.bt = load i8, ptr %.sroa.012.020.i.i, align 1, !tbaa !81 ; 2 uses
  %i.bu = icmp ne i8 %i.bt, 47
  %i.bv = icmp eq ptr %.sroa.015.021.i.i, %i.bs
  %or.cond = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond, label %.sink.split.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.bw = getelementptr inbounds i8, ptr %.sroa.015.021.i.i, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !81
  %.not.i.i = icmp eq i8 %i.bx, 47
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.z, %.lr.ph.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i, i64 1
  store i8 %i.bt, ptr %.sroa.015.021.i.i, align 1, !tbaa !81
  %.pre326 = load ptr, ptr %5, align 8
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.sink.split.i.i, %bb.z
  %.pre.i.i = phi ptr [ %i.bs, %bb.z ], [ %.pre326, %.sink.split.i.i ] ; 2 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.015.021.i.i, %bb.z ], [ %i.by, %.sink.split.i.i ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !81  ; 2 uses
  %i.cb = icmp ne i8 %i.ca, 47
  %i.cc = icmp eq ptr %.sroa.015.1.i.i, %.pre.i.i
end_hunk_10
begin_hunk_11_@_ZN7testing8internal15UnitTestOptions27GetAbsolutePathToOutputFileB5cxx11Ev:bb.a
    i64 0, label %bb.ba
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i135
  %i.ib = load i8, ptr %i.hs, align 1, !tbaa !81
  store i8 %i.ib, ptr %i.ia, align 1, !tbaa !81
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge.i.i135
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ia, ptr nonnull align 1 %i.hs, i64 %i.hu, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i.i135
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.hu, ptr %i.ic, align 8, !tbaa !79
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hu
  store i8 0, ptr %i.id, align 1, !tbaa !81
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.ie, ptr %9, align 8, !tbaa !75
  %i.if = load ptr, ptr %10, align 8, !tbaa !78   ; 2 uses
  %i.ig = load i64, ptr %i.ic, align 8, !tbaa !79 ; 8 uses
  %i.ih = icmp ugt i64 %i.ig, 15
  br i1 %i.ih, label %bb.bb, label %._crit_edge.i.i.i143

bb.bb:                                            ; preds = %bb.ba
  %i.ii = icmp slt i64 %i.ig, 0
  br i1 %i.ii, label %.noexc.i.i156, label %bb.bc

.noexc.i.i156:                                    ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc157 unwind label %bb.cq

.noexc157:                                        ; preds = %.noexc.i.i156
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.ij = add nuw i64 %i.ig, 1                    ; 2 uses
  %i.ik = icmp slt i64 %i.ij, 0
  br i1 %i.ik, label %.noexc6.i.i155, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i154, !prof !80

.noexc6.i.i155:                                   ; preds = %bb.bc
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc158 unwind label %bb.cq

.noexc158:                                        ; preds = %.noexc6.i.i155
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i154: ; preds = %bb.bc
  %i.il = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ij) #55
          to label %.noexc159 unwind label %bb.cq ; 2 uses

.noexc159:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i154
  store ptr %i.il, ptr %9, align 8, !tbaa !78
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !81
  br label %._crit_edge.i.i.i143

._crit_edge.i.i.i143:                             ; preds = %.noexc159, %bb.ba
  %i.im = phi ptr [ %i.il, %.noexc159 ], [ %i.ie, %bb.ba ] ; 3 uses
  switch i64 %i.ig, label %bb.be [
    i64 1, label %bb.bd
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i.i143
  %i.in = load i8, ptr %i.if, align 1, !tbaa !81
  store i8 %i.in, ptr %i.im, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144

bb.be:                                            ; preds = %._crit_edge.i.i.i143
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.im, ptr align 1 %i.if, i64 %i.ig, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144: ; preds = %bb.be, %bb.bd, %._crit_edge.i.i.i143
  %i.io = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 %i.ig, ptr %i.io, align 8, !tbaa !79
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ig
  store i8 0, ptr %i.ip, align 1, !tbaa !81
  %i.iq = load ptr, ptr %9, align 8, !tbaa !78    ; 10 uses
  %i.ir = load i64, ptr %i.io, align 8, !tbaa !79 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ir
  %i.it = icmp samesign eq i64 %i.ir, 0
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144
  %xtraiter = and i64 %i.ir, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i145.prol.loopexit, label %.lr.ph.i.i145.prol

.lr.ph.i.i145.prol:                               ; preds = %.lr.ph.i.i145.preheader
  %i.iu = load i8, ptr %i.iq, align 1, !tbaa !81
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 1 ; 2 uses
  store i8 %i.iu, ptr %i.iq, align 1, !tbaa !81
  %.pre.prol = load ptr, ptr %9, align 8          ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  br label %.lr.ph.i.i145.prol.loopexit

.lr.ph.i.i145.prol.loopexit:                      ; preds = %.lr.ph.i.i145.prol, %.lr.ph.i.i145.preheader
  %.pre.i.i151.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i145.preheader ], [ %.pre.prol, %.lr.ph.i.i145.prol ]
  %.sroa.015.1.i.i149.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i145.preheader ], [ %i.iv, %.lr.ph.i.i145.prol ]
  %.unr = phi ptr [ %i.iq, %.lr.ph.i.i145.preheader ], [ %.pre.prol, %.lr.ph.i.i145.prol ]
  %.sroa.015.021.i.i146.unr = phi ptr [ %i.iq, %.lr.ph.i.i145.preheader ], [ %i.iv, %.lr.ph.i.i145.prol ]
  %.sroa.012.020.i.i147.unr = phi ptr [ %i.iq, %.lr.ph.i.i145.preheader ], [ %i.iw, %.lr.ph.i.i145.prol ]
  %i.ix = icmp eq i64 %i.ir, 1
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i150, label %.lr.ph.i.i145

.lr.ph.i.i145:                                    ; preds = %.lr.ph.i.i145.prol.loopexit, %bb.bh
  %i.iy = phi ptr [ %.pre.i.i151.1, %bb.bh ], [ %.unr, %.lr.ph.i.i145.prol.loopexit ] ; 2 uses
  %.sroa.015.021.i.i146 = phi ptr [ %.sroa.015.1.i.i149.1, %bb.bh ], [ %.sroa.015.021.i.i146.unr, %.lr.ph.i.i145.prol.loopexit ] ; 5 uses
  %.sroa.012.020.i.i147 = phi ptr [ %i.jm, %bb.bh ], [ %.sroa.012.020.i.i147.unr, %.lr.ph.i.i145.prol.loopexit ] ; 3 uses
  %i.iz = load i8, ptr %.sroa.012.020.i.i147, align 1, !tbaa !81 ; 2 uses
  %i.ja = icmp ne i8 %i.iz, 47
  %i.jb = icmp eq ptr %.sroa.015.021.i.i146, %i.iy
  %or.cond316 = select i1 %i.ja, i1 true, i1 %i.jb
  br i1 %or.cond316, label %.sink.split.i.i148, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i145
  %i.jc = getelementptr inbounds i8, ptr %.sroa.015.021.i.i146, i64 -1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !81
  %.not.i.i153 = icmp eq i8 %i.jd, 47
  br i1 %.not.i.i153, label %.lr.ph.i.i145.1, label %.sink.split.i.i148

.sink.split.i.i148:                               ; preds = %bb.bf, %.lr.ph.i.i145
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i146, i64 1
  store i8 %i.iz, ptr %.sroa.015.021.i.i146, align 1, !tbaa !81
  %.pre = load ptr, ptr %9, align 8
  br label %.lr.ph.i.i145.1

.lr.ph.i.i145.1:                                  ; preds = %.sink.split.i.i148, %bb.bf
  %.pre.i.i151 = phi ptr [ %i.iy, %bb.bf ], [ %.pre, %.sink.split.i.i148 ] ; 2 uses
  %.sroa.015.1.i.i149 = phi ptr [ %.sroa.015.021.i.i146, %bb.bf ], [ %i.je, %.sink.split.i.i148 ] ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i147, i64 1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !81  ; 2 uses
  %i.jh = icmp ne i8 %i.jg, 47
  %i.ji = icmp eq ptr %.sroa.015.1.i.i149, %.pre.i.i151
  %or.cond316.1 = select i1 %i.jh, i1 true, i1 %i.ji
  br i1 %or.cond316.1, label %.sink.split.i.i148.1, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i145.1
  %i.jj = getelementptr inbounds i8, ptr %.sroa.015.1.i.i149, i64 -1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !81
  %.not.i.i153.1 = icmp eq i8 %i.jk, 47
  br i1 %.not.i.i153.1, label %bb.bh, label %.sink.split.i.i148.1

.sink.split.i.i148.1:                             ; preds = %bb.bg, %.lr.ph.i.i145.1
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i149, i64 1
  store i8 %i.jg, ptr %.sroa.015.1.i.i149, align 1, !tbaa !81
  %.pre.1 = load ptr, ptr %9, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split.i.i148.1, %bb.bg
  %.pre.i.i151.1 = phi ptr [ %.pre.i.i151, %bb.bg ], [ %.pre.1, %.sink.split.i.i148.1 ] ; 2 uses
  %.sroa.015.1.i.i149.1 = phi ptr [ %.sroa.015.1.i.i149, %bb.bg ], [ %i.jl, %.sink.split.i.i148.1 ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i147, i64 2 ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.is
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i150, label %.lr.ph.i.i145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i150: ; preds = %.lr.ph.i.i145.prol.loopexit, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144
  %i.jo = phi ptr [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144 ], [ %.pre.i.i151.lcssa.unr, %.lr.ph.i.i145.prol.loopexit ], [ %.pre.i.i151.1, %bb.bh ] ; 2 uses
  %.sroa.015.0.lcssa.i.i152 = phi ptr [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144 ], [ %.sroa.015.1.i.i149.lcssa.unr, %.lr.ph.i.i145.prol.loopexit ], [ %.sroa.015.1.i.i149.1, %bb.bh ]
  %i.jp = ptrtoint ptr %.sroa.015.0.lcssa.i.i152 to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 2 uses
  store i64 %i.jr, ptr %i.io, align 8, !tbaa !79
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jr
  store i8 0, ptr %i.js, align 1, !tbaa !81
  %i.jt = load ptr, ptr %10, align 8, !tbaa !78   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.ht
  br i1 %i.ju, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i150
  %i.jv = load i64, ptr %i.ht, align 8, !tbaa !81
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #57
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  %i.jx = load ptr, ptr %9, align 8, !tbaa !78
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !81
  %i.jz = icmp eq i8 %i.jy, 47
  br i1 %i.jz, label %bb.cy, label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i162
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #58
  %i.ka = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.kb = icmp eq i8 %i.ka, 0
  br i1 %i.kb, label %bb.bj, label %bb.bn, !prof !89

bb.bj:                                            ; preds = %bb.bi
  %i.kc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i164 = icmp eq i32 %i.kc, 0
  br i1 %.not.i164, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.bl unwind label %bb.bm, !inline_history !273

bb.bl:                                            ; preds = %bb.bk
  %i.kd = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %.body165

bb.bn:                                            ; preds = %bb.bi, %bb.bj, %bb.bl
  %i.kf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !78 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ki, ptr %13, align 8, !tbaa !75
  %i.kj = icmp eq ptr %i.kh, null
  br i1 %i.kj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
          to label %.noexc172 unwind label %bb.cs

.noexc172:                                        ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.kk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kh) #58 ; 8 uses
  %i.kl = icmp ugt i64 %i.kk, 15
  br i1 %i.kl, label %bb.bq, label %._crit_edge.i.i168

bb.bq:                                            ; preds = %bb.bp
  %i.km = icmp slt i64 %i.kk, 0
  br i1 %i.km, label %.noexc.i171, label %bb.br

.noexc.i171:                                      ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc173 unwind label %bb.cs

.noexc173:                                        ; preds = %.noexc.i171
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.kn = add nuw i64 %i.kk, 1                    ; 2 uses
  %i.ko = icmp slt i64 %i.kn, 0
  br i1 %i.ko, label %.noexc11.i170, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i169, !prof !80

.noexc11.i170:                                    ; preds = %bb.br
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc174 unwind label %bb.cs

.noexc174:                                        ; preds = %.noexc11.i170
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i169: ; preds = %bb.br
  %i.kp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kn) #55
          to label %.noexc175 unwind label %bb.cs ; 2 uses

.noexc175:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i169
  store ptr %i.kp, ptr %13, align 8, !tbaa !78
  store i64 %i.kk, ptr %i.ki, align 8, !tbaa !81
  br label %._crit_edge.i.i168

._crit_edge.i.i168:                               ; preds = %.noexc175, %bb.bp
  %i.kq = phi ptr [ %i.kp, %.noexc175 ], [ %i.ki, %bb.bp ] ; 3 uses
  switch i64 %i.kk, label %bb.bt [
    i64 1, label %bb.bs
    i64 0, label %bb.bu
  ]

bb.bs:                                            ; preds = %._crit_edge.i.i168
  %i.kr = load i8, ptr %i.kh, align 1, !tbaa !81
  store i8 %i.kr, ptr %i.kq, align 1, !tbaa !81
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge.i.i168
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kq, ptr nonnull align 1 %i.kh, i64 %i.kk, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i168
  %i.ks = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.kk, ptr %i.ks, align 8, !tbaa !79
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kk
  store i8 0, ptr %i.kt, align 1, !tbaa !81
  %i.ku = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ku, ptr %12, align 8, !tbaa !75
  %i.kv = load ptr, ptr %13, align 8, !tbaa !78   ; 2 uses
  %i.kw = load i64, ptr %i.ks, align 8, !tbaa !79 ; 8 uses
  %i.kx = icmp ugt i64 %i.kw, 15
  br i1 %i.kx, label %bb.bv, label %._crit_edge.i.i.i177

bb.bv:                                            ; preds = %bb.bu
  %i.ky = icmp slt i64 %i.kw, 0
  br i1 %i.ky, label %.noexc.i.i190, label %bb.bw

.noexc.i.i190:                                    ; preds = %bb.bv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc191 unwind label %bb.ct

.noexc191:                                        ; preds = %.noexc.i.i190
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.kz = add nuw i64 %i.kw, 1                    ; 2 uses
  %i.la = icmp slt i64 %i.kz, 0
  br i1 %i.la, label %.noexc6.i.i189, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i188, !prof !80

.noexc6.i.i189:                                   ; preds = %bb.bw
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc192 unwind label %bb.ct

.noexc192:                                        ; preds = %.noexc6.i.i189
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i188: ; preds = %bb.bw
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kz) #55
          to label %.noexc193 unwind label %bb.ct ; 2 uses

.noexc193:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i188
  store ptr %i.lb, ptr %12, align 8, !tbaa !78
  store i64 %i.kw, ptr %i.ku, align 8, !tbaa !81
  br label %._crit_edge.i.i.i177

._crit_edge.i.i.i177:                             ; preds = %.noexc193, %bb.bu
  %i.lc = phi ptr [ %i.lb, %.noexc193 ], [ %i.ku, %bb.bu ] ; 3 uses
  switch i64 %i.kw, label %bb.by [
    i64 1, label %bb.bx
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i178
  ]

bb.bx:                                            ; preds = %._crit_edge.i.i.i177
  %i.ld = load i8, ptr %i.kv, align 1, !tbaa !81
  store i8 %i.ld, ptr %i.lc, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i178

bb.by:                                            ; preds = %._crit_edge.i.i.i177
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lc, ptr align 1 %i.kv, i64 %i.kw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i178: ; preds = %bb.by, %bb.bx, %._crit_edge.i.i.i177
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 %i.kw, ptr %i.le, align 8, !tbaa !79
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.kw
  store i8 0, ptr %i.lf, align 1, !tbaa !81
  %i.lg = load ptr, ptr %12, align 8, !tbaa !78   ; 10 uses
  %i.lh = load i64, ptr %i.le, align 8, !tbaa !79 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lh
  %i.lj = icmp samesign eq i64 %i.lh, 0
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i184, label %.lr.ph.i.i179.preheader

.lr.ph.i.i179.preheader:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i178
  %xtraiter456 = and i64 %i.lh, 1
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0
  br i1 %lcmp.mod457.not, label %.lr.ph.i.i179.prol.loopexit, label %.lr.ph.i.i179.prol

.lr.ph.i.i179.prol:                               ; preds = %.lr.ph.i.i179.preheader
  %i.lk = load i8, ptr %i.lg, align 1, !tbaa !81
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 1 ; 2 uses
  store i8 %i.lk, ptr %i.lg, align 1, !tbaa !81
  %.pre322.prol = load ptr, ptr %12, align 8      ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  br label %.lr.ph.i.i179.prol.loopexit

.lr.ph.i.i179.prol.loopexit:                      ; preds = %.lr.ph.i.i179.prol, %.lr.ph.i.i179.preheader
  %.pre.i.i185.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i179.preheader ], [ %.pre322.prol, %.lr.ph.i.i179.prol ]
  %.sroa.015.1.i.i183.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i179.preheader ], [ %i.ll, %.lr.ph.i.i179.prol ]
  %.unr458 = phi ptr [ %i.lg, %.lr.ph.i.i179.preheader ], [ %.pre322.prol, %.lr.ph.i.i179.prol ]
  %.sroa.015.021.i.i180.unr = phi ptr [ %i.lg, %.lr.ph.i.i179.preheader ], [ %i.ll, %.lr.ph.i.i179.prol ]
  %.sroa.012.020.i.i181.unr = phi ptr [ %i.lg, %.lr.ph.i.i179.preheader ], [ %i.lm, %.lr.ph.i.i179.prol ]
  %i.ln = icmp eq i64 %i.lh, 1
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i184, label %.lr.ph.i.i179

.lr.ph.i.i179:                                    ; preds = %.lr.ph.i.i179.prol.loopexit, %bb.cb
  %i.lo = phi ptr [ %.pre.i.i185.1, %bb.cb ], [ %.unr458, %.lr.ph.i.i179.prol.loopexit ] ; 2 uses
  %.sroa.015.021.i.i180 = phi ptr [ %.sroa.015.1.i.i183.1, %bb.cb ], [ %.sroa.015.021.i.i180.unr, %.lr.ph.i.i179.prol.loopexit ] ; 5 uses
  %.sroa.012.020.i.i181 = phi ptr [ %i.mc, %bb.cb ], [ %.sroa.012.020.i.i181.unr, %.lr.ph.i.i179.prol.loopexit ] ; 3 uses
  %i.lp = load i8, ptr %.sroa.012.020.i.i181, align 1, !tbaa !81 ; 2 uses
  %i.lq = icmp ne i8 %i.lp, 47
  %i.lr = icmp eq ptr %.sroa.015.021.i.i180, %i.lo
  %or.cond318 = select i1 %i.lq, i1 true, i1 %i.lr
  br i1 %or.cond318, label %.sink.split.i.i182, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i179
  %i.ls = getelementptr inbounds i8, ptr %.sroa.015.021.i.i180, i64 -1
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !81
  %.not.i.i187 = icmp eq i8 %i.lt, 47
  br i1 %.not.i.i187, label %.lr.ph.i.i179.1, label %.sink.split.i.i182

.sink.split.i.i182:                               ; preds = %bb.bz, %.lr.ph.i.i179
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i180, i64 1
  store i8 %i.lp, ptr %.sroa.015.021.i.i180, align 1, !tbaa !81
  %.pre322 = load ptr, ptr %12, align 8
  br label %.lr.ph.i.i179.1

.lr.ph.i.i179.1:                                  ; preds = %.sink.split.i.i182, %bb.bz
  %.pre.i.i185 = phi ptr [ %i.lo, %bb.bz ], [ %.pre322, %.sink.split.i.i182 ] ; 2 uses
  %.sroa.015.1.i.i183 = phi ptr [ %.sroa.015.021.i.i180, %bb.bz ], [ %i.lu, %.sink.split.i.i182 ] ; 5 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i181, i64 1
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !81  ; 2 uses
  %i.lx = icmp ne i8 %i.lw, 47
  %i.ly = icmp eq ptr %.sroa.015.1.i.i183, %.pre.i.i185
end_hunk_11
begin_hunk_12_@_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !79, !noalias !1311 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79, !noalias !1311 ; 5 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !78, !noalias !1311 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = icmp ult i64 %i.e, 16
  call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.m = load i64, ptr %i.j, align 8, !tbaa !81, !noalias !1311
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.h, %i.n
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.c, 1
  br i1 %cond.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 1, !tbaa !81, !noalias !1311
  store i8 %i.p, ptr %i.o, align 1, !tbaa !81, !noalias !1311
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.a, i64 %i.c, i1 false), !noalias !1311
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.e, i64 noundef 0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  store i64 %i.h, ptr %i.d, align 8, !tbaa !79, !noalias !1311
  %i.q = load ptr, ptr %4, align 8, !tbaa !78, !noalias !1311
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !81, !noalias !1311
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !75, !alias.scope !1311
  %i.t = load ptr, ptr %4, align 8, !tbaa !78, !noalias !1311 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.j
  br i1 %i.u, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.v = load i64, ptr %i.d, align 8, !tbaa !79, !noalias !1311 ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.x, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.t, ptr %3, align 8, !tbaa !78, !alias.scope !1311
  %i.y = load i64, ptr %i.j, align 8, !tbaa !81, !noalias !1311
  store i64 %i.y, ptr %i.s, align 8, !tbaa !81, !alias.scope !1311
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !79, !noalias !1311
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.z = phi i64 [ %i.v, %bb.h ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !79, !alias.scope !1311
  store ptr %i.j, ptr %4, align 8, !tbaa !78, !noalias !1311
  store i64 0, ptr %i.d, align 8, !tbaa !79, !noalias !1311
  store i8 0, ptr %i.j, align 8, !tbaa !81, !noalias !1311
  %i.ab = invoke fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_114UnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc7 unwind label %bb.l

.noexc7:                                          ; preds = %bb.i
  br i1 %i.ab, label %bb.j, label %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.j:                                             ; preds = %.noexc7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = invoke fastcc noundef zeroext i1 @_ZNK7testing8internal12_GLOBAL__N_114UnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc8 unwind label %bb.l

.noexc8:                                          ; preds = %bb.j
  %i.ae = xor i1 %i.ad, true
  br label %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc8, %.noexc7
  %i.af = phi i1 [ false, %.noexc7 ], [ %i.ae, %.noexc8 ]
  %i.ag = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !81
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing8internal12_GLOBAL__N_133PositiveAndNegativeUnitTestFilter11MatchesNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.ak = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.j
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load i64, ptr %i.j, align 8, !tbaa !81
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret i1 %i.af

bb.k:                                             ; preds = %bb.g, %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.s
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.l
  %i.as = load i64, ptr %i.s, align 8, !tbaa !81
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.ap, %bb.l ]
  %i.au = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !81
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterC2EPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 12), (24, 32)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !376
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !377
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !376
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = tail call noundef ptr @_ZN7testing8internal12UnitTestImpl31GetGlobalTestPartResultReporterEv(ptr noundef nonnull align 8 dereferenceable(601) %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !378
  tail call void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %i.f, ptr noundef nonnull %0)
  br label %bb.h

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !331
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !378
  %i.p = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  store ptr %0, ptr %i.p, align 8, !tbaa !331
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterC2ENS0_13InterceptModeEPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 12), (24, 32)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !376
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.b, align 8, !tbaa !377
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7testing8internal12UnitTestImpl31GetGlobalTestPartResultReporterEv(ptr noundef nonnull align 8 dereferenceable(601) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #58 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.461, i32 noundef 1620)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.462, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.463, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  resume { ptr, i32 } %i.f

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #59
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.g, ptr %i.h, align 8, !tbaa !345
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !379
  store i8 0, ptr %i.i, align 8, !tbaa !346
  %i.l = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #58 ; 2 uses
  %.not.i.i1 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i1, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.461, i32 noundef 1632)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.464, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2: ; preds = %.noexc.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.463, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.l)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2, %.noexc.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
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
define void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #58 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.461, i32 noundef 1620)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.462, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.463, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  resume { ptr, i32 } %i.f

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #59
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.g, ptr %i.h, align 8, !tbaa !345
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.j, align 8, !tbaa !379
  store i8 0, ptr %i.i, align 8, !tbaa !346
  %i.k = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #58 ; 2 uses
  %.not.i.i2 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i2, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.461, i32 noundef 1632)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.464, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3: ; preds = %.noexc.i
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.463, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.k)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3, %.noexc.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !376
  %i.i = icmp eq i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !378  ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %i.f, ptr noundef %i.k)
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.m = invoke noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE.exit unwind label %bb.j

_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE.exit: ; preds = %bb.h
  store ptr %i.k, ptr %i.m, align 8, !tbaa !331
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
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporterD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #58
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #57
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporter20ReportTestPartResultERKNS_14TestPartResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !377  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !326  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !327
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !326
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.h, ptr %i.c, align 8, !tbaa !326
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
  store ptr %1, ptr %0, align 8, !tbaa !381
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !382
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !75
  %i.d = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79   ; 8 uses
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %i.f, 0
  br i1 %i.h, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #55 ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !78
  store i64 %i.f, ptr %i.c, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.d, align 1, !tbaa !81
  store i8 %i.m, ptr %i.l, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.n, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.o, align 1, !tbaa !81
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
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.testing::Message", align 8 ; 15 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 12 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 14 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %19 = alloca %"class.testing::Message", align 8 ; 5 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #58
  %i.a = load ptr, ptr %0, align 8, !tbaa !381    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !382  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #58, !noalias !1330
  %.not1.i = icmp eq i32 %i.c, 2                  ; 3 uses
  %i.e = select i1 %.not1.i, ptr @.str.453, ptr @.str.454
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.f, ptr %13, align 8, !tbaa !75, !noalias !1330
  %i.g = select i1 %.not1.i, i64 15, i64 19       ; 2 uses
  br i1 %.not1.i, label %._crit_edge.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.a
  %i.h = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #55
          to label %.noexc unwind label %bb.bm    ; 2 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.h, ptr %13, align 8, !tbaa !78, !noalias !1330
  store i64 19, ptr %i.f, align 8, !tbaa !81, !noalias !1330
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %.sroa.sel.v.i = phi i64 [ 19, %.noexc ], [ 15, %bb.a ]
end_hunk_12
begin_hunk_13_@_ZN7testing8internal14GTestFlagSaverC2Ev:bb.a
  %i.s = load i8, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !tbaa !82, !range !70, !noundef !71
  store i8 %i.s, ptr %0, align 8, !tbaa !458
  %i.t = load i8, ptr @_ZN7testing28FLAGS_gtest_break_on_failureE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !459
  %i.v = load i8, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.w, align 2, !tbaa !460
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing17FLAGS_gtest_colorB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.x = load i8, ptr @_ZN7testing31FLAGS_gtest_death_test_use_forkE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.x, ptr %i.y, align 8, !tbaa !461
  %i.z = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !462
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_filterB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing35FLAGS_gtest_internal_run_death_testB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3
  %i.ab = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.ab, ptr %i.ac, align 8, !tbaa !463
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_outputB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4
  %i.ad = load i8, ptr @_ZN7testing17FLAGS_gtest_briefE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !464
  %i.af = load i8, ptr @_ZN7testing22FLAGS_gtest_print_timeE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !465
  %i.ah = load i8, ptr @_ZN7testing22FLAGS_gtest_print_utf8E, align 1, !tbaa !82, !range !70, !noundef !71
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i8 %i.ah, ptr %i.ai, align 2, !tbaa !466
  %i.aj = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !467
  %i.al = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4, !tbaa !88
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.al, ptr %i.am, align 8, !tbaa !468
  %i.an = load i8, ptr @_ZN7testing48FLAGS_gtest_recreate_environments_when_repeatingE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !469
  %i.ap = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 197
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !470
  %i.ar = load i32, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !88
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !471
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit6 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5
  %i.at = load i8, ptr @_ZN7testing28FLAGS_gtest_throw_on_failureE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.at, ptr %i.au, align 8, !tbaa !472
  ret void

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !78  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !81
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !78  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.n
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !81
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !78  ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.k
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !81
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !78  ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.h
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.bk = load i64, ptr %i.h, align 8, !tbaa !81
  %i.bl = add i64 %i.bk, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !78  ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.e
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !81
  %i.bp = add i64 %i.bo, 1
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.b
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !81
  %i.bt = add i64 %i.bs, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing4TestD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing4TestE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !456  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i

_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN7testing8internal14GTestFlagSaverD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %i.b) #58
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 248) #57
  br label %_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN7testing4TestD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #35 align 2 {
bb.a:
  tail call void @llvm.trap() #61
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #36

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
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !273

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.r, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(601) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !81
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !81
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #57
  br label %_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %common.resume

_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::TestProperty", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  invoke void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(601) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !81
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.i = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN7testing12TestPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !81
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #57
  br label %_ZN7testing12TestPropertyD2Ev.exit

_ZN7testing12TestPropertyD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Test14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %1)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.d = load ptr, ptr %2, align 8, !tbaa !85, !noalias !1575
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.d)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.k

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.e = load ptr, ptr %4, align 8, !tbaa !78     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !75
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #58 ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc8 unwind label %bb.l

.noexc8:                                          ; preds = %.noexc.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc11.i:                                       ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc9 unwind label %bb.l

.noexc9:                                          ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #55
          to label %.noexc10 unwind label %bb.l   ; 2 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.m, ptr %3, align 8, !tbaa !78
  store i64 %i.h, ptr %i.f, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc10, %bb.c
  %i.n = phi ptr [ %i.m, %.noexc10 ], [ %i.f, %bb.c ] ; 3 uses
  switch i64 %i.h, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.e, align 1, !tbaa !81
  store i8 %i.o, ptr %i.n, align 1, !tbaa !81
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.e, i64 %i.h, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.p, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.q, align 1, !tbaa !81
  invoke void @_ZN7testing4Test14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.t = load i64, ptr %i.f, align 8, !tbaa !81
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.v = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !81
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %i.aa = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void

bb.j:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc11.i, %.noexc.i, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.m:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.m
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !81
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.ah, %bb.m ] ; 2 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !81
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.k ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.ae, %bb.j ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit22, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %bb.n
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(128) %i.ar) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit22

_ZN7testing7MessageD2Ev.exit22:                   ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !273

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !79
  store i8 0, ptr %i.f, align 8, !tbaa !81
  invoke void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i32 noundef %0, ptr noundef null, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.h = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.f, align 8, !tbaa !81
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  %i.o = load i64, ptr %i.f, align 8, !tbaa !81
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
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
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit59, %_ZN7testing7MessageD2Ev.exit92, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn33.pn.pn, %_ZN7testing7MessageD2Ev.exit59 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit92 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !384
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !413
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !404  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !473  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !185  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !473  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 5 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #58
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.192, i64 noundef 64)
          to label %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit:       ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !tbaa !85
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.193, i64 noundef 59)
          to label %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.194, i64 noundef 24)
          to label %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !78  ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = load ptr, ptr %0, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  br i1 %i.aj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #58
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.an = phi ptr [ %i.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.188, %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit ]
  %i.ao = phi i64 [ %i.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 6, %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit ]
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.an, i64 noundef %i.ao)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  %i.aq = load ptr, ptr %0, align 8, !tbaa !85
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.175, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.at = load ptr, ptr %0, align 8, !tbaa !85
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.195, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit
  %i.aw = icmp eq ptr %i.y, null
  %i.ax = load ptr, ptr %0, align 8, !tbaa !85
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  br i1 %i.aw, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit
  %i.az = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #58
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41
  %i.ba = phi ptr [ %i.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41 ], [ @.str.188, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit ]
  %i.bb = phi i64 [ %i.az, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41 ], [ 6, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit ]
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke
  %i.bd = load ptr, ptr %0, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.196, i64 noundef 29)
          to label %_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44
  %i.bg = load ptr, ptr %0, align 8, !tbaa !85
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.195, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47:      ; preds = %_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit
  %i.bj = icmp eq ptr %i.x, null
  %i.bk = load ptr, ptr %0, align 8, !tbaa !85
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  br i1 %i.bj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #58
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48
  %i.bn = phi ptr [ %i.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48 ], [ @.str.188, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 ]
  %i.bo = phi i64 [ %i.bm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48 ], [ 6, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 ]
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.bn, i64 noundef %i.bo)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke
  %i.bq = load ptr, ptr %0, align 8, !tbaa !85
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.197, i64 noundef 38)
          to label %_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51
  %i.bt = load ptr, ptr %0, align 8, !tbaa !85
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.198, i64 noundef 61)
          to label %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit
  %i.bw = load ptr, ptr %0, align 8, !tbaa !85
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.199, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55:      ; preds = %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, ptr noundef nonnull @.str.137, i32 noundef 2498, ptr noundef nonnull @.str.200)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  %i.bz = load ptr, ptr %0, align 8, !tbaa !85    ; 3 uses
  %.not.i.i56 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i56, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !87
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(128) %i.bz) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #58
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
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #58
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn33 = phi { ptr, i32 } [ %i.cf, %bb.l ], [ %i.ce, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %bb.n

end_hunk_13
begin_hunk_14_@_ZN7testing8internal26GoogleTestFailureExceptionC2ERKNS_14TestPartResultE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !81
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal26GoogleTestFailureExceptionE, i64 16), ptr %0, align 8, !tbaa !87
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !81
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !79
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %i.a, align 8
  %spec.select.i = select i1 %i.d, ptr null, ptr %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !324
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %spec.select.i, i32 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %3, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !79
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.67, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.q = load i32, ptr %1, align 8, !tbaa !325    ; 2 uses
  %i.r = icmp ult i32 %i.q, 4
  br i1 %i.r, label %switch.lookup, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

switch.lookup:                                    ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.s = zext nneg i32 %i.q to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE, i64 %i.s
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.482, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit ] ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #58
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %.0.i, i64 noundef %i.v)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = load ptr, ptr %2, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br i1 %i.z, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #58
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12
  %i.ad = phi ptr [ %i.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12 ], [ @.str.188, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit ]
  %i.ae = phi i64 [ %i.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12 ], [ 6, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit ]
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.ad, i64 noundef %i.ae)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15 unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke
  %i.ag = load ptr, ptr %2, align 8, !tbaa !85, !noalias !1578
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.ag)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.d

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15
  %i.ah = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !81
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %i.am = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !87
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(128) %i.am) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void

bb.c:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.b, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.d
  %i.av = load i64, ptr %i.at, align 8, !tbaa !81
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.c ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.ar, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %i.ax = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit22, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit22

_ZN7testing7MessageD2Ev.exit22:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
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
  br i1 %i.c, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  resume { ptr, i32 } %i.f

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 528 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !354  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !87
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.k = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.k, align 8, !tbaa !87
  store ptr %i.k, ptr %i.h, align 8, !tbaa !354
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.g
  %i.l = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.g ], [ %.pre, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.m = phi ptr [ %i.k, %bb.g ], [ %i.i, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 17, i64 0, ptr noundef nonnull @.str.208)
  %i.p = tail call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.p, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.q = tail call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.q, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !354  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge: ; preds = %bb.i
  %.pre10 = load ptr, ptr %i.r, align 8, !tbaa !87
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8

bb.j:                                             ; preds = %bb.i
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.t, align 8, !tbaa !87
  store ptr %i.t, ptr %i.h, align 8, !tbaa !354
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge, %bb.j
  %i.u = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.j ], [ %.pre10, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge ]
  %i.v = phi ptr [ %i.t, %bb.j ], [ %i.r, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 33, i64 0, ptr noundef nonnull @.str.209)
  br label %bb.k

bb.k:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8, %bb.h, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !354  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge: ; preds = %bb.k
  %.pre11 = load ptr, ptr %i.y, align 8, !tbaa !87
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.aa, align 8, !tbaa !87
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !354
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge, %bb.l
  %i.ab = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.l ], [ %.pre11, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge ]
  %i.ac = phi ptr [ %i.aa, %bb.l ], [ %i.y, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 25, i64 0, ptr noundef nonnull @.str.210)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.bf, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.h = load i8, ptr %i.g, align 8, !tbaa !474, !range !70, !noundef !71
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !71
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !1579

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 3 uses
  %i.u = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #58
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.s) #58 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #58
  %i.y = icmp eq i32 %i.t, %i.x
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.s) #58 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #58
  %i.ab = icmp eq i32 %i.t, %i.aa
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.s) #58 ; 2 uses
  br i1 %i.ab, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #58
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ag, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !81
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.t
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !81
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.v:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !81
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.as, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.x:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.x
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !81
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.w
  %.pn34 = phi { ptr, i32 } [ %i.ay, %bb.w ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.az, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
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
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.bh = getelementptr i8, ptr %i.bg, i64 %1
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  %i.bj = load ptr, ptr %i.bi, align 8, !nosanitize !71
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
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !185  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !384  ; 2 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.i, %bb.f ], [ %i.l, %bb.h ], [ %i.m, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !454  ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !454  ; 3 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %_ZNK7testing10TestResult15HasFatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.s = ptrtoaddr ptr %i.q to i64
  %i.t = ptrtoaddr ptr %i.o to i64
  %i.u = add i64 %i.s, -112
  %i.v = sub i64 %i.u, %i.t                       ; 2 uses
  %i.w = udiv i64 %i.v, 112
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.x, 576460752303423480       ; 3 uses
  %i.y = mul i64 %n.vec, 112
  %i.z = getelementptr i8, ptr %i.o, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi4 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %i.aa = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.aa
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep5 = getelementptr i8, ptr %i.ab, i64 112
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep6 = getelementptr i8, ptr %i.ac, i64 224
  %i.ad = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep7 = getelementptr i8, ptr %i.ad, i64 336
  %i.ae = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep8 = getelementptr i8, ptr %i.ae, i64 448
  %i.af = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep9 = getelementptr i8, ptr %i.af, i64 560
  %i.ag = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep10 = getelementptr i8, ptr %i.ag, i64 672
  %i.ah = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep11 = getelementptr i8, ptr %i.ah, i64 784
  %i.ai = load i32, ptr %next.gep, align 8, !tbaa !325
  %i.aj = load i32, ptr %next.gep5, align 8, !tbaa !325
  %i.ak = load i32, ptr %next.gep6, align 8, !tbaa !325
  %i.al = load i32, ptr %next.gep7, align 8, !tbaa !325
  %i.am = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 1
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 2
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.al, i64 3
  %i.aq = load i32, ptr %next.gep8, align 8, !tbaa !325
  %i.ar = load i32, ptr %next.gep9, align 8, !tbaa !325
  %i.as = load i32, ptr %next.gep10, align 8, !tbaa !325
  %i.at = load i32, ptr %next.gep11, align 8, !tbaa !325
  %i.au = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 1
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 2
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 3
  %i.ay = icmp eq <4 x i32> %i.ap, splat (i32 2)
  %i.az = icmp eq <4 x i32> %i.ax, splat (i32 2)
  %i.ba = zext <4 x i1> %i.ay to <4 x i32>
  %i.bb = zext <4 x i1> %i.az to <4 x i32>
  %i.bc = add <4 x i32> %vec.phi, %i.ba           ; 2 uses
  %i.bd = add <4 x i32> %vec.phi4, %i.bb          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1580

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bd, %i.bc
  %i.bf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader12

.lr.ph.i.i.preheader12:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.08.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block ]
  %.sroa.04.07.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader12, %.lr.ph.i.i
  %.08.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader12 ]
  %.sroa.04.07.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.sroa.04.07.i.i.ph, %.lr.ph.i.i.preheader12 ] ; 2 uses
  %i.bg = load i32, ptr %.sroa.04.07.i.i, align 8, !tbaa !325
  %i.bh = icmp eq i32 %i.bg, 2
  %i.bi = zext i1 %i.bh to i32
  %spec.select.i.i = add nuw nsw i32 %.08.i.i, %i.bi ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 112 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.q
  br i1 %i.bk, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1581

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.bf, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bl = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult15HasFatalFailureEv.exit

_ZNK7testing10TestResult15HasFatalFailureEv.exit: ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ], [ %i.bl, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !185  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !384  ; 2 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.i, %bb.f ], [ %i.l, %bb.h ], [ %i.m, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !326  ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !328  ; 13 uses
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
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !20

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.u
  br i1 %exitcond.not.i.i, label %bb.k, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.471, i64 noundef %i.u, i64 noundef %i.u) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.y = load i32, ptr %i.x, align 8, !tbaa !325
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i = icmp ult i32 %i.z, 2
  br i1 %spec.select.i.i.i, label %_ZNK7testing10TestResult7SkippedEv.exit, label %bb.j

.loopexit.i:                                      ; preds = %bb.j, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.aa = icmp eq ptr %i.q, %i.p
  br i1 %i.aa, label %_ZNK7testing10TestResult7SkippedEv.exit, label %.lr.ph.i1.i.preheader

.lr.ph.i1.i.preheader:                            ; preds = %.loopexit.i
  %i.ab = add i64 %i.r, -112
  %i.ac = sub i64 %i.ab, %i.s                     ; 2 uses
  %i.ad = udiv i64 %i.ac, 112
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 784
  br i1 %min.iters.check, label %.lr.ph.i1.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i1.i.preheader
  %n.vec = and i64 %i.ae, 576460752303423480      ; 3 uses
  %i.af = mul i64 %n.vec, 112
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %i.ah = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ah
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ah
  %next.gep6 = getelementptr i8, ptr %i.ai, i64 112
  %i.aj = getelementptr i8, ptr %i.q, i64 %i.ah
  %next.gep7 = getelementptr i8, ptr %i.aj, i64 224
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.ah
  %next.gep8 = getelementptr i8, ptr %i.ak, i64 336
  %i.al = getelementptr i8, ptr %i.q, i64 %i.ah
  %next.gep9 = getelementptr i8, ptr %i.al, i64 448
  %i.am = getelementptr i8, ptr %i.q, i64 %i.ah
  %next.gep10 = getelementptr i8, ptr %i.am, i64 560
  %i.an = getelementptr i8, ptr %i.q, i64 %i.ah
  %next.gep11 = getelementptr i8, ptr %i.an, i64 672
  %i.ao = getelementptr i8, ptr %i.q, i64 %i.ah
  %next.gep12 = getelementptr i8, ptr %i.ao, i64 784
  %i.ap = load i32, ptr %next.gep, align 8, !tbaa !325
  %i.aq = load i32, ptr %next.gep6, align 8, !tbaa !325
  %i.ar = load i32, ptr %next.gep7, align 8, !tbaa !325
  %i.as = load i32, ptr %next.gep8, align 8, !tbaa !325
  %i.at = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 1
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 2
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 3
  %i.ax = load i32, ptr %next.gep9, align 8, !tbaa !325
  %i.ay = load i32, ptr %next.gep10, align 8, !tbaa !325
  %i.az = load i32, ptr %next.gep11, align 8, !tbaa !325
  %i.ba = load i32, ptr %next.gep12, align 8, !tbaa !325
  %i.bb = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %i.bc = insertelement <4 x i32> %i.bb, i32 %i.ay, i64 1
  %i.bd = insertelement <4 x i32> %i.bc, i32 %i.az, i64 2
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 3
  %i.bf = icmp eq <4 x i32> %i.aw, splat (i32 3)
  %i.bg = icmp eq <4 x i32> %i.be, splat (i32 3)
  %i.bh = zext <4 x i1> %i.bf to <4 x i32>
  %i.bi = zext <4 x i1> %i.bg to <4 x i32>
  %i.bj = add <4 x i32> %vec.phi, %i.bh           ; 2 uses
  %i.bk = add <4 x i32> %vec.phi5, %i.bi          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !1582

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bk, %i.bj
  %i.bm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i.preheader13

.lr.ph.i1.i.preheader13:                          ; preds = %.lr.ph.i1.i.preheader, %middle.block
  %.08.i.i.ph = phi i32 [ 0, %.lr.ph.i1.i.preheader ], [ %i.bm, %middle.block ]
  %.sroa.04.07.i.i.ph = phi ptr [ %i.q, %.lr.ph.i1.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %.lr.ph.i1.i.preheader13, %.lr.ph.i1.i
  %.08.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i1.i ], [ %.08.i.i.ph, %.lr.ph.i1.i.preheader13 ]
  %.sroa.04.07.i.i = phi ptr [ %i.bq, %.lr.ph.i1.i ], [ %.sroa.04.07.i.i.ph, %.lr.ph.i1.i.preheader13 ] ; 2 uses
  %i.bn = load i32, ptr %.sroa.04.07.i.i, align 8, !tbaa !325
  %i.bo = icmp eq i32 %i.bn, 3
  %i.bp = zext i1 %i.bo to i32
  %spec.select.i.i = add nuw nsw i32 %.08.i.i, %i.bp ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 112 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.p
  br i1 %i.br, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !1583

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i1.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.bm, %middle.block ], [ %spec.select.i.i, %.lr.ph.i1.i ]
  %i.bs = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult7SkippedEv.exit

_ZNK7testing10TestResult7SkippedEv.exit:          ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %.loopexit.i, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %i.bt = phi i1 [ %i.bs, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ], [ false, %.loopexit.i ], [ false, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ]
  ret i1 %i.bt
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test18HasNonfatalFailureEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !185  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !384  ; 2 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.i, %bb.f ], [ %i.l, %bb.h ], [ %i.m, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !454  ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !454  ; 3 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.s = ptrtoaddr ptr %i.q to i64
  %i.t = ptrtoaddr ptr %i.o to i64
  %i.u = add i64 %i.s, -112
  %i.v = sub i64 %i.u, %i.t                       ; 2 uses
  %i.w = udiv i64 %i.v, 112
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.x, 576460752303423480       ; 3 uses
  %i.y = mul i64 %n.vec, 112
  %i.z = getelementptr i8, ptr %i.o, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi4 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %i.aa = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.aa
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep5 = getelementptr i8, ptr %i.ab, i64 112
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep6 = getelementptr i8, ptr %i.ac, i64 224
  %i.ad = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep7 = getelementptr i8, ptr %i.ad, i64 336
  %i.ae = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep8 = getelementptr i8, ptr %i.ae, i64 448
  %i.af = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep9 = getelementptr i8, ptr %i.af, i64 560
  %i.ag = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep10 = getelementptr i8, ptr %i.ag, i64 672
  %i.ah = getelementptr i8, ptr %i.o, i64 %i.aa
  %next.gep11 = getelementptr i8, ptr %i.ah, i64 784
  %i.ai = load i32, ptr %next.gep, align 8, !tbaa !325
  %i.aj = load i32, ptr %next.gep5, align 8, !tbaa !325
  %i.ak = load i32, ptr %next.gep6, align 8, !tbaa !325
  %i.al = load i32, ptr %next.gep7, align 8, !tbaa !325
  %i.am = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 1
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 2
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.al, i64 3
  %i.aq = load i32, ptr %next.gep8, align 8, !tbaa !325
  %i.ar = load i32, ptr %next.gep9, align 8, !tbaa !325
  %i.as = load i32, ptr %next.gep10, align 8, !tbaa !325
  %i.at = load i32, ptr %next.gep11, align 8, !tbaa !325
  %i.au = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 1
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 2
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 3
  %i.ay = icmp eq <4 x i32> %i.ap, splat (i32 1)
  %i.az = icmp eq <4 x i32> %i.ax, splat (i32 1)
  %i.ba = zext <4 x i1> %i.ay to <4 x i32>
  %i.bb = zext <4 x i1> %i.az to <4 x i32>
  %i.bc = add <4 x i32> %vec.phi, %i.ba           ; 2 uses
  %i.bd = add <4 x i32> %vec.phi4, %i.bb          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1584

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bd, %i.bc
  %i.bf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader12

.lr.ph.i.i.preheader12:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.08.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block ]
  %.sroa.04.07.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader12, %.lr.ph.i.i
  %.08.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader12 ]
  %.sroa.04.07.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.sroa.04.07.i.i.ph, %.lr.ph.i.i.preheader12 ] ; 2 uses
  %i.bg = load i32, ptr %.sroa.04.07.i.i, align 8, !tbaa !325
  %i.bh = icmp eq i32 %i.bg, 1
  %i.bi = zext i1 %i.bh to i32
  %spec.select.i.i = add nuw nsw i32 %.08.i.i, %i.bi ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 112 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.q
  br i1 %i.bk, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1585

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.bf, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bl = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit

_ZNK7testing10TestResult18HasNonfatalFailureEv.exit: ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ], [ %i.bl, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKcSA_NS_8internal12CodeLocationEPKvPNSB_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly align 8 captures(none) %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  %i.b = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !79   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #55 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !78
  store i64 %i.d, ptr %i.a, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !81
  store i8 %i.k, ptr %i.j, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !75
  %i.p = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !79   ; 8 uses
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %bb.f, label %._crit_edge.i.i43
end_hunk_14
begin_hunk_15_@_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE:bb.a
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %0, i64 %i.d, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.n, ptr %10, align 8, !tbaa !75
  %i.o = icmp eq ptr %1, null
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
          to label %.noexc25 unwind label %bb.aa

.noexc25:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #58 ; 8 uses
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.k, label %._crit_edge.i.i21

bb.k:                                             ; preds = %bb.j
  %i.r = icmp slt i64 %i.p, 0
  br i1 %i.r, label %.noexc.i24, label %bb.l

.noexc.i24:                                       ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc26 unwind label %bb.aa

.noexc26:                                         ; preds = %.noexc.i24
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.s = add nuw i64 %i.p, 1                      ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %.noexc11.i23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22, !prof !80

.noexc11.i23:                                     ; preds = %bb.l
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc27 unwind label %bb.aa

.noexc27:                                         ; preds = %.noexc11.i23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22: ; preds = %bb.l
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #55
          to label %.noexc28 unwind label %bb.aa  ; 2 uses

.noexc28:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22
  store ptr %i.u, ptr %10, align 8, !tbaa !78
  store i64 %i.p, ptr %i.n, align 8, !tbaa !81
  br label %._crit_edge.i.i21

._crit_edge.i.i21:                                ; preds = %.noexc28, %bb.j
  %i.v = phi ptr [ %i.u, %.noexc28 ], [ %i.n, %bb.j ] ; 3 uses
  switch i64 %i.p, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i21
  %i.w = load i8, ptr %1, align 1, !tbaa !81
  store i8 %i.w, ptr %i.v, align 1, !tbaa !81
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i21
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %1, i64 %i.p, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i21
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.p, ptr %i.x, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  store i8 0, ptr %i.y, align 1, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.z, ptr %11, align 8, !tbaa !75
  %i.aa = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !79 ; 8 uses
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.p, label %._crit_edge.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ae = icmp slt i64 %i.ac, 0
  br i1 %i.ae, label %.noexc.i.i, label %bb.q

.noexc.i.i:                                       ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc30 unwind label %bb.ab

.noexc30:                                         ; preds = %.noexc.i.i
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.af = add nuw i64 %i.ac, 1                    ; 2 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !80

.noexc6.i.i:                                      ; preds = %bb.q
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc31 unwind label %bb.ab

.noexc31:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.q
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #55
          to label %.noexc32 unwind label %bb.ab  ; 2 uses

.noexc32:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.ah, ptr %11, align 8, !tbaa !78
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc32, %bb.o
  %i.ai = phi ptr [ %i.ah, %.noexc32 ], [ %i.z, %bb.o ] ; 3 uses
  switch i64 %i.ac, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = load i8, ptr %i.aa, align 1, !tbaa !81
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !81
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ac, ptr %i.ak, align 8, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ac
  store i8 0, ptr %i.al, align 1, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !334
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !334
  invoke void @_ZN7testing8TestInfoC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKcSA_NS_8internal12CodeLocationEPKvPNSB_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(272) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 %11, ptr noundef %5, ptr noundef %8)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.ap = load ptr, ptr %11, align 8, !tbaa !78   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.z
  br i1 %i.aq, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.ar = load i64, ptr %i.z, align 8, !tbaa !81
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #57
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.at = load ptr, ptr %10, align 8, !tbaa !78   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.n
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.av = load i64, ptr %i.n, align 8, !tbaa !81
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  %i.ax = load ptr, ptr %9, align 8, !tbaa !78    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.b
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.b, align 8, !tbaa !81
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  %i.bb = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.v, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.bd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.x unwind label %bb.y, !inline_history !2

bb.x:                                             ; preds = %bb.w
  %i.be = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.y ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.v, %bb.x
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  call void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(601) %i.bg, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.a)
  ret ptr %i.a

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc11.i, %.noexc.i, %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22, %.noexc11.i23, %.noexc.i24, %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit38

bb.ac:                                            ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %11, align 8, !tbaa !78   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.z
  br i1 %i.bm, label %_ZN7testing8internal12CodeLocationD2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %bb.ac
  %i.bn = load i64, ptr %i.z, align 8, !tbaa !81
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #57
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit38

_ZN7testing8internal12CodeLocationD2Ev.exit38:    ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.ab ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36 ], [ %i.bk, %bb.ac ] ; 2 uses
  %i.bp = load ptr, ptr %10, align 8, !tbaa !78   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.n
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit38
  %i.br = load i64, ptr %i.n, align 8, !tbaa !81
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.aa ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit38 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  %i.bt = load ptr, ptr %9, align 8, !tbaa !78    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.b
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !81
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.z ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 272) #57
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @_ZN7testing8internal8FilePath13GetCurrentDirEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %4)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal8FilePath3SetERKS1_.exit unwind label %bb.c

_ZN7testing8internal8FilePath3SetERKS1_.exit:     ; preds = %bb.b
  %i.e = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN7testing8internal8FilePathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal8FilePath3SetERKS1_.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !81
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #57
  br label %_ZN7testing8internal8FilePathD2Ev.exit

_ZN7testing8internal8FilePathD2Ev.exit:           ; preds = %_ZN7testing8internal8FilePath3SetERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %i.j = load i64, ptr %i.a, align 8, !tbaa !79
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN7testing8internal8FilePathD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !81
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #57
  br label %_ZN7testing8internal8FilePathD2Ev.exit11

_ZN7testing8internal8FilePathD2Ev.exit11:         ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %bb.h

bb.d:                                             ; preds = %_ZN7testing8internal8FilePathD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.477, i32 noundef 681)
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.478, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.479, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZN7testing8internal8FilePathD2Ev.exit, %bb.a
  %i.t = load ptr, ptr %3, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNK7testing8TestInfo10type_paramEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78
  br label %_ZNK7testing8TestInfo10type_paramEv.exit

_ZNK7testing8TestInfo10type_paramEv.exit:         ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.w, %bb.g ], [ null, %bb.f ]
  %i.x = call noundef ptr @_ZN7testing8internal12UnitTestImpl12GetTestSuiteEPKcS3_PFvvES5_(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef %i.t, ptr noundef %.0.i, ptr noundef %1, ptr noundef %2)
  call void @_ZN7testing9TestSuite11AddTestInfoEPNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(264) %i.x, ptr noundef nonnull %3)
  ret void

bb.h:                                             ; preds = %bb.e, %_ZN7testing8internal8FilePathD2Ev.exit11
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.k, %_ZN7testing8internal8FilePathD2Ev.exit11 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal26ReportInvalidTestSuiteTypeEPKcNS0_12CodeLocationE(ptr noundef %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 19 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.211, i64 noundef 37)
          to label %_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit:       ; preds = %bb.a
  %i.d = icmp eq ptr %0, null                     ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br i1 %i.d, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #58
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
end_hunk_15
begin_hunk_16_@_ZN7testing8internal26ReportInvalidTestSuiteTypeEPKcNS0_12CodeLocationE:bb.a
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.67, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.az = load ptr, ptr %2, align 8, !tbaa !85, !noalias !1588
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %i.az)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.h

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ba = load ptr, ptr %5, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !79
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit31 unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit31: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.be = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit31
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !81
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  %i.bj = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !81
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %i.bo = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !87
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(128) %i.bo) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i15.invoke, %_ZN7testing7MessagelsIA68_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit23, %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA63_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit18, %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit, %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.e:                                             ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit26
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.i:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !81
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.h ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.bx, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.bv, %bb.g ] ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.j
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !81
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.f ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn.pn, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #58
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.bt, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.k ], [ %i.bs, %bb.d ]
  %i.ci = load ptr, ptr %2, align 8, !tbaa !85    ; 3 uses
  %.not.i.i41 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i41, label %_ZN7testing7MessageD2Ev.exit43, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42: ; preds = %bb.l
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !87
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(128) %i.ci) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit43

_ZN7testing7MessageD2Ev.exit43:                   ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl26RegisterParameterizedTestsEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !476, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !477  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !477  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.07.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !479 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !1589
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.g
  br i1 %i.n, label %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, label %.lr.ph.i

_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit: ; preds = %.lr.ph.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry22CheckForInstantiationsEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o)
  store i8 1, ptr %i.a, align 8, !tbaa !476
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %common.resume, !inline_history !273

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !222  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i8, ptr %i.h, align 8, !tbaa !407, !range !70, !noundef !71
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.l = load i8, ptr %i.k, align 1, !tbaa !411, !range !70, !noundef !71
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.o = load i8, ptr %i.n, align 2, !tbaa !410, !range !70, !noundef !71
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %0)
  br label %bb.r

bb.h:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.t = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.k unwind label %common.resume, !inline_history !2

bb.k:                                             ; preds = %bb.j
  %i.w = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.c, %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58
  resume { ptr, i32 } %i.x

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.h, %bb.i, %bb.k
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 368 ; 2 uses
  store ptr %0, ptr %i.z, align 8, !tbaa !185
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %0)
  %i.ad = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #58
  %i.ae = sdiv i64 %i.ad, 1000000
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !480
  %i.ag = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 528 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !354 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.l, label %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !87
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.l:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.ak = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.ak, align 8, !tbaa !87
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !354
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.l
  %i.al = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.l ], [ %.pre, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.am = phi ptr [ %i.ak, %bb.l ], [ %i.ai, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !475
  %i.ar = tail call noundef ptr @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc(ptr noundef %i.aq, i64 17, i64 0, ptr noundef nonnull @.str.218) ; 3 uses
  %i.as = tail call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.at = tail call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.at, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  tail call void @_ZN7testing4Test3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !354 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.p, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge: ; preds = %bb.o
  %.pre15 = load ptr, ptr %i.au, align 8, !tbaa !87
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13

bb.p:                                             ; preds = %bb.o
  %i.aw = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.aw, align 8, !tbaa !87
  store ptr %i.aw, ptr %i.ah, align 8, !tbaa !354
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge, %bb.p
  %i.ax = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.p ], [ %.pre15, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge ]
  %i.ay = phi ptr [ %i.aw, %bb.p ], [ %i.au, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %i.ar, i64 ptrtoint (ptr @_ZN7testing4Test11DeleteSelf_Ev to i64), i64 0, ptr noundef nonnull @.str.219)
  br label %bb.q

bb.q:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13, %bb.n
  %i.bb = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #58
  %i.bc = sub nsw i64 %i.bb, %i.ag
  %i.bd = sdiv i64 %i.bc, 1000000
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !453
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %0)
  store ptr null, ptr %i.z, align 8, !tbaa !185
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.q
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN7testing8UnitTest9listenersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.bg, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.h = load i8, ptr %i.g, align 8, !tbaa !474, !range !70, !noundef !71
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !71
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  %i.r = invoke noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit unwind label %bb.j, !inline_history !1590

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0        ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.s, 1        ; 3 uses
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #58
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #58 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.y = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #58
  %i.z = icmp eq i32 %i.u, %i.y
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.t) #58 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.ab = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #58
  %i.ac = icmp eq i32 %i.u, %i.ab
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.t) #58 ; 2 uses
  br i1 %i.ac, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #58
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ah, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !81
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.an = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.t
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !81
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.v:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !81
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.u
  %.pn = phi { ptr, i32 } [ %i.as, %bb.u ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.at, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.x:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.x
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !81
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.w
  %.pn36 = phi { ptr, i32 } [ %i.az, %bb.w ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.ba, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
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
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.bi = getelementptr i8, ptr %i.bh, i64 %1
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load ptr, ptr %i.bj, align 8, !nosanitize !71
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #58
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::TestPartResult", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !407, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.o, %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.o, %bb.j ], [ %i.ba, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 368 ; 2 uses
  store ptr %0, ptr %i.j, align 8, !tbaa !185
  %i.k = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.g, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !89

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.i unwind label %bb.j, !inline_history !273

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.g, %bb.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 504
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !222  ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(272) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !481
  call void @_ZN7testing14TestPartResultC2ENS0_4TypeEPKciS3_(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 3, ptr noundef %i.w, i32 noundef %i.y, ptr noundef nonnull @.str.6)
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !331 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(272) %0)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.j, align 8, !tbaa !185
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !78 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !81
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !81
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN7testing14TestPartResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !81
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #57
  br label %_ZN7testing14TestPartResultD2Ev.exit

_ZN7testing14TestPartResultD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN7testing14TestPartResultD2Ev.exit
  ret void

bb.o:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %bb.l, %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing14TestPartResultD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %1) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing14TestPartResultC2ENS0_4TypeEPKciS3_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !325
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = icmp eq ptr %2, null
  %i.c = select i1 %i.b, ptr @.str.6, ptr %2      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !75
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #58 ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc11.i:                                       ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #55 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !78
  store i64 %i.e, ptr %i.d, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.d, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !81
  store i8 %i.l, ptr %i.k, align 1, !tbaa !81
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.m, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.o, align 8, !tbaa !324
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_ZN7testing14TestPartResult14ExtractSummaryB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.p, ptr noundef %4)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !75
  %i.s = icmp eq ptr %4, null
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
          to label %.noexc18 unwind label %bb.p

.noexc18:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #58 ; 8 uses
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.j, label %._crit_edge.i.i14

bb.j:                                             ; preds = %bb.i
  %i.v = icmp slt i64 %i.t, 0
  br i1 %i.v, label %.noexc.i17, label %bb.k

.noexc.i17:                                       ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc19 unwind label %bb.p

.noexc19:                                         ; preds = %.noexc.i17
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.w = add nuw i64 %i.t, 1                      ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc11.i16, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i15, !prof !80

.noexc11.i16:                                     ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc20 unwind label %bb.p

.noexc20:                                         ; preds = %.noexc11.i16
end_hunk_16
begin_hunk_17_@_ZN7testing9TestSuite18GetMutableTestInfoEi
define noundef ptr @_ZN7testing9TestSuite18GetMutableTestInfoEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !487
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !484  ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !88   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = zext nneg i32 %i.m to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !413
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !404
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !412  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !486
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !404
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !412
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !413  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.423) #56
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
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #55 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !404
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
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !486
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #57
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !413
  store ptr %i.u, ptr %i.b, align 8, !tbaa !412
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !486
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !487 ; 4 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !484 ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 4 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !485
  %.not.i.i = icmp eq ptr %i.ab, %i.aj
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !487
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  %i.al = icmp eq i64 %i.af, 9223372036854775804
  br i1 %i.al, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.423) #56
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
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #55 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.af ; 2 uses
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !88
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
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !485
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ax) #57
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !484
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !487
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ay, ptr %i.ai, align 8, !tbaa !485
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !400, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %common.resume, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !384
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !89

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %common.resume, !inline_history !273

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.d, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58
  resume { ptr, i32 } %i.n

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.f, %bb.h
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 504
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !222  ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 528 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !354  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !87
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.i:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.aa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.aa, align 8, !tbaa !87
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !354
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.i
  %i.ab = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.i ], [ %.pre, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ac = phi ptr [ %i.aa, %bb.i ], [ %i.y, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite17RunSetUpTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.220)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !326
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !328 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 112               ; 5 uses
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.preheader.i, label %_ZNK7testing10TestResult6FailedEv.exit

.lr.ph.preheader.i:                               ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %wide.trip.count.i = and i64 %i.am, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.am
  br i1 %exitcond.not.i, label %bb.j, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.j:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.471, i64 noundef %i.am, i64 noundef %i.am) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw [112 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !325
  %i.ar = add i32 %i.aq, -1
  %spec.select.i.i = icmp ult i32 %i.ar, 2        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond = select i1 %spec.select.i.i, i1 true, i1 %exitcond16.not.i
  br i1 %or.cond, label %_ZNK7testing10TestResult6FailedEv.exit, label %.lr.ph.i, !llvm.loop !20

_ZNK7testing10TestResult6FailedEv.exit:           ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %.lcssa8.i = phi i1 [ false, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit ], [ %spec.select.i.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i ]
  %i.as = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #58
  %i.at = sdiv i64 %i.as, 1000000
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.at, ptr %i.au, align 8, !tbaa !488
  %i.av = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #58
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !412
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !413 ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = lshr exact i64 %i.bc, 3
  %i.be = trunc i64 %i.bd to i32
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7testing10TestResult6FailedEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  br i1 %.lcssa8.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.us, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i23

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.us: ; preds = %.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit38.thread.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %_ZNK7testing10TestResult6FailedEv.exit38.thread.us ], [ 0, %.lr.ph ] ; 6 uses
  %i.bi = phi ptr [ %.pre82, %_ZNK7testing10TestResult6FailedEv.exit38.thread.us ], [ %i.az, %.lr.ph ]
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !487
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !484 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = shl i64 %i.bn, 30
  %i.bp = ashr i64 %i.bo, 32
  %.not.i.i21.us = icmp slt i64 %indvars.iv75, %i.bp
  tail call void @llvm.assume(i1 %.not.i.i21.us)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv75
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !88 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !404
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.bv)
  %i.bw = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.bx = trunc nuw i8 %i.bw to i1
  %.pre82 = load ptr, ptr %i.aw, align 8, !tbaa !413 ; 4 uses
  br i1 %i.bx, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26.us, label %_ZNK7testing10TestResult6FailedEv.exit38.thread.us

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26.us: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.us
  %i.by = load ptr, ptr %i.bh, align 8, !tbaa !487
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !484 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = shl i64 %i.cc, 30
  %i.ce = ashr i64 %i.cd, 32
  %.not.i.i25.us = icmp slt i64 %indvars.iv75, %i.ce
  tail call void @llvm.assume(i1 %.not.i.i25.us)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv75
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !88 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, -1
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.pre82, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !404 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 200
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 208
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !326
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !328 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 112               ; 4 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.preheader.i29.us, label %_ZNK7testing10TestResult6FailedEv.exit38.thread.us

.lr.ph.preheader.i29.us:                          ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26.us
  %wide.trip.count.i30.us = and i64 %i.cs, 2147483647
  br label %.lr.ph.i31.us

.lr.ph.i31.us:                                    ; preds = %bb.k, %.lr.ph.preheader.i29.us
  %indvars.iv.i32.us = phi i64 [ 0, %.lr.ph.preheader.i29.us ], [ %indvars.iv.next.i36.us, %bb.k ] ; 3 uses
  %exitcond.not.i33.us = icmp eq i64 %indvars.iv.i32.us, %i.cs
  br i1 %exitcond.not.i33.us, label %.split.us, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34.us

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34.us: ; preds = %.lr.ph.i31.us
  %i.cv = getelementptr inbounds nuw [112 x i8], ptr %i.co, i64 %indvars.iv.i32.us
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !325
  %i.cx = add i32 %i.cw, -1
  %spec.select.i.i35.us = icmp ult i32 %i.cx, 2
  br i1 %spec.select.i.i35.us, label %_ZNK7testing10TestResult6FailedEv.exit38.preheader, label %bb.k

bb.k:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34.us
  %indvars.iv.next.i36.us = add nuw nsw i64 %indvars.iv.i32.us, 1 ; 2 uses
  %exitcond16.not.i37.us = icmp eq i64 %indvars.iv.next.i36.us, %wide.trip.count.i30.us
  br i1 %exitcond16.not.i37.us, label %_ZNK7testing10TestResult6FailedEv.exit38.thread.us, label %.lr.ph.i31.us, !llvm.loop !20

_ZNK7testing10TestResult6FailedEv.exit38.thread.us: ; preds = %bb.k, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26.us, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.us
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.cy = load ptr, ptr %i.ax, align 8, !tbaa !412
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %.pre82 to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = shl i64 %i.db, 29
  %i.dd = ashr i64 %i.dc, 32
  %i.de = icmp slt i64 %indvars.iv.next76, %i.dd
  br i1 %i.de, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.us, label %.loopexit, !llvm.loop !1591

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i23: ; preds = %.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit38.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit38.thread ], [ 0, %.lr.ph ] ; 6 uses
  %i.df = phi ptr [ %.pre81, %_ZNK7testing10TestResult6FailedEv.exit38.thread ], [ %i.az, %.lr.ph ]
  %i.dg = load ptr, ptr %i.bh, align 8, !tbaa !487
  %i.dh = load ptr, ptr %i.bg, align 8, !tbaa !484 ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = shl i64 %i.dk, 30
  %i.dm = ashr i64 %i.dl, 32
  %.not.i.i22 = icmp slt i64 %indvars.iv, %i.dm
  tail call void @llvm.assume(i1 %.not.i.i22)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !88 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, -1
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !404
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %i.ds)
  %i.dt = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.du = trunc nuw i8 %i.dt to i1
  %.pre81 = load ptr, ptr %i.aw, align 8, !tbaa !413 ; 4 uses
  br i1 %i.du, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26, label %_ZNK7testing10TestResult6FailedEv.exit38.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i23
  %i.dv = load ptr, ptr %i.bh, align 8, !tbaa !487
  %i.dw = load ptr, ptr %i.bg, align 8, !tbaa !484 ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = shl i64 %i.dz, 30
  %i.eb = ashr i64 %i.ea, 32
  %.not.i.i25 = icmp slt i64 %indvars.iv, %i.eb
  tail call void @llvm.assume(i1 %.not.i.i25)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !88 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, -1
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = zext nneg i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.pre81, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !404 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 200
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 208
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !326
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !328 ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = sdiv exact i64 %i.eo, 112               ; 4 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph.preheader.i29, label %_ZNK7testing10TestResult6FailedEv.exit38.thread

.lr.ph.preheader.i29:                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26
  %wide.trip.count.i30 = and i64 %i.ep, 2147483647
  br label %.lr.ph.i31

bb.l:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond16.not.i37 = icmp eq i64 %indvars.iv.next.i36, %wide.trip.count.i30
  br i1 %exitcond16.not.i37, label %_ZNK7testing10TestResult6FailedEv.exit38.thread, label %.lr.ph.i31, !llvm.loop !20

.lr.ph.i31:                                       ; preds = %bb.l, %.lr.ph.preheader.i29
  %indvars.iv.i32 = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %indvars.iv.next.i36, %bb.l ] ; 3 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.i32, %i.ep
  br i1 %exitcond.not.i33, label %.split.us, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34

.split.us:                                        ; preds = %.lr.ph.i31, %.lr.ph.i31.us
  %.us-phi = phi i64 [ %i.cs, %.lr.ph.i31.us ], [ %i.ep, %.lr.ph.i31 ] ; 2 uses
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.471, i64 noundef %.us-phi, i64 noundef %.us-phi) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34: ; preds = %.lr.ph.i31
  %i.es = getelementptr inbounds nuw [112 x i8], ptr %i.el, i64 %indvars.iv.i32
  %i.et = load i32, ptr %i.es, align 8, !tbaa !325
  %i.eu = add i32 %i.et, -1
  %spec.select.i.i35 = icmp ult i32 %i.eu, 2
  br i1 %spec.select.i.i35, label %_ZNK7testing10TestResult6FailedEv.exit38.preheader, label %bb.l

_ZNK7testing10TestResult6FailedEv.exit38.preheader: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34.us
  %i.ev = phi ptr [ %.pre82, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34.us ], [ %.pre81, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34 ] ; 2 uses
  %.us-phi59.in = phi i64 [ %indvars.iv75, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34.us ], [ %indvars.iv, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i34 ] ; 2 uses
  %.us-phi59 = trunc i64 %.us-phi59.in to i32
  %.061 = add nuw nsw i32 %.us-phi59, 1
  %i.ew = load ptr, ptr %i.ax, align 8, !tbaa !412
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = lshr exact i64 %i.ez, 3
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = icmp slt i32 %.061, %i.fb
  br i1 %i.fc, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40.preheader, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40.preheader: ; preds = %_ZNK7testing10TestResult6FailedEv.exit38.preheader
  %i.fd = and i64 %.us-phi59.in, 4294967295
  %i.fe = add nuw nsw i64 %i.fd, 1
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40
  %indvars.iv78 = phi i64 [ %i.fe, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40.preheader ], [ %indvars.iv.next79, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40 ] ; 3 uses
  %i.ff = phi ptr [ %i.ev, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40.preheader ], [ %i.fu, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40 ]
  %i.fg = load ptr, ptr %i.bh, align 8, !tbaa !487
  %i.fh = load ptr, ptr %i.bg, align 8, !tbaa !484 ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = shl i64 %i.fk, 30
  %i.fm = ashr i64 %i.fl, 32
  %.not.i.i39 = icmp slt i64 %indvars.iv78, %i.fm
  tail call void @llvm.assume(i1 %.not.i.i39)
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv78
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !88 ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, -1
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = zext nneg i32 %i.fo to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !404
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.fs)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.ft = load ptr, ptr %i.ax, align 8, !tbaa !412
  %i.fu = load ptr, ptr %i.aw, align 8, !tbaa !413 ; 2 uses
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = lshr exact i64 %i.fx, 3
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = trunc nuw i64 %indvars.iv.next79 to i32
  %i.gb = icmp slt i32 %i.ga, %i.fz
  br i1 %i.gb, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40, label %.loopexit, !llvm.loop !1592

_ZNK7testing10TestResult6FailedEv.exit38.thread:  ; preds = %bb.l, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i26, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gc = load ptr, ptr %i.ax, align 8, !tbaa !412
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %.pre81 to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = shl i64 %i.gf, 29
  %i.gh = ashr i64 %i.gg, 32
  %i.gi = icmp slt i64 %indvars.iv.next, %i.gh
  br i1 %i.gi, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i23, label %.loopexit, !llvm.loop !1591

.loopexit:                                        ; preds = %_ZNK7testing10TestResult6FailedEv.exit38.thread, %_ZNK7testing10TestResult6FailedEv.exit38.thread.us, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i40, %_ZNK7testing10TestResult6FailedEv.exit, %_ZNK7testing10TestResult6FailedEv.exit38.preheader
  %i.gj = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #58
  %i.gk = sub nsw i64 %i.gj, %i.av
  %i.gl = sdiv i64 %i.gk, 1000000
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !489
  %i.gn = load ptr, ptr %i.x, align 8, !tbaa !354 ; 3 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.m, label %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit42_crit_edge

.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit42_crit_edge: ; preds = %.loopexit
  %.pre83 = load ptr, ptr %i.gn, align 8, !tbaa !87
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit42

bb.m:                                             ; preds = %.loopexit
  %i.gp = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.gp, align 8, !tbaa !87
  store ptr %i.gp, ptr %i.x, align 8, !tbaa !354
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit42

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit42: ; preds = %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit42_crit_edge, %bb.m
  %i.gq = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.m ], [ %.pre83, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit42_crit_edge ]
  %i.gr = phi ptr [ %i.gp, %bb.m ], [ %i.gn, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit42_crit_edge ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  tail call void %i.gt(ptr noundef nonnull align 8 dereferenceable(8) %i.gr)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite20RunTearDownTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.221)
  %i.gu = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 96
  %i.gw = load ptr, ptr %i.gv, align 8
  tail call void %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.gx = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 104
  %i.gz = load ptr, ptr %i.gy, align 8
  tail call void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  store ptr null, ptr %i.i, align 8, !tbaa !384
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.bf, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.h = load i8, ptr %i.g, align 8, !tbaa !474, !range !70, !noundef !71
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !71
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(264) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !1593

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 3 uses
  %i.u = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #58
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.s) #58 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #58
  %i.y = icmp eq i32 %i.t, %i.x
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.s) #58 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #58
  %i.ab = icmp eq i32 %i.t, %i.aa
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.s) #58 ; 2 uses
  br i1 %i.ab, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #58
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ag, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !81
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.t
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !81
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.v:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !81
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.as, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.x:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.x
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !81
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.w
  %.pn34 = phi { ptr, i32 } [ %i.ay, %bb.w ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.az, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
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
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.bh = getelementptr i8, ptr %i.bg, i64 %1
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  %i.bj = load ptr, ptr %i.bi, align 8, !nosanitize !71
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !482  ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !483  ; 2 uses
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
  %i.b = load i8, ptr %i.a, align 8, !tbaa !400, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %common.resume, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !384
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !89

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %common.resume, !inline_history !273

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.d, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58
  resume { ptr, i32 } %i.n

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.f, %bb.h
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 504
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !222  ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !412
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !413 ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = trunc i64 %i.ae to i32
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, label %._crit_edge

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i

._crit_edge:                                      ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  store ptr null, ptr %i.i, align 8, !tbaa !384
  br label %bb.i

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %indvars.iv = phi i64 [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ] ; 3 uses
  %i.ap = phi ptr [ %i.aa, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %i.be, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ]
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !487
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !484 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = shl i64 %i.au, 30
  %i.aw = ashr i64 %i.av, 32
  %.not.i.i9 = icmp slt i64 %indvars.iv, %i.aw
  tail call void @llvm.assume(i1 %.not.i.i9)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !88 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !404
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.bc)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !412
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !413 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = shl i64 %i.bh, 29
  %i.bj = ashr i64 %i.bi, 32
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %._crit_edge, !llvm.loop !1594

bb.i:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing9TestSuite11ClearResultEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN7testing10TestResult5ClearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !403  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !403  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.02.05.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !404
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  tail call void @_ZN7testing10TestResult5ClearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.e
  br i1 %i.j, label %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !38

_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing9TestSuite12ShuffleTestsEPNS_8internal6RandomE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !487
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !484
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  tail call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef %1, i32 noundef 0, i32 noundef %i.i, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7testing9TestSuite14UnshuffleTestsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #37 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !487  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !484  ; 4 uses
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
  store <4 x i32> %vec.ind, ptr %i.i, align 4, !tbaa !88
  store <4 x i32> %step.add, ptr %i.j, align 4, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1595

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
  store i32 %i.l, ptr %i.m, align 4, !tbaa !88
  %i.n = add nuw i64 %.04, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1596
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal14ShouldUseColorEb(i1 noundef zeroext %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !75
  %i.b = load ptr, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, align 8, !tbaa !78 ; 2 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, i64 8), align 8, !tbaa !79 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
end_hunk_17
begin_hunk_18_@_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a

._crit_edge.i.i4:                                 ; preds = %.noexc9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.w, %.noexc9 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  switch i64 %i.r, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i4
  %i.y = load i8, ptr %i.p, align 1, !tbaa !81
  store i8 %i.y, ptr %i.x, align 1, !tbaa !81
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.r, ptr %i.z, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  store i8 0, ptr %i.aa, align 1, !tbaa !81
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5, %.noexc6.i6, %.noexc.i7
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %0, align 8, !tbaa !78    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !81
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ab
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !81
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !81
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7testing8UnitTest3RunEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::ScopedPrematureExitFile", align 8 ; 6 uses
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !79
  %.not = icmp eq i64 %i.a, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @getenv(ptr noundef nonnull @.str.374) #58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @_ZN7testing8internal23ScopedPrematureExitFileC2EPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %i.f = load i8, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  store i8 %i.f, ptr %i.g, align 8, !tbaa !474
  %i.h = invoke noundef zeroext i1 @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %i.e, i64 ptrtoint (ptr @_ZN7testing8internal12UnitTestImpl11RunAllTestsEv to i64), i64 0, ptr noundef nonnull @.str.375)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %not. = xor i1 %i.h, true
  %i.i = zext i1 %not. to i32
  call void @_ZN7testing8internal23ScopedPrematureExitFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  ret i32 %i.i

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal23ScopedPrematureExitFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal23ScopedPrematureExitFileC2EPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = select i1 %.not, ptr @.str.6, ptr %1     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !75
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #58 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc11.i:                                       ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #55 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !78
  store i64 %i.c, ptr %i.b, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.a, align 1, !tbaa !81
  store i8 %i.j, ptr %i.i, align 1, !tbaa !81
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %i.a, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.c, ptr %i.k, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !81
  %i.m = load i64, ptr %i.k, align 8, !tbaa !79
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %0, align 8, !tbaa !78
  %i.p = tail call noalias noundef ptr @fopen(ptr noundef %i.o, ptr noundef nonnull @.str.383) ; 2 uses
  %fputc = tail call i32 @fputc(i32 48, ptr %i.p) ; 0 uses
  %i.q = tail call i32 @fclose(ptr noundef %i.p)  ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.bg, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.h = load i8, ptr %i.g, align 8, !tbaa !474, !range !70, !noundef !71
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !71
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(601) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !1990

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0        ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.s, 1        ; 3 uses
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #58
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #58 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.y = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #58
  %i.z = icmp eq i32 %i.u, %i.y
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.t) #58 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.ab = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #58
  %i.ac = icmp eq i32 %i.u, %i.ab
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.t) #58 ; 2 uses
  br i1 %i.ac, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #58
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ah, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !81
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.an = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.t
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !81
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.v:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !81
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.u
  %.pn = phi { ptr, i32 } [ %i.as, %bb.u ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.at, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.x:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.x
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !81
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.w
  %.pn36 = phi { ptr, i32 } [ %i.az, %bb.w ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.ba, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
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
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.bi = getelementptr i8, ptr %i.bh, i64 %1
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load ptr, ptr %i.bj, align 8, !nosanitize !71
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bl = inttoptr i64 %1 to ptr
  br label %bb.ac
end_hunk_18
begin_hunk_19_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a
bb.e:                                             ; preds = %bb.c
  %i.i = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit

_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit: ; preds = %bb.b, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !186
  %i.l = icmp ne ptr %i.k, null                   ; 2 uses
  %i.m = tail call noundef zeroext i1 @_ZN7testing8internal11ShouldShardEPKcS2_b(ptr noundef nonnull @_ZN7testingL16kTestTotalShardsE, ptr noundef nonnull @_ZN7testingL15kTestShardIndexE, i1 noundef zeroext %i.l)
  %not. = xor i1 %i.m, true
  %i.n = zext i1 %not. to i32
  %i.o = tail call noundef i32 @_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE(ptr noundef nonnull align 8 dereferenceable(601) %0, i32 noundef %i.n)
  %i.p = icmp sgt i32 %i.o, 0                     ; 2 uses
  %i.q = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit
  tail call void @_ZN7testing8internal12UnitTestImpl23ListTestsMatchingFilterEv(ptr noundef nonnull align 8 dereferenceable(601) %0)
  br label %bb.ba

bb.g:                                             ; preds = %_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit
  %i.s = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !88 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #58
  %i.v = sdiv i64 %i.u, 1000000
  %i.w = trunc i64 %i.v to i32
  br label %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit

_ZN7testing8internal21GetRandomSeedFromFlagEi.exit: ; preds = %bb.g, %bb.h
  %i.x = phi i32 [ %i.w, %bb.h ], [ %i.s, %bb.g ]
  %i.y = add i32 %i.x, -1
  %i.z = urem i32 %i.y, 99999
  %i.aa = add nuw nsw i32 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 4 uses
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !490
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !222 ; 16 uses
  %i.ae = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #58
  %i.af = sdiv i64 %i.ae, 1000000
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !496
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !514
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.ai)
  %i.am = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4
  %i.an = select i1 %i.l, i32 1, i32 %i.am        ; 4 uses
  %i.ao = icmp slt i32 %i.an, 0                   ; 2 uses
  %i.ap = load i8, ptr @_ZN7testing48FLAGS_gtest_recreate_environments_when_repeatingE, align 1, !tbaa !82, !range !70, !noundef !71
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = or i1 %i.ao, %i.aq                      ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = add nsw i32 %i.an, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %bb.i

._crit_edge132.loopexit:                          ; preds = %bb.ay
  %i.bg = xor i1 %i.ne, true
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %._crit_edge132.loopexit, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit
  %.060.lcssa = phi i1 [ true, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit ], [ %i.bg, %._crit_edge132.loopexit ] ; 2 uses
  %i.bh = load ptr, ptr %i.ah, align 8, !tbaa !514
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.bh)
  br i1 %i.a, label %bb.ba, label %bb.az

bb.i:                                             ; preds = %.lr.ph131, %bb.ay
  %.059130 = phi i32 [ 0, %.lr.ph131 ], [ %i.os, %bb.ay ] ; 5 uses
  %.060129 = phi i1 [ false, %.lr.ph131 ], [ %i.ne, %bb.ay ] ; 2 uses
  call void @_ZN7testing8internal12UnitTestImpl23ClearNonAdHocTestResultEv(ptr noundef nonnull align 8 dereferenceable(601) %0)
  %i.bl = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #58
  %i.bm = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !range !70
  %i.bn = trunc nuw i8 %i.bm to i1
  %or.cond = select i1 %i.p, i1 %i.bn, i1 false
  br i1 %or.cond, label %bb.j, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit

bb.j:                                             ; preds = %bb.i
  %i.bo = load i32, ptr %i.ab, align 4, !tbaa !490
  store i32 %i.bo, ptr %i.as, align 8, !tbaa !341
  %i.bp = load i32, ptr %i.at, align 4, !tbaa !515
  %i.bq = add nsw i32 %i.bp, 1
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.as, i32 noundef 0, i32 noundef %i.bq, ptr noundef nonnull %i.au)
  %i.br = load i32, ptr %i.at, align 4, !tbaa !515
  %i.bs = add nsw i32 %i.br, 1
  %i.bt = load ptr, ptr %i.aw, align 8, !tbaa !401
  %i.bu = load ptr, ptr %i.av, align 8, !tbaa !402
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = lshr exact i64 %i.bx, 3
  %i.bz = trunc i64 %i.by to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.as, i32 noundef %i.bs, i32 noundef %i.bz, ptr noundef nonnull %i.au)
  %i.ca = load ptr, ptr %i.av, align 8, !tbaa !386 ; 2 uses
  %i.cb = load ptr, ptr %i.aw, align 8, !tbaa !386 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.04.07.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %i.ca, %bb.j ] ; 2 uses
  %i.cd = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !387 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !487
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !484
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = lshr exact i64 %i.ck, 2
  %i.cm = trunc i64 %i.cl to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.as, i32 noundef 0, i32 noundef %i.cm, ptr noundef nonnull %i.ce)
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.cb
  br i1 %i.co, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, label %.lr.ph.i

_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit: ; preds = %.lr.ph.i, %bb.j, %bb.i
  %i.cp = load ptr, ptr %i.ah, align 8, !tbaa !514
  %i.cq = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.cp, i32 noundef %.059130)
  br i1 %i.p, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.ct = icmp eq i32 %.059130, 0
  %or.cond3 = select i1 %i.ct, i1 true, i1 %i.ar
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cu = load ptr, ptr %i.ah, align 8, !tbaa !514
  %i.cv = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.cu)
  %i.cy = load ptr, ptr %i.ax, align 8, !tbaa !516 ; 2 uses
  %i.cz = load ptr, ptr %i.ay, align 8, !tbaa !516 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.02.05.i.i = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.cy, %bb.l ] ; 2 uses
  %i.db = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !512 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !87
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db), !inline_history !1991
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cz
  br i1 %i.dg, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !41

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.l
  %i.dh = load ptr, ptr %i.ah, align 8, !tbaa !514
  %i.di = load ptr, ptr %i.ad, align 8, !tbaa !87
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.dh)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.dl = call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.dl, label %bb.n, label %bb.af

bb.n:                                             ; preds = %bb.m
  %i.dm = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.o, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.o:                                             ; preds = %bb.n
  %i.do = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.q unwind label %bb.r, !inline_history !2

bb.q:                                             ; preds = %bb.p
  %i.dp = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.ax, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.dq, %bb.r ], [ %i.oo, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.n, %bb.o, %bb.q
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 368
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !185 ; 2 uses
  %.not.i62 = icmp eq ptr %i.dt, null
  br i1 %.not.i62, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.t:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 360
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !384 ; 2 uses
  %.not4.i = icmp eq ptr %i.dw, null
  br i1 %.not4.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.s, %bb.u, %bb.v
  %.0.i = phi ptr [ %i.du, %bb.s ], [ %i.dx, %bb.u ], [ %i.dy, %bb.v ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !326 ; 2 uses
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !328 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = sdiv exact i64 %i.ef, 112               ; 2 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ae, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.ej = load ptr, ptr @stdout, align 8, !tbaa !190
  %i.ek = call i32 @fflush(ptr noundef %i.ej)     ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %bb.ae
  %i.el = phi ptr [ %i.fi, %bb.ae ], [ %i.ec, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %i.em = phi ptr [ %i.fj, %bb.ae ], [ %i.eb, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ]
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %bb.ae ], [ 0, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 4 uses
  %i.en = phi i64 [ %i.fn, %bb.ae ], [ %i.eg, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.en, %indvars.iv162
  br i1 %.not.i.i.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.471, i64 noundef %indvars.iv162, i64 noundef %i.en) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.eo = getelementptr inbounds nuw [112 x i8], ptr %i.el, i64 %indvars.iv162 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !325
  %i.eq = icmp eq i32 %i.ep, 3
  br i1 %i.eq, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !78 ; 4 uses
  store ptr %i.ba, ptr %2, align 8, !tbaa !75
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.noexc, label %bb.y

.noexc:                                           ; preds = %bb.x
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.eu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.es) #58 ; 8 uses
  %i.ev = icmp ugt i64 %i.eu, 15
  br i1 %i.ev, label %bb.z, label %._crit_edge.i.i

bb.z:                                             ; preds = %bb.y
  %i.ew = icmp slt i64 %i.eu, 0
  br i1 %i.ew, label %.noexc.i, label %bb.aa

.noexc.i:                                         ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.ex = add nuw i64 %i.eu, 1                    ; 2 uses
  %i.ey = icmp slt i64 %i.ex, 0
  br i1 %i.ey, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc11.i:                                       ; preds = %bb.aa
  call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.aa
  %i.ez = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #55 ; 2 uses
  store ptr %i.ez, ptr %2, align 8, !tbaa !78
  store i64 %i.eu, ptr %i.ba, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.y
  %i.fa = phi ptr [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.ba, %bb.y ] ; 3 uses
  switch i64 %i.eu, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.fb = load i8, ptr %i.es, align 1, !tbaa !81
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !81
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr nonnull align 1 %i.es, i64 %i.eu, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i
  store i64 %i.eu, ptr %i.bb, align 8, !tbaa !79
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.eu
  store i8 0, ptr %i.fc, align 1, !tbaa !81
  %i.fd = load ptr, ptr %2, align 8, !tbaa !78
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.fd) ; 0 uses
  %i.fe = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ba
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.fg = load i64, ptr %i.ba, align 8, !tbaa !81
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %.pre = load ptr, ptr %i.ea, align 8, !tbaa !326
  %.pre165 = load ptr, ptr %i.dz, align 8, !tbaa !328
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.fi = phi ptr [ %.pre165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.el, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.fj = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.em, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = sdiv exact i64 %i.fm, 112               ; 2 uses
  %i.fo = shl i64 %i.fn, 32
  %i.fp = ashr exact i64 %i.fo, 32
  %i.fq = icmp slt i64 %indvars.iv.next163, %i.fp
  br i1 %i.fq, label %.lr.ph, label %._crit_edge, !llvm.loop !1992

bb.af:                                            ; preds = %bb.m
  %i.fr = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.fr, label %bb.ah, label %.preheader97

.preheader97:                                     ; preds = %bb.af
  %i.fs = load ptr, ptr %i.aw, align 8, !tbaa !401
  %i.ft = load ptr, ptr %i.av, align 8, !tbaa !402 ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = lshr exact i64 %i.fw, 3
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %.preheader97, %bb.ag
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %bb.ag ], [ 1, %.preheader97 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ag ], [ 0, %.preheader97 ] ; 6 uses
  %i.ga = phi ptr [ %i.im, %bb.ag ], [ %i.ft, %.preheader97 ]
  %i.gb = load ptr, ptr %i.az, align 8, !tbaa !487
  %i.gc = load ptr, ptr %i.au, align 8, !tbaa !484 ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = shl i64 %i.gf, 30
  %i.gh = ashr i64 %i.gg, 32
  %.not.i.i67 = icmp slt i64 %indvars.iv, %i.gh
  call void @llvm.assume(i1 %.not.i.i67)
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !88 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, -1
  call void @llvm.assume(i1 %i.gk)
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gl
end_hunk_19
begin_hunk_20_@_ZN7testing8internal25JsonUnitTestResultPrinterD2Ev:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !81
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal12UnitTestImpl25set_os_stack_trace_getterEPNS0_27OsStackTraceGetterInterfaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(601) %0, ptr noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354  ; 4 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #58
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %1, ptr %i.a, align 8, !tbaa !354
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !487
  %i.c = load ptr, ptr %3, align 8, !tbaa !484
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.477, i32 noundef 305)
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.559, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.560, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.561, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.519, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %bb.d
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %bb.m

bb.f:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.s = icmp sle i32 %1, %2
  %i.t = icmp sle i32 %2, %i.h
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.477, i32 noundef 308)
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.562, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %bb.g
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.563, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %2)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.564, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.h
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef %1)
          to label %bb.i unwind label %bb.k       ; 2 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.392, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.h)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.519, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
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
  %i.am = load ptr, ptr %3, align 8, !tbaa !484   ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.ah
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4     ; 2 uses
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !88
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !88
  store i32 %i.as, ptr %i.an, align 4, !tbaa !88
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !88
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.at = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !2047

bb.m:                                             ; preds = %bb.k, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.r, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN7testing8internal31GetCurrentOsStackTraceExceptTopB5cxx11EPNS_8UnitTestEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #30 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = add nsw i32 %2, 1
  call void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(601) %i.f, i32 noundef %i.g)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7testing8internal10SkipPrefixEPKcPS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #40 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #62 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !239    ; 2 uses
  %i.c = tail call i32 @strncmp(ptr noundef %i.b, ptr noundef nonnull %0, i64 noundef %i.a) #62
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.a
  store ptr %i.e, ptr %1, align 8, !tbaa !239
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.c = load ptr, ptr %3, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.397, i64 noundef 20)
          to label %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit:       ; preds = %bb.b
  %i.f = icmp eq ptr %1, null
  %i.g = load ptr, ptr %3, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br i1 %i.f, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #58
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
  %i.n = load ptr, ptr %3, align 8, !tbaa !85     ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.c, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %bb.b, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !85     ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.s, null
  br i1 %.not.i.i8, label %_ZN7testing7MessageD2Ev.exit10, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9: ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #58, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit10

_ZN7testing7MessageD2Ev.exit10:                   ; preds = %bb.d, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %.0 = phi i1 [ %i.m, %_ZN7testing7MessageD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN7testing8internalL14ParseFlagValueEPKcS2_b(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store i16 11565, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.e, ptr noundef nonnull align 1 dereferenceable(6) @.str.40, i64 6, i1 false), !noalias !2052
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !81, !noalias !2052
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !75, !alias.scope !2052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %i.c, i64 9, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 8, ptr %i.h, align 8, !tbaa !79, !alias.scope !2052
  store ptr %i.c, ptr %5, align 8, !tbaa !78, !noalias !2052
  store i64 0, ptr %i.d, align 8, !tbaa !79, !noalias !2052
  store i8 0, ptr %i.c, align 8, !tbaa !81, !noalias !2052
  call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #58, !noalias !2053 ; 7 uses
  %i.j = icmp ugt i64 %i.i, 9223372036854775799
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
          to label %.noexc38 unwind label %bb.j

.noexc38:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30: ; preds = %bb.b
  %i.k = add nuw nsw i64 %i.i, 8                  ; 2 uses
  %.not.i.i.i31 = icmp samesign ugt i64 %i.i, 7
  br i1 %.not.i.i.i31, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30
  %.not8.i.i.i32 = icmp eq i64 %i.i, 0
  br i1 %.not8.i.i.i32, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %cond.i.i.i33 = icmp eq i64 %i.i, 1
  br i1 %cond.i.i.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %1, align 1, !tbaa !81, !noalias !2053
  store i8 %i.m, ptr %i.l, align 8, !tbaa !81, !noalias !2053
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 1 %1, i64 %i.i, i1 false), !noalias !2053
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 8, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.i)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34_crit_edge unwind label %bb.j

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34_crit_edge: ; preds = %bb.h
  %.pre = load ptr, ptr %4, align 8, !tbaa !78, !noalias !2053
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34_crit_edge, %bb.g, %bb.f, %bb.d
  %i.n = phi ptr [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34_crit_edge ], [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  store i64 %i.k, ptr %i.h, align 8, !tbaa !79, !noalias !2053
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 0, ptr %i.o, align 1, !tbaa !81, !noalias !2053
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !75, !alias.scope !2053
  %i.q = load ptr, ptr %4, align 8, !tbaa !78, !noalias !2053 ; 3 uses
  %i.r = icmp eq ptr %i.q, %i.g
  br i1 %i.r, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34
  %i.s = load i64, ptr %i.h, align 8, !tbaa !79, !noalias !2053 ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
end_hunk_20
begin_hunk_21_@_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIwEEvPiPPT_:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit3.i, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i8 1, ptr @_ZN7testing8internal11g_help_flagE, align 1, !tbaa !82
  br label %.critedge

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.d
  %i.au = load i32, ptr %0, align 4, !tbaa !88    ; 4 uses
  %.not43 = icmp eq i32 %.02445, %i.au
  br i1 %.not43, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.av = xor i32 %.02445, -1
  %i.aw = add i32 %i.au, %i.av                    ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aw, 3
  br i1 %min.iters.check, label %.lr.ph.preheader61, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ay, 8589934588              ; 3 uses
  %i.az = add nsw i64 %n.vec, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = add i64 %index, %i.i                    ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %1, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 24
  %wide.load = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !449
  %wide.load60 = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !449
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ba ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x ptr> %wide.load, ptr %i.be, align 8, !tbaa !449
  store <2 x ptr> %wide.load60, ptr %i.bf, align 8, !tbaa !449
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !2063

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader61

.lr.ph.preheader61:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.i, %.lr.ph.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.j
  %i.bh = add nsw i32 %i.au, -1
  store i32 %i.bh, ptr %0, align 4, !tbaa !88
  %i.bi = add nsw i32 %.02445, -1
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader61, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader61 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !449
  %i.bl = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !449
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.au, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !2064

.critedge:                                        ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread40, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge
  %.125 = phi i32 [ %i.bi, %._crit_edge ], [ %.02445, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.02445, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit ], [ %.02445, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread40 ], [ %.02445, %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i ]
  %i.bm = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.f
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.critedge
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !81
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %i.bq = add nsw i32 %.125, 1                    ; 2 uses
  %i.br = load i32, ptr %0, align 4, !tbaa !88
  %i.bs = icmp slt i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.b, label %._crit_edge48, !llvm.loop !2065

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.n

bb.k:                                             ; preds = %._crit_edge48
  invoke fastcc void @_ZN7testing8internalL17PrintColorEncodedEPKc()
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %._crit_edge48
  %i.bu = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.a
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.m
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !81
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void

bb.n:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bt, %bb.l ]
  %i.by = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.a
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.n
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !81
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing14InitGoogleTestEPiPPc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18InitGoogleTestImplIcEEvPiPPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal18InitGoogleTestImplIcEEvPiPPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZN7testing8internalL18GTestIsInitializedEv()
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !88
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, align 8, !tbaa !247 ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !248 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !78 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !81
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #57
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !248
  %.pre = load i32, ptr %0, align 4, !tbaa !88
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
  br i1 %i.p, label %bb.d, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.d:                                             ; preds = %._crit_edge
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i9 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i9, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.f unwind label %bb.g, !inline_history !2

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZN7testing7MessageD2Ev.exit6.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.ai, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %._crit_edge, %bb.d, %bb.f
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(601) %i.t)
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58, !noalias !2071
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !2071
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239, !noalias !2071 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = load ptr, ptr %2, align 8, !tbaa !85, !noalias !2071
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br i1 %i.w, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.h
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #58, !noalias !2071
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.h
  %i.aa = phi ptr [ %i.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.188, %bb.h ]
  %i.ab = phi i64 [ %i.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %bb.h ]
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.aa, i64 noundef %i.ab)
          to label %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i unwind label %bb.i, !noalias !2071 ; 0 uses

_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i:        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !85, !noalias !2072
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %i.ad)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.i

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i
  %i.ae = load ptr, ptr %2, align 8, !tbaa !85, !noalias !2071 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #58, !inline_history !45
  br label %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.i:                                             ; preds = %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8, !tbaa !85, !noalias !2071 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !87
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #58, !inline_history !45
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !2071
  br label %common.resume

_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !2071
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !248 ; 7 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 16), align 8, !tbaa !243
  %.not.i.i10 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i10, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !75
  %i.aq = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.m
  br i1 %i.ar, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.as = load i64, ptr %i.n, align 8, !tbaa !79  ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.au, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !78
  %i.av = load i64, ptr %i.m, align 8, !tbaa !81
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !81
  %.pre17 = load i64, ptr %i.n, align 8, !tbaa !79
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aw = phi i64 [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.as, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !79
  store ptr %i.m, ptr %3, align 8, !tbaa !78
  store i64 0, ptr %i.n, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E, ptr %i.an, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.m

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.l
  %.pre18 = load ptr, ptr %3, align 8, !tbaa !78  ; 2 uses
  %i.az = icmp eq ptr %.pre18, %i.m
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !81
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre18, i64 noundef %i.bb) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i32, ptr %0, align 4, !tbaa !88
  %i.bd = zext i32 %i.bc to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.bd
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !2070

bb.m:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.m
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.m
  %i.bh = load i64, ptr %i.m, align 8, !tbaa !81
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
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
define linkonce_odr void @_ZN7testing8internal18InitGoogleTestImplIwEEvPiPPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZN7testing8internalL18GTestIsInitializedEv()
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !88
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, align 8, !tbaa !247 ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !248 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !78 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !81
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #57
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !248
  %.pre = load i32, ptr %0, align 4, !tbaa !88
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
  br i1 %i.p, label %bb.d, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !89

bb.d:                                             ; preds = %._crit_edge
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  %.not.i.i9 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i9, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.f unwind label %bb.g, !inline_history !2

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %._crit_edge, %bb.d, %bb.f
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(601) %i.t)
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  call void @_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !248 ; 7 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 16), align 8, !tbaa !243
  %.not.i.i10 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i10, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !75
  %i.y = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.m
  br i1 %i.z, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !79  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  store ptr %i.y, ptr %i.v, align 8, !tbaa !78
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !81
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !81
  %.pre17 = load i64, ptr %i.n, align 8, !tbaa !79
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ae = phi i64 [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !79
  store ptr %i.m, ptr %2, align 8, !tbaa !78
  store i64 0, ptr %i.n, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.l

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.k
  %.pre18 = load ptr, ptr %2, align 8, !tbaa !78  ; 2 uses
  %i.ah = icmp eq ptr %.pre18, %i.m
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !81
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %.pre18, i64 noundef %i.aj) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %0, align 4, !tbaa !88
  %i.al = zext i32 %i.ak to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.al
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !2073

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.m
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.l
  %i.ap = load i64, ptr %i.m, align 8, !tbaa !81
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %common.resume

bb.m:                                             ; preds = %bb.b, %bb.a, %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing14InitGoogleTestEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 1, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store ptr @.str.398, ptr %i.b, align 8, !tbaa !239
  call void @_ZN7testing8internal18InitGoogleTestImplIcEEvPiPPT_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7TempDirB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  %i.a = tail call noundef ptr @getenv(ptr noundef nonnull @.str.399) #58, !noalias !2076 ; 3 uses
  %.not28.i = icmp eq ptr %i.a, null
  br i1 %.not28.i, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1, !tbaa !81, !noalias !2076
  %.not29.i = icmp eq i8 %i.b, 0
  br i1 %.not29.i, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.z, %bb.b
  %.lcssa.i = phi ptr [ %i.a, %bb.b ], [ %i.bu, %bb.z ] ; 8 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa.i) #62, !noalias !2076
  %i.d = getelementptr i8, ptr %.lcssa.i, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !81, !noalias !2076
  %.not30.i = icmp eq i8 %i.f, 47
  br i1 %.not30.i, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58, !noalias !2076
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !75, !noalias !2076
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa.i) #58, !noalias !2076 ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %.noexc.i.i, label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56, !noalias !2076
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !80

.noexc11.i.i:                                     ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #56, !noalias !2076
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #55, !noalias !2076 ; 2 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !78, !noalias !2076
  store i64 %i.h, ptr %i.g, align 8, !tbaa !81, !noalias !2076
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.d
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.g, %bb.d ] ; 3 uses
  switch i64 %i.h, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %.lcssa.i, align 1, !tbaa !81, !noalias !2076
  store i8 %i.o, ptr %i.n, align 1, !tbaa !81, !noalias !2076
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.lcssa.i, i64 %i.h, i1 false), !noalias !2076
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 %i.h, ptr %i.p, align 8, !tbaa !79, !noalias !2076
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.q, align 1, !tbaa !81, !noalias !2076
  %i.r = load i64, ptr %i.p, align 8, !tbaa !79, !noalias !2076 ; 8 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775807
  br i1 %i.s, label %.invoke27.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.i
  %i.t = add nsw i64 %i.r, 1                      ; 5 uses
end_hunk_21
begin_hunk_22_@_ZN7testing7TempDirB5cxx11Ev:bb.a
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.pre.i, i64 noundef %i.aj) #57, !noalias !2076
  br label %.noexc39.i

.noexc39.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i
  store ptr %i.af, ptr %1, align 8, !tbaa !78, !noalias !2076
  store i64 %.0.i.i, ptr %i.g, align 8, !tbaa !81, !noalias !2076
  br label %bb.l

bb.l:                                             ; preds = %.noexc39.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ak = phi ptr [ %i.af, %.noexc39.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.r
  store i8 47, ptr %i.al, align 1, !tbaa !81, !noalias !2076
  store i64 %i.t, ptr %i.p, align 8, !tbaa !79, !noalias !2076
  %i.am = load ptr, ptr %1, align 8, !tbaa !78, !noalias !2076
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.t
  store i8 0, ptr %i.an, align 1, !tbaa !81, !noalias !2076
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !75, !alias.scope !2076
  %i.ap = load ptr, ptr %1, align 8, !tbaa !78, !noalias !2076 ; 2 uses
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !79, !noalias !2076 ; 8 uses
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %bb.m, label %._crit_edge.i.i40.i

bb.m:                                             ; preds = %bb.l
  %i.as = icmp slt i64 %i.aq, 0
  br i1 %i.as, label %.invoke27.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = add nuw i64 %i.aq, 1                    ; 2 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i41.i, !prof !80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i41.i: ; preds = %bb.n
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #55
          to label %.noexc45.i unwind label %bb.r ; 2 uses

.noexc45.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i41.i
  store ptr %i.av, ptr %0, align 8, !tbaa !78, !alias.scope !2076
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !81, !alias.scope !2076
  br label %._crit_edge.i.i40.i

._crit_edge.i.i40.i:                              ; preds = %.noexc45.i, %bb.l
  %i.aw = phi ptr [ %i.av, %.noexc45.i ], [ %i.ao, %bb.l ] ; 3 uses
  switch i64 %i.aq, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i40.i
  %i.ax = load i8, ptr %i.ap, align 1, !tbaa !81
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !81
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i40.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.ap, i64 %i.aq, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i40.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %i.ay, align 8, !tbaa !79, !alias.scope !2076
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq
  store i8 0, ptr %i.az, align 1, !tbaa !81
  %i.ba = load ptr, ptr %1, align 8, !tbaa !78, !noalias !2076 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.g
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !81, !noalias !2076
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58, !noalias !2076
  br label %_ZN7testingL17GetTempDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c.exit

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i41.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.invoke.i, %.invoke27.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %1, align 8, !tbaa !78, !noalias !2076 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.g
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %bb.r
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !81, !noalias !2076
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58, !noalias !2076
  resume { ptr, i32 } %i.be

bb.s:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !75, !alias.scope !2076
  %i.bk = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa.i) #58 ; 8 uses
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %bb.t, label %._crit_edge.i.i49.i

bb.t:                                             ; preds = %bb.s
  %i.bm = icmp slt i64 %i.bk, 0
  br i1 %i.bm, label %.noexc.i52.i, label %bb.u

.noexc.i52.i:                                     ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bn = add nuw i64 %i.bk, 1                    ; 2 uses
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %.noexc11.i51.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i50.i, !prof !80

.noexc11.i51.i:                                   ; preds = %bb.u
  tail call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i50.i: ; preds = %bb.u
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #55 ; 2 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !78, !alias.scope !2076
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !81, !alias.scope !2076
  br label %._crit_edge.i.i49.i

._crit_edge.i.i49.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i50.i, %bb.s
  %i.bq = phi ptr [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i50.i ], [ %i.bj, %bb.s ] ; 3 uses
  switch i64 %i.bk, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i49.i
  %i.br = load i8, ptr %.lcssa.i, align 1, !tbaa !81
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !81
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i49.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %.lcssa.i, i64 %i.bk, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i49.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bk, ptr %i.bs, align 8, !tbaa !79, !alias.scope !2076
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk
  store i8 0, ptr %i.bt, align 1, !tbaa !81
  br label %_ZN7testingL17GetTempDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c.exit

bb.y:                                             ; preds = %bb.b, %bb.a
  %i.bu = tail call noundef ptr @getenv(ptr noundef nonnull @.str.400) #58, !noalias !2076 ; 3 uses
  %.not28.1.i = icmp eq ptr %i.bu, null
  br i1 %.not28.1.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81, !noalias !2076
  %.not29.1.i = icmp eq i8 %i.bv, 0
  br i1 %.not29.1.i, label %.critedge.i, label %bb.c

.critedge.i:                                      ; preds = %bb.z, %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !75, !alias.scope !2076
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bw, ptr noundef nonnull align 1 dereferenceable(5) @.str.401, i64 5, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.bx, align 8, !tbaa !79, !alias.scope !2076
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.by, align 1, !tbaa !81, !alias.scope !2076
  br label %_ZN7testingL17GetTempDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c.exit

_ZN7testingL17GetTempDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.x, %.critedge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.testing::internal::TraceInfo", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !79
  store i8 0, ptr %i.b, align 8, !tbaa !81
  store ptr %1, ptr %4, align 8, !tbaa !352
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !353
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3) #58
  %i.e = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !273

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.d, %bb.b, %bb.a
  invoke void @_ZN7testing8UnitTest14PushGTestTraceERKNS_8internal9TraceInfoE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZN7testing8internal9TraceInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.b, align 8, !tbaa !81
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #57
  br label %_ZN7testing8internal9TraceInfoD2Ev.exit

_ZN7testing8internal9TraceInfoD2Ev.exit:          ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret void

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.i, %bb.e ]
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZN7testing8internal9TraceInfoD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %.body
  %i.q = load i64, ptr %i.b, align 8, !tbaa !81
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #57
  br label %_ZN7testing8internal9TraceInfoD2Ev.exit5

_ZN7testing8internal9TraceInfoD2Ev.exit5:         ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !78     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79   ; 5 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !79   ; 4 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %.not = icmp eq i64 %i.g, 0
  %.not38 = icmp eq i64 %i.m, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not38, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42:         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = add nuw nsw i64 %i.m, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  %i.p = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.p, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.o, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.not38, label %bb.h, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43:         ; preds = %bb.f
  %i.q = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.q, i1 false)
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !78
  %.pre51 = load i64, ptr %i.l, align 8, !tbaa !79
  store i64 %.pre51, ptr %i.f, align 8, !tbaa !79
  store i64 0, ptr %i.l, align 8, !tbaa !79
  store i8 0, ptr %.pre52, align 1, !tbaa !81
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44:         ; preds = %bb.e
  %i.r = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.r, i1 false)
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !78
  %.pre = load i64, ptr %i.f, align 8, !tbaa !79
  store i64 %.pre, ptr %i.l, align 8, !tbaa !79
  store i64 0, ptr %i.f, align 8, !tbaa !79
  store i8 0, ptr %.pre50, align 1, !tbaa !81
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45:         ; preds = %bb.c
  %i.s = load i64, ptr %i.j, align 8, !tbaa !81
  %i.t = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.t, i1 false)
  store ptr %i.i, ptr %0, align 8, !tbaa !78
  store ptr %i.j, ptr %1, align 8, !tbaa !78
  store i64 %i.s, ptr %i.d, align 8, !tbaa !81
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.b
  %i.u = load i64, ptr %i.d, align 8, !tbaa !81
  %i.v = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !79   ; 2 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  store ptr %i.c, ptr %1, align 8, !tbaa !78
  store ptr %i.d, ptr %0, align 8, !tbaa !78
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  store ptr %i.v, ptr %0, align 8, !tbaa !78
  store ptr %i.c, ptr %1, align 8, !tbaa !78
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !81
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47
  store i64 %i.u, ptr %i.w, align 8, !tbaa !81
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !79
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !79
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !79
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43, %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing11ScopedTraceD2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !273

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
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
define linkonce_odr void @_ZN7testing8internal27OsStackTraceGetterInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal18OsStackTraceGetterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal13DeathTestImplD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #61
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal16ForkingDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #61
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal15NoExecDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #58
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal13DeathTestImplE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !203
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !75
  %i.e = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #55
          to label %bb.b unwind label %bb.s       ; 3 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.e, ptr %7, align 8, !tbaa !78
  store i64 19, ptr %i.d, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.e, ptr noundef nonnull align 1 dereferenceable(19) @.str.15, i64 19, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 19, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  store i8 0, ptr %i.g, align 1, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 19, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 89)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.b
  %.pre = load ptr, ptr %7, align 8, !tbaa !78, !noalias !2089 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 108
  store i8 0, ptr %i.h, align 1, !tbaa !81, !noalias !2089
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !75, !alias.scope !2089
  %i.j = icmp ne ptr %.pre, %i.d
  call void @llvm.assume(i1 %i.j)
  store ptr %.pre, ptr %6, align 8, !tbaa !78, !alias.scope !2089
  %i.k = load i64, ptr %i.d, align 8, !tbaa !81, !noalias !2089
  store i64 %i.k, ptr %i.i, align 8, !tbaa !81, !alias.scope !2089
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 108, ptr %i.l, align 8, !tbaa !79, !alias.scope !2089
  store ptr %i.d, ptr %7, align 8, !tbaa !78, !noalias !2089
  store i64 0, ptr %i.f, align 8, !tbaa !79, !noalias !2089
  store i8 0, ptr %i.d, align 8, !tbaa !81, !noalias !2089
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  %i.m = icmp ne ptr %.pre, %i.i
  call void @llvm.assume(i1 %i.m)
  %i.n = load i64, ptr %i.i, align 8, !tbaa !81, !noalias !2090
  %i.o = icmp ult i64 %i.n, 115
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.pre, i64 108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.p, ptr noundef nonnull align 1 dereferenceable(7) @.str.16, i64 7, i1 false), !noalias !2090
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 108, i64 noundef 0, ptr noundef nonnull @.str.16, i64 noundef 7)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11_crit_edge unwind label %bb.s

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11_crit_edge: ; preds = %bb.d
  %.pre66 = load ptr, ptr %6, align 8, !tbaa !78, !noalias !2090
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11_crit_edge, %bb.c
  %i.q = phi ptr [ %.pre66, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11_crit_edge ], [ %.pre, %bb.c ] ; 3 uses
  store i64 115, ptr %i.l, align 8, !tbaa !79, !noalias !2090
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 115
  store i8 0, ptr %i.r, align 1, !tbaa !81, !noalias !2090
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !75, !alias.scope !2090
  %i.t = icmp ne ptr %i.q, %i.i
  call void @llvm.assume(i1 %i.t)
  store ptr %i.q, ptr %5, align 8, !tbaa !78, !alias.scope !2090
  %i.u = load i64, ptr %i.i, align 8, !tbaa !81, !noalias !2090
  store i64 %i.u, ptr %i.s, align 8, !tbaa !81, !alias.scope !2090
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 115, ptr %i.v, align 8, !tbaa !79, !alias.scope !2090
  store ptr %i.i, ptr %6, align 8, !tbaa !78, !noalias !2090
  store i64 0, ptr %i.l, align 8, !tbaa !79, !noalias !2090
  store i8 0, ptr %i.i, align 8, !tbaa !81, !noalias !2090
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58, !noalias !2091
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc19 unwind label %bb.s

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11
  %i.w = load ptr, ptr %1, align 8, !tbaa !85, !noalias !2091
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef 412)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %bb.e, !noalias !2091 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %.noexc19
  %i.z = load ptr, ptr %1, align 8, !tbaa !85, !noalias !2092
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.z)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.e

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.aa = load ptr, ptr %1, align 8, !tbaa !85, !noalias !2091 ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i18, label %bb.f, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #58, !inline_history !4
  br label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i, %.noexc19
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = load ptr, ptr %1, align 8, !tbaa !85, !noalias !2091 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i2.i, label %_ZN7testing7MessageD2Ev.exit4.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i: ; preds = %bb.e
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #58, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit4.i
end_hunk_22
begin_hunk_23_@_ZN7testing8internalL22ExecDeathTestChildMainEPv:bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.dd, ptr %2, align 8, !tbaa !75, !alias.scope !2128
  %i.de = load ptr, ptr %3, align 8, !tbaa !78, !noalias !2128 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cc
  br i1 %i.df, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i111
  %i.dg = load i64, ptr %i.cy, align 8, !tbaa !79, !noalias !2128 ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 16
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nuw nsw i64 %i.dg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dd, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.di, i1 false)
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i111
  store ptr %i.de, ptr %2, align 8, !tbaa !78, !alias.scope !2128
  %i.dj = load i64, ptr %i.cc, align 8, !tbaa !81, !noalias !2128
  store i64 %i.dj, ptr %i.dd, align 8, !tbaa !81, !alias.scope !2128
  %.pre.i113 = load i64, ptr %i.cy, align 8, !tbaa !79, !noalias !2128
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.u
  %i.dk = phi i64 [ %i.dg, %bb.u ], [ %.pre.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !79, !alias.scope !2128
  store ptr %i.cc, ptr %3, align 8, !tbaa !78, !noalias !2128
  store i64 0, ptr %i.cy, align 8, !tbaa !79, !noalias !2128
  store i8 0, ptr %i.cc, align 8, !tbaa !81, !noalias !2128
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.unreachable333 unwind label %bb.ae

.unreachable333:                                  ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %.critedge
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

bb.x:                                             ; preds = %bb.d
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

bb.y:                                             ; preds = %bb.f
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i70
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.h
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.ab:                                            ; preds = %bb.l, %bb.j
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.ac:                                            ; preds = %bb.p, %bb.n
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

bb.ad:                                            ; preds = %bb.t, %bb.r
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.ae:                                            ; preds = %bb.v
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.dd
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.ae
  %i.dx = load i64, ptr %i.dd, align 8, !tbaa !81
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.dt, %bb.ad ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.du, %bb.ae ] ; 2 uses
  %i.dz = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.cc
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.eb = load i64, ptr %i.cc, align 8, !tbaa !81
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.ac ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ] ; 2 uses
  %i.ed = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.bb
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.ef = load i64, ptr %i.bb, align 8, !tbaa !81
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.ab ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ] ; 2 uses
  %i.eh = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !81
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.aa
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.aa ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 2 uses
  %i.em = load ptr, ptr %9, align 8, !tbaa !78    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !81
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #57
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152, %bb.z, %_ZN7testing7MessageD2Ev.exit4.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %_ZN7testing7MessageD2Ev.exit4.i ], [ %i.dp, %bb.z ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  %i.er = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.w
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %.body
  %i.et = load i64, ptr %i.w, align 8, !tbaa !81
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %bb.y
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.do, %bb.y ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  %i.ev = load ptr, ptr %7, align 8, !tbaa !78    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.m
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.ex = load i64, ptr %i.m, align 8, !tbaa !81
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.x
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.x ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ] ; 2 uses
  %i.ez = load ptr, ptr %8, align 8, !tbaa !78    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.h
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.fb = load i64, ptr %i.h, align 8, !tbaa !81
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, %bb.w
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.w ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %common.resume

.critedge59:                                      ; preds = %bb.b
  %i.fd = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %bb.af, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !89

bb.af:                                            ; preds = %.critedge59
  %i.ff = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.ah unwind label %bb.ai, !inline_history !273

bb.ah:                                            ; preds = %bb.ag
  %i.fg = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %i.fh, %bb.ai ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %.pn51.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %.pn43.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329 ]
  resume { ptr, i32 } %common.resume.op

bb.ai:                                            ; preds = %bb.ag
  %i.fh = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %.critedge59, %bb.af, %bb.ah
  %i.fi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !78 ; 9 uses
  %i.fl = tail call i32 @chdir(ptr noundef %i.fk) #58
  %.not = icmp eq i32 %i.fl, 0
  br i1 %.not, label %._crit_edge.i.i228, label %._crit_edge.i.i164

._crit_edge.i.i164:                               ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #58
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 13 uses
  store ptr %i.fm, ptr %13, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.fm, ptr noundef nonnull align 1 dereferenceable(7) @.str.430, i64 7, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 7 uses
  store i64 7, ptr %i.fn, align 8, !tbaa !79
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 23
  store i8 0, ptr %i.fo, align 1, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  %i.fp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fk) #58, !noalias !2129 ; 7 uses
  %i.fq = icmp ugt i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i172

bb.aj:                                            ; preds = %._crit_edge.i.i164
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
          to label %.noexc182 unwind label %bb.ax

.noexc182:                                        ; preds = %bb.aj
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i172: ; preds = %._crit_edge.i.i164
  %i.fr = add nuw nsw i64 %i.fp, 7                ; 2 uses
  %.not.i.i.i175 = icmp samesign ugt i64 %i.fp, 8
  br i1 %.not.i.i.i175, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i172
  %.not8.i.i.i176 = icmp eq i64 %i.fp, 0
  br i1 %.not8.i.i.i176, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i178, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fs = getelementptr inbounds nuw i8, ptr %13, i64 23 ; 2 uses
  %cond.i.i.i177 = icmp eq i64 %i.fp, 1
  br i1 %cond.i.i.i177, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ft = load i8, ptr %i.fk, align 1, !tbaa !81, !noalias !2129
  store i8 %i.ft, ptr %i.fs, align 1, !tbaa !81, !noalias !2129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i178

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull align 1 %i.fk, i64 %i.fp, i1 false), !noalias !2129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i178

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i172
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 7, i64 noundef 0, ptr noundef nonnull %i.fk, i64 noundef %i.fp)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i178_crit_edge unwind label %bb.ax

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i178_crit_edge: ; preds = %bb.ao
  %.pre = load ptr, ptr %13, align 8, !tbaa !78, !noalias !2129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i178: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i178_crit_edge, %bb.an, %bb.am, %bb.ak
  %i.fu = phi ptr [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i178_crit_edge ], [ %i.fm, %bb.an ], [ %i.fm, %bb.am ], [ %i.fm, %bb.ak ]
  store i64 %i.fr, ptr %i.fn, align 8, !tbaa !79, !noalias !2129
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fr
  store i8 0, ptr %i.fv, align 1, !tbaa !81, !noalias !2129
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 12 uses
  store ptr %i.fw, ptr %12, align 8, !tbaa !75, !alias.scope !2129
  %i.fx = load ptr, ptr %13, align 8, !tbaa !78, !noalias !2129 ; 5 uses
  %i.fy = icmp eq ptr %i.fx, %i.fm
  br i1 %i.fy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185.thread, label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i178
  %i.fz = load i64, ptr %i.fn, align 8, !tbaa !79, !noalias !2129 ; 5 uses
  %i.ga = icmp samesign ult i64 %i.fz, 16
  call void @llvm.assume(i1 %i.ga)
  %i.gb = add nuw nsw i64 %i.fz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fw, ptr noundef nonnull align 8 dereferenceable(1) %i.fm, i64 %i.gb, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.fz, ptr %i.gc, align 8, !tbaa !79, !alias.scope !2129
  store ptr %i.fm, ptr %13, align 8, !tbaa !78, !noalias !2129
  store i64 0, ptr %i.fn, align 8, !tbaa !79, !noalias !2129
  store i8 0, ptr %i.fm, align 8, !tbaa !81, !noalias !2129
  %i.gd = add nuw nsw i64 %i.fz, 11
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i194

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i178
  store ptr %i.fx, ptr %12, align 8, !tbaa !78, !alias.scope !2129
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.gf = load <2 x i64>, ptr %i.fn, align 8, !tbaa !81, !noalias !2129
  %.pre.i180 = load i64, ptr %i.fn, align 8, !tbaa !79, !noalias !2129 ; 4 uses
  store <2 x i64> %i.gf, ptr %i.ge, align 8, !tbaa !81, !alias.scope !2129
  store ptr %i.fm, ptr %13, align 8, !tbaa !78, !noalias !2129
  store i64 0, ptr %i.fn, align 8, !tbaa !79, !noalias !2129
  store i8 0, ptr %i.fm, align 8, !tbaa !81, !noalias !2129
  call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  %i.gg = icmp sgt i64 %.pre.i180, 9223372036854775796
  br i1 %i.gg, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.407) #56
          to label %.noexc195 unwind label %bb.ay

.noexc195:                                        ; preds = %bb.aq
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185: ; preds = %bb.ap
  %i.gh = add nsw i64 %.pre.i180, 11              ; 2 uses
  %i.gi = icmp eq ptr %i.fx, %i.fw
  br i1 %i.gi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i194: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185
  %i.gj = phi i64 [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185.thread ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185 ]
  %i.gk = phi ptr [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185.thread ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185 ]
  %i.gl = phi i64 [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185.thread ], [ %.pre.i180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185 ] ; 2 uses
  %i.gm = phi ptr [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185.thread ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185 ]
  %i.gn = icmp ult i64 %i.gl, 16
  call void @llvm.assume(i1 %i.gn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i186: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i185
  %i.go = load i64, ptr %i.fw, align 8, !tbaa !81, !noalias !2130
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i187: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i194
  %i.gp = phi i64 [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i186 ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i194 ] ; 3 uses
  %i.gq = phi ptr [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i186 ], [ %i.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i194 ]
  %i.gr = phi i64 [ %.pre.i180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i186 ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i194 ] ; 2 uses
  %i.gs = phi ptr [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i186 ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i194 ] ; 4 uses
  %i.gt = phi i64 [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i186 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i194 ]
  %.not.i.i.i188 = icmp ugt i64 %i.gp, %i.gt
  br i1 %.not.i.i.i188, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i187
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.gu, ptr noundef nonnull align 1 dereferenceable(11) @.str.431, i64 11, i1 false), !noalias !2130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i191

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i187
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.gr, i64 noundef 0, ptr noundef nonnull @.str.431, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i191 unwind label %bb.ay

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i191: ; preds = %bb.as, %bb.ar
  store i64 %i.gp, ptr %i.gs, align 8, !tbaa !79, !noalias !2130
  %i.gv = load ptr, ptr %12, align 8, !tbaa !78, !noalias !2130
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gp
  store i8 0, ptr %i.gw, align 1, !tbaa !81, !noalias !2130
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.gx, ptr %11, align 8, !tbaa !75, !alias.scope !2130
  %i.gy = load ptr, ptr %12, align 8, !tbaa !78, !noalias !2130 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.fw
  br i1 %i.gz, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i191
  %i.ha = load i64, ptr %i.gs, align 8, !tbaa !79, !noalias !2130 ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 16
  call void @llvm.assume(i1 %i.hb)
  %i.hc = add nuw nsw i64 %i.ha, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gx, ptr noundef nonnull align 8 dereferenceable(1) %i.fw, i64 %i.hc, i1 false)
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i191
  store ptr %i.gy, ptr %11, align 8, !tbaa !78, !alias.scope !2130
  %i.hd = load i64, ptr %i.fw, align 8, !tbaa !81, !noalias !2130
  store i64 %i.hd, ptr %i.gx, align 8, !tbaa !81, !alias.scope !2130
  %.pre.i193 = load i64, ptr %i.gs, align 8, !tbaa !79, !noalias !2130
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192, %bb.at
  %i.he = phi i64 [ %i.ha, %bb.at ], [ %.pre.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !79, !alias.scope !2130
  store ptr %i.fw, ptr %12, align 8, !tbaa !78, !noalias !2130
  store i64 0, ptr %i.gs, align 8, !tbaa !79, !noalias !2130
  store i8 0, ptr %i.fw, align 8, !tbaa !81, !noalias !2130
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #58
  invoke void @_ZN7testing8internal23GetLastErrnoDescriptionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %10)
end_hunk_23
