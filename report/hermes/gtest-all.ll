Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/gtest-all?download=true
inline.NumInlined: 6243
inline.NumDeleted: 1690
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7testing8internal6Random8GenerateEj:bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %1, -2147483647
  br i1 %i.h, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.29, i32 noundef 317)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.32, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.e
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.33, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = zext i32 %1 to i64
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %i.k)
          to label %_ZNSolsEj.exit unwind label %bb.f ; 3 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.34, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZNSolsEj.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.35, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 2147483648)
          to label %_ZNSolsEj.exit13 unwind label %bb.f

_ZNSolsEj.exit13:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.36, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZNSolsEj.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %bb.g

bb.f:                                             ; preds = %_ZNSolsEj.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %bb.h

bb.g:                                             ; preds = %.thread, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.r = load i32, ptr %0, align 4, !tbaa !63
  %i.s = urem i32 %i.r, %1
  ret i32 %i.s

bb.h:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef returned zeroext %0) local_unnamed_addr #3 {
bb.a:
  ret i1 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12AssertHelperC2ENS_14TestPartResult4TypeEPKciS5_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #57 ; 8 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %3, ptr %i.d, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !47
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.414) #56
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.h, ptr %i.a, align 8, !tbaa !48
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.f    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i
  store ptr %i.j, ptr %i.e, align 8, !tbaa !45
  %i.k = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.k, ptr %i.f, align 8, !tbaa !46
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc6 ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %4, align 1, !tbaa !46
  store i8 %i.m, ptr %i.l, align 1, !tbaa !46
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %4, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !49
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  store ptr %i.b, ptr %0, align 8, !tbaa !71
  ret void

bb.f:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #54
  resume { ptr, i32 } %i.r
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal12AssertHelperD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !46
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #54
  br label %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit

_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #54
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !73

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !73 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !71     ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @_ZN7testing8internal17AppendUserMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7MessageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.m = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit6, !prof !72

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  %.not.i5 = icmp eq i32 %i.o, 0
  br i1 %.not.i5, label %_ZN7testing8UnitTest11GetInstanceEv.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %bb.i, !inline_history !73

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !73 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit6

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit6:        ; preds = %bb.h, %bb.f, %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  invoke void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(497) %i.r, i32 noundef 1)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit6
  invoke void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i32 noundef %i.g, ptr noundef %i.i, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.v = load i64, ptr %i.t, align 8, !tbaa !46
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %i.x = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !46
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret void

bb.l:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit6
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.m
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !46
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #54
  br label %.body

.body:                                            ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.ac, %bb.l ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.ad, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %i.aj = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %.body
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7testing8UnitTest11GetInstanceEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %13 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %14 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %15 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %16 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %17 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %18 = alloca %"class.testing::Message", align 8 ; 17 uses
  %19 = alloca %"class.testing::internal::GTestMutexLock", align 8 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.testing::TestPartResult", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #53
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %i.a = load ptr, ptr %18, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #53
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %17, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr %i.b, ptr %i.e, align 8, !tbaa !59
  %i.f = load ptr, ptr %4, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  %i.i = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef %i.f, i64 noundef %i.h)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %17) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #53
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %17) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #53
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.k, ptr %19, align 8, !tbaa !82
  %i.l = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.k) #53 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #53
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %16, i32 noundef 3, ptr noundef nonnull @.str.336, i32 noundef 1940)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.337, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.338, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.l)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %16) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #53
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %16) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #53
  br label %.body39

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.q = tail call i64 @pthread_self() #58
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.q, ptr %i.r, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.s, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 480
  %i.w = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !87
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !88
  %.not = icmp eq ptr %i.y, %i.z
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit
  %i.aa = load ptr, ptr %18, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #53
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.ac, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %15, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !59
  %i.af = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %bb.j unwind label %bb.i       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #53
  br label %.body43

bb.j:                                             ; preds = %bb.h
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #53
  %i.ah = load ptr, ptr %18, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #53
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.aj, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %14, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !59
  %i.am = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull @.str.87, i64 noundef 11)
          to label %bb.l unwind label %bb.k       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %14) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #53
  br label %.body43

bb.l:                                             ; preds = %bb.j
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %14) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #53
  %i.ao = load ptr, ptr %18, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #53
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.aq, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %13, align 8, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !59
  %i.at = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull @.str.229, i64 noundef 7)
          to label %bb.n unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %13) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #53
  br label %.body43

bb.n:                                             ; preds = %bb.l
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %13) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #53
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !79
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 480
  %i.ax = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit52: ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !87
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 48                ; 2 uses
  %i.bf = trunc i64 %i.be to i32
end_hunk_0
begin_hunk_1_@_ZNK7testing8internal8FilePath19RemoveDirectoryNameEv:bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %.body
  %eh.lpad-body38 = phi { ptr, i32 } [ %i.ay, %.body ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ad, %bb.h ]
  %i.az = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.g
  br i1 %i.ba, label %.critedge27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %.body.thread
  %i.bb = load i64, ptr %i.g, align 8, !tbaa !46
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #54
  br label %.critedge27

.critedge27:                                      ; preds = %.body.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  resume { ptr, i32 } %eh.lpad-body38
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load ptr, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, align 8, !tbaa !45 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !49
  store i8 0, ptr %i.e, align 8, !tbaa !46
  br label %.critedge31

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 58) #55 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !47
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #53
  store i64 %i.i, ptr %i.b, align 8, !tbaa !48
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i36, label %._crit_edge.i.i35

.noexc.i36:                                       ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !45
  %i.l = load i64, ptr %i.b, align 8, !tbaa !48
  store i64 %i.l, ptr %i.h, align 8, !tbaa !46
  br label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %.noexc.i36, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i36 ], [ %i.h, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %.critedge34
  ]

bb.d:                                             ; preds = %._crit_edge.i.i35
  %i.n = load i8, ptr %i.c, align 1, !tbaa !46
  store i8 %i.n, ptr %i.m, align 1, !tbaa !46
  br label %.critedge34

bb.e:                                             ; preds = %._crit_edge.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.c, i64 %i.i, i1 false)
  br label %.critedge34

bb.f:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = ptrtoint ptr %i.c to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.q, ptr %i.a, align 8, !tbaa !48
  %i.s = icmp ugt i64 %i.q, 15
  br i1 %i.s, label %.noexc.i41, label %._crit_edge.i.i40

.noexc.i41:                                       ; preds = %bb.f
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !45
  %i.u = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.u, ptr %i.r, align 8, !tbaa !46
  br label %._crit_edge.i.i40

._crit_edge.i.i40:                                ; preds = %.noexc.i41, %bb.f
  %i.v = phi ptr [ %i.t, %.noexc.i41 ], [ %i.r, %bb.f ] ; 2 uses
  switch i64 %i.q, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %.critedge
  ]

bb.g:                                             ; preds = %._crit_edge.i.i40
  %i.w = load i8, ptr %i.c, align 1, !tbaa !46
  store i8 %i.w, ptr %i.v, align 1, !tbaa !46
  br label %.critedge

bb.h:                                             ; preds = %._crit_edge.i.i40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.c, i64 %i.q, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.i.i40, %bb.g, %bb.h
  %i.x = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !49
  %i.z = load ptr, ptr %0, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  br label %.critedge31

.critedge34:                                      ; preds = %bb.e, %bb.d, %._crit_edge.i.i35
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !49
  %i.ad = load ptr, ptr %0, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  br label %.critedge31

.critedge31:                                      ; preds = %.critedge, %.critedge34, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

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
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %2 = alloca %"class.testing::internal::FilePath", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.testing::internal::FilePath", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.testing::internal::FilePath", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %9 = alloca %"class.testing::internal::FilePath", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.testing::internal::FilePath", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %14 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.l = load ptr, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, align 8, !tbaa !45 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !49
  store i8 0, ptr %i.n, align 8, !tbaa !46
  br label %bb.ca

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.l, i32 noundef 58) #55 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.r = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !72

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.f unwind label %bb.g, !inline_history !73

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !73 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZN7testing8internal8FilePathD2Ev.exit235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.g ], [ %.pn40.pn.pn, %_ZN7testing8internal8FilePathD2Ev.exit235 ], [ %.pn44.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.c, %bb.d, %bb.f
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !47
  %i.aa = icmp eq ptr %i.y, null
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.414) #56
          to label %.noexc55 unwind label %bb.u

.noexc55:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #53
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !48
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i54, label %._crit_edge.i.i53

.noexc.i54:                                       ; preds = %bb.i
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc56 unwind label %bb.u   ; 2 uses

.noexc56:                                         ; preds = %.noexc.i54
  store ptr %i.ad, ptr %3, align 8, !tbaa !45
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !48
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !46
  br label %._crit_edge.i.i53

._crit_edge.i.i53:                                ; preds = %.noexc56, %bb.i
  %i.af = phi ptr [ %i.ad, %.noexc56 ], [ %i.z, %bb.i ] ; 2 uses
  switch i64 %i.ab, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i53
  %i.ag = load i8, ptr %i.y, align 1, !tbaa !46
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !46
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.y, i64 %i.ab, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i53
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !48  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !49
  %i.aj = load ptr, ptr %3, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #53
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !47
  %i.am = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.an = load i64, ptr %i.ai, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #53
  store i64 %i.an, ptr %i.j, align 8, !tbaa !48
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.l
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc58 unwind label %bb.v   ; 2 uses

.noexc58:                                         ; preds = %.noexc.i.i
  store ptr %i.ap, ptr %2, align 8, !tbaa !45
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !48
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !46
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc58, %bb.l
  %i.ar = phi ptr [ %i.ap, %.noexc58 ], [ %i.al, %bb.l ] ; 2 uses
  switch i64 %i.an, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.as = load i8, ptr %i.am, align 1, !tbaa !46
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.am, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.at = load i64, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !49
  %i.av = load ptr, ptr %2, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #53
  invoke void @_ZN7testing8internal8FilePath9NormalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i64 unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.al
  br i1 %i.az, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.ba = load i64, ptr %i.al, align 8, !tbaa !46
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #54
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bc, ptr %5, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.bc, ptr noundef nonnull align 16 dereferenceable(15) @_ZN7testingL18kDefaultOutputFileE, i64 15, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 15, ptr %i.bd, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 31
  store i8 0, ptr %i.be, align 1, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.bf, ptr noundef nonnull align 16 dereferenceable(15) @_ZN7testingL18kDefaultOutputFileE, i64 15, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 15, ptr %i.bg, align 8, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 31
  store i8 0, ptr %i.bh, align 1, !tbaa !46
  invoke void @_ZN7testing8internal8FilePath9NormalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit72 unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i64
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.bf
  br i1 %i.bk, label %.body70, label %.body70.sink.split

_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i64
  invoke void @_ZN7testing8internal8FilePath11ConcatPathsERKS1_S3_(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit72
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !47
  %i.bm = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #53
  store i64 %i.bo, ptr %i.i, align 8, !tbaa !48
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i74, label %._crit_edge.i.i73

.noexc.i74:                                       ; preds = %bb.q
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc75 unwind label %bb.x   ; 2 uses

.noexc75:                                         ; preds = %.noexc.i74
  store ptr %i.bq, ptr %0, align 8, !tbaa !45
  %i.br = load i64, ptr %i.i, align 8, !tbaa !48
  store i64 %i.br, ptr %i.bl, align 8, !tbaa !46
  br label %._crit_edge.i.i73

._crit_edge.i.i73:                                ; preds = %.noexc75, %bb.q
  %i.bs = phi ptr [ %i.bq, %.noexc75 ], [ %i.bl, %bb.q ] ; 2 uses
  switch i64 %i.bo, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i73
  %i.bt = load i8, ptr %i.bm, align 1, !tbaa !46
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !46
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i73
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bm, i64 %i.bo, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i73
  %i.bu = load i64, ptr %i.i, align 8, !tbaa !48  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZN7testing8internal15UnitTestOptions27GetAbsolutePathToOutputFileB5cxx11Ev:bb.a

_ZN7testing8internal8FilePathD2Ev.exit93:         ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90, %bb.w
  %.pn44 = phi { ptr, i32 } [ %i.cv, %bb.w ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90 ], [ %i.cw, %bb.x ] ; 2 uses
  %i.dc = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.bf
  br i1 %i.dd, label %.body70, label %.body70.sink.split

.body70.sink.split:                               ; preds = %_ZN7testing8internal8FilePathD2Ev.exit93, %bb.p
  %.sink = phi ptr [ %i.bj, %bb.p ], [ %i.dc, %_ZN7testing8internal8FilePathD2Ev.exit93 ]
  %.pn44.pn.ph = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %.pn44, %_ZN7testing8internal8FilePathD2Ev.exit93 ]
  %i.de = load i64, ptr %i.bf, align 8, !tbaa !46
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.df) #54
  br label %.body70

.body70:                                          ; preds = %.body70.sink.split, %_ZN7testing8internal8FilePathD2Ev.exit93, %bb.p
  %.pn44.pn = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %.pn44, %_ZN7testing8internal8FilePathD2Ev.exit93 ], [ %.pn44.pn.ph, %.body70.sink.split ] ; 2 uses
  %i.dg = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.bc
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %.body70
  %i.di = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %.body70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.dk = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.al
  br i1 %i.dl, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.dm = load i64, ptr %i.al, align 8, !tbaa !46
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #54
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101 ], [ %i.cu, %bb.v ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ax, %bb.o ], [ %.pn44.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.do = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.z
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %.body
  %i.dq = load i64, ptr %i.z, align 8, !tbaa !46
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.u
  %.pn44.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.u ], [ %.pn44.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn44.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %common.resume

bb.y:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.dt, ptr %7, align 8, !tbaa !47
  %i.du = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #53
  store i64 %i.du, ptr %i.h, align 8, !tbaa !48
  %i.dv = icmp ugt i64 %i.du, 15
  br i1 %i.dv, label %.noexc.i109, label %._crit_edge.i.i108

.noexc.i109:                                      ; preds = %bb.y
  %i.dw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc110 unwind label %bb.ba ; 2 uses

.noexc110:                                        ; preds = %.noexc.i109
  store ptr %i.dw, ptr %7, align 8, !tbaa !45
  %i.dx = load i64, ptr %i.h, align 8, !tbaa !48
  store i64 %i.dx, ptr %i.dt, align 8, !tbaa !46
  br label %._crit_edge.i.i108

._crit_edge.i.i108:                               ; preds = %.noexc110, %bb.y
  %i.dy = phi ptr [ %i.dw, %.noexc110 ], [ %i.dt, %bb.y ] ; 2 uses
  switch i64 %i.du, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i108
  %i.dz = load i8, ptr %i.ds, align 1, !tbaa !46
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !46
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr nonnull align 1 %i.ds, i64 %i.du, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i108
  %i.ea = load i64, ptr %i.h, align 8, !tbaa !48  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !49
  %i.ec = load ptr, ptr %7, align 8, !tbaa !45
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea
  store i8 0, ptr %i.ed, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #53
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.ee, ptr %6, align 8, !tbaa !47
  %i.ef = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.eg = load i64, ptr %i.eb, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #53
  store i64 %i.eg, ptr %i.g, align 8, !tbaa !48
  %i.eh = icmp ugt i64 %i.eg, 15
  br i1 %i.eh, label %.noexc.i.i117, label %._crit_edge.i.i.i112

.noexc.i.i117:                                    ; preds = %bb.ab
  %i.ei = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc118 unwind label %bb.bb ; 2 uses

.noexc118:                                        ; preds = %.noexc.i.i117
  store ptr %i.ei, ptr %6, align 8, !tbaa !45
  %i.ej = load i64, ptr %i.g, align 8, !tbaa !48
  store i64 %i.ej, ptr %i.ee, align 8, !tbaa !46
  br label %._crit_edge.i.i.i112

._crit_edge.i.i.i112:                             ; preds = %.noexc118, %bb.ab
  %i.ek = phi ptr [ %i.ei, %.noexc118 ], [ %i.ee, %bb.ab ] ; 2 uses
  switch i64 %i.eg, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i113
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i112
  %i.el = load i8, ptr %i.ef, align 1, !tbaa !46
  store i8 %i.el, ptr %i.ek, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i113

bb.ad:                                            ; preds = %._crit_edge.i.i.i112
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr align 1 %i.ef, i64 %i.eg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i113: ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i112
  %i.em = load i64, ptr %i.g, align 8, !tbaa !48  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.em, ptr %i.en, align 8, !tbaa !49
  %i.eo = load ptr, ptr %6, align 8, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.em
  store i8 0, ptr %i.ep, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #53
  invoke void @_ZN7testing8internal8FilePath9NormalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit121 unwind label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i113
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ee
  br i1 %i.es, label %.body119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114: ; preds = %bb.ae
  %i.et = load i64, ptr %i.ee, align 8, !tbaa !46
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #54
  br label %.body119

_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i113
  %i.ev = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.dt
  br i1 %i.ew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit121
  %i.ex = load i64, ptr %i.dt, align 8, !tbaa !46
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #54
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123: ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  %i.ez = load ptr, ptr %6, align 8, !tbaa !45
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !46
  %i.fb = icmp eq i8 %i.fa, 47
  br i1 %i.fb, label %bb.bj, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #53
  %i.fc = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.ag, label %bb.ak, !prof !72

bb.ag:                                            ; preds = %bb.af
  %i.fe = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  %.not.i125 = icmp eq i32 %i.fe, 0
  br i1 %.not.i125, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.ai unwind label %bb.aj, !inline_history !73

bb.ai:                                            ; preds = %bb.ah
  %i.ff = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !73 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %.body126

bb.ak:                                            ; preds = %bb.af, %bb.ag, %bb.ai
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !45 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.fk, ptr %10, align 8, !tbaa !47
  %i.fl = icmp eq ptr %i.fj, null
  br i1 %i.fl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.414) #56
          to label %.noexc131 unwind label %bb.bd

.noexc131:                                        ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.fm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fj) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #53
  store i64 %i.fm, ptr %i.f, align 8, !tbaa !48
  %i.fn = icmp ugt i64 %i.fm, 15
  br i1 %i.fn, label %.noexc.i130, label %._crit_edge.i.i129

.noexc.i130:                                      ; preds = %bb.am
  %i.fo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc132 unwind label %bb.bd ; 2 uses

.noexc132:                                        ; preds = %.noexc.i130
  store ptr %i.fo, ptr %10, align 8, !tbaa !45
  %i.fp = load i64, ptr %i.f, align 8, !tbaa !48
  store i64 %i.fp, ptr %i.fk, align 8, !tbaa !46
  br label %._crit_edge.i.i129

._crit_edge.i.i129:                               ; preds = %.noexc132, %bb.am
  %i.fq = phi ptr [ %i.fo, %.noexc132 ], [ %i.fk, %bb.am ] ; 2 uses
  switch i64 %i.fm, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %bb.ap
  ]

bb.an:                                            ; preds = %._crit_edge.i.i129
  %i.fr = load i8, ptr %i.fj, align 1, !tbaa !46
  store i8 %i.fr, ptr %i.fq, align 1, !tbaa !46
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i129
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr nonnull align 1 %i.fj, i64 %i.fm, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge.i.i129
  %i.fs = load i64, ptr %i.f, align 8, !tbaa !48  ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !49
  %i.fu = load ptr, ptr %10, align 8, !tbaa !45
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fs
  store i8 0, ptr %i.fv, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #53
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.fw, ptr %9, align 8, !tbaa !47
  %i.fx = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.fy = load i64, ptr %i.ft, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #53
  store i64 %i.fy, ptr %i.e, align 8, !tbaa !48
  %i.fz = icmp ugt i64 %i.fy, 15
  br i1 %i.fz, label %.noexc.i.i139, label %._crit_edge.i.i.i134

.noexc.i.i139:                                    ; preds = %bb.ap
  %i.ga = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc140 unwind label %bb.be ; 2 uses

.noexc140:                                        ; preds = %.noexc.i.i139
  store ptr %i.ga, ptr %9, align 8, !tbaa !45
  %i.gb = load i64, ptr %i.e, align 8, !tbaa !48
  store i64 %i.gb, ptr %i.fw, align 8, !tbaa !46
  br label %._crit_edge.i.i.i134

._crit_edge.i.i.i134:                             ; preds = %.noexc140, %bb.ap
  %i.gc = phi ptr [ %i.ga, %.noexc140 ], [ %i.fw, %bb.ap ] ; 2 uses
  switch i64 %i.fy, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i135
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i134
  %i.gd = load i8, ptr %i.fx, align 1, !tbaa !46
  store i8 %i.gd, ptr %i.gc, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i135

bb.ar:                                            ; preds = %._crit_edge.i.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gc, ptr align 1 %i.fx, i64 %i.fy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i135: ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i134
  %i.ge = load i64, ptr %i.e, align 8, !tbaa !48  ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !49
  %i.gg = load ptr, ptr %9, align 8, !tbaa !45
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ge
  store i8 0, ptr %i.gh, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #53
  invoke void @_ZN7testing8internal8FilePath9NormalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit143 unwind label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i135
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.fw
  br i1 %i.gk, label %.body141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136: ; preds = %bb.as
  %i.gl = load i64, ptr %i.fw, align 8, !tbaa !46
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #54
  br label %.body141

_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i135
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #53
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.gn, ptr %12, align 8, !tbaa !47
  %i.go = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #53
  store i64 %i.go, ptr %i.d, align 8, !tbaa !48
  %i.gp = icmp ugt i64 %i.go, 15
  br i1 %i.gp, label %.noexc.i145, label %._crit_edge.i.i144

.noexc.i145:                                      ; preds = %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit143
  %i.gq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc146 unwind label %bb.bf ; 2 uses

.noexc146:                                        ; preds = %.noexc.i145
  store ptr %i.gq, ptr %12, align 8, !tbaa !45
  %i.gr = load i64, ptr %i.d, align 8, !tbaa !48
  store i64 %i.gr, ptr %i.gn, align 8, !tbaa !46
  br label %._crit_edge.i.i144

._crit_edge.i.i144:                               ; preds = %.noexc146, %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit143
  %i.gs = phi ptr [ %i.gq, %.noexc146 ], [ %i.gn, %_ZN7testing8internal8FilePathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit143 ] ; 2 uses
  switch i64 %i.go, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %bb.av
  ]

bb.at:                                            ; preds = %._crit_edge.i.i144
  %i.gt = load i8, ptr %i.ds, align 1, !tbaa !46
  store i8 %i.gt, ptr %i.gs, align 1, !tbaa !46
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge.i.i144
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr nonnull align 1 %i.ds, i64 %i.go, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %._crit_edge.i.i144
  %i.gu = load i64, ptr %i.d, align 8, !tbaa !48  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !49
  %i.gw = load ptr, ptr %12, align 8, !tbaa !45
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gu
  store i8 0, ptr %i.gx, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #53
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  store ptr %i.gy, ptr %11, align 8, !tbaa !47
  %i.gz = load ptr, ptr %12, align 8, !tbaa !45   ; 2 uses
  %i.ha = load i64, ptr %i.gv, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #53
  store i64 %i.ha, ptr %i.c, align 8, !tbaa !48
  %i.hb = icmp ugt i64 %i.ha, 15
  br i1 %i.hb, label %.noexc.i.i153, label %._crit_edge.i.i.i148

.noexc.i.i153:                                    ; preds = %bb.av
  %i.hc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc154 unwind label %bb.bg ; 2 uses

.noexc154:                                        ; preds = %.noexc.i.i153
  store ptr %i.hc, ptr %11, align 8, !tbaa !45
  %i.hd = load i64, ptr %i.c, align 8, !tbaa !48
  store i64 %i.hd, ptr %i.gy, align 8, !tbaa !46
  br label %._crit_edge.i.i.i148

._crit_edge.i.i.i148:                             ; preds = %.noexc154, %bb.av
  %i.he = phi ptr [ %i.hc, %.noexc154 ], [ %i.gy, %bb.av ] ; 2 uses
  switch i64 %i.ha, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i149
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i148
  %i.hf = load i8, ptr %i.gz, align 1, !tbaa !46
  store i8 %i.hf, ptr %i.he, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i149
end_hunk_2
begin_hunk_3_@_ZN7testing8internal15UnitTestOptions17FilterMatchesTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:bb.a
  %.not.i33 = icmp eq ptr %i.cx, null
  br i1 %.not.i33, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i32
  store ptr %i.cx, ptr %7, align 8, !tbaa !45
  store i64 %i.di, ptr %i.cm, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i32, %.thread.i37
  store ptr %i.cm, ptr %7, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34, %bb.y, %bb.z
  %i.dk = phi ptr [ %i.cx, %bb.y ], [ %i.cm, %bb.z ], [ %.pre.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34 ]
  store i64 0, ptr %i.cu, align 8, !tbaa !49
  store i8 0, ptr %i.dk, align 1, !tbaa !46
  %i.dl = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cm
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38
  %i.dn = load i64, ptr %i.cm, align 8, !tbaa !46
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  %i.dp = load i64, ptr %i.at, align 8, !tbaa !49
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.dr = phi ptr [ %5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %i.ds = phi i64 [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %i.dt = phi ptr [ @.str.12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ @_ZN7testingL16kUniversalFilterE, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %i.du = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %i.dv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 noundef 0, i64 noundef %i.ds, ptr noundef nonnull %i.dt, i64 noundef %i.du)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19 unwind label %bb.i ; 0 uses

bb.aa:                                            ; preds = %.noexc.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  br label %bb.ae

bb.ab:                                            ; preds = %.noexc.i29
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  br label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19: ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.dy = load ptr, ptr %4, align 8, !tbaa !45    ; 3 uses
  %i.dz = load ptr, ptr %2, align 8, !tbaa !45    ; 4 uses
  %i.ea = call noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions20PatternMatchesStringEPKcS3_(ptr noundef readonly %i.dy, ptr noundef %i.dz)
  br i1 %i.ea, label %.loopexit, label %.lr.ph.i

bb.ac:                                            ; preds = %.lr.ph.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ed, i64 1 ; 2 uses
  %i.ec = call noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions20PatternMatchesStringEPKcS3_(ptr noundef nonnull %i.eb, ptr noundef %i.dz)
  br i1 %i.ec, label %.loopexit, label %.lr.ph.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19, %bb.ac
  %.09.i = phi ptr [ %i.eb, %bb.ac ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19 ]
  %i.ed = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.09.i, i32 noundef 58) #55 ; 2 uses
  %.not.i44 = icmp eq ptr %i.ed, null
  br i1 %.not.i44, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.loopexit71, label %bb.ac

.loopexit:                                        ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19
  %i.ee = load ptr, ptr %5, align 8, !tbaa !45    ; 5 uses
  %i.ef = call noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions20PatternMatchesStringEPKcS3_(ptr noundef readonly %i.ee, ptr noundef %i.dz)
  br i1 %i.ef, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %.lr.ph.i45

bb.ad:                                            ; preds = %.lr.ph.i45
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ei, i64 1 ; 2 uses
  %i.eh = call noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions20PatternMatchesStringEPKcS3_(ptr noundef nonnull %i.eg, ptr noundef %i.dz)
  br i1 %i.eh, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %.lr.ph.i45, !llvm.loop !2

.lr.ph.i45:                                       ; preds = %.loopexit, %bb.ad
  %.09.i46 = phi ptr [ %i.eg, %bb.ad ], [ %i.ee, %.loopexit ]
  %i.ei = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.09.i46, i32 noundef 58) #55 ; 2 uses
  %.not.i47 = icmp eq ptr %i.ei, null             ; 3 uses
  br i1 %.not.i47, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %bb.ad

_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.loopexit71: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %5, align 8, !tbaa !45
  br label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit

_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %bb.ad, %.lr.ph.i45, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.loopexit71, %.loopexit
  %i.ej = phi ptr [ %.pre, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.loopexit71 ], [ %i.ee, %.loopexit ], [ %i.ee, %.lr.ph.i45 ], [ %i.ee, %bb.ad ] ; 2 uses
  %i.ek = phi i1 [ false, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit.loopexit71 ], [ false, %.loopexit ], [ %.not.i47, %.lr.ph.i45 ], [ %.not.i47, %bb.ad ]
  %i.el = icmp eq ptr %i.ej, %i.au
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %i.em = load i64, ptr %i.au, align 8, !tbaa !46
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #54
  %.pre72 = load ptr, ptr %4, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  %i.eo = phi ptr [ %.pre72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.dy, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %i.ep = icmp eq ptr %i.eo, %i.as
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.eq = load i64, ptr %i.as, align 8, !tbaa !46
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.es = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.aa
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.eu = load i64, ptr %i.aa, align 8, !tbaa !46
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret i1 %i.ek

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.i ], [ %i.dx, %bb.ab ], [ %i.dw, %bb.aa ]
  %i.ew = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.au
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.ae
  %i.ey = load i64, ptr %i.au, align 8, !tbaa !46
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %i.fa = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.as
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.fc = load i64, ptr %i.as, align 8, !tbaa !46
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.fe = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.aa
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.fg = load i64, ptr %i.aa, align 8, !tbaa !46
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterC2EPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 12), (24, 32)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !164
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !163
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = tail call noundef ptr @_ZN7testing8internal12UnitTestImpl31GetGlobalTestPartResultReporterEv(ptr noundef nonnull align 8 dereferenceable(497) %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !165
  tail call void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(497) %i.f, ptr noundef nonnull %0)
  br label %bb.h

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !165
  %i.p = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  store ptr %0, ptr %i.p, align 8, !tbaa !94
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterC2ENS0_13InterceptModeEPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 12), (24, 32)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.b, align 8, !tbaa !164
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7testing8internal12UnitTestImpl31GetGlobalTestPartResultReporterEv(ptr noundef nonnull align 8 dereferenceable(497) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #53 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.336, i32 noundef 1940)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.337, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.338, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  resume { ptr, i32 } %i.f

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.g, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !166
  store i8 0, ptr %i.i, align 8, !tbaa !84
  %i.l = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #53 ; 2 uses
  %.not.i.i1 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i1, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.336, i32 noundef 1952)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.339, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2: ; preds = %.noexc.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.338, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.l)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2, %.noexc.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %.body.i

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.p, %bb.g ]
  %i.r = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.r) #59
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, %bb.f
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(497) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #53 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.336, i32 noundef 1940)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.337, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.338, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %i.f

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.g, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.j, align 8, !tbaa !166
  store i8 0, ptr %i.i, align 8, !tbaa !84
  %i.k = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #53 ; 2 uses
  %.not.i.i2 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i2, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.336, i32 noundef 1952)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.339, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3: ; preds = %.noexc.i
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.338, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.k)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3, %.noexc.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %.body.i

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.o, %bb.g ]
  %i.q = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.q) #59
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7testing8internal12UnitTestImpl41GetTestPartResultReporterForCurrentThreadEv(ptr noundef nonnull align 8 dereferenceable(497) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(497) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  store ptr %1, ptr %i.b, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !163
  %i.i = icmp eq i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !165  ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(497) %i.f, ptr noundef %i.k)
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.m = invoke noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE.exit unwind label %bb.j

_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE.exit: ; preds = %bb.h
  store ptr %i.k, ptr %i.m, align 8, !tbaa !94
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
  tail call void @__clang_call_terminate(ptr %i.o) #59
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #53 ; 0 uses
  tail call void @_ZSt9terminatev() #59
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #54
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporter20ReportTestPartResultERKNS_14TestPartResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !168
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.h, ptr %i.c, align 8, !tbaa !167
  br label %_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE.exit

_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing19TestPartResultArray6AppendERKNS_14TestPartResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !167
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.f, ptr %i.a, align 8, !tbaa !167
  br label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #3 {
bb.a:
  ret ptr @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal13HasOneFailureEPKcS2_S2_RKNS_19TestPartResultArrayENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %14 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %15 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %16 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %17 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %18 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %19 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %21 = alloca %"class.testing::Message", align 8 ; 15 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #53
  %.not99 = icmp eq i32 %5, 2                     ; 3 uses
  %i.b = select i1 %.not99, ptr @.str.40, ptr @.str.41
  %i.c = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.c, ptr %20, align 8, !tbaa !47
  %i.d = select i1 %.not99, i64 15, i64 19        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.d, ptr %i.a, align 8, !tbaa !48
  br i1 %.not99, label %._crit_edge.i.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %20, align 8, !tbaa !45
  %i.f = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.f, ptr %i.c, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %.noexc.i
  %i.g = phi ptr [ %i.e, %.noexc.i ], [ %i.c, %bb.a ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.g, ptr noundef nonnull align 1 dereferenceable(15) %i.b, i64 %i.d, i1 false)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !49
  %i.j = load ptr, ptr %20, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #53
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !167
  %i.n = load ptr, ptr %4, align 8, !tbaa !169    ; 5 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 112
  %i.s = and i64 %i.r, 4294967295
  %.not = icmp eq i64 %i.s, 1
  br i1 %.not, label %_ZNK7testing19TestPartResultArray17GetTestPartResultEi.exit56, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %21, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #53
  %i.v = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i32 1, ptr %i.v, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %19, i64 8
end_hunk_3
begin_hunk_4_@_ZN7testing8internal14GTestFlagSaverC2Ev:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.o, align 8, !tbaa !49
  store i8 0, ptr %i.n, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.r, align 8, !tbaa !49
  store i8 0, ptr %i.q, align 8, !tbaa !46
  %i.s = load i8, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !tbaa !95, !range !96, !noundef !97
  store i8 %i.s, ptr %0, align 8, !tbaa !305
  %i.t = load i8, ptr @_ZN7testing28FLAGS_gtest_break_on_failureE, align 1, !tbaa !95, !range !96, !noundef !97
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !306
  %i.v = load i8, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !95, !range !96, !noundef !97
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.w, align 2, !tbaa !307
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing17FLAGS_gtest_colorB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.x = load i8, ptr @_ZN7testing31FLAGS_gtest_death_test_use_forkE, align 1, !tbaa !95, !range !96, !noundef !97
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.x, ptr %i.y, align 8, !tbaa !308
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_filterB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3
  %i.z = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !95, !range !96, !noundef !97
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.z, ptr %i.aa, align 8, !tbaa !309
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_outputB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4
  %i.ab = load i8, ptr @_ZN7testing22FLAGS_gtest_print_timeE, align 1, !tbaa !95, !range !96, !noundef !97
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.ab, ptr %i.ac, align 8, !tbaa !310
  %i.ad = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !311
  %i.af = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !312
  %i.ah = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !tbaa !95, !range !96, !noundef !97
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %i.ah, ptr %i.ai, align 4, !tbaa !313
  %i.aj = load i32, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !314
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit6 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5
  %i.al = load i8, ptr @_ZN7testing28FLAGS_gtest_throw_on_failureE, align 1, !tbaa !95, !range !96, !noundef !97
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.al, ptr %i.am, align 8, !tbaa !315
  ret void

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !45  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.q
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !46
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !45  ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.n
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i64, ptr %i.n, align 8, !tbaa !46
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !45  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.k
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !46
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !45  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.h
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !46
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !45  ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.e
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !46
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.b
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !46
  %i.bl = add i64 %i.bk, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing4TestD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing4TestE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal10scoped_ptrINS0_14GTestFlagSaverEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal14GTestFlagSaverD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %i.b) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 248) #54
  br label %_ZN7testing8internal10scoped_ptrINS0_14GTestFlagSaverEED2Ev.exit

_ZN7testing8internal10scoped_ptrINS0_14GTestFlagSaverEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN7testing4TestD0Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(16) %0) unnamed_addr #27 align 2 {
bb.a:
  tail call void @llvm.trap() #59
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #28

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7testing4Test5SetUpEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7testing4Test8TearDownEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Test14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::TestProperty", align 8 ; 10 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !73

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !73 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.r, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(497) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !46
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #54
  br label %_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %common.resume

_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::TestProperty", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  invoke void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(497) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !46
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.i = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN7testing12TestPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !46
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #54
  br label %_ZN7testing12TestPropertyD2Ev.exit

_ZN7testing12TestPropertyD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Test14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.b = load ptr, ptr %3, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.d, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.c, ptr %i.f, align 8, !tbaa !59
  %i.g = sext i32 %1 to i64
  %i.h = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %2, i64 noundef %i.g)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.j = load ptr, ptr %3, align 8, !tbaa !52, !noalias !749
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %i.j)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.k

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %bb.c
  %i.k = load ptr, ptr %5, align 8, !tbaa !45     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !47
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.414) #56
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.n, ptr %i.a, align 8, !tbaa !48
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.l    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i
  store ptr %i.p, ptr %4, align 8, !tbaa !45
  %i.q = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.q, ptr %i.l, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc8, %bb.e
  %i.r = phi ptr [ %i.p, %.noexc8 ], [ %i.l, %bb.e ] ; 2 uses
  switch i64 %i.n, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.k, align 1, !tbaa !46
  store i8 %i.s, ptr %i.r, align 1, !tbaa !46
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.k, i64 %i.n, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !49
  %i.v = load ptr, ptr %4, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  invoke void @_ZN7testing4Test14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.z = load i64, ptr %i.l, align 8, !tbaa !46
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ab = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.ag = load ptr, ptr %3, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  ret void

bb.k:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.l:                                             ; preds = %.noexc.i, %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.m:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.m
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !46
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.l
  %.pn = phi { ptr, i32 } [ %i.al, %bb.l ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.am, %bb.m ] ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.au = load i64, ptr %i.as, align 8, !tbaa !46
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %.body

.body:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %i.i, %bb.b ]
  %i.aw = load ptr, ptr %3, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i18, label %_ZN7testing7MessageD2Ev.exit19, label %bb.n

bb.n:                                             ; preds = %.body
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !57
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit19

_ZN7testing7MessageD2Ev.exit19:                   ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !73

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !73 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !49
  store i8 0, ptr %i.f, align 8, !tbaa !46
  invoke void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i32 noundef %0, ptr noundef null, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.h = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.f, align 8, !tbaa !46
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret void

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.o = load i64, ptr %i.f, align 8, !tbaa !46
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test19HasSameFixtureClassEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %1 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %5 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %6 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %13 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %14 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %15 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %16 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %17 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %18 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %19 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %20 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %21 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %22 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %23 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %24 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %25 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %26 = alloca %"class.testing::Message", align 8 ; 20 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::Message", align 8 ; 20 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit86, %_ZN7testing7MessageD2Ev.exit146, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn33.pn.pn, %_ZN7testing7MessageD2Ev.exit86 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit146 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !316
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !204
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !317  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !180  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !317  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 5 uses
  %.not = icmp eq ptr %i.s, %i.m                  ; 2 uses
  br i1 %.not, label %bb.ce, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.v = icmp eq ptr %i.m, @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E ; 3 uses
  %i.w = icmp eq ptr %i.s, @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E
  %or.cond = or i1 %i.v, %i.w
  br i1 %or.cond, label %bb.g, label %bb.as

bb.g:                                             ; preds = %bb.f
  %i.x = select i1 %i.v, ptr %i.o, ptr %i.u       ; 3 uses
  %i.y = select i1 %i.v, ptr %i.u, ptr %i.o       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #53
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
  %i.z = load ptr, ptr %26, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #53
  %i.ab = getelementptr inbounds nuw i8, ptr %25, i64 32
  store i32 1, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %25, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %25, i64 40
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !59
  %i.ae = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %25, ptr noundef nonnull @.str.89, i64 noundef 63)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %25) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #53
  br label %.body

bb.i:                                             ; preds = %bb.g
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %25) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #53
  %i.ag = load ptr, ptr %26, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #53
  %i.ai = getelementptr inbounds nuw i8, ptr %24, i64 32
  store i32 1, ptr %i.ai, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %24, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %24, i64 40
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !59
  %i.al = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %24, ptr noundef nonnull @.str.90, i64 noundef 58)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %24) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #53
  br label %.body

bb.k:                                             ; preds = %bb.i
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %24) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #53
  %i.an = load ptr, ptr %26, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #53
  %i.ap = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i32 1, ptr %i.ap, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %23, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %23, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %23, i64 40
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !59
  %i.as = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %23, ptr noundef nonnull @.str.91, i64 noundef 23)
          to label %bb.m unwind label %bb.l       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %23) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #53
  br label %.body

bb.m:                                             ; preds = %bb.k
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %23) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #53
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !45  ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  %i.aw = load ptr, ptr %26, align 8, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  br i1 %i.av, label %bb.n, label %_ZN4llvh9StringRefC2EPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.83, i64 noundef 6)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.an ; 0 uses

_ZN4llvh9StringRefC2EPKc.exit.i.i.i:              ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #53
  %i.az = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i32 1, ptr %i.az, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %22, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !59
  %i.bc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #55 ; 2 uses
  %.not.i.i45 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i45, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i.i.i
  %i.bd = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull %i.au, i64 noundef %i.bc)
          to label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %22) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #53
  br label %.body

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i: ; preds = %bb.o, %_ZN4llvh9StringRefC2EPKc.exit.i.i.i
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %22) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #53
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i, %bb.n
  %i.bf = load ptr, ptr %26, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #53
  %i.bh = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i32 1, ptr %i.bh, align 8, !tbaa !55
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %21, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %21, i64 40
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !59
  %i.bk = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef nonnull @.str.68, i64 noundef 2)
          to label %bb.r unwind label %bb.q       ; 0 uses

bb.q:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %21) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #53
  br label %.body

bb.r:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %21) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #53
  %i.bm = load ptr, ptr %26, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #53
  %i.bo = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i32 1, ptr %i.bo, align 8, !tbaa !55
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %20, align 8, !tbaa !57
  %i.bq = getelementptr inbounds nuw i8, ptr %20, i64 40
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !59
  %i.br = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull @.str.92, i64 noundef 5)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %20) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #53
  br label %.body

bb.t:                                             ; preds = %bb.r
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %20) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #53
  %i.bt = icmp eq ptr %i.y, null
end_hunk_4
begin_hunk_5_@_ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %i.t, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %4, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.s, ptr %i.v, align 8, !tbaa !59
  %i.w = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull @.str.191, i64 noundef 1)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %.body

bb.f:                                             ; preds = %bb.d
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.y = load i32, ptr %1, align 8, !tbaa !175    ; 2 uses
  %i.z = icmp ult i32 %i.y, 3
  br i1 %i.z, label %switch.lookup, label %_ZN4llvh9StringRefC2EPKc.exit.i.i.i

switch.lookup:                                    ; preds = %bb.f
  %i.aa = zext nneg i32 %i.y to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE, i64 %i.aa
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4llvh9StringRefC2EPKc.exit.i.i.i

_ZN4llvh9StringRefC2EPKc.exit.i.i.i:              ; preds = %bb.f, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.355, %bb.f ] ; 2 uses
  %i.ab = load ptr, ptr %6, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.ad, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %3, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !59
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #55 ; 2 uses
  %.not.i.i13 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i.i.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %.0.i, i64 noundef %i.ag)
          to label %bb.h unwind label %.body14    ; 0 uses

bb.h:                                             ; preds = %bb.g, %_ZN4llvh9StringRefC2EPKc.exit.i.i.i
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = load ptr, ptr %6, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.i, label %_ZN4llvh9StringRefC2EPKc.exit.i.i.i16

bb.i:                                             ; preds = %bb.h
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.83, i64 noundef 6)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit22 unwind label %bb.n ; 0 uses

_ZN4llvh9StringRefC2EPKc.exit.i.i.i16:            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.ao, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %2, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !59
  %i.ar = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #55 ; 2 uses
  %.not.i.i17 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i17, label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i18, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i.i.i16
  %i.as = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.ar)
          to label %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i18 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %.body

_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i18: ; preds = %bb.j, %_ZN4llvh9StringRefC2EPKc.exit.i.i.i16
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit22

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit22:       ; preds = %_ZN10llvm_gtestlsERSoRKNS_14RawStreamProxyIPKcEE.exit.i18, %bb.i
  %i.au = load ptr, ptr %6, align 8, !tbaa !52, !noalias !752
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.au)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.n

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit22
  %i.av = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  %i.ba = load ptr, ptr %6, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(128) %i.ba) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  ret void

bb.m:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

.body14:                                          ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %.body

bb.n:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit22, %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body14, %bb.k, %bb.n, %bb.c, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.q, %bb.c ], [ %i.at, %bb.k ], [ %i.bf, %.body14 ], [ %i.bg, %bb.n ] ; 2 uses
  %i.bh = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !46
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  %i.bm = load ptr, ptr %6, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i27, label %_ZN7testing7MessageD2Ev.exit28, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(128) %i.bm) #53, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit28

_ZN7testing7MessageD2Ev.exit28:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #26

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Test3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7testing4Test19HasSameFixtureClassEv()
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %common.resume, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 424 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !57
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.j, align 8, !tbaa !57
  store ptr %i.j, ptr %i.g, align 8, !tbaa !154
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.f
  %i.k = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.f ], [ %.pre, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.l = phi ptr [ %i.j, %bb.f ], [ %i.h, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 17, i64 0, ptr noundef nonnull @.str.104)
  %i.o = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.g, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !72

bb.g:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.i unwind label %common.resume, !inline_history !3

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

common.resume:                                    ; preds = %bb.d, %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53
  resume { ptr, i32 } %i.s

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.i, %bb.g, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !180  ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 280
  %i.y = select i1 %.not.i.i8, ptr %i.x, ptr %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !300 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !300 ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not7.i.i.i, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = ptrtoaddr ptr %i.aa to i64
  %i.af = add i64 %i.ad, -112
  %i.ag = sub i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = udiv i64 %i.ag, 112
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ai, 576460752303423480      ; 3 uses
  %i.aj = mul i64 %n.vec, 112
  %i.ak = getelementptr i8, ptr %i.aa, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %i.al = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.al
  %i.am = getelementptr i8, ptr %i.aa, i64 %i.al
  %next.gep19 = getelementptr i8, ptr %i.am, i64 112
  %i.an = getelementptr i8, ptr %i.aa, i64 %i.al
  %next.gep20 = getelementptr i8, ptr %i.an, i64 224
  %i.ao = getelementptr i8, ptr %i.aa, i64 %i.al
  %next.gep21 = getelementptr i8, ptr %i.ao, i64 336
  %i.ap = getelementptr i8, ptr %i.aa, i64 %i.al
  %next.gep22 = getelementptr i8, ptr %i.ap, i64 448
  %i.aq = getelementptr i8, ptr %i.aa, i64 %i.al
  %next.gep23 = getelementptr i8, ptr %i.aq, i64 560
  %i.ar = getelementptr i8, ptr %i.aa, i64 %i.al
  %next.gep24 = getelementptr i8, ptr %i.ar, i64 672
  %i.as = getelementptr i8, ptr %i.aa, i64 %i.al
  %next.gep25 = getelementptr i8, ptr %i.as, i64 784
  %i.at = load i32, ptr %next.gep, align 8, !tbaa !175
  %i.au = load i32, ptr %next.gep19, align 8, !tbaa !175
  %i.av = load i32, ptr %next.gep20, align 8, !tbaa !175
  %i.aw = load i32, ptr %next.gep21, align 8, !tbaa !175
  %i.ax = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 1
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 2
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 3
  %i.bb = load i32, ptr %next.gep22, align 8, !tbaa !175
  %i.bc = load i32, ptr %next.gep23, align 8, !tbaa !175
  %i.bd = load i32, ptr %next.gep24, align 8, !tbaa !175
  %i.be = load i32, ptr %next.gep25, align 8, !tbaa !175
  %i.bf = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 1
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 2
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.be, i64 3
  %i.bj = icmp eq <4 x i32> %i.ba, splat (i32 2)
  %i.bk = icmp eq <4 x i32> %i.bi, splat (i32 2)
  %i.bl = zext <4 x i1> %i.bj to <4 x i32>
  %i.bm = zext <4 x i1> %i.bk to <4 x i32>
  %i.bn = add <4 x i32> %vec.phi, %i.bl           ; 2 uses
  %i.bo = add <4 x i32> %vec.phi18, %i.bm         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !753

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bo, %i.bn
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i.preheader26

.lr.ph.i.i.i.preheader26:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bq, %middle.block ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader26, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader26 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i.i.i.preheader26 ] ; 2 uses
  %i.br = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !175
  %i.bs = icmp eq i32 %i.br, 2
  %i.bt = zext i1 %i.bs to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.bt ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, %i.ac
  br i1 %.not.i.i1.i, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i, !llvm.loop !754

_ZN7testing4Test15HasFatalFailureEv.exit:         ; preds = %.lr.ph.i.i.i, %middle.block
  %spec.select.i.i.i.lcssa = phi i32 [ %i.bq, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.not = icmp eq i32 %spec.select.i.i.i.lcssa, 0
  br i1 %.not, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %bb.k

_ZN7testing4Test15HasFatalFailureEv.exit.thread:  ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i, %_ZN7testing4Test15HasFatalFailureEv.exit
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !154 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.j, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge

_ZN7testing4Test15HasFatalFailureEv.exit.thread._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge: ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.thread
  %.pre12 = load ptr, ptr %i.bv, align 8, !tbaa !57
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9

bb.j:                                             ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.thread
  %i.bx = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.bx, align 8, !tbaa !57
  store ptr %i.bx, ptr %i.g, align 8, !tbaa !154
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9: ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.thread._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge, %bb.j
  %i.by = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.j ], [ %.pre12, %_ZN7testing4Test15HasFatalFailureEv.exit.thread._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge ]
  %i.bz = phi ptr [ %i.bx, %bb.j ], [ %i.bv, %_ZN7testing4Test15HasFatalFailureEv.exit.thread._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 33, i64 0, ptr noundef nonnull @.str.105)
  br label %bb.k

bb.k:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9, %_ZN7testing4Test15HasFatalFailureEv.exit
  %i.cc = load ptr, ptr %i.g, align 8, !tbaa !154 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.l, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10_crit_edge: ; preds = %bb.k
  %.pre13 = load ptr, ptr %i.cc, align 8, !tbaa !57
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10

bb.l:                                             ; preds = %bb.k
  %i.ce = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.ce, align 8, !tbaa !57
  store ptr %i.ce, ptr %i.g, align 8, !tbaa !154
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10_crit_edge, %bb.l
  %i.cf = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.l ], [ %.pre13, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10_crit_edge ]
  %i.cg = phi ptr [ %i.ce, %bb.l ], [ %i.cc, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10_crit_edge ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 25, i64 0, ptr noundef nonnull @.str.106)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.w, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.h = load i8, ptr %i.g, align 8, !tbaa !319, !range !96, !noundef !97
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.x

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !97
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !755

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 2 uses
  %i.u = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #53
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.s) #53 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ac unwind label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #53
  %i.y = icmp eq i32 %i.t, %i.x
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.s) #53 ; 2 uses
  br i1 %i.y, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #53
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ad, ptr noundef %3)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !46
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aj = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.r
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.s:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.t:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.t
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !46
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.ap, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.u:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.v:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !46
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.u
  %.pn33 = phi { ptr, i32 } [ %i.av, %bb.u ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.aw, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.w:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.x:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.be = getelementptr i8, ptr %i.bd, i64 %1
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %i.bg = load ptr, ptr %i.bf, align 8, !nosanitize !97
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bh = inttoptr i64 %1 to ptr
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bi = phi ptr [ %i.bg, %bb.y ], [ %i.bh, %bb.z ]
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.aa
  ret void

bb.ab:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #59
  unreachable

bb.ac:                                            ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.k = select i1 %.not.i, ptr %i.j, ptr %i.i    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !300  ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !300  ; 3 uses
  %.not7.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult15HasFatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = ptrtoaddr ptr %i.m to i64
  %i.r = add i64 %i.p, -112
  %i.s = sub i64 %i.r, %i.q                       ; 2 uses
  %i.t = udiv i64 %i.s, 112
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.u, 576460752303423480       ; 3 uses
  %i.v = mul i64 %n.vec, 112
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.x = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.x
  %i.y = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep4 = getelementptr i8, ptr %i.y, i64 112
  %i.z = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep5 = getelementptr i8, ptr %i.z, i64 224
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep6 = getelementptr i8, ptr %i.aa, i64 336
  %i.ab = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep7 = getelementptr i8, ptr %i.ab, i64 448
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep8 = getelementptr i8, ptr %i.ac, i64 560
  %i.ad = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep9 = getelementptr i8, ptr %i.ad, i64 672
  %i.ae = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep10 = getelementptr i8, ptr %i.ae, i64 784
  %i.af = load i32, ptr %next.gep, align 8, !tbaa !175
  %i.ag = load i32, ptr %next.gep4, align 8, !tbaa !175
  %i.ah = load i32, ptr %next.gep5, align 8, !tbaa !175
  %i.ai = load i32, ptr %next.gep6, align 8, !tbaa !175
  %i.aj = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 1
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 3
  %i.an = load i32, ptr %next.gep7, align 8, !tbaa !175
  %i.ao = load i32, ptr %next.gep8, align 8, !tbaa !175
  %i.ap = load i32, ptr %next.gep9, align 8, !tbaa !175
  %i.aq = load i32, ptr %next.gep10, align 8, !tbaa !175
  %i.ar = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 1
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 2
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 3
  %i.av = icmp eq <4 x i32> %i.am, splat (i32 2)
  %i.aw = icmp eq <4 x i32> %i.au, splat (i32 2)
  %i.ax = zext <4 x i1> %i.av to <4 x i32>
  %i.ay = zext <4 x i1> %i.aw to <4 x i32>
  %i.az = add <4 x i32> %vec.phi, %i.ax           ; 2 uses
  %i.ba = add <4 x i32> %vec.phi3, %i.ay          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !756

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader11

.lr.ph.i.i.preheader11:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bc, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader11, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader11 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i.i.preheader11 ] ; 2 uses
  %i.bd = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !175
  %i.be = icmp eq i32 %i.bd, 2
  %i.bf = zext i1 %i.be to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bf ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bg, %i.o
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !757

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.bc, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bh = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult15HasFatalFailureEv.exit

_ZNK7testing10TestResult15HasFatalFailureEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal15GetUnitTestImplEv.exit ], [ %i.bh, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test18HasNonfatalFailureEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.k = select i1 %.not.i, ptr %i.j, ptr %i.i    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !300  ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !300  ; 3 uses
  %.not7.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not7.i.i, label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = ptrtoaddr ptr %i.m to i64
  %i.r = add i64 %i.p, -112
  %i.s = sub i64 %i.r, %i.q                       ; 2 uses
  %i.t = udiv i64 %i.s, 112
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.u, 576460752303423480       ; 3 uses
  %i.v = mul i64 %n.vec, 112
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.x = mul i64 %index, 112                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.x
  %i.y = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep4 = getelementptr i8, ptr %i.y, i64 112
  %i.z = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep5 = getelementptr i8, ptr %i.z, i64 224
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep6 = getelementptr i8, ptr %i.aa, i64 336
  %i.ab = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep7 = getelementptr i8, ptr %i.ab, i64 448
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep8 = getelementptr i8, ptr %i.ac, i64 560
  %i.ad = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep9 = getelementptr i8, ptr %i.ad, i64 672
  %i.ae = getelementptr i8, ptr %i.m, i64 %i.x
  %next.gep10 = getelementptr i8, ptr %i.ae, i64 784
  %i.af = load i32, ptr %next.gep, align 8, !tbaa !175
  %i.ag = load i32, ptr %next.gep4, align 8, !tbaa !175
  %i.ah = load i32, ptr %next.gep5, align 8, !tbaa !175
  %i.ai = load i32, ptr %next.gep6, align 8, !tbaa !175
  %i.aj = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 1
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 3
  %i.an = load i32, ptr %next.gep7, align 8, !tbaa !175
  %i.ao = load i32, ptr %next.gep8, align 8, !tbaa !175
  %i.ap = load i32, ptr %next.gep9, align 8, !tbaa !175
  %i.aq = load i32, ptr %next.gep10, align 8, !tbaa !175
  %i.ar = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 1
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 2
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 3
  %i.av = icmp eq <4 x i32> %i.am, splat (i32 1)
  %i.aw = icmp eq <4 x i32> %i.au, splat (i32 1)
  %i.ax = zext <4 x i1> %i.av to <4 x i32>
  %i.ay = zext <4 x i1> %i.aw to <4 x i32>
  %i.az = add <4 x i32> %vec.phi, %i.ax           ; 2 uses
  %i.ba = add <4 x i32> %vec.phi3, %i.ay          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !758

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i.preheader11

.lr.ph.i.i.preheader11:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bc, %middle.block ]
  %.sroa.04.08.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader11, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader11 ]
  %.sroa.04.08.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.sroa.04.08.i.i.ph, %.lr.ph.i.i.preheader11 ] ; 2 uses
  %i.bd = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !175
  %i.be = icmp eq i32 %i.bd, 1
  %i.bf = zext i1 %i.be to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bf ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bg, %i.o
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !759

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.bc, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bh = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit

_ZNK7testing10TestResult18HasNonfatalFailureEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal15GetUnitTestImplEv.exit ], [ %i.bh, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKcSA_NS_8internal12CodeLocationEPKvPNSB_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !47
  %i.g = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #53
  store i64 %i.i, ptr %i.e, align 8, !tbaa !48
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !45
  %i.l = load i64, ptr %i.e, align 8, !tbaa !48
  store i64 %i.l, ptr %i.f, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !46
  store i8 %i.n, ptr %i.m, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !49
  %i.q = load ptr, ptr %0, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #53
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !47
  %i.u = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #53
  store i64 %i.w, ptr %i.d, align 8, !tbaa !48
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i44, label %._crit_edge.i.i43

.noexc.i44:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %.noexc.i44
  store ptr %i.y, ptr %i.s, align 8, !tbaa !45
  %i.z = load i64, ptr %i.d, align 8, !tbaa !48
  store i64 %i.z, ptr %i.t, align 8, !tbaa !46
  br label %._crit_edge.i.i43

._crit_edge.i.i43:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i43
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !46
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !46
  br label %bb.f

end_hunk_5
begin_hunk_6_@_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE:bb.a

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #53
  store i64 %i.g, ptr %i.c, align 8, !tbaa !48
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc18 unwind label %bb.t   ; 2 uses

.noexc18:                                         ; preds = %.noexc.i
  store ptr %i.i, ptr %9, align 8, !tbaa !45
  %i.j = load i64, ptr %i.c, align 8, !tbaa !48
  store i64 %i.j, ptr %i.e, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc18, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc18 ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %0, align 1, !tbaa !46
  store i8 %i.l, ptr %i.k, align 1, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %0, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = load i64, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !49
  %i.o = load ptr, ptr %9, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #53
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.q, ptr %10, align 8, !tbaa !47
  %i.r = icmp eq ptr %1, null
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.414) #56
          to label %.noexc21 unwind label %bb.u

.noexc21:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #53
  store i64 %i.s, ptr %i.b, align 8, !tbaa !48
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i20, label %._crit_edge.i.i19

.noexc.i20:                                       ; preds = %bb.h
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc22 unwind label %bb.u   ; 2 uses

.noexc22:                                         ; preds = %.noexc.i20
  store ptr %i.u, ptr %10, align 8, !tbaa !45
  %i.v = load i64, ptr %i.b, align 8, !tbaa !48
  store i64 %i.v, ptr %i.q, align 8, !tbaa !46
  br label %._crit_edge.i.i19

._crit_edge.i.i19:                                ; preds = %.noexc22, %bb.h
  %i.w = phi ptr [ %i.u, %.noexc22 ], [ %i.q, %bb.h ] ; 2 uses
  switch i64 %i.s, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i19
  %i.x = load i8, ptr %1, align 1, !tbaa !46
  store i8 %i.x, ptr %i.w, align 1, !tbaa !46
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %1, i64 %i.s, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i19
  %i.y = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !49
  %i.aa = load ptr, ptr %10, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ac, ptr %11, align 8, !tbaa !47
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.af, ptr %i.a, align 8, !tbaa !48
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.k
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.v   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i.i
  store ptr %i.ah, ptr %11, align 8, !tbaa !45
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !46
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc24, %bb.k
  %i.aj = phi ptr [ %i.ah, %.noexc24 ], [ %i.ac, %bb.k ] ; 2 uses
  switch i64 %i.af, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !46
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !46
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !49
  %i.an = load ptr, ptr %11, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !321
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !321
  invoke void @_ZN7testing8TestInfoC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKcSA_NS_8internal12CodeLocationEPKvPNSB_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(264) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11, ptr noundef %5, ptr noundef %8)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %11, align 8, !tbaa !45   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ac
  br i1 %i.at, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #54
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aw = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !46
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  %i.ba = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.e
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !46
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  %i.be = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.p, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.r unwind label %bb.s, !inline_history !3

bb.r:                                             ; preds = %bb.q
  %i.bh = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.s ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.p, %bb.r
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  call void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(497) %i.bj, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.d)
  ret ptr %i.d

bb.t:                                             ; preds = %.noexc.i, %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.u:                                             ; preds = %.noexc.i20, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.v:                                             ; preds = %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit30

bb.w:                                             ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %11, align 8, !tbaa !45   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ac
  br i1 %i.bp, label %_ZN7testing8internal12CodeLocationD2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28: ; preds = %bb.w
  %i.bq = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #54
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit30

_ZN7testing8internal12CodeLocationD2Ev.exit30:    ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28 ], [ %i.bn, %bb.w ] ; 2 uses
  %i.bs = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.q
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit30
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !46
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit30 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  %i.bw = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.e
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.by = load i64, ptr %i.e, align 8, !tbaa !46
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 264) #54
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(497) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @_ZN7testing8internal8FilePath13GetCurrentDirEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %4)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal8FilePath3SetERKS1_.exit unwind label %bb.c

_ZN7testing8internal8FilePath3SetERKS1_.exit:     ; preds = %bb.b
  %i.e = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN7testing8internal8FilePathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal8FilePath3SetERKS1_.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !46
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #54
  br label %_ZN7testing8internal8FilePathD2Ev.exit

_ZN7testing8internal8FilePathD2Ev.exit:           ; preds = %_ZN7testing8internal8FilePath3SetERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.j = load i64, ptr %i.a, align 8, !tbaa !49
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN7testing8internal8FilePathD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !46
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #54
  br label %_ZN7testing8internal8FilePathD2Ev.exit11

_ZN7testing8internal8FilePathD2Ev.exit11:         ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %bb.h

bb.d:                                             ; preds = %_ZN7testing8internal8FilePathD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.351, i32 noundef 657)
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.352, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.353, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZN7testing8internal8FilePathD2Ev.exit, %bb.a
  %i.t = load ptr, ptr %3, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !320  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNK7testing8TestInfo10type_paramEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  br label %_ZNK7testing8TestInfo10type_paramEv.exit

_ZNK7testing8TestInfo10type_paramEv.exit:         ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.w, %bb.g ], [ null, %bb.f ]
  %i.x = call noundef ptr @_ZN7testing8internal12UnitTestImpl11GetTestCaseEPKcS3_PFvvES5_(ptr noundef nonnull align 8 dereferenceable(497) %0, ptr noundef %i.t, ptr noundef %.0.i, ptr noundef %1, ptr noundef %2)
  call void @_ZN7testing8TestCase11AddTestInfoEPNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(248) %i.x, ptr noundef nonnull %3)
  ret void

bb.h:                                             ; preds = %bb.e, %_ZN7testing8internal8FilePathD2Ev.exit11
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.k, %_ZN7testing8internal8FilePathD2Ev.exit11 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal25ReportInvalidTestCaseTypeEPKcNS0_12CodeLocationE(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %5 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %6 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %13 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %14 = alloca %"class.testing::Message", align 8 ; 19 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #53
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
  %i.a = load ptr, ptr %14, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #53
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !55
end_hunk_6
begin_hunk_7_@_ZN7testing8internal18FormatFileLocationB5cxx11EPKci:bb.a

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.w
  %i.dt = phi i64 [ %i.dp, %bb.w ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !49, !alias.scope !786
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !45
  store i64 0, ptr %i.du, align 8, !tbaa !49
  store i8 0, ptr %i.dm, align 8, !tbaa !46
  %i.dw = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.x
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !46
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  %i.eb = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !46
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  %i.eg = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ai
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.ei = load i64, ptr %i.ai, align 8, !tbaa !46
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.y:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit24
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body27

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.t, %.critedge.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.v
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.aa
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !46
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.z
  %.pn = phi { ptr, i32 } [ %i.el, %bb.z ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.em, %bb.aa ] ; 2 uses
  %i.es = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %.body27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !46
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #54
  br label %.body27

.body27:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.y, %_ZN7testing7MessageD2Ev.exit3.i
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body.i, %_ZN7testing7MessageD2Ev.exit3.i ], [ %i.ek, %bb.y ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  %i.ex = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ai
  br i1 %i.ey, label %.body22, label %.body22.sink.split

.body22.sink.split:                               ; preds = %.body27, %bb.j
  %.sink = phi ptr [ %i.at, %bb.j ], [ %i.ex, %.body27 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.as, %bb.j ], [ %.pn.pn, %.body27 ]
  %i.ez = load i64, ptr %i.ai, align 8, !tbaa !46
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fa) #54
  br label %.body22

.body22:                                          ; preds = %.body22.sink.split, %.body27, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %.pn.pn, %.body27 ], [ %.pn.pn.pn.ph, %.body22.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.fb = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.d
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.fd = load i64, ptr %i.d, align 8, !tbaa !46
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  ret void

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.body22
  %.pn11 = phi { ptr, i32 } [ %.pn.pn.pn, %.body22 ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ab, %bb.g ]
  %i.ff = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.d
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %.body
  %i.fh = load i64, ptr %i.d, align 8, !tbaa !46
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl26RegisterParameterizedTestsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(497) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !323, !range !96, !noundef !97
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !324  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !324
  %.not4.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i, label %_ZN7testing8internal29ParameterizedTestCaseRegistry13RegisterTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.01.05.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !326 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !787
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !324
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %_ZN7testing8internal29ParameterizedTestCaseRegistry13RegisterTestsEv.exit, label %.lr.ph.i, !llvm.loop !17

_ZN7testing8internal29ParameterizedTestCaseRegistry13RegisterTestsEv.exit: ; preds = %.lr.ph.i, %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !323
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal29ParameterizedTestCaseRegistry13RegisterTestsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !198, !range !96, !noundef !97
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %common.resume, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 272 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !180
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !72

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %common.resume, !inline_history !73

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !73 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.f, %bb.h
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 400
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !181  ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.t = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #53 ; 0 uses
  %i.u = load i64, ptr %2, align 8, !tbaa !206
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !207
  %.neg = sdiv i64 %i.w, -1000
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 424 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !154  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !57
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.i:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.aa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.aa, align 8, !tbaa !57
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !154
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.i
  %i.ab = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.i ], [ %.pre, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ac = phi ptr [ %i.aa, %bb.i ], [ %i.y, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !322
  %i.ah = tail call noundef ptr @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc(ptr noundef %i.ag, i64 17, i64 0, ptr noundef nonnull @.str.116) ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.ai = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !72

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.m unwind label %common.resume, !inline_history !3

bb.m:                                             ; preds = %bb.l
  %i.al = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

common.resume:                                    ; preds = %bb.g, %bb.d, %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53
  resume { ptr, i32 } %i.am

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.m, %bb.k, %bb.j
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 272
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !180 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.ap, null
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 280
  %i.as = select i1 %.not.i.i12, ptr %i.ar, ptr %i.aq ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !300 ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !300 ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.au, %i.aw
  br i1 %.not7.i.i.i, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = ptrtoaddr ptr %i.au to i64
  %i.az = add i64 %i.ax, -112
  %i.ba = sub i64 %i.az, %i.ay                    ; 2 uses
  %i.bb = udiv i64 %i.ba, 112
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 784
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.bc, 576460752303423480      ; 3 uses
  %i.bd = mul i64 %n.vec, 112
  %i.be = getelementptr i8, ptr %i.au, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
  %vec.phi23 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %i.bf = mul i64 %index, 112                     ; 8 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bf
  %i.bg = getelementptr i8, ptr %i.au, i64 %i.bf
  %next.gep24 = getelementptr i8, ptr %i.bg, i64 112
  %i.bh = getelementptr i8, ptr %i.au, i64 %i.bf
  %next.gep25 = getelementptr i8, ptr %i.bh, i64 224
  %i.bi = getelementptr i8, ptr %i.au, i64 %i.bf
  %next.gep26 = getelementptr i8, ptr %i.bi, i64 336
  %i.bj = getelementptr i8, ptr %i.au, i64 %i.bf
  %next.gep27 = getelementptr i8, ptr %i.bj, i64 448
  %i.bk = getelementptr i8, ptr %i.au, i64 %i.bf
  %next.gep28 = getelementptr i8, ptr %i.bk, i64 560
  %i.bl = getelementptr i8, ptr %i.au, i64 %i.bf
  %next.gep29 = getelementptr i8, ptr %i.bl, i64 672
  %i.bm = getelementptr i8, ptr %i.au, i64 %i.bf
  %next.gep30 = getelementptr i8, ptr %i.bm, i64 784
  %i.bn = load i32, ptr %next.gep, align 8, !tbaa !175
  %i.bo = load i32, ptr %next.gep24, align 8, !tbaa !175
  %i.bp = load i32, ptr %next.gep25, align 8, !tbaa !175
  %i.bq = load i32, ptr %next.gep26, align 8, !tbaa !175
  %i.br = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %i.bs = insertelement <4 x i32> %i.br, i32 %i.bo, i64 1
  %i.bt = insertelement <4 x i32> %i.bs, i32 %i.bp, i64 2
  %i.bu = insertelement <4 x i32> %i.bt, i32 %i.bq, i64 3
  %i.bv = load i32, ptr %next.gep27, align 8, !tbaa !175
  %i.bw = load i32, ptr %next.gep28, align 8, !tbaa !175
  %i.bx = load i32, ptr %next.gep29, align 8, !tbaa !175
  %i.by = load i32, ptr %next.gep30, align 8, !tbaa !175
  %i.bz = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bw, i64 1
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bx, i64 2
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.by, i64 3
  %i.cd = icmp eq <4 x i32> %i.bu, splat (i32 2)
  %i.ce = icmp eq <4 x i32> %i.cc, splat (i32 2)
  %i.cf = zext <4 x i1> %i.cd to <4 x i32>
  %i.cg = zext <4 x i1> %i.ce to <4 x i32>
  %i.ch = add <4 x i32> %vec.phi, %i.cf           ; 2 uses
  %i.ci = add <4 x i32> %vec.phi23, %i.cg         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !788

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ci, %i.ch
  %i.ck = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i.preheader31

.lr.ph.i.i.i.preheader31:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ck, %middle.block ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader31, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader31 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i.i.i.preheader31 ] ; 2 uses
  %i.cl = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !175
  %i.cm = icmp eq i32 %i.cl, 2
  %i.cn = zext i1 %i.cm to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.cn ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.co, %i.aw
  br i1 %.not.i.i1.i, label %_ZN7testing4Test15HasFatalFailureEv.exit, label %.lr.ph.i.i.i, !llvm.loop !789

_ZN7testing4Test15HasFatalFailureEv.exit:         ; preds = %.lr.ph.i.i.i, %middle.block
  %spec.select.i.i.i.lcssa = phi i32 [ %i.ck, %middle.block ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.not15 = icmp eq i32 %spec.select.i.i.i.lcssa, 0
  br i1 %.not15, label %_ZN7testing4Test15HasFatalFailureEv.exit.thread, label %bb.n

_ZN7testing4Test15HasFatalFailureEv.exit.thread:  ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i, %_ZN7testing4Test15HasFatalFailureEv.exit
  tail call void @_ZN7testing4Test3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
  br label %bb.n

bb.n:                                             ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.thread, %_ZN7testing4Test15HasFatalFailureEv.exit, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !154 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.o, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge: ; preds = %bb.n
  %.pre18 = load ptr, ptr %i.cp, align 8, !tbaa !57
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13

bb.o:                                             ; preds = %bb.n
  %i.cr = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.cr, align 8, !tbaa !57
  store ptr %i.cr, ptr %i.x, align 8, !tbaa !154
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge, %bb.o
  %i.cs = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.o ], [ %.pre18, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge ]
  %i.ct = phi ptr [ %i.cr, %bb.o ], [ %i.cp, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13_crit_edge ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %i.ah, i64 ptrtoint (ptr @_ZN7testing4Test11DeleteSelf_Ev to i64), i64 0, ptr noundef nonnull @.str.117)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  %i.cw = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #53 ; 0 uses
  %i.cx = load i64, ptr %1, align 8, !tbaa !206
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !207
  %i.da = sdiv i64 %i.cz, 1000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  %reass.add = sub i64 %i.cx, %i.u
  %reass.mul = mul i64 %reass.add, 1000
  %.neg17 = add nsw i64 %i.da, %.neg
  %i.db = add i64 %.neg17, %reass.mul
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !294
  %i.dd = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(264) %0)
  store ptr null, ptr %i.i, align 8, !tbaa !180
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN7testing8UnitTest9listenersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.w, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.bd, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.h = load i8, ptr %i.g, align 8, !tbaa !319, !range !96, !noundef !97
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.x

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !97
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  %i.r = invoke noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit unwind label %bb.j, !inline_history !790

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, i32 } %i.s, 1        ; 2 uses
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #53
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #53 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ac unwind label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.y = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #53
  %i.z = icmp eq i32 %i.u, %i.y
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.t) #53 ; 2 uses
  br i1 %i.z, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #53
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ae, ptr noundef %3)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !46
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.r
  %i.an = load i64, ptr %i.al, align 8, !tbaa !46
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

bb.s:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.t:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.t
  %i.au = load i64, ptr %i.as, align 8, !tbaa !46
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.aq, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.u:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.v:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.v
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !46
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.u
  %.pn35 = phi { ptr, i32 } [ %i.aw, %bb.u ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.ax, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.w:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.x:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.bf = getelementptr i8, ptr %i.be, i64 %1
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load ptr, ptr %i.bg, align 8, !nosanitize !97
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bi = inttoptr i64 %1 to ptr
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bj = phi ptr [ %i.bh, %bb.y ], [ %i.bi, %bb.z ]
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.aa
  %.032 = phi ptr [ %i.bk, %bb.aa ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.r, %bb.i ]
  ret ptr %.032

bb.ab:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
end_hunk_7
begin_hunk_8_@_ZN7testing8TestCase18GetMutableTestInfoEi:bb.a
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !333
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !330  ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !39   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = zext nneg i32 %i.m to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !204
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !194
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread: ; preds = %bb.a, %bb.b, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit, %bb.c
  %i.t = phi ptr [ %i.s, %bb.c ], [ null, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %i.t
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestCase11AddTestInfoEPNS_8TestInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !203  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !332
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !203
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !204  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #56
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
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #57 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !194
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
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !332
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #54
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !204
  store ptr %i.u, ptr %i.b, align 8, !tbaa !203
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !332
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !333 ; 4 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !330 ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 4 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !331
  %.not.i.i = icmp eq ptr %i.ab, %i.aj
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !333
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  %i.al = icmp eq i64 %i.af, 9223372036854775804
  br i1 %i.al, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #56
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
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #57 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.af ; 2 uses
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !39
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
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !331
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ax) #54
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !330
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !333
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ay, ptr %i.ai, align 8, !tbaa !331
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestCase3RunEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !192, !range !96, !noundef !97
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %common.resume, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 264 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !316
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !72

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %common.resume, !inline_history !73

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !73 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.d, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53
  resume { ptr, i32 } %i.n

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.f, %bb.h
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 400
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !181  ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(248) %0)
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 424 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !154  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !57
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.i:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.x = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.x, align 8, !tbaa !57
  store ptr %i.x, ptr %i.u, align 8, !tbaa !154
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.i
  %i.y = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.i ], [ %.pre, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.z = phi ptr [ %i.x, %bb.i ], [ %i.v, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_8TestCaseEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing8TestCase16RunSetUpTestCaseEv to i64), i64 0, ptr noundef nonnull @.str.118)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.ac = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #53 ; 0 uses
  %i.ad = load i64, ptr %2, align 8, !tbaa !206
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !207
  %.neg = sdiv i64 %i.af, -1000
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !203
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !204 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = lshr exact i64 %i.am, 3
  %i.ao = trunc i64 %i.an to i32
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, label %._crit_edge

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i

._crit_edge:                                      ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  %i.as = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #53 ; 0 uses
  %i.at = load i64, ptr %1, align 8, !tbaa !206
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !207
  %i.aw = sdiv i64 %i.av, 1000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  %reass.add = sub i64 %i.at, %i.ad
  %reass.mul = mul i64 %reass.add, 1000
  %.neg15 = add nsw i64 %i.aw, %.neg
  %i.ax = add i64 %.neg15, %reass.mul
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !329
  %i.az = load ptr, ptr %i.u, align 8, !tbaa !154 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.j, label %._crit_edge._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12_crit_edge

._crit_edge._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12_crit_edge: ; preds = %._crit_edge
  %.pre18 = load ptr, ptr %i.az, align 8, !tbaa !57
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12

bb.j:                                             ; preds = %._crit_edge
  %i.bb = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.bb, align 8, !tbaa !57
  store ptr %i.bb, ptr %i.u, align 8, !tbaa !154
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12: ; preds = %._crit_edge._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12_crit_edge, %bb.j
  %i.bc = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.j ], [ %.pre18, %._crit_edge._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12_crit_edge ]
  %i.bd = phi ptr [ %i.bb, %bb.j ], [ %i.az, %._crit_edge._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12_crit_edge ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_8TestCaseEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing8TestCase19RunTearDownTestCaseEv to i64), i64 0, ptr noundef nonnull @.str.119)
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(248) %0)
  store ptr null, ptr %i.i, align 8, !tbaa !316
  br label %bb.k

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %indvars.iv = phi i64 [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ] ; 3 uses
  %i.bj = phi ptr [ %i.aj, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %i.by, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ]
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !333
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !330 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = shl i64 %i.bo, 30
  %i.bq = ashr i64 %i.bp, 32
  %.not.i.i13 = icmp slt i64 %indvars.iv, %i.bq
  tail call void @llvm.assume(i1 %.not.i.i13)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !39 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !194
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.bw)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load ptr, ptr %i.ah, align 8, !tbaa !203
  %i.by = load ptr, ptr %i.ag, align 8, !tbaa !204 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = shl i64 %i.cb, 29
  %i.cd = ashr i64 %i.cc, 32
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %._crit_edge, !llvm.loop !791

bb.k:                                             ; preds = %bb.a, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_8TestCaseEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.w, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.h = load i8, ptr %i.g, align 8, !tbaa !319, !range !96, !noundef !97
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.x

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !97
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(248) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_8TestCaseEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !792

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 2 uses
  %i.u = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #53
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.s) #53 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ac unwind label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #53
  %i.y = icmp eq i32 %i.t, %i.x
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.s) #53 ; 2 uses
  br i1 %i.y, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #53
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ad, ptr noundef %3)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !46
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_8TestCaseEvEET0_PT_MS4_FS3_vEPKc.exit

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aj = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.r
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_8TestCaseEvEET0_PT_MS4_FS3_vEPKc.exit

bb.s:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.t:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.t
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !46
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.ap, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.u:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.v:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !46
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.u
  %.pn33 = phi { ptr, i32 } [ %i.av, %bb.u ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.aw, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.w:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.x:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.be = getelementptr i8, ptr %i.bd, i64 %1
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %i.bg = load ptr, ptr %i.bf, align 8, !nosanitize !97
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bh = inttoptr i64 %1 to ptr
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bi = phi ptr [ %i.bg, %bb.y ], [ %i.bh, %bb.z ]
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(248) %i.j)
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_8TestCaseEvEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_8TestCaseEvEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.aa
  ret void

bb.ab:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.bj = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_ZN7testing8internal17StreamingListener12SocketWriter14MakeConnectionEv:bb.a
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k, %bb.j
  %i.au = phi i32 [ -1, %.lr.ph ], [ -1, %bb.k ], [ %.pre, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %.031, i64 40
  %.0 = load ptr, ptr %i.av, align 8, !tbaa !1002 ; 2 uses
  %i.aw = icmp eq i32 %i.au, -1
  %i.ax = icmp ne ptr %.0, null
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !997

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 1, ptr noundef nonnull @.str.29, i32 noundef 3816)
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.227, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24: ; preds = %bb.m
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !49
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.183, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !49
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bf, i64 noundef %i.bh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29 unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %bb.o

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24, %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret void

bb.p:                                             ; preds = %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %i.y, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #33

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #26

; Function Attrs: nounwind
declare ptr @gai_strerror(i32 noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #20

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #26

declare i32 @close(i32 noundef) local_unnamed_addr #26

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal11ScopedTraceC2EPKciRKNS_7MessageE(ptr nofree nonnull readnone align 1 captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.testing::internal::TraceInfo", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !49
  store i8 0, ptr %i.b, align 8, !tbaa !46
  store ptr %1, ptr %4, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.e = load ptr, ptr %3, align 8, !tbaa !52, !noalias !1009
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %i.e)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.l

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !45   ; 6 uses
  %i.g = icmp eq ptr %i.f, %i.b
  %i.h = load ptr, ptr %5, align 8, !tbaa !45     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i                   ; 2 uses
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  br i1 %i.j, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !49   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  switch i64 %i.l, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = load i8, ptr %i.h, align 1, !tbaa !46
  store i8 %i.n, ptr %i.f, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.h, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.o = load i64, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  store i64 %i.o, ptr %i.c, align 8, !tbaa !49
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !46
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.h, ptr %i.a, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load <2 x i64>, ptr %i.r, align 8, !tbaa !46
  store <2 x i64> %i.s, ptr %i.c, align 8, !tbaa !46
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.t = load i64, ptr %i.b, align 8, !tbaa !46
  store ptr %i.h, ptr %i.a, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load <2 x i64>, ptr %i.u, align 8, !tbaa !46
  store <2 x i64> %i.v, ptr %i.c, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.f, ptr %5, align 8, !tbaa !45
  store i64 %i.t, ptr %i.i, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.i, ptr %5, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.e, %bb.f
  %i.w = phi ptr [ %i.f, %bb.e ], [ %i.i, %bb.f ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !49
  store i8 0, ptr %i.w, align 1, !tbaa !46
  %i.y = load ptr, ptr %5, align 8, !tbaa !45     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !46
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %i.ad = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !72

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  %.not.i6 = icmp eq i32 %i.af, 0
  br i1 %.not.i6, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.i unwind label %bb.j, !inline_history !73

bb.i:                                             ; preds = %bb.h
  %i.ag = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !73 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN7testing8UnitTest14PushGTestTraceERKNS_8internal9TraceInfoE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZN7testing8internal9TraceInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !46
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #54
  br label %_ZN7testing8internal9TraceInfoD2Ev.exit

_ZN7testing8internal9TraceInfoD2Ev.exit:          ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  ret void

bb.l:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  br label %.body

bb.m:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.j, %bb.l
  %.pn = phi { ptr, i32 } [ %i.am, %bb.l ], [ %i.an, %bb.m ], [ %i.ah, %bb.j ]
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.b
  br i1 %i.ap, label %_ZN7testing8internal9TraceInfoD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %.body
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !46
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #54
  br label %_ZN7testing8internal9TraceInfoD2Ev.exit9

_ZN7testing8internal9TraceInfoD2Ev.exit9:         ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest14PushGTestTraceERKNS_8internal9TraceInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestMutexLock", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !82
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #53 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.336, i32 noundef 1940)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.337, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.338, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.c)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

common.resume:                                    ; preds = %bb.m, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.ar, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %common.resume

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.h = tail call i64 @pthread_self() #58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.h, ptr %i.i, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.j, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 480
  %i.n = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit unwind label %bb.m ; 3 uses

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit: ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !354
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 12, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !47
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !45   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.x, ptr %i.a, align 8, !tbaa !48
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !45
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.e
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %bb.e ] ; 2 uses
  switch i64 %i.x, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN7testing8internal9TraceInfoC2ERKS1_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !46
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !46
  br label %_ZN7testing8internal9TraceInfoC2ERKS1_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZN7testing8internal9TraceInfoC2ERKS1_.exit.i

_ZN7testing8internal9TraceInfoC2ERKS1_.exit.i:    ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !49
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store ptr %i.ai, ptr %i.o, align 8, !tbaa !87
  br label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit
  invoke void @_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE9push_backERKS2_.exit unwind label %bb.m

_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZN7testing8internal9TraceInfoC2ERKS1_.exit.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.aj, align 8, !tbaa !84
  %i.ak = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #53 ; 2 uses
  %.not.i.i4 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i4, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE9push_backERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.336, i32 noundef 1952)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.i
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.339, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i5 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i5: ; preds = %.noexc.i
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.338, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i6 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i6: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i5
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.ak)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i6
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i5, %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %.body.i

bb.l:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.ao, %bb.k ]
  %i.aq = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.aq) #59
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE9push_backERKS2_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  ret void

bb.m:                                             ; preds = %bb.h, %.noexc.i.i.i, %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal14GTestMutexLockD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal11ScopedTraceD2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !73

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !73 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
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
  tail call void @__clang_call_terminate(ptr %i.g) #59
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest13PopGTestTraceEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestMutexLock", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !82
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #53 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.336, i32 noundef 1940)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.337, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.338, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

common.resume:                                    ; preds = %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.ae, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %common.resume

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.g, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.i, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  %i.m = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit unwind label %bb.i

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit: ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !87   ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -48
  store ptr %i.p, ptr %i.n, align 8, !tbaa !87
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45   ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 -16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !46
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #54
  br label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE8pop_backEv.exit

_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE8pop_backEv.exit: ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.w, align 8, !tbaa !84
  %i.x = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #53 ; 2 uses
  %.not.i.i2 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i2, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE8pop_backEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.336, i32 noundef 1952)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.339, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3: ; preds = %.noexc.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.338, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.x)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3, %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %.body.i

bb.h:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.ab, %bb.g ]
  %i.ad = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  call void @__clang_call_terminate(ptr %i.ad) #59
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE8pop_backEv.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  ret void

bb.i:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal14GTestMutexLockD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7testing8internal18OsStackTraceGetter17CurrentStackTraceB5cxx11Eii(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 %2, i32 %3) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !49
  store i8 0, ptr %i.a, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN7testing8internal18OsStackTraceGetter16UponLeavingGTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing18TestEventListenersC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7testing8internal17TestEventRepeaterE, i64 16), ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.b, align 8, !tbaa !349
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !181
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing18TestEventListenersD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !181    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !57
end_hunk_9
begin_hunk_10_@_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !46
  store i8 %i.k, ptr %i.j, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !49
  %i.n = load ptr, ptr %0, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !47
  %i.r = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.t, ptr %i.a, align 8, !tbaa !48
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i5, label %._crit_edge.i.i4

.noexc.i5:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.v, ptr %i.p, align 8, !tbaa !45
  %i.w = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.w, ptr %i.q, align 8, !tbaa !46
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.y = load i8, ptr %i.r, align 1, !tbaa !46
  store i8 %i.y, ptr %i.x, align 1, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.z = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !49
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !46
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !46
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !46
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7testing8UnitTest3RunEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !49
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %_ZN7testing8internal23ScopedPrematureExitFileC2EPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @getenv(ptr noundef nonnull @.str.230) #53 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN7testing8internal23ScopedPrematureExitFileC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %i.b, align 1, !tbaa !46
  %.not7.i = icmp eq i8 %i.c, 0
  br i1 %.not7.i, label %_ZN7testing8internal23ScopedPrematureExitFileC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noalias noundef ptr @fopen(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.171) ; 2 uses
  %fputc.i = tail call i32 @fputc(i32 48, ptr %i.d) ; 0 uses
  %i.e = tail call i32 @fclose(ptr noundef %i.d)  ; 0 uses
  br label %_ZN7testing8internal23ScopedPrematureExitFileC2EPKc.exit

_ZN7testing8internal23ScopedPrematureExitFileC2EPKc.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.not.i9 = phi i1 [ false, %bb.d ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.b, %bb.d ], [ null, %bb.b ], [ %i.b, %bb.c ], [ null, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79   ; 2 uses
  %i.i = load i8, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !95, !range !96, !noundef !97
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  store i8 %i.i, ptr %i.j, align 8, !tbaa !319
  %i.k = invoke noundef zeroext i1 @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %i.h, i64 ptrtoint (ptr @_ZN7testing8internal12UnitTestImpl11RunAllTestsEv to i64), i64 0, ptr noundef nonnull @.str.231)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN7testing8internal23ScopedPrematureExitFileC2EPKc.exit
  br i1 %.not.i9, label %_ZN7testing8internal23ScopedPrematureExitFileD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %i.f, align 1, !tbaa !46
  %.not1.i = icmp eq i8 %i.l, 0
  br i1 %.not1.i, label %_ZN7testing8internal23ScopedPrematureExitFileD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @remove(ptr noundef nonnull %i.f) #53 ; 0 uses
  br label %_ZN7testing8internal23ScopedPrematureExitFileD2Ev.exit

_ZN7testing8internal23ScopedPrematureExitFileD2Ev.exit: ; preds = %bb.e, %bb.f, %bb.g
  %not. = xor i1 %i.k, true
  %i.n = zext i1 %not. to i32
  ret i32 %i.n

bb.h:                                             ; preds = %_ZN7testing8internal23ScopedPrematureExitFileC2EPKc.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i9, label %_ZN7testing8internal23ScopedPrematureExitFileD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load i8, ptr %i.f, align 1, !tbaa !46
  %.not1.i5 = icmp eq i8 %i.p, 0
  br i1 %.not1.i5, label %_ZN7testing8internal23ScopedPrematureExitFileD2Ev.exit6, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i32 @remove(ptr noundef nonnull %i.f) #53 ; 0 uses
  br label %_ZN7testing8internal23ScopedPrematureExitFileD2Ev.exit6

_ZN7testing8internal23ScopedPrematureExitFileD2Ev.exit6: ; preds = %bb.h, %bb.i, %bb.j
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.w, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.bd, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.h = load i8, ptr %i.g, align 8, !tbaa !319, !range !96, !noundef !97
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.x

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !97
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(497) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !1011

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, i32 } %i.s, 1        ; 2 uses
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #53
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #53 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ac unwind label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.y = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #53
  %i.z = icmp eq i32 %i.u, %i.y
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.t) #53 ; 2 uses
  br i1 %i.z, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #53
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ae, ptr noundef %3)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !46
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.r
  %i.an = load i64, ptr %i.al, align 8, !tbaa !46
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

bb.s:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.t:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.t
  %i.au = load i64, ptr %i.as, align 8, !tbaa !46
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.aq, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.u:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.v:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.v
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !46
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.u
  %.pn35 = phi { ptr, i32 } [ %i.aw, %bb.u ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.ax, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.w:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.x:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.bf = getelementptr i8, ptr %i.be, i64 %1
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load ptr, ptr %i.bg, align 8, !nosanitize !97
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bi = inttoptr i64 %1 to ptr
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bj = phi ptr [ %i.bh, %bb.y ], [ %i.bi, %bb.z ]
  %i.bk = tail call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(497) %i.j)
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.aa
  %.032 = phi i1 [ %i.bk, %bb.aa ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.r, %bb.i ]
  ret i1 %.032

bb.ab:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
end_hunk_10
begin_hunk_11_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a
  tail call void @_ZN7testing8internal12UnitTestImpl23ListTestsMatchingFilterEv(ptr noundef nonnull align 8 dereferenceable(497) %0)
  br label %bb.ab

bb.i:                                             ; preds = %_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit
  %i.t = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !tbaa !95, !range !96, !noundef !97
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !39 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.x = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #53 ; 0 uses
  %i.y = load i64, ptr %5, align 8, !tbaa !206
  %i.z = mul nsw i64 %i.y, 1000
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !207
  %i.ac = sdiv i64 %i.ab, 1000
  %i.ad = add nsw i64 %i.ac, %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %i.ae = trunc i64 %i.ad to i32
  br label %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit

_ZN7testing8internal21GetRandomSeedFromFlagEi.exit: ; preds = %bb.j, %bb.k
  %i.af = phi i32 [ %i.ae, %bb.k ], [ %i.v, %bb.j ]
  %i.ag = add i32 %i.af, -1
  %i.ah = urem i32 %i.ag, 99999
  %i.ai = add nuw nsw i32 %i.ah, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit
  %i.aj = phi i32 [ %i.ai, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit ], [ 0, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 4 uses
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !334
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !181 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.an = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #53 ; 0 uses
  %i.ao = load i64, ptr %4, align 8, !tbaa !206
  %i.ap = mul nsw i64 %i.ao, 1000
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !207
  %i.as = sdiv i64 %i.ar, 1000
  %i.at = add nsw i64 %i.as, %i.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 %i.at, ptr %i.au, align 8, !tbaa !350
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !362
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.aw)
  %i.ba = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4
  %i.bb = select i1 %i.m, i32 1, i32 %i.ba        ; 3 uses
  %i.bc = icmp slt i32 %i.bb, 0
  %.not49 = icmp eq i32 %i.bb, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 456
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %bb.aa
  %i.bo = xor i1 %spec.select, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.028.lcssa = phi i1 [ true, %bb.l ], [ %i.bo, %._crit_edge.loopexit ]
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !362
  %i.bq = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.bp)
  br label %bb.ab

bb.m:                                             ; preds = %.lr.ph, %bb.aa
  %.02748 = phi i32 [ 0, %.lr.ph ], [ %i.jy, %bb.aa ] ; 3 uses
  %.02847 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.aa ]
  call void @_ZN7testing8internal12UnitTestImpl23ClearNonAdHocTestResultEv(ptr noundef nonnull align 8 dereferenceable(497) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.bt = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #53 ; 0 uses
  %i.bu = load i64, ptr %3, align 8, !tbaa !206
  %i.bv = load i64, ptr %i.bd, align 8, !tbaa !207
  %.neg = sdiv i64 %i.bv, -1000
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %i.bw = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !range !96
  %i.bx = trunc nuw i8 %i.bw to i1
  %or.cond = select i1 %i.q, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.n, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit

bb.n:                                             ; preds = %bb.m
  %i.by = load i32, ptr %i.ak, align 4, !tbaa !334
  store i32 %i.by, ptr %i.be, align 8, !tbaa !63
  %i.bz = load i32, ptr %i.bf, align 4, !tbaa !363
  %i.ca = add nsw i32 %i.bz, 1
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.be, i32 noundef 0, i32 noundef %i.ca, ptr noundef nonnull %i.bg)
  %i.cb = load i32, ptr %i.bf, align 4, !tbaa !363
  %i.cc = add nsw i32 %i.cb, 1
  %i.cd = load ptr, ptr %i.bi, align 8, !tbaa !199
  %i.ce = load ptr, ptr %i.bh, align 8, !tbaa !200
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = lshr exact i64 %i.ch, 3
  %i.cj = trunc i64 %i.ci to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.be, i32 noundef %i.cc, i32 noundef %i.cj, ptr noundef nonnull %i.bg)
  %i.ck = load ptr, ptr %i.bi, align 8, !tbaa !199
  %i.cl = load ptr, ptr %i.bh, align 8, !tbaa !200 ; 2 uses
  %.not.i31 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i31, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.cm = phi ptr [ %i.da, %.lr.ph.i ], [ %i.cl, %bb.n ]
  %.03.i = phi i64 [ %i.cy, %.lr.ph.i ], [ 0, %bb.n ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.03.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !184 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !333
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !330
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = lshr exact i64 %i.cv, 2
  %i.cx = trunc i64 %i.cw to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.be, i32 noundef 0, i32 noundef %i.cx, ptr noundef nonnull %i.cp)
  %i.cy = add nuw i64 %.03.i, 1                   ; 2 uses
  %i.cz = load ptr, ptr %i.bi, align 8, !tbaa !199
  %i.da = load ptr, ptr %i.bh, align 8, !tbaa !200 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 3
  %i.df = icmp ult i64 %i.cy, %i.de
  br i1 %i.df, label %.lr.ph.i, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, !llvm.loop !22

_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit: ; preds = %.lr.ph.i, %bb.n, %bb.m
  %i.dg = load ptr, ptr %i.av, align 8, !tbaa !362
  %i.dh = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.dg, i32 noundef %.02748)
  br i1 %i.q, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.dk = load ptr, ptr %i.av, align 8, !tbaa !362
  %i.dl = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.dk)
  %i.do = load ptr, ptr %i.bj, align 8, !tbaa !364 ; 2 uses
  %i.dp = load ptr, ptr %i.bk, align 8, !tbaa !364 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.do, %i.dp
  br i1 %.not5.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.i.i
  %.sroa.02.06.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %i.do, %bb.o ] ; 2 uses
  %i.dq = load ptr, ptr %.sroa.02.06.i.i, align 8, !tbaa !359 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !57
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dq), !inline_history !1012
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.du, %i.dp
  br i1 %.not.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !23

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.o
  %i.dv = load ptr, ptr %i.av, align 8, !tbaa !362
  %i.dw = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.dv)
  %i.dz = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %bb.p, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !72

bb.p:                                             ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.eb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.r unwind label %bb.s, !inline_history !3

bb.r:                                             ; preds = %bb.q
  %i.ec = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

common.resume:                                    ; preds = %bb.z, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.ed, %bb.s ], [ %i.ju, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.q
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.r, %bb.p, %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 272
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !180 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.eg, null
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 144
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 280
  %i.ej = select i1 %.not.i.i32, ptr %i.ei, ptr %i.eh ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !300 ; 12 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !300 ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.el, %i.en
  br i1 %.not7.i.i.i, label %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.eo = ptrtoaddr ptr %i.en to i64
  %i.ep = ptrtoaddr ptr %i.el to i64
  %i.eq = add i64 %i.eo, -112
  %i.er = sub i64 %i.eq, %i.ep                    ; 2 uses
  %i.es = udiv i64 %i.er, 112
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check70 = icmp ult i64 %i.er, 784
  br i1 %min.iters.check70, label %.lr.ph.i.i.i.preheader87, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph.i.i.i.preheader
  %n.vec72 = and i64 %i.et, 576460752303423480    ; 3 uses
  %i.eu = mul i64 %n.vec72, 112
  %i.ev = getelementptr i8, ptr %i.el, i64 %i.eu
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next83, %vector.body73 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph71 ], [ %i.fy, %vector.body73 ]
  %vec.phi75 = phi <4 x i32> [ zeroinitializer, %vector.ph71 ], [ %i.fz, %vector.body73 ]
  %i.ew = mul i64 %index74, 112                   ; 8 uses
  %next.gep = getelementptr i8, ptr %i.el, i64 %i.ew
  %i.ex = getelementptr i8, ptr %i.el, i64 %i.ew
  %next.gep76 = getelementptr i8, ptr %i.ex, i64 112
  %i.ey = getelementptr i8, ptr %i.el, i64 %i.ew
  %next.gep77 = getelementptr i8, ptr %i.ey, i64 224
  %i.ez = getelementptr i8, ptr %i.el, i64 %i.ew
  %next.gep78 = getelementptr i8, ptr %i.ez, i64 336
  %i.fa = getelementptr i8, ptr %i.el, i64 %i.ew
  %next.gep79 = getelementptr i8, ptr %i.fa, i64 448
  %i.fb = getelementptr i8, ptr %i.el, i64 %i.ew
  %next.gep80 = getelementptr i8, ptr %i.fb, i64 560
  %i.fc = getelementptr i8, ptr %i.el, i64 %i.ew
  %next.gep81 = getelementptr i8, ptr %i.fc, i64 672
  %i.fd = getelementptr i8, ptr %i.el, i64 %i.ew
  %next.gep82 = getelementptr i8, ptr %i.fd, i64 784
  %i.fe = load i32, ptr %next.gep, align 8, !tbaa !175
  %i.ff = load i32, ptr %next.gep76, align 8, !tbaa !175
  %i.fg = load i32, ptr %next.gep77, align 8, !tbaa !175
  %i.fh = load i32, ptr %next.gep78, align 8, !tbaa !175
  %i.fi = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.ff, i64 1
  %i.fk = insertelement <4 x i32> %i.fj, i32 %i.fg, i64 2
  %i.fl = insertelement <4 x i32> %i.fk, i32 %i.fh, i64 3
  %i.fm = load i32, ptr %next.gep79, align 8, !tbaa !175
  %i.fn = load i32, ptr %next.gep80, align 8, !tbaa !175
  %i.fo = load i32, ptr %next.gep81, align 8, !tbaa !175
  %i.fp = load i32, ptr %next.gep82, align 8, !tbaa !175
  %i.fq = insertelement <4 x i32> poison, i32 %i.fm, i64 0
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.fn, i64 1
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fo, i64 2
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fp, i64 3
  %i.fu = icmp eq <4 x i32> %i.fl, splat (i32 2)
  %i.fv = icmp eq <4 x i32> %i.ft, splat (i32 2)
  %i.fw = zext <4 x i1> %i.fu to <4 x i32>
  %i.fx = zext <4 x i1> %i.fv to <4 x i32>
  %i.fy = add <4 x i32> %vec.phi, %i.fw           ; 2 uses
  %i.fz = add <4 x i32> %vec.phi75, %i.fx         ; 2 uses
  %index.next83 = add nuw i64 %index74, 8         ; 2 uses
  %i.ga = icmp eq i64 %index.next83, %n.vec72
  br i1 %i.ga, label %middle.block84, label %vector.body73, !llvm.loop !1013

middle.block84:                                   ; preds = %vector.body73
  %bin.rdx = add <4 x i32> %i.fz, %i.fy
  %i.gb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n85 = icmp eq i64 %i.et, %n.vec72
  br i1 %cmp.n85, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader87

.lr.ph.i.i.i.preheader87:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block84
  %.09.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.gb, %middle.block84 ]
  %.sroa.04.08.i.i.i.ph = phi ptr [ %i.el, %.lr.ph.i.i.i.preheader ], [ %i.ev, %middle.block84 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader87, %.lr.ph.i.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader87 ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i ], [ %.sroa.04.08.i.i.i.ph, %.lr.ph.i.i.i.preheader87 ] ; 2 uses
  %i.gc = load i32, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !175
  %i.gd = icmp eq i32 %i.gc, 2
  %i.ge = zext i1 %i.gd to i32
  %spec.select.i.i.i = add nuw nsw i32 %.09.i.i.i, %i.ge ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 112 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.gf, %i.en
  br i1 %.not.i.i1.i, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1014

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block84
  %spec.select.i.i.i.lcssa = phi i32 [ %i.gb, %middle.block84 ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %.not41 = icmp eq i32 %spec.select.i.i.i.lcssa, 0
  br i1 %.not41, label %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, label %.loopexit

_ZN7testing4Test15HasFatalFailureEv.exit.preheader: ; preds = %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i, %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.gg = load ptr, ptr %i.bi, align 8, !tbaa !199
  %i.gh = load ptr, ptr %i.bh, align 8, !tbaa !200 ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = lshr exact i64 %i.gk, 3
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ 0, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ] ; 3 uses
  %i.go = phi ptr [ %i.hd, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ %i.gh, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader ]
  %i.gp = load ptr, ptr %i.bl, align 8, !tbaa !333
  %i.gq = load ptr, ptr %i.bg, align 8, !tbaa !330 ; 2 uses
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = shl i64 %i.gt, 30
  %i.gv = ashr i64 %i.gu, 32
  %.not.i.i33 = icmp slt i64 %indvars.iv, %i.gv
  call void @llvm.assume(i1 %.not.i.i33)
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !39 ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, -1
  call void @llvm.assume(i1 %i.gy)
  %i.gz = zext nneg i32 %i.gx to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gz
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !184
  call void @_ZN7testing8TestCase3RunEv(ptr noundef nonnull align 8 dereferenceable(248) %i.hb)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hc = load ptr, ptr %i.bi, align 8, !tbaa !199
  %i.hd = load ptr, ptr %i.bh, align 8, !tbaa !200 ; 2 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = shl i64 %i.hg, 29
  %i.hi = ashr i64 %i.hh, 32
  %i.hj = icmp slt i64 %indvars.iv.next, %i.hi
  br i1 %i.hj, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit, !llvm.loop !1015

.loopexit:                                        ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing4Test15HasFatalFailureEv.exit.preheader, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i.i
  %i.hk = load ptr, ptr %i.av, align 8, !tbaa !362
  %i.hl = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 88
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.hk)
  %i.ho = load ptr, ptr %i.bk, align 8, !tbaa !364, !noalias !1025 ; 2 uses
  %i.hp = load ptr, ptr %i.bj, align 8, !tbaa !364, !noalias !1026 ; 2 uses
  %.not4.i = icmp eq ptr %i.ho, %i.hp
  br i1 %.not4.i, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.loopexit, %.lr.ph.i34
  %.sroa.040.0 = phi ptr [ %i.hq, %.lr.ph.i34 ], [ %i.ho, %.loopexit ]
  %i.hq = getelementptr inbounds i8, ptr %.sroa.040.0, i64 -8 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !359 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !57
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hr), !inline_history !1020
  %.not.i35 = icmp eq ptr %i.hq, %i.hp
  br i1 %.not.i35, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i34, !llvm.loop !1021

_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit: ; preds = %.lr.ph.i34, %.loopexit
  %i.hv = load ptr, ptr %i.av, align 8, !tbaa !362
  %i.hw = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 96
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(72) %i.hv)
  br label %bb.t

bb.t:                                             ; preds = %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.hz = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #53 ; 0 uses
  %i.ia = load i64, ptr %2, align 8, !tbaa !206
  %i.ib = load i64, ptr %i.bm, align 8, !tbaa !207
  %i.ic = sdiv i64 %i.ib, 1000
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %reass.add = sub i64 %i.ia, %i.bu
  %reass.mul = mul i64 %reass.add, 1000
  %.neg43 = add nsw i64 %i.ic, %.neg
  %i.id = add i64 %.neg43, %reass.mul
end_hunk_11
begin_hunk_12_@_ZN7testing8internal10ParseInt32ERKNS_7MessageEPKcPi:bb.a
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN7testing8internal20ShouldRunTestOnShardEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = srem i32 %2, %0
  %i.b = icmp eq i32 %i.a, %1
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal12UnitTestImpl25set_os_stack_trace_getterEPNS0_27OsStackTraceGetterInterfaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(497) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 4 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %1, ptr %i.a, align 8, !tbaa !154
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !333
  %i.c = load ptr, ptr %3, align 8, !tbaa !330
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.351, i32 noundef 315)
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.431, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.432, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.433, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.381, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %bb.d
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %bb.m

bb.f:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.s = icmp sle i32 %1, %2
  %i.t = icmp sle i32 %2, %i.h
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.351, i32 noundef 318)
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.434, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %bb.g
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.435, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %2)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.436, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.h
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef %1)
          to label %bb.i unwind label %bb.k       ; 2 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.244, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.h)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.381, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
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
  %i.ak = add i32 %i.aj, %1
  %i.al = sext i32 %i.ak to i64
  %i.am = load ptr, ptr %3, align 8, !tbaa !330   ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.ah
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4     ; 2 uses
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !39
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !39
  store i32 %i.as, ptr %i.an, align 4, !tbaa !39
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !39
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.at = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !1068

bb.m:                                             ; preds = %bb.k, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.r, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal31GetCurrentOsStackTraceExceptTopB5cxx11EPNS_8UnitTestEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.g = add nsw i32 %2, 1
  tail call void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(497) %i.f, i32 noundef %i.g)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7testing8internal10SkipPrefixEPKcPS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #36 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #55 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !276    ; 2 uses
  %i.c = tail call i32 @strncmp(ptr noundef %i.b, ptr noundef nonnull %0, i64 noundef %i.a) #55
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.a
  store ptr %i.e, ptr %1, align 8, !tbaa !276
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7testing8internal14ParseFlagValueEPKcS2_b(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !47
  store i16 11565, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !46
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.250, i64 noundef 6)
          to label %.noexc25 unwind label %bb.g   ; 6 uses

.noexc25:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !47, !alias.scope !1073
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc25
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !49   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc25
  store ptr %i.h, ptr %4, align 8, !tbaa !45, !alias.scope !1073
  %i.o = load i64, ptr %i.i, align 8, !tbaa !46
  store i64 %i.o, ptr %i.g, align 8, !tbaa !46, !alias.scope !1073
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.p = phi i64 [ %i.l, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !tbaa !49, !alias.scope !1073
  store ptr %i.i, ptr %i.f, align 8, !tbaa !45
  store i64 0, ptr %i.q, align 8, !tbaa !49
  store i8 0, ptr %i.i, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #53, !noalias !1074 ; 2 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !49, !noalias !1074
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc30 unwind label %bb.h

.noexc30:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26: ; preds = %bb.c
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %1, i64 noundef %i.s)
          to label %.noexc31 unwind label %bb.h   ; 6 uses

.noexc31:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !47, !alias.scope !1074
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !45   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

bb.e:                                             ; preds = %.noexc31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %.noexc31
  store ptr %i.y, ptr %3, align 8, !tbaa !45, !alias.scope !1074
  %i.af = load i64, ptr %i.z, align 8, !tbaa !46
  store i64 %i.af, ptr %i.x, align 8, !tbaa !46, !alias.scope !1074
  %.phi.trans.insert.i28 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre.i29 = load i64, ptr %.phi.trans.insert.i28, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.e
  %i.ag = phi i64 [ %i.ac, %bb.e ], [ %.pre.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !49, !alias.scope !1074
  store ptr %i.z, ptr %i.w, align 8, !tbaa !45
  store i64 0, ptr %i.ah, align 8, !tbaa !49
  store i8 0, ptr %i.z, align 8, !tbaa !46
  %i.aj = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.g
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.f
  %i.al = load i64, ptr %i.g, align 8, !tbaa !46
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  %i.an = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.c
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !46
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !49 ; 3 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %i.at = call i32 @strncmp(ptr noundef nonnull %0, ptr noundef %i.as, i64 noundef %i.ar) #55
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.i, label %bb.k

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26, %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.g
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.h
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !46
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.g
  %.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.av, %bb.h ]
  %i.ba = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.c
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

end_hunk_12
begin_hunk_13_@_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIwEEvPiPPT_:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = xor i32 %i.ah, 1701326125
  %i.aj = getelementptr i8, ptr %i.ag, i64 4
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = xor i32 %i.al, 28780
  %i.an = or i32 %i.ai, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25: ; preds = %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ar = load ptr, ptr %3, align 8, !tbaa !45    ; 3 uses
  %i.as = load i16, ptr %i.ar, align 1
  %i.at = icmp ne i16 %i.as, 26669
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
  %i.aw = load i16, ptr %i.ar, align 1
  %i.ax = icmp ne i16 %i.aw, 16173
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27
  %i.ba = load i16, ptr %i.ar, align 1
  %i.bb = icmp ne i16 %i.ba, 16175
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN7testing8internal15ParseStringFlagEPKcS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35
  %i.be = load i8, ptr %i.u, align 1
  switch i8 %i.be, label %.critedge [
    i8 45, label %.tail.i
    i8 47, label %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i
  ]

.tail.i:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 45
  %..i = select i1 %i.bh, i64 2, i64 1
  br label %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i

_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i: ; preds = %.tail.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36
  %.sink.i = phi i64 [ %..i, %.tail.i ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sink.i ; 3 uses
  %i.bj = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.bi, ptr noundef nonnull dereferenceable(16) @.str.442, i64 noundef 15) #55
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.critedge, label %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit3.i

_ZN7testing8internal10SkipPrefixEPKcPS2_.exit3.i: ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i
  %i.bl = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.bi, ptr noundef nonnull dereferenceable(7) @.str.250, i64 noundef 6) #55
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit

_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit: ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit3.i
  %i.bn = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.bi, ptr noundef nonnull dereferenceable(7) @.str.443, i64 noundef 6) #55
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit3.i, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i8 1, ptr @_ZN7testing8internal11g_help_flagE, align 1, !tbaa !95
  br label %.critedge

bb.l:                                             ; preds = %bb.g, %bb.k
  %i.bp = load i32, ptr %0, align 4, !tbaa !39    ; 4 uses
  %.not40 = icmp eq i32 %.02042, %i.bp
  br i1 %.not40, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bq = xor i32 %.02042, -1
  %i.br = add i32 %i.bp, %i.bq                    ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.br, 3
  br i1 %min.iters.check, label %.lr.ph.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, 8589934588              ; 3 uses
  %i.bu = add nsw i64 %n.vec, %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %index, %i.g                    ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = getelementptr i8, ptr %i.bw, i64 24
  %wide.load = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !280
  %wide.load56 = load <2 x ptr>, ptr %i.by, align 8, !tbaa !280
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x ptr> %wide.load, ptr %i.bz, align 8, !tbaa !280
  store <2 x ptr> %wide.load56, ptr %i.ca, align 8, !tbaa !280
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1084

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader57

.lr.ph.preheader57:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.l
  %i.cc = add nsw i32 %i.bp, -1
  store i32 %i.cc, ptr %0, align 4, !tbaa !39
  %i.cd = add nsw i32 %.02042, -1
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader57, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader57 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !280
  %i.cg = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !280
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.bp, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !1085

.critedge:                                        ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge
  %.1 = phi i32 [ %i.cd, %._crit_edge ], [ %.02042, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.02042, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit ], [ %.02042, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36 ], [ %.02042, %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i ]
  %i.ch = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.d
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %.critedge
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !46
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %i.cl = add nsw i32 %.1, 1                      ; 2 uses
  %i.cm = load i32, ptr %0, align 4, !tbaa !39
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.b, label %._crit_edge45, !llvm.loop !1086

bb.m:                                             ; preds = %._crit_edge45
  call fastcc void @_ZN7testing8internalL17PrintColorEncodedEPKc()
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge45
  ret void
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
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal7g_argvsB5cxx11E, i64 8), align 8, !tbaa !158
  %i.b = load ptr, ptr @_ZN7testing8internal7g_argvsB5cxx11E, align 8, !tbaa !157
  %.not14 = icmp eq ptr %i.a, %i.b
  br i1 %.not14, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !39
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.l, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.g

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIcEEvPiPPT_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.g = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit._crit_edge
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i9 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i9, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit._crit_edge, %bb.c, %bb.e
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(497) %i.l)
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  call void @_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal7g_argvsB5cxx11E, i64 8), align 8, !tbaa !158 ; 7 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal7g_argvsB5cxx11E, i64 16), align 8, !tbaa !159
  %.not.i.i10 = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i10, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !47
  %i.q = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.f, align 8, !tbaa !49   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.u, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.q, ptr %i.n, align 8, !tbaa !45
  %i.v = load i64, ptr %i.e, align 8, !tbaa !46
  store i64 %i.v, ptr %i.p, align 8, !tbaa !46
  %.pre = load i64, ptr %i.f, align 8, !tbaa !49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.w = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.s, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !49
  store ptr %i.e, ptr %2, align 8, !tbaa !45
  store i64 0, ptr %i.f, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal7g_argvsB5cxx11E, i64 8), align 8, !tbaa !158
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internal7g_argvsB5cxx11E, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.k

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.j
  %.pre18 = load ptr, ptr %2, align 8, !tbaa !45  ; 2 uses
  %i.z = icmp eq ptr %.pre18, %i.e
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !46
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %.pre18, i64 noundef %i.ab) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = load i32, ptr %0, align 4, !tbaa !39
  %i.ad = zext i32 %i.ac to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit._crit_edge, label %bb.g, !llvm.loop !1089

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.e
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.k
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !46
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %common.resume

bb.l:                                             ; preds = %bb.b, %bb.a, %_ZN7testing8internal15GetUnitTestImplEv.exit
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
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal7g_argvsB5cxx11E, i64 8), align 8, !tbaa !158
  %i.b = load ptr, ptr @_ZN7testing8internal7g_argvsB5cxx11E, align 8, !tbaa !157
  %.not15 = icmp eq ptr %i.a, %i.b
  br i1 %.not15, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !39
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.p, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.g

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIwEEvPiPPT_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.g = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit._crit_edge
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i9 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i9, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZN7testing7MessageD2Ev.exit3.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.u, %_ZN7testing7MessageD2Ev.exit3.i ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit._crit_edge, %bb.c, %bb.e
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(497) %i.l)
  br label %bb.p

bb.g:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53, !noalias !1095
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !1095
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280, !noalias !1095
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing7MessagelsEPw(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.n)
          to label %bb.h unwind label %bb.j, !noalias !1095 ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %2, align 8, !tbaa !52, !noalias !1096
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %i.p)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.j

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %bb.h
  %i.q = load ptr, ptr %2, align 8, !tbaa !52, !noalias !1095 ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i10, label %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(128) %i.q) #53, !inline_history !29
  br label %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !52, !noalias !1095 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i2.i, label %_ZN7testing7MessageD2Ev.exit3.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #53, !inline_history !29
  br label %_ZN7testing7MessageD2Ev.exit3.i

_ZN7testing7MessageD2Ev.exit3.i:                  ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53, !noalias !1095
  br label %common.resume

_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53, !noalias !1095
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal7g_argvsB5cxx11E, i64 8), align 8, !tbaa !158 ; 7 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal7g_argvsB5cxx11E, i64 16), align 8, !tbaa !159
  %.not.i.i11 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i11, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !47
  %i.ac = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !49  ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !45
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !46
  store i64 %i.ah, ptr %i.ab, align 8, !tbaa !46
  %.pre = load i64, ptr %i.f, align 8, !tbaa !49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ae, %bb.m ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !49
  store ptr %i.e, ptr %3, align 8, !tbaa !45
  store i64 0, ptr %i.f, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal7g_argvsB5cxx11E, i64 8), align 8, !tbaa !158
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internal7g_argvsB5cxx11E, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.o

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.n
  %.pre19 = load ptr, ptr %3, align 8, !tbaa !45  ; 2 uses
  %i.al = icmp eq ptr %.pre19, %i.e
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.am = load i64, ptr %i.e, align 8, !tbaa !46
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %.pre19, i64 noundef %i.an) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %0, align 4, !tbaa !39
  %i.ap = zext i32 %i.ao to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.ap
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit._crit_edge, label %bb.g, !llvm.loop !1094

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.e
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.o
  %i.at = load i64, ptr %i.e, align 8, !tbaa !46
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %common.resume

bb.p:                                             ; preds = %bb.b, %bb.a, %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7testing8internal16InDeathTestChildEv() local_unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 8), align 8, !tbaa !49
  %i.b = icmp eq i64 %i.a, 10
  br i1 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, align 8, !tbaa !45 ; 2 uses
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
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !49
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
define void @_ZN7testing14ExitedWithCodeC2Ei(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #17 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !1098
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7testing14ExitedWithCodeclEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
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
define void @_ZN7testing14KilledBySignalC2Ei(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #17 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !1100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7testing14KilledBySignalclEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  call void @_ZN7testing14ExitedWithCodeC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 0)
  %i.a = and i32 %0, 127
  %i.b = icmp ne i32 %i.a, 0
  %i.c = lshr i32 %0, 8
  %i.d = and i32 %i.c, 255
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp ne i32 %i.d, %i.e
  %.not2 = select i1 %i.b, i1 true, i1 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  ret i1 %.not2
}

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZN7testing8internal14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #37 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !361  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !374
  %i.k = tail call noundef ptr @_ZN7testing8internal5posix6FDOpenEiPKc(i32 noundef %i.j, ptr noundef nonnull @.str.171) ; 3 uses
  %i.l = tail call i32 @fputc(i32 noundef 73, ptr noundef %i.k) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !45
  %fputs7 = tail call i32 @fputs(ptr %i.m, ptr %i.k) ; 0 uses
  %i.n = tail call i32 @fflush(ptr noundef %i.k)  ; 0 uses
  tail call void @_exit(i32 noundef 1) #56
  unreachable

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.p = load ptr, ptr %0, align 8, !tbaa !45
  %fputs = tail call i32 @fputs(ptr %i.p, ptr %i.o) #62 ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.r = tail call i32 @fflush(ptr noundef %i.q)  ; 0 uses
  tail call void @abort() #59
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal5posix6FDOpenEiPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call noalias ptr @fdopen(i32 noundef %0, ptr noundef %1) #53
  ret ptr %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #38

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal23GetLastErrnoDescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call ptr @__errno_location() #58
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !47
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @strerror(i32 noundef %i.c) #53 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !47
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.414) #56
  unreachable

bb.c:                                             ; preds = %.thread, %bb.b
  %i.i = phi ptr [ %i.e, %.thread ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = phi ptr [ @.str.12, %.thread ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.k, ptr %i.a, align 8, !tbaa !48
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !45
  %i.n = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.n, ptr %i.i, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !46
  store i8 %i.p, ptr %i.o, align 1, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.j, i64 %i.k, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !49
  %i.s = load ptr, ptr %0, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #39

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal9DeathTestC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing8internal9DeathTestE, i64 16), ptr %0, align 8, !tbaa !57
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !180
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.noexc.i, label %bb.h

.noexc.i:                                         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 61, ptr %i.a, align 8, !tbaa !48
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.l, ptr %1, align 8, !tbaa !45
  %i.m = load i64, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.l, ptr noundef nonnull align 1 dereferenceable(61) @.str.259, i64 61, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  invoke void @_ZN7testing8internal14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.unreachable unwind label %bb.g

.unreachable:                                     ; preds = %.noexc
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

bb.g:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.k
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.t = load i64, ptr %i.k, align 8, !tbaa !46
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.f
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ], [ %i.q, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %common.resume

bb.h:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcPKNS0_2REES3_iPPS1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !366  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv() local_unnamed_addr #40 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, align 8, !tbaa !45
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal13DeathTestImpl26ReadAndInterpretStatusByteEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %10 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !384
  %i.f = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.c, i64 noundef 1)
  %i.g = trunc i64 %i.f to i32
  switch i32 %i.g, label %.critedge [
    i32 -1, label %bb.c
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #58
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.b, label %.critedge, !llvm.loop !1101

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.k, align 8, !tbaa !385
  br label %.preheader

bb.e:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.c, align 1, !tbaa !46    ; 2 uses
  switch i8 %i.l, label %bb.aj [
    i8 82, label %bb.f
    i8 84, label %bb.g
    i8 76, label %bb.h
    i8 73, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %i.m, align 8, !tbaa !385
  br label %.preheader

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 4, ptr %i.n, align 8, !tbaa !385
  br label %.preheader

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2, ptr %i.o, align 8, !tbaa !385
  br label %.preheader

bb.i:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.d, align 4, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #53
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %i.t = invoke i64 @read(i32 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 255)
          to label %bb.k unwind label %bb.o       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.w = and i64 %i.t, 2147483647
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.w
  store i8 0, ptr %i.x, align 1, !tbaa !46
  %i.y = load ptr, ptr %4, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  store i32 1, ptr %i.q, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %3, align 8, !tbaa !57
  store ptr %i.z, ptr %i.s, align 8, !tbaa !59
  %i.aa = call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.b) #55 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 1 dereferenceable(256) %i.b, i64 noundef %i.aa)
          to label %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %.body.i

_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i:    ; preds = %bb.m, %bb.l
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %.backedge

.backedge:                                        ; preds = %_ZN7testing7MessagelsIA256_cEERS0_RKT_.exit.i, %bb.q
  br label %bb.j, !llvm.loop !1102

bb.o:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.k
  switch i32 %i.u, label %..critedge_crit_edge.i [
    i32 -1, label %bb.q
    i32 0, label %bb.r
  ]

..critedge_crit_edge.i:                           ; preds = %bb.p
  %.pre.i = tail call ptr @__errno_location() #58
  %.pre = load i32, ptr %.pre.i, align 4, !tbaa !39
  br label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.ae = tail call ptr @__errno_location() #58
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 4
  br i1 %i.ag, label %.backedge, label %.critedge.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.261, i32 noundef 336)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  %i.ah = load ptr, ptr %4, align 8, !tbaa !52, !noalias !1123
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %i.ah)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.u

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %bb.s
  %i.ai = load ptr, ptr %6, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ai, i64 noundef %i.ak)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.v ; 0 uses
end_hunk_13
begin_hunk_14_@_ZN7testing8internal13DeathTestImpl5AbortENS0_9DeathTest11AbortReasonE:bb.a

.noexc36:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.cy, ptr %7, align 8, !tbaa !47, !alias.scope !1154
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !45 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 5 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.t:                                             ; preds = %.noexc36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !49 ; 2 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  %i.df = add nuw nsw i64 %i.dd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cy, ptr noundef nonnull align 8 dereferenceable(1) %i.da, i64 %i.df, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc36
  store ptr %i.cz, ptr %7, align 8, !tbaa !45, !alias.scope !1154
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !46
  store i64 %i.dg, ptr %i.cy, align 8, !tbaa !46, !alias.scope !1154
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !49
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !49, !alias.scope !1154
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !45
  store i64 0, ptr %i.dh, align 8, !tbaa !49
  store i8 0, ptr %i.da, align 8, !tbaa !46
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !49, !noalias !1155
  %i.dm = and i64 %i.dl, -2
  %i.dn = icmp eq i64 %i.dm, 4611686018427387902
  br i1 %i.dn, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37

bb.u:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc42 unwind label %bb.an

.noexc42:                                         ; preds = %bb.u
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.do = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.267, i64 noundef 2)
          to label %.noexc43 unwind label %bb.an  ; 6 uses

.noexc43:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.dp, ptr %6, align 8, !tbaa !47, !alias.scope !1155
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !45 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 5 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

bb.v:                                             ; preds = %.noexc43
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !49 ; 3 uses
  %i.dv = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i64 %i.du, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dp, ptr noundef nonnull align 8 dereferenceable(1) %i.dr, i64 %i.dw, i1 false)
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %.noexc43
  store ptr %i.dq, ptr %6, align 8, !tbaa !45, !alias.scope !1155
  %i.dx = load i64, ptr %i.dr, align 8, !tbaa !46
  store i64 %i.dx, ptr %i.dp, align 8, !tbaa !46, !alias.scope !1155
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.pre.i40 = load i64, ptr %.phi.trans.insert.i39, align 8, !tbaa !49
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.v
  %i.dy = phi i64 [ %i.du, %bb.v ], [ %.pre.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.dy, ptr %i.ea, align 8, !tbaa !49, !alias.scope !1155
  store ptr %i.dr, ptr %i.do, align 8, !tbaa !45
  store i64 0, ptr %i.dz, align 8, !tbaa !49
  store i8 0, ptr %i.dr, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !49, !noalias !1156
  %i.ec = add i64 %i.eb, -4611686018427387865
  %i.ed = icmp ult i64 %i.ec, 39
  br i1 %i.ed, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc50 unwind label %bb.ao

.noexc50:                                         ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45: ; preds = %bb.w
  %i.ee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.270, i64 noundef 39)
          to label %.noexc51 unwind label %bb.ao  ; 6 uses

.noexc51:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.ef, ptr %5, align 8, !tbaa !47, !alias.scope !1156
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !45 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 5 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

bb.y:                                             ; preds = %.noexc51
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !49 ; 3 uses
  %i.el = icmp ult i64 %i.ek, 16
  call void @llvm.assume(i1 %i.el)
  %i.em = add nuw nsw i64 %i.ek, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ef, ptr noundef nonnull align 8 dereferenceable(1) %i.eh, i64 %i.em, i1 false)
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %.noexc51
  store ptr %i.eg, ptr %5, align 8, !tbaa !45, !alias.scope !1156
  %i.en = load i64, ptr %i.eh, align 8, !tbaa !46
  store i64 %i.en, ptr %i.ef, align 8, !tbaa !46, !alias.scope !1156
  %.phi.trans.insert.i47 = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.pre.i48 = load i64, ptr %.phi.trans.insert.i47, align 8, !tbaa !49
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.y
  %i.eo = phi i64 [ %i.ek, %bb.y ], [ %.pre.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.eo, ptr %i.eq, align 8, !tbaa !49, !alias.scope !1156
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !45
  store i64 0, ptr %i.ep, align 8, !tbaa !49
  store i8 0, ptr %i.eh, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !49, !noalias !1157
  %i.es = add i64 %i.er, -4611686018427387898
  %i.et = icmp ult i64 %i.es, 6
  br i1 %i.et, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc58 unwind label %bb.ap

.noexc58:                                         ; preds = %bb.aa
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53: ; preds = %bb.z
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.269, i64 noundef 6)
          to label %.noexc59 unwind label %bb.ap  ; 6 uses

.noexc59:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ev, ptr %4, align 8, !tbaa !47, !alias.scope !1157
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !45 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 5 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

bb.ab:                                            ; preds = %.noexc59
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !49 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fb)
  %i.fc = add nuw nsw i64 %i.fa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ev, ptr noundef nonnull align 8 dereferenceable(1) %i.ex, i64 %i.fc, i1 false)
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %.noexc59
  store ptr %i.ew, ptr %4, align 8, !tbaa !45, !alias.scope !1157
  %i.fd = load i64, ptr %i.ex, align 8, !tbaa !46
  store i64 %i.fd, ptr %i.ev, align 8, !tbaa !46, !alias.scope !1157
  %.phi.trans.insert.i55 = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.pre.i56 = load i64, ptr %.phi.trans.insert.i55, align 8, !tbaa !49
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.ab
  %i.fe = phi i64 [ %i.fa, %bb.ab ], [ %.pre.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.fe, ptr %i.fg, align 8, !tbaa !49, !alias.scope !1157
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !45
  store i64 0, ptr %i.ff, align 8, !tbaa !49
  store i8 0, ptr %i.ex, align 8, !tbaa !46
  %i.fh = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %bb.ad, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !72

bb.ad:                                            ; preds = %bb.ac
  %i.fj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !1149
  %.not.i.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.af unwind label %bb.ag, !inline_history !1149

bb.af:                                            ; preds = %bb.ae
  %i.fk = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !1149 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !1149
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !1149
  br label %.body62

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.af, %bb.ad, %bb.ac
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 464
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !361 ; 2 uses
  %.not.i61 = icmp eq ptr %i.fo, null
  br i1 %.not.i61, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !374
  %i.fr = call noalias noundef ptr @fdopen(i32 noundef %i.fq, ptr noundef nonnull @.str.171) #53 ; 3 uses
  %i.fs = call i32 @fputc(i32 noundef 73, ptr noundef %i.fr), !inline_history !1158 ; 0 uses
  %i.ft = load ptr, ptr %4, align 8, !tbaa !45
  %fputs7.i = call i32 @fputs(ptr %i.ft, ptr %i.fr), !inline_history !1158 ; 0 uses
  %i.fu = call i32 @fflush(ptr noundef %i.fr), !inline_history !1158 ; 0 uses
  invoke void @_exit(i32 noundef 1) #56
          to label %.noexc64 unwind label %bb.aq, !inline_history !1158

.noexc64:                                         ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.fw = load ptr, ptr %4, align 8, !tbaa !45
  %fputs.i = call i32 @fputs(ptr %i.fw, ptr %i.fv) #62, !inline_history !1158 ; 0 uses
  %i.fx = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.fy = call i32 @fflush(ptr noundef %i.fx), !inline_history !1158 ; 0 uses
  call void @abort() #59, !inline_history !1158
  unreachable

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i25, %bb.g
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.al:                                            ; preds = %bb.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.s, %.critedge.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37, %bb.u
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45, %bb.x
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53, %bb.aa
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.aq:                                            ; preds = %bb.ah
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body62

.body62:                                          ; preds = %bb.ag, %bb.aq
  %eh.lpad-body63 = phi { ptr, i32 } [ %i.gg, %bb.aq ], [ %i.fl, %bb.ag ] ; 2 uses
  %i.gh = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.ev
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %.body62
  %i.gj = load i64, ptr %i.ev, align 8, !tbaa !46
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %.body62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.gf, %bb.ap ], [ %eh.lpad-body63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %eh.lpad-body63, %.body62 ] ; 2 uses
  %i.gl = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ef
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.gn = load i64, ptr %i.ef, align 8, !tbaa !46
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.ao
  %.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.ao ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  %i.gp = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.dp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.gr = load i64, ptr %i.dp, align 8, !tbaa !46
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.an
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.an ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  %i.gt = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !46
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.am
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gc, %bb.am ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 2 uses
  %i.gy = load ptr, ptr %11, align 8, !tbaa !45   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !46
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #54
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.al, %_ZN7testing7MessageD2Ev.exit3.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body.i, %_ZN7testing7MessageD2Ev.exit3.i ], [ %i.gb, %bb.al ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  %i.hd = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.ao
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %.body
  %i.hf = load i64, ptr %i.ao, align 8, !tbaa !46
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.ak
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ga, %bb.ak ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  %i.hh = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.y
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.hj = load i64, ptr %i.y, align 8, !tbaa !46
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.aj
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.aj ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ]
  %i.hl = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.o
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.hn = load i64, ptr %i.o, align 8, !tbaa !46
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

.critedge22:                                      ; preds = %bb.b
  tail call void @_exit(i32 noundef 1) #56
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7testing8internal13DeathTestImpl6PassedEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %3 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
end_hunk_14
begin_hunk_15_@_ZN7testing8internal15NoExecDeathTest10AssumeRoleEv:bb.a
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !49 ; 3 uses
  %i.vx = icmp ult i64 %i.vw, 16
  call void @llvm.assume(i1 %i.vx)
  %i.vy = add nuw nsw i64 %i.vw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vr, ptr noundef nonnull align 8 dereferenceable(1) %i.vt, i64 %i.vy, i1 false)
  br label %bb.dm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %.noexc366
  store ptr %i.vs, ptr %35, align 8, !tbaa !45, !alias.scope !1292
  %i.vz = load i64, ptr %i.vt, align 8, !tbaa !46
  store i64 %i.vz, ptr %i.vr, align 8, !tbaa !46, !alias.scope !1292
  %.phi.trans.insert.i362 = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %.pre.i363 = load i64, ptr %.phi.trans.insert.i362, align 8, !tbaa !49
  br label %bb.dm

bb.dm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361, %bb.dl
  %i.wa = phi i64 [ %i.vw, %bb.dl ], [ %.pre.i363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361 ]
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.wc = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.wa, ptr %i.wc, align 8, !tbaa !49, !alias.scope !1292
  store ptr %i.vt, ptr %i.vq, align 8, !tbaa !45
  store i64 0, ptr %i.wb, align 8, !tbaa !49
  store i8 0, ptr %i.vt, align 8, !tbaa !46
  invoke void @_ZN7testing8internal14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %.unreachable545 unwind label %bb.dv

.unreachable545:                                  ; preds = %bb.dm
  unreachable

bb.dn:                                            ; preds = %.critedge
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i300, %bb.cn
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i308, %bb.cq
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409

bb.dq:                                            ; preds = %bb.cs
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %.body324

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i329, %bb.dc, %.critedge.i335
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i344, %bb.de
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i352, %bb.dh
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i360, %bb.dk
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

bb.dv:                                            ; preds = %bb.dm
  %i.wl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wm = load ptr, ptr %35, align 8, !tbaa !45   ; 2 uses
  %i.wn = icmp eq ptr %i.wm, %i.vr
  br i1 %i.wn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392: ; preds = %bb.dv
  %i.wo = load i64, ptr %i.vr, align 8, !tbaa !46
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wp) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392, %bb.du
  %.pn79 = phi { ptr, i32 } [ %i.wk, %bb.du ], [ %i.wl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392 ], [ %i.wl, %bb.dv ] ; 2 uses
  %i.wq = load ptr, ptr %36, align 8, !tbaa !45   ; 2 uses
  %i.wr = icmp eq ptr %i.wq, %i.vb
  br i1 %i.wr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394
  %i.ws = load i64, ptr %i.vb, align 8, !tbaa !46
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wt) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395, %bb.dt
  %.pn79.pn = phi { ptr, i32 } [ %i.wj, %bb.dt ], [ %.pn79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394 ] ; 2 uses
  %i.wu = load ptr, ptr %37, align 8, !tbaa !45   ; 2 uses
  %i.wv = icmp eq ptr %i.wu, %i.ul
  br i1 %i.wv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397
  %i.ww = load i64, ptr %i.ul, align 8, !tbaa !46
  %i.wx = add i64 %i.ww, 1
  call void @_ZdlPvm(ptr noundef %i.wu, i64 noundef %i.wx) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398, %bb.ds
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.wi, %bb.ds ], [ %.pn79.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398 ], [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397 ] ; 2 uses
  %i.wy = load ptr, ptr %38, align 8, !tbaa !45   ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.xa = icmp eq ptr %i.wy, %i.wz
  br i1 %i.xa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  %i.xb = load i64, ptr %i.wz, align 8, !tbaa !46
  %i.xc = add i64 %i.xb, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xc) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401, %bb.dr
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.wh, %bb.dr ], [ %.pn79.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401 ], [ %.pn79.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ] ; 2 uses
  %i.xd = load ptr, ptr %42, align 8, !tbaa !45   ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.xf = icmp eq ptr %i.xd, %i.xe
  br i1 %i.xf, label %.body324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403
  %i.xg = load i64, ptr %i.xe, align 8, !tbaa !46
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xd, i64 noundef %i.xh) #54
  br label %.body324

.body324:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %bb.dq, %_ZN7testing7MessageD2Ev.exit3.i319
  %.pn79.pn.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body.i317, %_ZN7testing7MessageD2Ev.exit3.i319 ], [ %i.wg, %bb.dq ], [ %.pn79.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ], [ %.pn79.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #53
  %i.xi = load ptr, ptr %39, align 8, !tbaa !45   ; 2 uses
  %i.xj = icmp eq ptr %i.xi, %i.rk
  br i1 %i.xj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407: ; preds = %.body324
  %i.xk = load i64, ptr %i.rk, align 8, !tbaa !46
  %i.xl = add i64 %i.xk, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xl) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409: ; preds = %.body324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407, %bb.dp
  %.pn79.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.wf, %bb.dp ], [ %.pn79.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407 ], [ %.pn79.pn.pn.pn.pn, %.body324 ] ; 2 uses
  %i.xm = load ptr, ptr %40, align 8, !tbaa !45   ; 2 uses
  %i.xn = icmp eq ptr %i.xm, %i.qu
  br i1 %i.xn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409
  %i.xo = load i64, ptr %i.qu, align 8, !tbaa !46
  %i.xp = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %i.xm, i64 noundef %i.xp) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410, %bb.do
  %.pn79.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.we, %bb.do ], [ %.pn79.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410 ], [ %.pn79.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409 ] ; 2 uses
  %i.xq = load ptr, ptr %41, align 8, !tbaa !45   ; 2 uses
  %i.xr = icmp eq ptr %i.xq, %i.qk
  br i1 %i.xr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412
  %i.xs = load i64, ptr %i.qk, align 8, !tbaa !46
  %i.xt = add i64 %i.xs, 1
  call void @_ZdlPvm(ptr noundef %i.xq, i64 noundef %i.xt) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413, %bb.dn
  %.pn79.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.wd, %bb.dn ], [ %.pn79.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413 ], [ %.pn79.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #53
  br label %bb.fm

.critedge91:                                      ; preds = %.preheader
  %i.xu = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !39
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.xv, ptr %i.xw, align 8, !tbaa !386
  %i.xx = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.xy = icmp eq i8 %i.xx, 0
  br i1 %i.xy, label %bb.dw, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.dw:                                            ; preds = %.critedge91
  %i.xz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.xz, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.dy unwind label %bb.dz, !inline_history !3

bb.dy:                                            ; preds = %bb.dx
  %i.ya = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %.body, %bb.fm, %bb.dz
  %common.resume.op = phi { ptr, i32 } [ %i.yb, %bb.dz ], [ %.pn79.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fm ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.dz:                                            ; preds = %bb.dx
  %i.yb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %.critedge91, %bb.dw, %bb.dy
  %i.yc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 400
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !181
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  store i8 0, ptr %i.yf, align 8, !tbaa !349
  store i1 true, ptr @_ZN7testing8internalL26g_in_fast_death_test_childE, align 1
  br label %bb.fl

bb.ea:                                            ; preds = %.preheader548, %bb.eb
  %i.yg = load i32, ptr %i.qd, align 4, !tbaa !39
  %i.yh = call i32 @close(i32 noundef %i.yg)
  %i.yi = icmp eq i32 %i.yh, -1
  br i1 %i.yi, label %bb.eb, label %.critedge92

bb.eb:                                            ; preds = %bb.ea
  %i.yj = tail call ptr @__errno_location() #58
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !39
  %i.yl = icmp eq i32 %i.yk, 4
  br i1 %i.yl, label %bb.ea, label %.critedge2, !llvm.loop !1252

.critedge2:                                       ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #53
  %i.ym = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  store ptr %i.ym, ptr %49, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 19, ptr %i.a, align 8, !tbaa !48
  %i.yn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc418 unwind label %bb.fc ; 2 uses

.noexc418:                                        ; preds = %.critedge2
  store ptr %i.yn, ptr %49, align 8, !tbaa !45
  %i.yo = load i64, ptr %i.a, align 8, !tbaa !48  ; 3 uses
  store i64 %i.yo, ptr %i.ym, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.yn, ptr noundef nonnull align 1 dereferenceable(19) @.str.265, i64 19, i1 false)
  %i.yp = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  store i64 %i.yo, ptr %i.yp, align 8, !tbaa !49
  %i.yq = load ptr, ptr %49, align 8, !tbaa !45
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yo
  store i8 0, ptr %i.yr, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.ys = load i64, ptr %i.yp, align 8, !tbaa !49, !noalias !1293
  %i.yt = add i64 %i.ys, -4611686018427387811
  %i.yu = icmp ult i64 %i.yt, 93
  br i1 %i.yu, label %bb.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i420

bb.ec:                                            ; preds = %.noexc418
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc425 unwind label %bb.fd

.noexc425:                                        ; preds = %bb.ec
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i420: ; preds = %.noexc418
  %i.yv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @.str.261, i64 noundef 93)
          to label %.noexc426 unwind label %bb.fd ; 6 uses

.noexc426:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i420
  %i.yw = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 5 uses
  store ptr %i.yw, ptr %48, align 8, !tbaa !47, !alias.scope !1293
  %i.yx = load ptr, ptr %i.yv, align 8, !tbaa !45 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 16 ; 5 uses
  %i.yz = icmp eq ptr %i.yx, %i.yy
  br i1 %i.yz, label %bb.ed, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

bb.ed:                                            ; preds = %.noexc426
  %i.za = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !49 ; 3 uses
  %i.zc = icmp ult i64 %i.zb, 16
  call void @llvm.assume(i1 %i.zc)
  %i.zd = add nuw nsw i64 %i.zb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.yw, ptr noundef nonnull align 8 dereferenceable(1) %i.yy, i64 %i.zd, i1 false)
  br label %bb.ee

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %.noexc426
  store ptr %i.yx, ptr %48, align 8, !tbaa !45, !alias.scope !1293
  %i.ze = load i64, ptr %i.yy, align 8, !tbaa !46
  store i64 %i.ze, ptr %i.yw, align 8, !tbaa !46, !alias.scope !1293
  %.phi.trans.insert.i422 = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %.pre.i423 = load i64, ptr %.phi.trans.insert.i422, align 8, !tbaa !49
  br label %bb.ee

bb.ee:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421, %bb.ed
  %i.zf = phi i64 [ %i.zb, %bb.ed ], [ %.pre.i423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ]
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %i.zh = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  store i64 %i.zf, ptr %i.zh, align 8, !tbaa !49, !alias.scope !1293
  store ptr %i.yy, ptr %i.yv, align 8, !tbaa !45
  store i64 0, ptr %i.zg, align 8, !tbaa !49
  store i8 0, ptr %i.yy, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !49, !noalias !1294
  %i.zj = add i64 %i.zi, -4611686018427387897
  %i.zk = icmp ult i64 %i.zj, 7
  br i1 %i.zk, label %bb.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i428

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc433 unwind label %bb.fe

.noexc433:                                        ; preds = %bb.ef
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i428: ; preds = %bb.ee
  %i.zl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @.str.266, i64 noundef 7)
          to label %.noexc434 unwind label %bb.fe ; 6 uses

.noexc434:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i428
  %i.zm = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 7 uses
  store ptr %i.zm, ptr %47, align 8, !tbaa !47, !alias.scope !1294
  %i.zn = load ptr, ptr %i.zl, align 8, !tbaa !45 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 16 ; 5 uses
  %i.zp = icmp eq ptr %i.zn, %i.zo
  br i1 %i.zp, label %bb.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429

bb.eg:                                            ; preds = %.noexc434
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !49 ; 3 uses
  %i.zs = icmp ult i64 %i.zr, 16
  call void @llvm.assume(i1 %i.zs)
  %i.zt = add nuw nsw i64 %i.zr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.zm, ptr noundef nonnull align 8 dereferenceable(1) %i.zo, i64 %i.zt, i1 false)
  br label %bb.eh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429: ; preds = %.noexc434
  store ptr %i.zn, ptr %47, align 8, !tbaa !45, !alias.scope !1294
  %i.zu = load i64, ptr %i.zo, align 8, !tbaa !46
  store i64 %i.zu, ptr %i.zm, align 8, !tbaa !46, !alias.scope !1294
  %.phi.trans.insert.i430 = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %.pre.i431 = load i64, ptr %.phi.trans.insert.i430, align 8, !tbaa !49
  br label %bb.eh

bb.eh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429, %bb.eg
  %i.zv = phi i64 [ %i.zr, %bb.eg ], [ %.pre.i431, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429 ]
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zx = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  store i64 %i.zv, ptr %i.zx, align 8, !tbaa !49, !alias.scope !1294
  store ptr %i.zo, ptr %i.zl, align 8, !tbaa !45
  store i64 0, ptr %i.zw, align 8, !tbaa !49
  store i8 0, ptr %i.zo, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53, !noalias !1295
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc443 unwind label %bb.ff

.noexc443:                                        ; preds = %bb.eh
  %i.zy = load ptr, ptr %2, align 8, !tbaa !52, !noalias !1295
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53, !noalias !1295
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1, ptr %i.aaa, align 8, !tbaa !55, !noalias !1295
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aab, i8 0, i64 24, i1 false), !noalias !1295
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %1, align 8, !tbaa !57, !noalias !1295
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.zz, ptr %i.aac, align 8, !tbaa !59, !noalias !1295
  %i.aad = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 869)
          to label %bb.ej unwind label %bb.ei, !noalias !1295 ; 0 uses

bb.ei:                                            ; preds = %.noexc443
  %i.aae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %1) #53, !noalias !1295
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53, !noalias !1295
  br label %.body.i436

bb.ej:                                            ; preds = %.noexc443
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %1) #53, !noalias !1295
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53, !noalias !1295
  %i.aaf = load ptr, ptr %2, align 8, !tbaa !52, !noalias !1296
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %50, ptr noundef %i.aaf)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i440 unwind label %bb.el

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i440: ; preds = %bb.ej
  %i.aag = load ptr, ptr %2, align 8, !tbaa !52, !noalias !1295 ; 3 uses
  %.not.i.i.i.i441 = icmp eq ptr %i.aag, null
  br i1 %.not.i.i.i.i441, label %bb.en, label %bb.ek

bb.ek:                                            ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i440
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !57
end_hunk_15
begin_hunk_16_@_ZN7testing8internal14GetThreadCountEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i
  %i.bz = load i64, ptr %i.bm, align 8, !tbaa !46
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.ca) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %_ZN7testing7MessageD2Ev.exit14
  %.pn4 = phi { ptr, i32 } [ %.pn, %_ZN7testing7MessageD2Ev.exit14 ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal13CaptureStderrEv() local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal13CaptureStreamEiPKcPPNS0_14CapturedStreamE(i32 noundef 2, ptr noundef nonnull @.str.312, ptr noundef nonnull @_ZN7testing8internalL17g_captured_stderrE)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #19

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7testing8internal21StackLowerThanAddressEPKvPb(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) local_unnamed_addr #41 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  %i.b = icmp ult ptr %i.a, %0
  %i.c = zext i1 %i.b to i8
  store i8 %i.c, ptr %1, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7testing8internal14StackGrowsDownEv() local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #53
  call void @_ZN7testing8internal21StackLowerThanAddressEPKvPb(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.c = load i8, ptr %i.b, align 1, !tbaa !95, !range !96, !noundef !97
  %i.d = trunc nuw i8 %i.c to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN7testing8internal13ExecDeathTest10AssumeRoleEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %13 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"struct.testing::internal::ExecDeathTestArgs", align 8 ; 7 uses
  %16 = alloca %struct.sigaction, align 8         ; 5 uses
  %17 = alloca %struct.sigaction, align 8         ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %62 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %63 = alloca %"class.testing::Message", align 8 ; 8 uses
  %64 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %65 = alloca %"class.testing::Message", align 8 ; 8 uses
  %66 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %67 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %68 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %69 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca [2 x i32], align 4                ; 7 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %105 = alloca %"class.testing::internal::Arguments", align 8 ; 15 uses
  %106 = alloca %"class.std::vector.33", align 8  ; 7 uses
  %107 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %111 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %112 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %113 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.o = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.pb, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.e ], [ %.pn115.pn.pn.pn.pn.pn, %bb.pb ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !361  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !180  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  %i.z = load i32, ptr %i.y, align 8, !tbaa !299
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !374
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !386
  br label %bb.pc

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #53
  %i.ad = call i32 @pipe(ptr noundef nonnull %i.n) #53
  %.not778 = icmp eq i32 %i.ad, -1
  br i1 %.not778, label %.noexc.i, label %bb.am

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #53
  %i.ae = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 4 uses
  store ptr %i.ae, ptr %75, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #53
  store i64 19, ptr %i.m, align 8, !tbaa !48
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc unwind label %bb.ae    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.af, ptr %75, align 8, !tbaa !45
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !48  ; 3 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.af, ptr noundef nonnull align 1 dereferenceable(19) @.str.265, i64 19, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !49
  %i.ai = load ptr, ptr %75, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !49, !noalias !1486
  %i.al = add i64 %i.ak, -4611686018427387811
  %i.am = icmp ult i64 %i.al, 93
  br i1 %i.am, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc123 unwind label %bb.af

.noexc123:                                        ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.noexc
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull @.str.261, i64 noundef 93)
          to label %.noexc124 unwind label %bb.af ; 6 uses

.noexc124:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 5 uses
  store ptr %i.ao, ptr %74, align 8, !tbaa !47, !alias.scope !1486
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !45 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc124
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !49 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc124
  store ptr %i.ap, ptr %74, align 8, !tbaa !45, !alias.scope !1486
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !46
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !46, !alias.scope !1486
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.ax = phi i64 [ %i.at, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !49, !alias.scope !1486
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !45
  store i64 0, ptr %i.ay, align 8, !tbaa !49
  store i8 0, ptr %i.aq, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !49, !noalias !1487
  %i.bb = add i64 %i.ba, -4611686018427387897
  %i.bc = icmp ult i64 %i.bb, 7
  br i1 %i.bc, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i125

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc129 unwind label %bb.ag

.noexc129:                                        ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i125: ; preds = %bb.j
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull @.str.266, i64 noundef 7)
          to label %.noexc130 unwind label %bb.ag ; 6 uses

.noexc130:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i125
  %i.be = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 7 uses
  store ptr %i.be, ptr %73, align 8, !tbaa !47, !alias.scope !1487
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !45 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

bb.l:                                             ; preds = %.noexc130
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !49 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %.noexc130
  store ptr %i.bf, ptr %73, align 8, !tbaa !45, !alias.scope !1487
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !46
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !46, !alias.scope !1487
  %.phi.trans.insert.i127 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.pre.i128 = load i64, ptr %.phi.trans.insert.i127, align 8, !tbaa !49
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.l
  %i.bn = phi i64 [ %i.bj, %bb.l ], [ %.pre.i128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !49, !alias.scope !1487
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !45
  store i64 0, ptr %i.bo, align 8, !tbaa !49
  store i8 0, ptr %i.bg, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #53, !noalias !1488
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %69)
          to label %.noexc132 unwind label %bb.ah

.noexc132:                                        ; preds = %bb.m
  %i.bq = load ptr, ptr %69, align 8, !tbaa !52, !noalias !1488
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #53, !noalias !1488
  %i.bs = getelementptr inbounds nuw i8, ptr %68, i64 32
  store i32 1, ptr %i.bs, align 8, !tbaa !55, !noalias !1488
  %i.bt = getelementptr inbounds nuw i8, ptr %68, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false), !noalias !1488
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %68, align 8, !tbaa !57, !noalias !1488
  %i.bu = getelementptr inbounds nuw i8, ptr %68, i64 40
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !59, !noalias !1488
  %i.bv = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %68, i64 noundef 1131)
          to label %bb.o unwind label %bb.n, !noalias !1488 ; 0 uses

bb.n:                                             ; preds = %.noexc132
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %68) #53, !noalias !1488
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #53, !noalias !1488
  br label %.body.i

bb.o:                                             ; preds = %.noexc132
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %68) #53, !noalias !1488
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #53, !noalias !1488
  %i.bx = load ptr, ptr %69, align 8, !tbaa !52, !noalias !1489
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr noundef %i.bx)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.q

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %bb.o
  %i.by = load ptr, ptr %69, align 8, !tbaa !52, !noalias !1488 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.p

end_hunk_16
begin_hunk_17_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748, %bb.or
  %.pn105.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cid, %bb.or ], [ %.pn105.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748 ], [ %.pn105.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #53
  br label %.body570

.critedge122:                                     ; preds = %bb.mt
  %i.cju = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.171.i, ptr %i.cju, align 4, !tbaa !397
  %i.cjv = load i32, ptr %i.n, align 4, !tbaa !39
  %i.cjw = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.cjv, ptr %i.cjw, align 4, !tbaa !384
  %i.cjx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cjx, align 8, !tbaa !387
  %i.cjy = load ptr, ptr %105, align 8, !tbaa !408 ; 3 uses
  %i.cjz = load ptr, ptr %i.afr, align 8, !tbaa !408
  %.not4.i = icmp eq ptr %i.cjy, %i.cjz
  br i1 %.not4.i, label %._crit_edge.i, label %.lr.ph.i751

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i751
  %.pre.i753 = load ptr, ptr %105, align 8, !tbaa !402
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge122
  %i.cka = phi ptr [ %.pre.i753, %._crit_edge.loopexit.i ], [ %i.cjy, %.critedge122 ] ; 3 uses
  %.not.i.i.i.i754 = icmp eq ptr %i.cka, null
  br i1 %.not.i.i.i.i754, label %_ZN7testing8internal9ArgumentsD2Ev.exit, label %bb.pa

bb.pa:                                            ; preds = %._crit_edge.i
  %i.ckb = load ptr, ptr %i.afj, align 8, !tbaa !403
  %i.ckc = ptrtoint ptr %i.ckb to i64
  %i.ckd = ptrtoint ptr %i.cka to i64
  %i.cke = sub i64 %i.ckc, %i.ckd
  call void @_ZdlPvm(ptr noundef nonnull %i.cka, i64 noundef %i.cke) #54
  br label %_ZN7testing8internal9ArgumentsD2Ev.exit

.lr.ph.i751:                                      ; preds = %.critedge122, %.lr.ph.i751
  %.sroa.01.05.i = phi ptr [ %i.ckg, %.lr.ph.i751 ], [ %i.cjy, %.critedge122 ] ; 2 uses
  %i.ckf = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !276
  call void @free(ptr noundef %i.ckf) #53
  %i.ckg = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  %i.ckh = load ptr, ptr %i.afr, align 8, !tbaa !408
  %.not.i752 = icmp eq ptr %i.ckg, %i.ckh
  br i1 %.not.i752, label %._crit_edge.loopexit.i, label %.lr.ph.i751, !llvm.loop !30

_ZN7testing8internal9ArgumentsD2Ev.exit:          ; preds = %._crit_edge.i, %bb.pa
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #53
  %i.cki = load ptr, ptr %91, align 8, !tbaa !45  ; 2 uses
  %i.ckj = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 2 uses
  %i.ckk = icmp eq ptr %i.cki, %i.ckj
  br i1 %i.ckk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756: ; preds = %_ZN7testing8internal9ArgumentsD2Ev.exit
  %i.ckl = load i64, ptr %i.ckj, align 8, !tbaa !46
  %i.ckm = add i64 %i.ckl, 1
  call void @_ZdlPvm(ptr noundef %i.cki, i64 noundef %i.ckm) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758: ; preds = %_ZN7testing8internal9ArgumentsD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #53
  %i.ckn = load ptr, ptr %84, align 8, !tbaa !45  ; 2 uses
  %i.cko = icmp eq ptr %i.ckn, %i.qu
  br i1 %i.cko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i759

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i759: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758
  %i.ckp = load i64, ptr %i.qu, align 8, !tbaa !46
  %i.ckq = add i64 %i.ckp, 1
  call void @_ZdlPvm(ptr noundef %i.ckn, i64 noundef %i.ckq) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i759
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #53
  br label %bb.pc

.body570:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726, %.body547
  %.pn115.pn = phi { ptr, i32 } [ %.pn101, %.body547 ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750 ], [ %i.chy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726 ], [ %.pn116.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.mq ], [ %lpad.loopexit.split-lp1315, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7testing8internal9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %105) #53
  br label %.body540

.body540:                                         ; preds = %bb.eg, %bb.ef, %.body570
  %.pn115.pn.pn = phi { ptr, i32 } [ %.pn115.pn, %.body570 ], [ %i.afl, %bb.ef ], [ %i.afl, %bb.eg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #53
  %i.ckr = load ptr, ptr %91, align 8, !tbaa !45  ; 2 uses
  %i.cks = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 2 uses
  %i.ckt = icmp eq ptr %i.ckr, %i.cks
  br i1 %i.ckt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i762

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i762: ; preds = %.body540
  %i.cku = load i64, ptr %i.cks, align 8, !tbaa !46
  %i.ckv = add i64 %i.cku, 1
  call void @_ZdlPvm(ptr noundef %i.ckr, i64 noundef %i.ckv) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764: ; preds = %.body540, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i762, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723
  %.pn115.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723 ], [ %.pn115.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i762 ], [ %.pn115.pn.pn, %.body540 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #53
  %i.ckw = load ptr, ptr %84, align 8, !tbaa !45  ; 2 uses
  %i.ckx = icmp eq ptr %i.ckw, %i.qu
  br i1 %i.ckx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764
  %i.cky = load i64, ptr %i.qu, align 8, !tbaa !46
  %i.ckz = add i64 %i.cky, 1
  call void @_ZdlPvm(ptr noundef %i.ckw, i64 noundef %i.ckz) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit684
  %.pn115.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit684 ], [ %.pn115.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765 ], [ %.pn115.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #53
  br label %bb.pb

bb.pb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %.pn115.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn115.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767 ], [ %.pn72.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #53
  br label %common.resume

bb.pc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761, %bb.f
  %.063 = phi i32 [ 1, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761 ]
  ret i32 %.063
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #26

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !408    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !408
  %.not4 = icmp eq ptr %i.a, %i.c
  br i1 %.not4, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !402
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.d = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !403
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #54
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.01.05, align 8, !tbaa !276
  tail call void @free(ptr noundef %i.j) #53
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.05, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !408
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !30
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7testing8internal23DefaultDeathTestFactory6CreateEPKcPKNS0_2REES3_iPPNS0_9DeathTestE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %bb.ao, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZN7testing7MessageD2Ev.exit3.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %eh.lpad-body.i, %_ZN7testing7MessageD2Ev.exit3.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn31.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %i.hy, %bb.ao ], [ %i.ij, %bb.ap ], [ %i.iv, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !361  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !180
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !299  ; 2 uses
  %i.m = add nsw i32 %i.l, 1                      ; 3 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !299
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.an, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 36 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !412  ; 2 uses
  %.not133 = icmp slt i32 %i.l, %i.o
  br i1 %.not133, label %bb.al, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #53, !noalias !1597
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9), !noalias !1597
  %i.p = load ptr, ptr %9, align 8, !tbaa !52, !noalias !1597
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53, !noalias !1597
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 1, ptr %i.r, align 8, !tbaa !55, !noalias !1597
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false), !noalias !1597
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh14raw_os_ostreamE, i64 16), ptr %8, align 8, !tbaa !57, !noalias !1597
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.q, ptr %i.t, align 8, !tbaa !59, !noalias !1597
  %i.u = sext i32 %i.m to i64
  %i.v = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %8, i64 noundef %i.u)
          to label %bb.i unwind label %bb.h, !noalias !1597 ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #53, !noalias !1597
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53, !noalias !1597
  br label %.body.i

bb.i:                                             ; preds = %bb.g
  call void @_ZN4llvh14raw_os_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #53, !noalias !1597
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53, !noalias !1597
  %i.x = load ptr, ptr %9, align 8, !tbaa !52, !noalias !1598
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %i.x)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.k

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %bb.i
  %i.y = load ptr, ptr %9, align 8, !tbaa !52, !noalias !1597 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #53, !inline_history !16
  br label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.w, %bb.h ]
  %i.ad = load ptr, ptr %9, align 8, !tbaa !52, !noalias !1597 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i2.i, label %_ZN7testing7MessageD2Ev.exit3.i, label %bb.l

bb.l:                                             ; preds = %.body.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %i.ad) #53, !inline_history !16
  br label %_ZN7testing7MessageD2Ev.exit3.i

_ZN7testing7MessageD2Ev.exit3.i:                  ; preds = %bb.l, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53, !noalias !1597
  br label %common.resume

_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53, !noalias !1597
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.289, i64 noundef 18)
          to label %.noexc unwind label %bb.af    ; 6 uses

.noexc:                                           ; preds = %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ai, ptr %13, align 8, !tbaa !47, !alias.scope !1599
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !45 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.m:                                             ; preds = %.noexc
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !49 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.aj, ptr %13, align 8, !tbaa !45, !alias.scope !1599
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !46
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !46, !alias.scope !1599
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %i.ar = phi i64 [ %i.an, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !49, !alias.scope !1599
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !45
  store i64 0, ptr %i.as, align 8, !tbaa !49
  store i8 0, ptr %i.ak, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  %i.au = load i64, ptr %i.at, align 8, !tbaa !49, !noalias !1600
  %i.av = add i64 %i.au, -4611686018427387867
  %i.aw = icmp ult i64 %i.av, 37
  br i1 %i.aw, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc41 unwind label %bb.ag

.noexc41:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.n
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.290, i64 noundef 37)
          to label %.noexc42 unwind label %bb.ag  ; 6 uses

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  store ptr %i.ay, ptr %12, align 8, !tbaa !47, !alias.scope !1600
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !45 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

bb.p:                                             ; preds = %.noexc42
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !49 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %.noexc42
  store ptr %i.az, ptr %12, align 8, !tbaa !45, !alias.scope !1600
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !46
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !46, !alias.scope !1600
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre.i40 = load i64, ptr %.phi.trans.insert.i39, align 8, !tbaa !49
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.p
  %i.bh = phi i64 [ %i.bd, %bb.p ], [ %.pre.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !49, !alias.scope !1600
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !45
  store i64 0, ptr %i.bi, align 8, !tbaa !49
  store i8 0, ptr %i.ba, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #53
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !412
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #53, !noalias !1601
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc49 unwind label %bb.ah

.noexc49:                                         ; preds = %bb.q
  %i.bl = load ptr, ptr %7, align 8, !tbaa !52, !noalias !1601
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53, !noalias !1601
end_hunk_17
begin_hunk_18_@_ZN7testing14TestPartResult14ExtractSummaryB5cxx11EPKc:bb.a
  store i64 %i.h, ptr %i.d, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %.critedge27
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !46
  store i8 %i.j, ptr %i.i, align 1, !tbaa !46
  br label %.critedge27

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %.critedge27

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !48
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i30, label %._crit_edge.i.i29

.noexc.i30:                                       ; preds = %bb.e
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !45
  %i.q = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.q, ptr %i.d, align 8, !tbaa !46
  br label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %.noexc.i30, %bb.e
  %i.r = phi ptr [ %i.p, %.noexc.i30 ], [ %i.d, %bb.e ] ; 2 uses
  switch i64 %i.n, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %.critedge
  ]

bb.f:                                             ; preds = %._crit_edge.i.i29
  %i.s = load i8, ptr %1, align 1, !tbaa !46
  store i8 %i.s, ptr %i.r, align 1, !tbaa !46
  br label %.critedge

bb.g:                                             ; preds = %._crit_edge.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %1, i64 %i.n, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.i.i29, %bb.f, %bb.g
  %i.t = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  store i64 %i.t, ptr %i.k, align 8, !tbaa !49
  %i.u = load ptr, ptr %0, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  br label %.critedge24

.critedge27:                                      ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.w = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !49
  %i.y = load ptr, ptr %0, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  br label %.critedge24

.critedge24:                                      ; preds = %.critedge, %.critedge27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testinglsERSoRKNS_14TestPartResultE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i9 = icmp eq ptr %i.e, null
  %.not.i = select i1 %i.d, i1 true, i1 %.not.i9
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !57
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !273
  %i.l = or i32 %i.k, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.i, i32 noundef %i.l)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #53
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef %i.m) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.183, i64 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !318
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.q) ; 9 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.267, i64 noundef 2) ; 0 uses
  %i.t = load i32, ptr %1, align 8, !tbaa !175    ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp eq i32 %i.t, 2
  %i.w = select i1 %i.v, ptr @.str.327, ptr @.str.328
  %i.x = select i1 %i.u, ptr @.str.326, ptr %i.w  ; 2 uses
  %i.y = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #53
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.x, i64 noundef %i.y) ; 0 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.329, i64 noundef 2) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 3 uses
  %.not.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.r, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !273
  %i.aj = or i32 %i.ai, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i32 noundef %i.aj)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #53
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.ac, i64 noundef %i.ak) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %bb.d, %bb.e
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.r, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 240
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !287 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  tail call void @_ZSt16__throw_bad_castv() #56
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i8, ptr %i.as, align 8, !tbaa !292
  %.not.i1.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 67
  %i.av = load i8, ptr %i.au, align 1, !tbaa !46
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ar)
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef signext i8 %i.ay(ptr noundef nonnull align 8 dereferenceable(570) %i.ar, i8 noundef signext 10), !inline_history !31
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.av, %bb.g ], [ %i.az, %bb.h ]
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext %.0.i.i.i)
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  ret ptr %i.bb
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelperC2Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 9)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24HasNewFatalFailureHelperE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !423
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %.body, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94
  store ptr %i.j, ptr %i.b, align 8, !tbaa !424
  %i.k = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.i, !prof !72

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i2 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i2, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %.body, !inline_history !3

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %bb.i

.body:                                            ; preds = %bb.c, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53
  resume { ptr, i32 } %i.o

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  store ptr %0, ptr %i.r, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelperD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24HasNewFatalFailureHelperE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !3
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !424
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.j = invoke noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr %i.j, align 8, !tbaa !94
  ret void

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.e, %bb.e ]
  %i.l = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.l) #59
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelperD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN7testing8internal24HasNewFatalFailureHelperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #54
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelper20ReportTestPartResultERKNS_14TestPartResultE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !175
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !423
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !424  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7testing8internal19TypedTestCasePState25VerifyRegisteredTestNamesEPKciS3_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(56) initializes((0, 1)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef returned %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %5 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %6 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %7 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %8 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %9 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %10 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %11 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %12 = alloca %"class.llvh::raw_os_ostream", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::vector.33", align 8   ; 12 uses
  %16 = alloca %"class.testing::Message", align 8 ; 16 uses
  %17 = alloca %"class.std::set", align 8         ; 11 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  store i8 1, ptr %0, align 8, !tbaa !1696
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #53
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !alias.scope !1697
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %3, %bb.a ], [ %i.d, %bb.b ] ; 3 uses
  %i.a = load i8, ptr %.0.i.i, align 1, !tbaa !46, !noalias !1697
  %i.b = zext i8 %i.a to i32
  %i.c = tail call i32 @isspace(i32 noundef %i.b) #55
  %.not.i.i = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br i1 %.not.i.i, label %_ZN7testing8internalL10SkipSpacesEPKc.exit.preheader.i, label %bb.b, !llvm.loop !1678

_ZN7testing8internalL10SkipSpacesEPKc.exit.preheader.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal9SkipCommaEPKc.exit.i, %_ZN7testing8internalL10SkipSpacesEPKc.exit.preheader.i
  %.0931.i = phi ptr [ %.0.i.i, %_ZN7testing8internalL10SkipSpacesEPKc.exit.preheader.i ], [ %i.aw, %_ZN7testing8internal9SkipCommaEPKc.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #53, !noalias !1697
  invoke void @_ZN7testing8internal19GetPrefixUntilCommaB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull %.0931.i)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  %i.k = load ptr, ptr %14, align 8, !tbaa !45, !noalias !1699 ; 3 uses
  %i.l = load i64, ptr %i.e, align 8, !tbaa !49, !noalias !1699 ; 2 uses
  %.not7.i.i = icmp samesign eq i64 %i.l, 0
  br i1 %.not7.i.i, label %.critedge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc.i, %.lr.ph.preheader.i.i
  %i.n = phi ptr [ %i.v, %.noexc.i ], [ %i.k, %.lr.ph.preheader.i.i ] ; 3 uses
  %storemerge8.i.i = phi ptr [ %i.w, %.noexc.i ], [ %i.m, %.lr.ph.preheader.i.i ]
  %i.o = getelementptr inbounds i8, ptr %storemerge8.i.i, i64 -1 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !46, !noalias !1698
  %i.q = zext i8 %i.p to i32
  %i.r = call i32 @isspace(i32 noundef %i.q) #55, !noalias !1698
  %.not6.i.i = icmp eq i32 %i.r, 0
  br i1 %.not6.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.u, i64 noundef 1)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.e
  %i.v = load ptr, ptr %14, align 8, !tbaa !45, !noalias !1699 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  %.not.i13.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i13.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !1681

.critedge.i.i:                                    ; preds = %.noexc.i, %.lr.ph.i.i, %bb.d
  %.lcssa.i.i = phi ptr [ %i.k, %bb.d ], [ %i.v, %.noexc.i ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  store ptr %i.f, ptr %13, align 8, !tbaa !47, !alias.scope !1698, !noalias !1697
  %i.x = icmp eq ptr %.lcssa.i.i, %i.g
  br i1 %i.x, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %.critedge.i.i
  %i.y = load i64, ptr %i.e, align 8, !tbaa !49, !noalias !1699 ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.aa, i1 false), !noalias !1697
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge.i.i
  store ptr %.lcssa.i.i, ptr %13, align 8, !tbaa !45, !alias.scope !1698, !noalias !1697
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !46, !noalias !1699
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !46, !alias.scope !1698, !noalias !1697
  %.pre.i.i = load i64, ptr %i.e, align 8, !tbaa !49, !noalias !1699
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.ac = phi i64 [ %i.y, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 4 uses
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !49, !alias.scope !1698, !noalias !1697
  store ptr %i.g, ptr %14, align 8, !tbaa !45, !noalias !1699
  store i64 0, ptr %i.e, align 8, !tbaa !49, !noalias !1699
  store i8 0, ptr %i.g, align 8, !tbaa !46, !noalias !1699
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !158, !alias.scope !1697 ; 7 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !159, !alias.scope !1697
  %.not.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !47
  %i.ag = load ptr, ptr %13, align 8, !tbaa !45, !noalias !1697 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.f
  br i1 %i.ah, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !45
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !46, !noalias !1697
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
end_hunk_18
begin_hunk_19_@_ZN7testing8internalL22ExecDeathTestChildMainEPv:bb.a
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

bb.ab:                                            ; preds = %.noexc96
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !49 ; 3 uses
  %i.ev = icmp ult i64 %i.eu, 16
  call void @llvm.assume(i1 %i.ev)
  %i.ew = add nuw nsw i64 %i.eu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ep, ptr noundef nonnull align 8 dereferenceable(1) %i.er, i64 %i.ew, i1 false)
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %.noexc96
  store ptr %i.eq, ptr %3, align 8, !tbaa !45, !alias.scope !1884
  %i.ex = load i64, ptr %i.er, align 8, !tbaa !46
  store i64 %i.ex, ptr %i.ep, align 8, !tbaa !46, !alias.scope !1884
  %.phi.trans.insert.i92 = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.pre.i93 = load i64, ptr %.phi.trans.insert.i92, align 8, !tbaa !49
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.ab
  %i.ey = phi i64 [ %i.eu, %bb.ab ], [ %.pre.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ey, ptr %i.fa, align 8, !tbaa !49, !alias.scope !1884
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !45
  store i64 0, ptr %i.ez, align 8, !tbaa !49
  store i8 0, ptr %i.er, align 8, !tbaa !46
  invoke void @_ZN7testing8internal14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.unreachable311 unwind label %bb.al

.unreachable311:                                  ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %.critedge
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62, %bb.g
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.ag:                                            ; preds = %bb.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.s, %.critedge.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i74, %bb.u
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i82, %bb.x
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i90, %bb.aa
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.al:                                            ; preds = %bb.ac
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ep
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.al
  %i.fm = load i64, ptr %i.ep, align 8, !tbaa !46
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fi, %bb.ak ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %i.fj, %bb.al ] ; 2 uses
  %i.fo = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.dz
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.fq = load i64, ptr %i.dz, align 8, !tbaa !46
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.aj ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ] ; 2 uses
  %i.fs = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.dj
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.fu = load i64, ptr %i.dj, align 8, !tbaa !46
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fg, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ] ; 2 uses
  %i.fw = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !46
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.ah
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ff, %bb.ah ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ] ; 2 uses
  %i.gb = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !46
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #54
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.ag, %_ZN7testing7MessageD2Ev.exit3.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body.i, %_ZN7testing7MessageD2Ev.exit3.i ], [ %i.fe, %bb.ag ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  %i.gg = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.ai
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %.body
  %i.gi = load i64, ptr %i.ai, align 8, !tbaa !46
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.af
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fd, %bb.af ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  %i.gk = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.s
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.gm = load i64, ptr %i.s, align 8, !tbaa !46
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.ae
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %bb.ae ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 2 uses
  %i.go = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.i
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.gq = load i64, ptr %i.i, align 8, !tbaa !46
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.ad
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.ad ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  br label %common.resume

.critedge59:                                      ; preds = %bb.b
  %i.gs = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %bb.am, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !72

bb.am:                                            ; preds = %.critedge59
  %i.gu = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  %.not.i145 = icmp eq i32 %i.gu, 0
  br i1 %.not.i145, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.ao unwind label %bb.ap, !inline_history !73

bb.ao:                                            ; preds = %bb.an
  %i.gv = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #53, !inline_history !73 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %i.gw, %bb.ap ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.pn51.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn43.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ]
  resume { ptr, i32 } %common.resume.op

bb.ap:                                            ; preds = %bb.an
  %i.gw = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #53, !inline_history !73
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %.critedge59, %bb.am, %bb.ao
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !79
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !45 ; 5 uses
  %i.ha = tail call i32 @chdir(ptr noundef %i.gz) #53
  %.not = icmp eq i32 %i.ha, 0
  br i1 %.not, label %._crit_edge.i.i213, label %._crit_edge.i.i146

._crit_edge.i.i146:                               ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #53
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.hb, ptr %14, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.hb, ptr noundef nonnull align 1 dereferenceable(7) @.str.404, i64 7, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 7, ptr %i.hc, align 8, !tbaa !49
  %i.hd = getelementptr inbounds nuw i8, ptr %14, i64 23
  store i8 0, ptr %i.hd, align 1, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  %i.he = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gz) #53, !noalias !1885 ; 2 uses
  %i.hf = icmp ugt i64 %i.he, 4611686018427387896
  br i1 %i.hf, label %bb.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i150

bb.aq:                                            ; preds = %._crit_edge.i.i146
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc155 unwind label %bb.bc

.noexc155:                                        ; preds = %bb.aq
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i150: ; preds = %._crit_edge.i.i146
  %i.hg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %i.gz, i64 noundef %i.he)
          to label %.noexc156 unwind label %bb.bc ; 6 uses

.noexc156:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i150
  %i.hh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.hh, ptr %13, align 8, !tbaa !47, !alias.scope !1885
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !45 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 5 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

bb.ar:                                            ; preds = %.noexc156
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !49 ; 3 uses
  %i.hn = icmp ult i64 %i.hm, 16
  call void @llvm.assume(i1 %i.hn)
  %i.ho = add nuw nsw i64 %i.hm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hh, ptr noundef nonnull align 8 dereferenceable(1) %i.hj, i64 %i.ho, i1 false)
  br label %bb.as

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %.noexc156
  store ptr %i.hi, ptr %13, align 8, !tbaa !45, !alias.scope !1885
  %i.hp = load i64, ptr %i.hj, align 8, !tbaa !46
  store i64 %i.hp, ptr %i.hh, align 8, !tbaa !46, !alias.scope !1885
  %.phi.trans.insert.i152 = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %.pre.i153 = load i64, ptr %.phi.trans.insert.i152, align 8, !tbaa !49
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.ar
  %i.hq = phi i64 [ %i.hm, %bb.ar ], [ %.pre.i153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.hq, ptr %i.hs, align 8, !tbaa !49, !alias.scope !1885
  store ptr %i.hj, ptr %i.hg, align 8, !tbaa !45
  store i64 0, ptr %i.hr, align 8, !tbaa !49
  store i8 0, ptr %i.hj, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !49, !noalias !1886
  %i.hu = add i64 %i.ht, -4611686018427387893
  %i.hv = icmp ult i64 %i.hu, 11
  br i1 %i.hv, label %bb.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.417) #56
          to label %.noexc163 unwind label %bb.bd

.noexc163:                                        ; preds = %bb.at
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158: ; preds = %bb.as
  %i.hw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.405, i64 noundef 11)
          to label %.noexc164 unwind label %bb.bd ; 6 uses

.noexc164:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.hx, ptr %12, align 8, !tbaa !47, !alias.scope !1886
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !45 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 5 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

bb.au:                                            ; preds = %.noexc164
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !49 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 16
  call void @llvm.assume(i1 %i.id)
  %i.ie = add nuw nsw i64 %i.ic, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hx, ptr noundef nonnull align 8 dereferenceable(1) %i.hz, i64 %i.ie, i1 false)
  br label %bb.av

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %.noexc164
  store ptr %i.hy, ptr %12, align 8, !tbaa !45, !alias.scope !1886
  %i.if = load i64, ptr %i.hz, align 8, !tbaa !46
  store i64 %i.if, ptr %i.hx, align 8, !tbaa !46, !alias.scope !1886
  %.phi.trans.insert.i160 = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %.pre.i161 = load i64, ptr %.phi.trans.insert.i160, align 8, !tbaa !49
  br label %bb.av

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %bb.au
  %i.ig = phi i64 [ %i.ic, %bb.au ], [ %.pre.i161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.ig, ptr %i.ii, align 8, !tbaa !49, !alias.scope !1886
  store ptr %i.hz, ptr %i.hw, align 8, !tbaa !45
  store i64 0, ptr %i.ih, align 8, !tbaa !49
  store i8 0, ptr %i.hz, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #53
  invoke void @_ZN7testing8internal23GetLastErrnoDescriptionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !49, !noalias !1887 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !49, !noalias !1887 ; 4 uses
  %i.im = add i64 %i.il, %i.ij                    ; 2 uses
  %i.in = load ptr, ptr %12, align 8, !tbaa !45, !noalias !1887 ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.hx
  br i1 %i.io, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i178: ; preds = %bb.aw
  %i.ip = icmp ult i64 %i.ij, 16
  call void @llvm.assume(i1 %i.ip)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.aw
  %i.iq = load i64, ptr %i.hx, align 8, !tbaa !46, !noalias !1887
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i167: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i178
  %i.ir = phi i64 [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i178 ]
  %i.is = icmp ugt i64 %i.im, %i.ir
  br i1 %i.is, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i167
  %i.it = load ptr, ptr %15, align 8, !tbaa !45, !noalias !1887
  %i.iu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i177: ; preds = %bb.ax
  %i.iw = icmp ult i64 %i.il, 16
  call void @llvm.assume(i1 %i.iw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i171: ; preds = %bb.ax
  %i.ix = load i64, ptr %i.iu, align 8, !tbaa !46, !noalias !1887
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i172: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i177
  %i.iy = phi i64 [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i171 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i177 ]
  %.not.i173 = icmp ugt i64 %i.im, %i.iy
  br i1 %.not.i173, label %bb.az, label %.critedge.i174

.critedge.i174:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i172
  %i.iz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.in, i64 noundef %i.ij)
          to label %.noexc179 unwind label %bb.bf ; 5 uses

.noexc179:                                        ; preds = %.critedge.i174
  %i.ja = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ja, ptr %11, align 8, !tbaa !47, !alias.scope !1887
  %i.jb = load ptr, ptr %i.iz, align 8, !tbaa !45 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 5 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i175

bb.ay:                                            ; preds = %.noexc179
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !49 ; 2 uses
  %i.jg = icmp ult i64 %i.jf, 16
  call void @llvm.assume(i1 %i.jg)
  %i.jh = add nuw nsw i64 %i.jf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ja, ptr noundef nonnull align 8 dereferenceable(1) %i.jc, i64 %i.jh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i176
end_hunk_19
