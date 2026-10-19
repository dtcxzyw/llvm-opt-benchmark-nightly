Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/gtest-all?download=true
inline.NumInlined: 8808
inline.NumDeleted: 2098
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN7testing8internal6Random8GenerateEj:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %bb.g

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %1, -2147483647
  br i1 %i.h, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.37, i32 noundef 355)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.40, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.e
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.41, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = zext i32 %1 to i64
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %i.k)
          to label %_ZNSolsEj.exit unwind label %bb.f ; 3 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.42, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZNSolsEj.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.43, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 2147483648)
          to label %_ZNSolsEj.exit13 unwind label %bb.f

_ZNSolsEj.exit13:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZNSolsEj.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  br label %bb.g

bb.f:                                             ; preds = %_ZNSolsEj.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  br label %bb.h

bb.g:                                             ; preds = %.thread, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.r = load i32, ptr %0, align 4, !tbaa !77
  %i.s = urem i32 %i.r, %1
  ret i32 %i.s

bb.h:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef returned zeroext %0) local_unnamed_addr #4 {
bb.a:
  ret i1 %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12AssertHelperC2ENS_14TestPartResult4TypeEPKciS5_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #57 ; 8 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %3, ptr %i.d, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !66
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.h, ptr %i.a, align 8, !tbaa !83
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.f    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i
  store ptr %i.j, ptr %i.e, align 8, !tbaa !64
  %i.k = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.k, ptr %i.f, align 8, !tbaa !65
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc6 ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %4, align 1, !tbaa !65
  store i8 %i.m, ptr %i.l, align 1, !tbaa !65
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %4, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !67
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  store ptr %i.b, ptr %0, align 8, !tbaa !86
  ret void

bb.f:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #55
  resume { ptr, i32 } %i.r
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal12AssertHelperD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !65
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #55
  br label %_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit

_ZN7testing8internal12AssertHelper16AssertHelperDataD2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #55
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
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !88

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !86     ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @_ZN7testing8internal17AppendUserMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7MessageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  %i.m = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit6, !prof !87

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i5 = icmp eq i32 %i.o, 0
  br i1 %.not.i5, label %_ZN7testing8UnitTest11GetInstanceEv.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %bb.i, !inline_history !88

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit6

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit6:        ; preds = %bb.h, %bb.f, %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  invoke void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(601) %i.r, i32 noundef 1)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit6
  invoke void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i32 noundef %i.g, ptr noundef %i.i, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %3, align 8, !tbaa !64     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.v = load i64, ptr %i.t, align 8, !tbaa !65
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  %i.x = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !65
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  ret void

bb.l:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit6
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.m
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !65
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #55
  br label %.body

.body:                                            ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.ac, %bb.l ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.ad, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  %i.aj = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %.body
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !65
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7testing8UnitTest11GetInstanceEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #54
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.a = load ptr, ptr %8, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %4, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !67
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #54
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.g, ptr %9, align 8, !tbaa !97
  %i.h = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #54 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #54
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 3, ptr noundef nonnull @.str.401, i32 noundef 1650)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.402, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.403, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.h)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %7) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %7) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  br label %.body

bb.e:                                             ; preds = %bb.c, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.m = tail call i64 @pthread_self() #58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.m, ptr %i.n, align 8, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.o, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 584
  %i.s = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !103
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit
  %i.w = load ptr, ptr %8, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %bb.f
  %i.z = load ptr, ptr %8, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.145, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.ac = load ptr, ptr %8, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.279, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 584
  %i.ah = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing8internal11ThreadLocalISt6vectorINS0_9TraceInfoESaIS3_EEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit46: ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !102 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !103 ; 2 uses
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
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !103
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %i.aw ; 4 uses
  %i.az = load ptr, ptr %8, align 8, !tbaa !71
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit50:      ; preds = %_ZN7testing8internal12UnitTestImpl17gtest_trace_stackEv.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #54
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !105
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !106
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.bc, i32 noundef %i.be)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit50
  %i.bf = load ptr, ptr %8, align 8, !tbaa !71
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %10, align 8, !tbaa !64
  %i.bi = load i64, ptr %i.ap, align 8, !tbaa !67
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.bh, i64 noundef %i.bi)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit52 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit52: ; preds = %bb.j
  %i.bk = load ptr, ptr %8, align 8, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.122, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit54 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit54:      ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit52
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bo = load ptr, ptr %8, align 8, !tbaa !71
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !64
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !67
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %i.bq, i64 noundef %i.bs)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit56 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit56: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit54
  %i.bu = load ptr, ptr %10, align 8, !tbaa !64   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.aq
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit56
  %i.bw = load i64, ptr %i.aq, align 8, !tbaa !65
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #54
end_hunk_0
begin_hunk_1_@_ZN7testing8internal17AppendUserMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7MessageE:bb.a
bb.k:                                             ; preds = %bb.j
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !67, !alias.scope !567
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.v
  br i1 %i.ao, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.k
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ai, i64 noundef %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !67, !alias.scope !567
  %i.ar = icmp eq i64 %i.aq, 4611686018427387903
  br i1 %i.ar, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.cont.i.i unwind label %bb.l

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !64, !alias.scope !567 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aj
  br i1 %i.av, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !67, !noalias !568 ; 2 uses
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !67, !noalias !568
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.aw
  br i1 %i.az, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc14 unwind label %bb.p

.noexc14:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ba = load ptr, ptr %3, align 8, !tbaa !64, !noalias !568
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ba, i64 noundef %i.aw)
          to label %.noexc15 unwind label %bb.p   ; 6 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !66, !alias.scope !568
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %.noexc15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !67 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc15
  store ptr %i.bd, ptr %0, align 8, !tbaa !64, !alias.scope !568
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !65
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !65, !alias.scope !568
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.bl = phi i64 [ %i.bh, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !67, !alias.scope !568
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !64
  store i64 0, ptr %i.bm, align 8, !tbaa !67
  store i8 0, ptr %i.be, align 8, !tbaa !65
  %i.bo = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aj
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.o
  %i.bq = load i64, ptr %i.aj, align 8, !tbaa !65
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aj
  br i1 %i.bu, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.p, %bb.l
  %.sink = phi ptr [ %i.au, %bb.l ], [ %i.bt, %bb.p ]
  %.pn.ph = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.bs, %bb.p ]
  %i.bv = load i64, ptr %i.aj, align 8, !tbaa !65
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bw) #55
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.p, %bb.l
  %.pn = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.bs, %bb.p ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.q
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !65
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  ret void

bb.r:                                             ; preds = %.body, %bb.e
  %.pn8 = phi { ptr, i32 } [ %i.t, %bb.e ], [ %.pn, %.body ]
  %i.cc = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.r
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !65
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(601) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !73
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.d, align 8, !tbaa !73
  store ptr %i.d, ptr %i.a, align 8, !tbaa !201
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.b
  %i.e = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.b ], [ %.pre, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.f = phi ptr [ %i.d, %bb.b ], [ %i.b, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.g = load i32, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !69
  %i.h = add nsw i32 %2, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.g, i32 noundef %i.h)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !88

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  resume { ptr, i32 } %i.e

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal13MarkAsIgnoredC2EPKc(ptr nofree nonnull readnone align 1 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !88

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %common.resume

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !66
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.k, ptr %i.a, align 8, !tbaa !83
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.p    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i
  store ptr %i.m, ptr %2, align 8, !tbaa !64
  %i.n = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.n, ptr %i.i, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc4, %bb.g
  %i.o = phi ptr [ %i.m, %.noexc4 ], [ %i.i, %bb.g ] ; 2 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %1, align 1, !tbaa !65
  store i8 %i.p, ptr %i.o, align 1, !tbaa !65
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %1, i64 %i.k, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !67
  %i.s = load ptr, ptr %2, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  %i.u = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc6 unwind label %bb.q    ; 2 uses

.noexc6:                                          ; preds = %bb.j
  %i.v = extractvalue { ptr, ptr } %i.u, 1        ; 5 uses
  %.not.i.i5 = icmp eq ptr %i.v, null
  br i1 %.not.i.i5, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.noexc6
  %i.w = extractvalue { ptr, ptr } %i.u, 0
  %.not.i = icmp ne ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 312 ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.y
  br i1 %or.cond.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.r, align 8, !tbaa !67   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.z) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64
  %i.af = load ptr, ptr %2, align 8, !tbaa !64
  %i.ag = call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i) #54 ; 2 uses
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
  %i.ak = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #57
          to label %.noexc11 unwind label %bb.q   ; 4 uses

.noexc11:                                         ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !66
  %i.an = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.n:                                             ; preds = %.noexc11
  %i.ap = load i64, ptr %i.r, align 8, !tbaa !67  ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ar, i1 false)
  br label %.noexc7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.noexc11
  store ptr %i.an, ptr %i.al, align 8, !tbaa !64
  %i.as = load i64, ptr %i.i, align 8, !tbaa !65
  store i64 %i.as, ptr %i.am, align 8, !tbaa !65
  %.pre.i.i.i = load i64, ptr %i.r, align 8, !tbaa !67
  br label %.noexc7

.noexc7:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.n
  %i.at = phi i64 [ %i.ap, %bb.n ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 %i.at, ptr %i.au, align 8, !tbaa !67
  store ptr %i.i, ptr %2, align 8, !tbaa !64
  store i64 0, ptr %i.r, align 8, !tbaa !67
  store i8 0, ptr %i.i, align 8, !tbaa !65
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.x) #54
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 344 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !202
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !202
  br label %bb.o

bb.o:                                             ; preds = %.noexc7, %.noexc6
  %i.ay = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.i
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ba = load i64, ptr %i.i, align 8, !tbaa !65
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  ret void

bb.p:                                             ; preds = %.noexc.i, %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.q:                                             ; preds = %bb.m, %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.i
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.q
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !65
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.bd, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly align 8 captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %class.anon, align 8                ; 12 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca [378 x i8], align 16              ; 5 uses
  %i.f = alloca [348 x i8], align 16              ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %class.anon, align 8               ; 15 uses
  %i.g = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !88

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

common.resume:                                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.e ], [ %.pn20.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.as, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %common.resume

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 320
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 312 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.n, null
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre123 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67 ; 7 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.n, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.o, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.pre123, i64 %i.q) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = tail call i32 @memcmp(ptr noundef %i.t, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #54 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = sub i64 %i.q, %.pre123
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.x = icmp eq ptr %.19.i.i.i, %i.o
  br i1 %i.x, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %.pre123) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64
  %i.ad = tail call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #54 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.ae = sub i64 %.pre123, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.af = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.af, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.ax

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(378) %i.e, ptr noundef nonnull align 16 dereferenceable(378) @__const._ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb.kMissingInstantiation, i64 378, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(348) %i.f, ptr noundef nonnull align 16 dereferenceable(348) @__const._ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb.kMissingTestCase, i64 348, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #54
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.ah, ptr %10, align 8, !tbaa !66, !alias.scope !587
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !67, !alias.scope !587
  store i8 0, ptr %i.ah, align 8, !tbaa !65, !alias.scope !587
  %i.aj = add i64 %.pre123, 25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.aj)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !67, !alias.scope !587
  %i.al = add i64 %i.ak, -4611686018427387879
  %i.am = icmp ult i64 %i.al, 25
  br i1 %i.am, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.g
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.45, i64 noundef 25)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !67, !alias.scope !587
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %.pre123
  br i1 %i.aq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.cont.i.i unwind label %bb.h

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %.pre, i64 noundef %.pre123)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %10, align 8, !tbaa !64, !alias.scope !587 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ah
  br i1 %i.au, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !65, !alias.scope !587
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #55
  br label %common.resume

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ax = select i1 %2, ptr %i.e, ptr %i.f        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.ay = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #54, !noalias !588 ; 2 uses
  %i.az = load i64, ptr %i.ai, align 8, !tbaa !67, !noalias !588
  %i.ba = sub i64 4611686018427387903, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.ay
  br i1 %i.bb, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.ax, i64 noundef %i.ay)
          to label %.noexc24 unwind label %bb.ay  ; 6 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.bd, ptr %9, align 8, !tbaa !66, !alias.scope !588
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !67 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc24
  store ptr %i.be, ptr %9, align 8, !tbaa !64, !alias.scope !588
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !65
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !65, !alias.scope !588
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.bm = phi i64 [ %i.bi, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !67, !alias.scope !588
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !64
  store i64 0, ptr %i.bn, align 8, !tbaa !67
  store i8 0, ptr %i.bf, align 8, !tbaa !65
end_hunk_1
begin_hunk_2_@_ZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEb:bb.a
bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i25, %bb.l
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.o
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37, %bb.r
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.cl
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.bb
  %i.lc = load i64, ptr %i.cl, align 8, !tbaa !65
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.ky, %bb.ba ], [ %i.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.kz, %bb.bb ] ; 2 uses
  %i.le = load ptr, ptr %8, align 8, !tbaa !64    ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.bt
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.lg = load i64, ptr %i.bt, align 8, !tbaa !65
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.az
  %.pn.pn = phi { ptr, i32 } [ %i.kx, %bb.az ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ] ; 2 uses
  %i.li = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.bd
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.lk = load i64, ptr %i.bd, align 8, !tbaa !65
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.ay
  %.pn.pn.pn = phi { ptr, i32 } [ %i.kw, %bb.ay ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ]
  %i.lm = load ptr, ptr %10, align 8, !tbaa !64   ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.ah
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.lo = load i64, ptr %i.ah, align 8, !tbaa !65
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i63, %bb.w
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lr = load ptr, ptr %12, align 8, !tbaa !64   ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.ef
  br i1 %i.ls, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.bc, %bb.v
  %.sink = phi ptr [ %i.er, %bb.v ], [ %i.lr, %bb.bc ]
  %.pn18.ph = phi { ptr, i32 } [ %i.eq, %bb.v ], [ %i.lq, %bb.bc ]
  %i.lt = load i64, ptr %i.ef, align 8, !tbaa !65
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.lu) #55
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.bc, %bb.v
  %.pn18 = phi { ptr, i32 } [ %i.eq, %bb.v ], [ %i.lq, %bb.bc ], [ %.pn18.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.bd:                                            ; preds = %.noexc.i
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.be:                                            ; preds = %.noexc.i.i
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lx = load ptr, ptr %13, align 8, !tbaa !64   ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.fq
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.be
  %i.lz = load i64, ptr %i.fq, align 8, !tbaa !65
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.bf:                                            ; preds = %.noexc.i.i80, %.noexc.i81
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body84

.body84:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i, %bb.bf
  %eh.lpad-body85 = phi { ptr, i32 } [ %i.mb, %bb.bf ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i ]
  call fastcc void @"_ZZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEbEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %.body84, %bb.bd
  %.pn20 = phi { ptr, i32 } [ %eh.lpad-body85, %.body84 ], [ %i.lv, %bb.bd ], [ %i.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %i.lw, %bb.be ] ; 2 uses
  %i.mc = load ptr, ptr %11, align 8, !tbaa !64   ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ew
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.me = load i64, ptr %i.ew, align 8, !tbaa !65
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %.body
  %.pn20.pn = phi { ptr, i32 } [ %.pn18, %.body ], [ %.pn20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #54
  %i.mg = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.db
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.mi = load i64, ptr %i.db, align 8, !tbaa !65
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %.pn20.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %.pn20.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #54
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN7testing8internal23InsertSyntheticTestCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12CodeLocationEbEN3$_0D2Ev"(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(72) dereferenceable(72) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !65
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #55
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !65
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal34RegisterTypeParameterizedTestSuiteEPKcNS0_12CodeLocationE(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2 ], [ %i.ac, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !66
  %i.j = load ptr, ptr %1, align 8, !tbaa !64     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.l, ptr %i.a, align 8, !tbaa !83
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !64
  %i.o = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.o, ptr %i.i, align 8, !tbaa !65
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.p = phi ptr [ %i.n, %.noexc.i.i ], [ %i.i, %_ZN7testing8internal15GetUnitTestImplEv.exit ] ; 2 uses
  switch i64 %i.l, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !65
  store i8 %i.q, ptr %i.p, align 1, !tbaa !65
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

_ZN7testing8internal12CodeLocationC2ERKS1_.exit:  ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.r = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !67
  %i.t = load ptr, ptr %2, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !206
  store i32 %i.x, ptr %i.v, align 8, !tbaa !206
  invoke void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry17RegisterTestSuiteEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %0, ptr noundef nonnull align 8 %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !65
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #55
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void

bb.i:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.i
  br i1 %i.ae, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2: ; preds = %bb.i
  %i.af = load i64, ptr %i.i, align 8, !tbaa !65
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #55
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry17RegisterTestSuiteEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"struct.testing::internal::TypeParameterizedTestSuiteRegistry::TypeParameterizedTestSuiteInfo", align 8 ; 14 uses
  %5 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !66
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  store i64 %i.f, ptr %i.c, align 8, !tbaa !83
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !64
  %i.i = load i64, ptr %i.c, align 8, !tbaa !83
  store i64 %i.i, ptr %i.d, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !65
  store i8 %i.k, ptr %i.j, align 1, !tbaa !65
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.l = load i64, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !67
  %i.n = load ptr, ptr %3, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !66
  %i.q = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store i64 %i.s, ptr %i.b, align 8, !tbaa !83
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc10 unwind label %bb.m   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i.i
  store ptr %i.u, ptr %5, align 8, !tbaa !64
  %i.v = load i64, ptr %i.b, align 8, !tbaa !83
  store i64 %i.v, ptr %i.p, align 8, !tbaa !65
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10, %bb.e
  %i.w = phi ptr [ %i.u, %.noexc10 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.s, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !65
  store i8 %i.x, ptr %i.w, align 1, !tbaa !65
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !67
  %i.aa = load ptr, ptr %5, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !206
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !206
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.af, ptr %4, align 8, !tbaa !66
  %i.ag = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !67  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !83
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.aj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(41) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.n   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i.i.i
  store ptr %i.aj, ptr %4, align 8, !tbaa !64
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !65
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc11, %bb.h
  %i.al = phi ptr [ %i.aj, %.noexc11 ], [ %i.af, %bb.h ] ; 2 uses
  switch i64 %i.ah, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !65
  store i8 %i.am, ptr %i.al, align 1, !tbaa !65
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ag, i64 %i.ah, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.an = load i64, ptr %i.a, align 8, !tbaa !83  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !67
  %i.ap = load ptr, ptr %4, align 8, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.as = load i32, ptr %i.ac, align 8, !tbaa !206
  store i32 %i.as, ptr %i.ar, align 8, !tbaa !206
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.at, align 8, !tbaa !208
  %i.au = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJS5_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %bb.l unwind label %bb.o       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.af
  br i1 %i.aw, label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !65
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #55
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit

_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.az = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.p
  br i1 %i.ba, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit
  %i.bb = load i64, ptr %i.p, align 8, !tbaa !65
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #55
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  %i.bd = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.d
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !65
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  ret void

bb.m:                                             ; preds = %.noexc.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit17

bb.n:                                             ; preds = %.noexc.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit14

bb.o:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.af
  br i1 %i.bl, label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12: ; preds = %bb.o
  %i.bm = load i64, ptr %i.af, align 8, !tbaa !65
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #55
  br label %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit14

_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit14: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i12 ], [ %i.bj, %bb.o ] ; 2 uses
  %i.bo = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.p
  br i1 %i.bp, label %_ZN7testing8internal12CodeLocationD2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit14
  %i.bq = load i64, ptr %i.p, align 8, !tbaa !65
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #55
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit17

_ZN7testing8internal12CodeLocationD2Ev.exit17:    ; preds = %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15 ], [ %.pn, %_ZN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoD2Ev.exit14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  %i.bs = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.d
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit17
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !65
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal47RegisterTypeParameterizedTestSuiteInstantiationEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
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
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !66
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.d, ptr %i.a, align 8, !tbaa !83
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !64
  %i.g = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.g, ptr %i.b, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !65
  store i8 %i.i, ptr %i.h, align 1, !tbaa !65
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !67
  %i.l = load ptr, ptr %2, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !203  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  %.pre = load ptr, ptr %2, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.q = load i64, ptr %i.k, align 8, !tbaa !67   ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64
  %i.w = call i32 @memcmp(ptr noundef %i.v, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #54 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.f, !llvm.loop !3

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.z, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.q) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64
  %i.af = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i.i) #54 ; 2 uses
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
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !65
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  %.not = icmp eq ptr %.sroa.0.0.i.i, %i.p
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 104
  store i8 1, ptr %i.al, align 8, !tbaa !210
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef 536)
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.51, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #54
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %1, i64 noundef %i.an)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.52, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  br label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  resume { ptr, i32 } %i.aq

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJS5_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(41) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !67   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #54 ; 2 uses
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
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !3

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7testing8internal34TypeParameterizedTestSuiteRegistry30TypeParameterizedTestSuiteInfoESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #54 ; 2 uses
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
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %class.anon.75, align 8             ; 16 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %class.anon.75, align 8            ; 15 uses
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !88

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %.pn24.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %lpad.loopexit.split-lp496, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit.split-lp496, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %common.resume

_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !211  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not375 = icmp eq ptr %i.j, %i.k
  br i1 %.not375, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 312 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.ar, %_ZN7testing8internal33GetIgnoredParameterizedTestSuitesB5cxx11Ev.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.ar
  %.sroa.0111.0376 = phi ptr [ %i.j, %.lr.ph ], [ %i.ka, %bb.ar ] ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0111.0376, i64 32 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0111.0376, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0111.0376, i64 104
  %i.au = load i8, ptr %i.at, align 8, !tbaa !210, !range !111, !noundef !112
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.ar, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !203 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0111.0376, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !67 ; 4 uses
  %i.az = load ptr, ptr %i.ar, align 8            ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.bb) ; 2 uses
  %i.bc = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !64
  %i.bf = call i32 @memcmp(ptr noundef %i.be, ptr noundef %i.az, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #54 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.h
  %i.bg = sub i64 %i.bb, %i.ay
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bh = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.bh, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.bh, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.h, !llvm.loop !1

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bi = icmp eq ptr %.19.i.i.i, %i.n
  br i1 %i.bi, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.ay) ; 2 uses
  %i.bl = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !64
  %i.bo = call i32 @memcmp(ptr noundef %i.az, ptr noundef %i.bn, i64 noundef %.sroa.speculated.i.i.i.i.i) #54 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.i
  %i.bp = sub i64 %i.ay, %i.bk
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bp, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bq = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bq, label %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.ar

_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.g, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #54
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.br = load ptr, ptr %i.ar, align 8, !tbaa !64, !noalias !611
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0111.0376, i64 40 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !67, !noalias !611 ; 3 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !66, !alias.scope !612
  store i64 0, ptr %i.p, align 8, !tbaa !67, !alias.scope !612
  store i8 0, ptr %i.o, align 8, !tbaa !65, !alias.scope !612
  %i.bu = add i64 %i.bt, 30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bu)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !67, !alias.scope !612
  %i.bw = add i64 %i.bv, -4611686018427387874
  %i.bx = icmp ult i64 %i.bw, 30
  br i1 %i.bx, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.j
  %i.by = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.53, i64 noundef 30)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bz = load i64, ptr %i.p, align 8, !tbaa !67, !alias.scope !612
  %i.ca = sub i64 4611686018427387903, %i.bz
  %i.cb = icmp ult i64 %i.ca, %i.bt
  br i1 %i.cb, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.br, i64 noundef %i.bt)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, %.invoke.i.i
  %lpad.loopexit.split-lp496 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %7, align 8, !tbaa !64, !alias.scope !612 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.o
  br i1 %i.ce, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cf = load i64, ptr %i.o, align 8, !tbaa !65, !alias.scope !612
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #55
  br label %common.resume

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.ch = load i64, ptr %i.p, align 8, !tbaa !67, !noalias !613
end_hunk_2
begin_hunk_3_@_ZNK7testing8internal8FilePath19RemoveDirectoryNameEv:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load ptr, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, align 8, !tbaa !64 ; 7 uses
  %i.d = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 58) #60 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !66
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store i64 %i.f, ptr %i.b, align 8, !tbaa !83
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !64
  %i.i = load i64, ptr %i.b, align 8, !tbaa !83
  store i64 %i.i, ptr %i.e, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %.critedge28
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.c, align 1, !tbaa !65
  store i8 %i.k, ptr %i.j, align 1, !tbaa !65
  br label %.critedge28

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.c, i64 %i.f, i1 false)
  br label %.critedge28

bb.e:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.n, ptr %i.a, align 8, !tbaa !83
  %i.p = icmp ugt i64 %i.n, 15
  br i1 %i.p, label %.noexc.i31, label %._crit_edge.i.i30

.noexc.i31:                                       ; preds = %bb.e
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !64
  %i.r = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.r, ptr %i.o, align 8, !tbaa !65
  br label %._crit_edge.i.i30

._crit_edge.i.i30:                                ; preds = %.noexc.i31, %bb.e
  %i.s = phi ptr [ %i.q, %.noexc.i31 ], [ %i.o, %bb.e ] ; 2 uses
  switch i64 %i.n, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %.critedge
  ]

bb.f:                                             ; preds = %._crit_edge.i.i30
  %i.t = load i8, ptr %i.c, align 1, !tbaa !65
  store i8 %i.t, ptr %i.s, align 1, !tbaa !65
  br label %.critedge

bb.g:                                             ; preds = %._crit_edge.i.i30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.c, i64 %i.n, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.i.i30, %bb.f, %bb.g
  %i.u = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !67
  %i.w = load ptr, ptr %0, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %.critedge25

.critedge28:                                      ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !67
  %i.aa = load ptr, ptr %0, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  br label %.critedge25

.critedge25:                                      ; preds = %.critedge, %.critedge28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

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
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::FilePath", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.testing::internal::FilePath", align 8 ; 33 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.testing::internal::FilePath", align 8 ; 19 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %11 = alloca %"class.testing::internal::FilePath", align 8 ; 16 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.testing::internal::FilePath", align 8 ; 16 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %16 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.l = load ptr, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #54
  call void @_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !67
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) @_ZN7testingL20kDefaultOutputFormatE, i64 3, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 3, ptr %i.q, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 19
  store i8 0, ptr %i.r, align 1, !tbaa !65
  %i.s = load ptr, ptr %1, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.s, ptr noundef nonnull align 1 dereferenceable(3) @_ZN7testingL20kDefaultOutputFormatE, i64 3, i1 false)
  %i.t = load i64, ptr %i.q, align 8, !tbaa !67   ; 2 uses
  store i64 %i.t, ptr %i.m, align 8, !tbaa !67
  %i.u = load ptr, ptr %1, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !65
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !64
  store i64 0, ptr %i.q, align 8, !tbaa !67
  store i8 0, ptr %.pre.i, align 1, !tbaa !65
  %i.w = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.p
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.y = load i64, ptr %i.p, align 8, !tbaa !65
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.aa = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.l, i32 noundef 58) #60 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  %i.ac = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.h, !prof !87

bb.d:                                             ; preds = %bb.c
  %i.ae = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i54 = icmp eq i32 %i.ae, 0
  br i1 %.not.i54, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.f unwind label %bb.g, !inline_history !88

bb.f:                                             ; preds = %bb.e
  %i.af = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.f
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ak, ptr %5, align 8, !tbaa !66
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
          to label %.noexc57 unwind label %bb.ag

.noexc57:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #54
  store i64 %i.am, ptr %i.k, align 8, !tbaa !83
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %.noexc.i56, label %._crit_edge.i.i55

.noexc.i56:                                       ; preds = %bb.j
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc58 unwind label %bb.ag  ; 2 uses

.noexc58:                                         ; preds = %.noexc.i56
  store ptr %i.ao, ptr %5, align 8, !tbaa !64
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !83
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !65
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %.noexc58, %bb.j
  %i.aq = phi ptr [ %i.ao, %.noexc58 ], [ %i.ak, %bb.j ] ; 2 uses
  switch i64 %i.am, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i55
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !65
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !65
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %i.aj, i64 %i.am, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i55
  %i.as = load i64, ptr %i.k, align 8, !tbaa !83  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.as, ptr %i.at, align 8, !tbaa !67
  %i.au = load ptr, ptr %5, align 8, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #54
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.aw, ptr %4, align 8, !tbaa !66
  %i.ax = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #54
  store i64 %i.ay, ptr %i.j, align 8, !tbaa !83
  %i.az = icmp ugt i64 %i.ay, 15
  br i1 %i.az, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.m
  %i.ba = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc60 unwind label %bb.ah  ; 2 uses

.noexc60:                                         ; preds = %.noexc.i.i
  store ptr %i.ba, ptr %4, align 8, !tbaa !64
  %i.bb = load i64, ptr %i.j, align 8, !tbaa !83
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !65
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc60, %bb.m
  %i.bc = phi ptr [ %i.ba, %.noexc60 ], [ %i.aw, %bb.m ] ; 2 uses
  switch i64 %i.ay, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !65
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.ax, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i
  %i.be = load i64, ptr %i.j, align 8, !tbaa !83  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !67
  %i.bg = load ptr, ptr %4, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #54
  %i.bi = load ptr, ptr %4, align 8, !tbaa !64    ; 10 uses
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !67 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %.not2021.i.i = icmp samesign eq i64 %i.bj, 0
  br i1 %.not2021.i.i, label %.lr.ph.i.i68.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %xtraiter364 = and i64 %i.bj, 1
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bl = load i8, ptr %i.bi, align 1, !tbaa !65
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !65
  %.pre270.prol = load ptr, ptr %4, align 8       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.pre.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.pre270.prol, %.lr.ph.i.i.prol ]
  %.sroa.015.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.prol ]
  %.unr366 = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %.pre270.prol, %.lr.ph.i.i.prol ]
  %.sroa.015.023.i.i.unr = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.prol ]
  %.sroa.012.022.i.i.unr = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.prol ]
  %i.bo = icmp eq i64 %i.bj, 1
  br i1 %i.bo, label %.lr.ph.i.i68.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.r
  %i.bp = phi ptr [ %.pre.i.i.1, %bb.r ], [ %.unr366, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.015.023.i.i = phi ptr [ %.sroa.015.1.i.i.1, %bb.r ], [ %.sroa.015.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.012.022.i.i = phi ptr [ %i.cd, %bb.r ], [ %.sroa.012.022.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.bq = load i8, ptr %.sroa.012.022.i.i, align 1, !tbaa !65 ; 2 uses
  %i.br = icmp ne i8 %i.bq, 47
  %i.bs = icmp eq ptr %.sroa.015.023.i.i, %i.bp
  %or.cond = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond, label %.sink.split.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.bt = getelementptr inbounds i8, ptr %.sroa.015.023.i.i, i64 -1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !65
  %.not.i.i = icmp eq i8 %i.bu, 47
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.p, %.lr.ph.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.015.023.i.i, i64 1
  store i8 %i.bq, ptr %.sroa.015.023.i.i, align 1, !tbaa !65
  %.pre270 = load ptr, ptr %4, align 8
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.sink.split.i.i, %bb.p
  %.pre.i.i = phi ptr [ %i.bp, %bb.p ], [ %.pre270, %.sink.split.i.i ] ; 2 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.015.023.i.i, %bb.p ], [ %i.bv, %.sink.split.i.i ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i.i, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !65  ; 2 uses
  %i.by = icmp ne i8 %i.bx, 47
  %i.bz = icmp eq ptr %.sroa.015.1.i.i, %.pre.i.i
  %or.cond.1 = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %or.cond.1, label %.sink.split.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.1
  %i.ca = getelementptr inbounds i8, ptr %.sroa.015.1.i.i, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !65
  %.not.i.i.1 = icmp eq i8 %i.cb, 47
  br i1 %.not.i.i.1, label %bb.r, label %.sink.split.i.i.1

.sink.split.i.i.1:                                ; preds = %bb.q, %.lr.ph.i.i.1
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 1
  store i8 %i.bx, ptr %.sroa.015.1.i.i, align 1, !tbaa !65
  %.pre270.1 = load ptr, ptr %4, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i.1, %bb.q
  %.pre.i.i.1 = phi ptr [ %.pre.i.i, %bb.q ], [ %.pre270.1, %.sink.split.i.i.1 ] ; 2 uses
  %.sroa.015.1.i.i.1 = phi ptr [ %.sroa.015.1.i.i, %bb.q ], [ %i.cc, %.sink.split.i.i.1 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i.i, i64 2 ; 2 uses
  %.not20.i.i.1 = icmp eq ptr %i.cd, %i.bk
  br i1 %.not20.i.i.1, label %.lr.ph.i.i68.preheader, label %.lr.ph.i.i

.lr.ph.i.i68.preheader:                           ; preds = %.lr.ph.i.i.prol.loopexit, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ce = phi ptr [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.pre.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.pre.i.i.1, %bb.r ] ; 2 uses
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.sroa.015.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.015.1.i.i.1, %bb.r ]
  %i.cf = ptrtoint ptr %.sroa.015.0.lcssa.i.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  store i64 %i.ch, ptr %i.bf, align 8, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  store i8 0, ptr %i.ci, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #54
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
end_hunk_3
begin_hunk_4_@_ZN7testing8internal15UnitTestOptions27GetAbsolutePathToOutputFileB5cxx11Ev:bb.a
.noexc.i112:                                      ; preds = %bb.ak
  %i.ho = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc113 unwind label %bb.bs ; 2 uses

.noexc113:                                        ; preds = %.noexc.i112
  store ptr %i.ho, ptr %9, align 8, !tbaa !64
  %i.hp = load i64, ptr %i.h, align 8, !tbaa !83
  store i64 %i.hp, ptr %i.hl, align 8, !tbaa !65
  br label %._crit_edge.i.i111

._crit_edge.i.i111:                               ; preds = %.noexc113, %bb.ak
  %i.hq = phi ptr [ %i.ho, %.noexc113 ], [ %i.hl, %bb.ak ] ; 2 uses
  switch i64 %i.hm, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i111
  %i.hr = load i8, ptr %i.hk, align 1, !tbaa !65
  store i8 %i.hr, ptr %i.hq, align 1, !tbaa !65
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hq, ptr nonnull align 1 %i.hk, i64 %i.hm, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i111
  %i.hs = load i64, ptr %i.h, align 8, !tbaa !83  ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !67
  %i.hu = load ptr, ptr %9, align 8, !tbaa !64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hs
  store i8 0, ptr %i.hv, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #54
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.hw, ptr %8, align 8, !tbaa !66
  %i.hx = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.hy = load i64, ptr %i.ht, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #54
  store i64 %i.hy, ptr %i.g, align 8, !tbaa !83
  %i.hz = icmp ugt i64 %i.hy, 15
  br i1 %i.hz, label %.noexc.i.i128, label %._crit_edge.i.i.i115

.noexc.i.i128:                                    ; preds = %bb.an
  %i.ia = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc129 unwind label %bb.bt ; 2 uses

.noexc129:                                        ; preds = %.noexc.i.i128
  store ptr %i.ia, ptr %8, align 8, !tbaa !64
  %i.ib = load i64, ptr %i.g, align 8, !tbaa !83
  store i64 %i.ib, ptr %i.hw, align 8, !tbaa !65
  br label %._crit_edge.i.i.i115

._crit_edge.i.i.i115:                             ; preds = %.noexc129, %bb.an
  %i.ic = phi ptr [ %i.ia, %.noexc129 ], [ %i.hw, %bb.an ] ; 2 uses
  switch i64 %i.hy, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i116
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i115
  %i.id = load i8, ptr %i.hx, align 1, !tbaa !65
  store i8 %i.id, ptr %i.ic, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i116

bb.ap:                                            ; preds = %._crit_edge.i.i.i115
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ic, ptr align 1 %i.hx, i64 %i.hy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i116: ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i.i115
  %i.ie = load i64, ptr %i.g, align 8, !tbaa !83  ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.ie, ptr %i.if, align 8, !tbaa !67
  %i.ig = load ptr, ptr %8, align 8, !tbaa !64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie
  store i8 0, ptr %i.ih, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #54
  %i.ii = load ptr, ptr %8, align 8, !tbaa !64    ; 10 uses
  %i.ij = load i64, ptr %i.if, align 8, !tbaa !67 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ij
  %.not2021.i.i117 = icmp samesign eq i64 %i.ij, 0
  br i1 %.not2021.i.i117, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i124, label %.lr.ph.i.i118.preheader

.lr.ph.i.i118.preheader:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i116
  %xtraiter = and i64 %i.ij, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i118.prol.loopexit, label %.lr.ph.i.i118.prol

.lr.ph.i.i118.prol:                               ; preds = %.lr.ph.i.i118.preheader
  %i.il = load i8, ptr %i.ii, align 1, !tbaa !65
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 1 ; 2 uses
  store i8 %i.il, ptr %i.ii, align 1, !tbaa !65
  %.pre.prol = load ptr, ptr %8, align 8          ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  br label %.lr.ph.i.i118.prol.loopexit

.lr.ph.i.i118.prol.loopexit:                      ; preds = %.lr.ph.i.i118.prol, %.lr.ph.i.i118.preheader
  %.pre.i.i125.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i118.preheader ], [ %.pre.prol, %.lr.ph.i.i118.prol ]
  %.sroa.015.1.i.i122.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i118.preheader ], [ %i.im, %.lr.ph.i.i118.prol ]
  %.unr = phi ptr [ %i.ii, %.lr.ph.i.i118.preheader ], [ %.pre.prol, %.lr.ph.i.i118.prol ]
  %.sroa.015.023.i.i119.unr = phi ptr [ %i.ii, %.lr.ph.i.i118.preheader ], [ %i.im, %.lr.ph.i.i118.prol ]
  %.sroa.012.022.i.i120.unr = phi ptr [ %i.ii, %.lr.ph.i.i118.preheader ], [ %i.in, %.lr.ph.i.i118.prol ]
  %i.io = icmp eq i64 %i.ij, 1
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i124, label %.lr.ph.i.i118

.lr.ph.i.i118:                                    ; preds = %.lr.ph.i.i118.prol.loopexit, %bb.as
  %i.ip = phi ptr [ %.pre.i.i125.1, %bb.as ], [ %.unr, %.lr.ph.i.i118.prol.loopexit ] ; 2 uses
  %.sroa.015.023.i.i119 = phi ptr [ %.sroa.015.1.i.i122.1, %bb.as ], [ %.sroa.015.023.i.i119.unr, %.lr.ph.i.i118.prol.loopexit ] ; 5 uses
  %.sroa.012.022.i.i120 = phi ptr [ %i.jd, %bb.as ], [ %.sroa.012.022.i.i120.unr, %.lr.ph.i.i118.prol.loopexit ] ; 3 uses
  %i.iq = load i8, ptr %.sroa.012.022.i.i120, align 1, !tbaa !65 ; 2 uses
  %i.ir = icmp ne i8 %i.iq, 47
  %i.is = icmp eq ptr %.sroa.015.023.i.i119, %i.ip
  %or.cond260 = select i1 %i.ir, i1 true, i1 %i.is
  br i1 %or.cond260, label %.sink.split.i.i121, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i118
  %i.it = getelementptr inbounds i8, ptr %.sroa.015.023.i.i119, i64 -1
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !65
  %.not.i.i127 = icmp eq i8 %i.iu, 47
  br i1 %.not.i.i127, label %.lr.ph.i.i118.1, label %.sink.split.i.i121

.sink.split.i.i121:                               ; preds = %bb.aq, %.lr.ph.i.i118
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.015.023.i.i119, i64 1
  store i8 %i.iq, ptr %.sroa.015.023.i.i119, align 1, !tbaa !65
  %.pre = load ptr, ptr %8, align 8
  br label %.lr.ph.i.i118.1

.lr.ph.i.i118.1:                                  ; preds = %.sink.split.i.i121, %bb.aq
  %.pre.i.i125 = phi ptr [ %i.ip, %bb.aq ], [ %.pre, %.sink.split.i.i121 ] ; 2 uses
  %.sroa.015.1.i.i122 = phi ptr [ %.sroa.015.023.i.i119, %bb.aq ], [ %i.iv, %.sink.split.i.i121 ] ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i.i120, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !65  ; 2 uses
  %i.iy = icmp ne i8 %i.ix, 47
  %i.iz = icmp eq ptr %.sroa.015.1.i.i122, %.pre.i.i125
  %or.cond260.1 = select i1 %i.iy, i1 true, i1 %i.iz
  br i1 %or.cond260.1, label %.sink.split.i.i121.1, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i118.1
  %i.ja = getelementptr inbounds i8, ptr %.sroa.015.1.i.i122, i64 -1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !65
  %.not.i.i127.1 = icmp eq i8 %i.jb, 47
  br i1 %.not.i.i127.1, label %bb.as, label %.sink.split.i.i121.1

.sink.split.i.i121.1:                             ; preds = %bb.ar, %.lr.ph.i.i118.1
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i122, i64 1
  store i8 %i.ix, ptr %.sroa.015.1.i.i122, align 1, !tbaa !65
  %.pre.1 = load ptr, ptr %8, align 8
  br label %bb.as

bb.as:                                            ; preds = %.sink.split.i.i121.1, %bb.ar
  %.pre.i.i125.1 = phi ptr [ %.pre.i.i125, %bb.ar ], [ %.pre.1, %.sink.split.i.i121.1 ] ; 2 uses
  %.sroa.015.1.i.i122.1 = phi ptr [ %.sroa.015.1.i.i122, %bb.ar ], [ %i.jc, %.sink.split.i.i121.1 ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i.i120, i64 2 ; 2 uses
  %.not20.i.i123.1 = icmp eq ptr %i.jd, %i.ik
  br i1 %.not20.i.i123.1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i124, label %.lr.ph.i.i118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i124: ; preds = %.lr.ph.i.i118.prol.loopexit, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i116
  %i.je = phi ptr [ %i.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i116 ], [ %.pre.i.i125.lcssa.unr, %.lr.ph.i.i118.prol.loopexit ], [ %.pre.i.i125.1, %bb.as ] ; 2 uses
  %.sroa.015.0.lcssa.i.i126 = phi ptr [ %i.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i116 ], [ %.sroa.015.1.i.i122.lcssa.unr, %.lr.ph.i.i118.prol.loopexit ], [ %.sroa.015.1.i.i122.1, %bb.as ]
  %i.jf = ptrtoint ptr %.sroa.015.0.lcssa.i.i126 to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg                    ; 2 uses
  store i64 %i.jh, ptr %i.if, align 8, !tbaa !67
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jh
  store i8 0, ptr %i.ji, align 1, !tbaa !65
  %i.jj = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.hl
  br i1 %i.jk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i124
  %i.jl = load i64, ptr %i.hl, align 8, !tbaa !65
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #55
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #54
  %i.jn = load ptr, ptr %8, align 8, !tbaa !64
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !65
  %i.jp = icmp eq i8 %i.jo, 47
  br i1 %i.jp, label %bb.cb, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i132
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #54
  %i.jq = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.jr = icmp eq i8 %i.jq, 0
  br i1 %i.jr, label %bb.au, label %bb.ay, !prof !87

bb.au:                                            ; preds = %bb.at
  %i.js = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i134 = icmp eq i32 %i.js, 0
  br i1 %.not.i134, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.aw unwind label %bb.ax, !inline_history !88

bb.aw:                                            ; preds = %bb.av
  %i.jt = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %.body135

bb.ay:                                            ; preds = %bb.at, %bb.au, %bb.aw
  %i.jv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !64 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.jy, ptr %12, align 8, !tbaa !66
  %i.jz = icmp eq ptr %i.jx, null
  br i1 %i.jz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
          to label %.noexc140 unwind label %bb.bv

.noexc140:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.ka = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jx) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #54
  store i64 %i.ka, ptr %i.f, align 8, !tbaa !83
  %i.kb = icmp ugt i64 %i.ka, 15
  br i1 %i.kb, label %.noexc.i139, label %._crit_edge.i.i138

.noexc.i139:                                      ; preds = %bb.ba
  %i.kc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc141 unwind label %bb.bv ; 2 uses

.noexc141:                                        ; preds = %.noexc.i139
  store ptr %i.kc, ptr %12, align 8, !tbaa !64
  %i.kd = load i64, ptr %i.f, align 8, !tbaa !83
  store i64 %i.kd, ptr %i.jy, align 8, !tbaa !65
  br label %._crit_edge.i.i138

._crit_edge.i.i138:                               ; preds = %.noexc141, %bb.ba
  %i.ke = phi ptr [ %i.kc, %.noexc141 ], [ %i.jy, %bb.ba ] ; 2 uses
  switch i64 %i.ka, label %bb.bc [
    i64 1, label %bb.bb
    i64 0, label %bb.bd
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i138
  %i.kf = load i8, ptr %i.jx, align 1, !tbaa !65
  store i8 %i.kf, ptr %i.ke, align 1, !tbaa !65
  br label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i.i138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ke, ptr nonnull align 1 %i.jx, i64 %i.ka, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %._crit_edge.i.i138
  %i.kg = load i64, ptr %i.f, align 8, !tbaa !83  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !67
  %i.ki = load ptr, ptr %12, align 8, !tbaa !64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kg
  store i8 0, ptr %i.kj, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #54
  %i.kk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.kk, ptr %11, align 8, !tbaa !66
  %i.kl = load ptr, ptr %12, align 8, !tbaa !64   ; 2 uses
  %i.km = load i64, ptr %i.kh, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #54
  store i64 %i.km, ptr %i.e, align 8, !tbaa !83
  %i.kn = icmp ugt i64 %i.km, 15
  br i1 %i.kn, label %.noexc.i.i156, label %._crit_edge.i.i.i143

.noexc.i.i156:                                    ; preds = %bb.bd
  %i.ko = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc157 unwind label %bb.bw ; 2 uses

.noexc157:                                        ; preds = %.noexc.i.i156
  store ptr %i.ko, ptr %11, align 8, !tbaa !64
  %i.kp = load i64, ptr %i.e, align 8, !tbaa !83
  store i64 %i.kp, ptr %i.kk, align 8, !tbaa !65
  br label %._crit_edge.i.i.i143

._crit_edge.i.i.i143:                             ; preds = %.noexc157, %bb.bd
  %i.kq = phi ptr [ %i.ko, %.noexc157 ], [ %i.kk, %bb.bd ] ; 2 uses
  switch i64 %i.km, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i143
  %i.kr = load i8, ptr %i.kl, align 1, !tbaa !65
  store i8 %i.kr, ptr %i.kq, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144

bb.bf:                                            ; preds = %._crit_edge.i.i.i143
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kq, ptr align 1 %i.kl, i64 %i.km, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144: ; preds = %bb.bf, %bb.be, %._crit_edge.i.i.i143
  %i.ks = load i64, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 %i.ks, ptr %i.kt, align 8, !tbaa !67
  %i.ku = load ptr, ptr %11, align 8, !tbaa !64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ks
  store i8 0, ptr %i.kv, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #54
  %i.kw = load ptr, ptr %11, align 8, !tbaa !64   ; 10 uses
  %i.kx = load i64, ptr %i.kt, align 8, !tbaa !67 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.kx
  %.not2021.i.i145 = icmp samesign eq i64 %i.kx, 0
  br i1 %.not2021.i.i145, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i152, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144
  %xtraiter358 = and i64 %i.kx, 1
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %.lr.ph.i.i146.prol.loopexit, label %.lr.ph.i.i146.prol

.lr.ph.i.i146.prol:                               ; preds = %.lr.ph.i.i146.preheader
  %i.kz = load i8, ptr %i.kw, align 1, !tbaa !65
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 1 ; 2 uses
  store i8 %i.kz, ptr %i.kw, align 1, !tbaa !65
  %.pre266.prol = load ptr, ptr %11, align 8      ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  br label %.lr.ph.i.i146.prol.loopexit

.lr.ph.i.i146.prol.loopexit:                      ; preds = %.lr.ph.i.i146.prol, %.lr.ph.i.i146.preheader
  %.pre.i.i153.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i146.preheader ], [ %.pre266.prol, %.lr.ph.i.i146.prol ]
  %.sroa.015.1.i.i150.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i146.preheader ], [ %i.la, %.lr.ph.i.i146.prol ]
  %.unr360 = phi ptr [ %i.kw, %.lr.ph.i.i146.preheader ], [ %.pre266.prol, %.lr.ph.i.i146.prol ]
  %.sroa.015.023.i.i147.unr = phi ptr [ %i.kw, %.lr.ph.i.i146.preheader ], [ %i.la, %.lr.ph.i.i146.prol ]
  %.sroa.012.022.i.i148.unr = phi ptr [ %i.kw, %.lr.ph.i.i146.preheader ], [ %i.lb, %.lr.ph.i.i146.prol ]
  %i.lc = icmp eq i64 %i.kx, 1
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i152, label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.prol.loopexit, %bb.bi
  %i.ld = phi ptr [ %.pre.i.i153.1, %bb.bi ], [ %.unr360, %.lr.ph.i.i146.prol.loopexit ] ; 2 uses
  %.sroa.015.023.i.i147 = phi ptr [ %.sroa.015.1.i.i150.1, %bb.bi ], [ %.sroa.015.023.i.i147.unr, %.lr.ph.i.i146.prol.loopexit ] ; 5 uses
  %.sroa.012.022.i.i148 = phi ptr [ %i.lr, %bb.bi ], [ %.sroa.012.022.i.i148.unr, %.lr.ph.i.i146.prol.loopexit ] ; 3 uses
  %i.le = load i8, ptr %.sroa.012.022.i.i148, align 1, !tbaa !65 ; 2 uses
  %i.lf = icmp ne i8 %i.le, 47
  %i.lg = icmp eq ptr %.sroa.015.023.i.i147, %i.ld
  %or.cond262 = select i1 %i.lf, i1 true, i1 %i.lg
  br i1 %or.cond262, label %.sink.split.i.i149, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i146
  %i.lh = getelementptr inbounds i8, ptr %.sroa.015.023.i.i147, i64 -1
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !65
  %.not.i.i155 = icmp eq i8 %i.li, 47
  br i1 %.not.i.i155, label %.lr.ph.i.i146.1, label %.sink.split.i.i149

.sink.split.i.i149:                               ; preds = %bb.bg, %.lr.ph.i.i146
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.015.023.i.i147, i64 1
  store i8 %i.le, ptr %.sroa.015.023.i.i147, align 1, !tbaa !65
  %.pre266 = load ptr, ptr %11, align 8
  br label %.lr.ph.i.i146.1

.lr.ph.i.i146.1:                                  ; preds = %.sink.split.i.i149, %bb.bg
  %.pre.i.i153 = phi ptr [ %i.ld, %bb.bg ], [ %.pre266, %.sink.split.i.i149 ] ; 2 uses
  %.sroa.015.1.i.i150 = phi ptr [ %.sroa.015.023.i.i147, %bb.bg ], [ %i.lj, %.sink.split.i.i149 ] ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i.i148, i64 1
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !65  ; 2 uses
  %i.lm = icmp ne i8 %i.ll, 47
  %i.ln = icmp eq ptr %.sroa.015.1.i.i150, %.pre.i.i153
  %or.cond262.1 = select i1 %i.lm, i1 true, i1 %i.ln
  br i1 %or.cond262.1, label %.sink.split.i.i149.1, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i146.1
  %i.lo = getelementptr inbounds i8, ptr %.sroa.015.1.i.i150, i64 -1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !65
  %.not.i.i155.1 = icmp eq i8 %i.lp, 47
  br i1 %.not.i.i155.1, label %bb.bi, label %.sink.split.i.i149.1

.sink.split.i.i149.1:                             ; preds = %bb.bh, %.lr.ph.i.i146.1
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i150, i64 1
  store i8 %i.ll, ptr %.sroa.015.1.i.i150, align 1, !tbaa !65
  %.pre266.1 = load ptr, ptr %11, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split.i.i149.1, %bb.bh
  %.pre.i.i153.1 = phi ptr [ %.pre.i.i153, %bb.bh ], [ %.pre266.1, %.sink.split.i.i149.1 ] ; 2 uses
  %.sroa.015.1.i.i150.1 = phi ptr [ %.sroa.015.1.i.i150, %bb.bh ], [ %i.lq, %.sink.split.i.i149.1 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i.i148, i64 2 ; 2 uses
  %.not20.i.i151.1 = icmp eq ptr %i.lr, %i.ky
  br i1 %.not20.i.i151.1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i152, label %.lr.ph.i.i146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i152: ; preds = %.lr.ph.i.i146.prol.loopexit, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144
  %i.ls = phi ptr [ %i.kw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144 ], [ %.pre.i.i153.lcssa.unr, %.lr.ph.i.i146.prol.loopexit ], [ %.pre.i.i153.1, %bb.bi ] ; 2 uses
  %.sroa.015.0.lcssa.i.i154 = phi ptr [ %i.kw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i144 ], [ %.sroa.015.1.i.i150.lcssa.unr, %.lr.ph.i.i146.prol.loopexit ], [ %.sroa.015.1.i.i150.1, %bb.bi ]
  %i.lt = ptrtoint ptr %.sroa.015.0.lcssa.i.i154 to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 2 uses
  store i64 %i.lv, ptr %i.kt, align 8, !tbaa !67
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lv
  store i8 0, ptr %i.lw, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #54
  %i.lx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
end_hunk_4
begin_hunk_5_@_ZN7testing8internal15UnitTestOptions17FilterMatchesTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:bb.a
  store i8 %i.dd, ptr %i.cx, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.cz, i64 %i.db, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34: ; preds = %bb.x, %bb.w, %bb.v
  %i.de = load i64, ptr %i.cu, align 8, !tbaa !67 ; 2 uses
  store i64 %i.de, ptr %i.av, align 8, !tbaa !67
  %i.df = load ptr, ptr %5, align 8, !tbaa !64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store i8 0, ptr %i.dg, align 1, !tbaa !65
  %.pre.i35 = load ptr, ptr %7, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

.thread.i37:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i36
  store ptr %i.cz, ptr %5, align 8, !tbaa !64
  %i.dh = load <2 x i64>, ptr %i.cu, align 8, !tbaa !65
  store <2 x i64> %i.dh, ptr %i.av, align 8, !tbaa !65
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i31
  %i.di = load i64, ptr %i.au, align 8, !tbaa !65
  store ptr %i.cz, ptr %5, align 8, !tbaa !64
  %i.dj = load <2 x i64>, ptr %i.cu, align 8, !tbaa !65
  store <2 x i64> %i.dj, ptr %i.av, align 8, !tbaa !65
  %.not.i33 = icmp eq ptr %i.cx, null
  br i1 %.not.i33, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i32
  store ptr %i.cx, ptr %7, align 8, !tbaa !64
  store i64 %i.di, ptr %i.cm, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i32, %.thread.i37
  store ptr %i.cm, ptr %7, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34, %bb.y, %bb.z
  %i.dk = phi ptr [ %i.cx, %bb.y ], [ %i.cm, %bb.z ], [ %.pre.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34 ]
  store i64 0, ptr %i.cu, align 8, !tbaa !67
  store i8 0, ptr %i.dk, align 1, !tbaa !65
  %i.dl = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cm
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38
  %i.dn = load i64, ptr %i.cm, align 8, !tbaa !65
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  %i.dp = load i64, ptr %i.at, align 8, !tbaa !67
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.dr = phi ptr [ %5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %i.ds = phi i64 [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %i.dt = phi ptr [ @.str.32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ @_ZN7testingL16kUniversalFilterE, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %i.du = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %i.dv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 noundef 0, i64 noundef %i.ds, ptr noundef nonnull %i.dt, i64 noundef %i.du)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19 unwind label %bb.i ; 0 uses

bb.aa:                                            ; preds = %.noexc.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  br label %bb.ae

bb.ab:                                            ; preds = %.noexc.i29
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  br label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19: ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.dy = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.dz = call noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.dy)
  %.pre = load ptr, ptr %5, align 8, !tbaa !64    ; 3 uses
  br i1 %i.dz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19
  %i.ea = call noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %.pre)
  %i.eb = xor i1 %i.ea, true
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19
  %i.ec = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19 ], [ %i.eb, %bb.ac ]
  %i.ed = icmp eq ptr %.pre, %i.au
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.ad
  %i.ee = load i64, ptr %i.au, align 8, !tbaa !65
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ef) #55
  %.pre63 = load ptr, ptr %4, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %i.eg = phi ptr [ %.pre63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.dy, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  %i.eh = icmp eq ptr %i.eg, %i.as
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.ei = load i64, ptr %i.as, align 8, !tbaa !65
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  %i.ek = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.aa
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.em = load i64, ptr %i.aa, align 8, !tbaa !65
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  ret i1 %i.ec

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.i ], [ %i.dx, %bb.ab ], [ %i.dw, %bb.aa ]
  %i.eo = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.au
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.ae
  %i.eq = load i64, ptr %i.au, align 8, !tbaa !65
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  %i.es = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.as
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.eu = load i64, ptr %i.as, align 8, !tbaa !65
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  %i.ew = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.aa
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ey = load i64, ptr %i.aa, align 8, !tbaa !65
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterC2EPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 12), (24, 32)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !222
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !223
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !222
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = tail call noundef ptr @_ZN7testing8internal12UnitTestImpl31GetGlobalTestPartResultReporterEv(ptr noundef nonnull align 8 dereferenceable(601) %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !224
  tail call void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %i.f, ptr noundef nonnull %0)
  br label %bb.h

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !224
  %i.p = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  store ptr %0, ptr %i.p, align 8, !tbaa !109
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterC2ENS0_13InterceptModeEPNS_19TestPartResultArrayE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 12), (24, 32)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !222
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.b, align 8, !tbaa !223
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporter4InitEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7testing8internal12UnitTestImpl31GetGlobalTestPartResultReporterEv(ptr noundef nonnull align 8 dereferenceable(601) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #54 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.401, i32 noundef 1650)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.402, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.403, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %i.f

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.g, ptr %i.h, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !225
  store i8 0, ptr %i.i, align 8, !tbaa !99
  %i.l = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #54 ; 2 uses
  %.not.i.i1 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i1, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #54
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.401, i32 noundef 1662)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.404, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2: ; preds = %.noexc.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.403, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.l)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #54
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i2, %.noexc.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #54
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
define void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #54 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.401, i32 noundef 1650)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.402, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.403, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  br label %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  resume { ptr, i32 } %i.f

_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit: ; preds = %bb.a, %bb.c
  %i.g = tail call i64 @pthread_self() #58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.g, ptr %i.h, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.j, align 8, !tbaa !225
  store i8 0, ptr %i.i, align 8, !tbaa !99
  %i.k = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #54 ; 2 uses
  %.not.i.i2 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i2, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal14GTestMutexLockC2EPNS0_9MutexBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.401, i32 noundef 1662)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.404, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3: ; preds = %.noexc.i
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.403, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.k)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %_ZN7testing8internal14GTestMutexLockD2Ev.exit

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4.i.i4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i3, %.noexc.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
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
define noundef ptr @_ZN7testing8internal12UnitTestImpl41GetTestPartResultReporterForCurrentThreadEv(ptr noundef nonnull align 8 dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  store ptr %1, ptr %i.b, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing32ScopedFakeTestPartResultReporterE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !222
  %i.i = icmp eq i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !224  ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8internal12UnitTestImpl31SetGlobalTestPartResultReporterEPNS_31TestPartResultReporterInterfaceE(ptr noundef nonnull align 8 dereferenceable(601) %i.f, ptr noundef %i.k)
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.m = invoke noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE.exit unwind label %bb.j

_ZN7testing8internal12UnitTestImpl41SetTestPartResultReporterForCurrentThreadEPNS_31TestPartResultReporterInterfaceE.exit: ; preds = %bb.h
  store ptr %i.k, ptr %i.m, align 8, !tbaa !109
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
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #54 ; 0 uses
  tail call void @_ZSt9terminatev() #59
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN7testing32ScopedFakeTestPartResultReporterD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #54
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #55
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing32ScopedFakeTestPartResultReporter20ReportTestPartResultERKNS_14TestPartResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !227
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !226
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.h, ptr %i.c, align 8, !tbaa !226
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !226
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.f, ptr %i.a, align 8, !tbaa !226
  br label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #4 {
bb.a:
  ret ptr @_ZN7testing8internal12TypeIdHelperINS_4TestEE6dummy_E
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal20SingleFailureCheckerC2EPKNS_19TestPartResultArrayENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 12)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !229
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.b, align 8, !tbaa !230
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !66
  %i.e = load ptr, ptr %3, align 8, !tbaa !64     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.g, ptr %i.a, align 8, !tbaa !83
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !64
  %i.j = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.j, ptr %i.d, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !65
  store i8 %i.l, ptr %i.k, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !67
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal20SingleFailureCheckerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
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
end_hunk_5
begin_hunk_6_@_ZN7testing8internal14GTestFlagSaverC2Ev:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.r, align 8, !tbaa !67
  store i8 0, ptr %i.q, align 8, !tbaa !65
  %i.s = load i8, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !tbaa !110, !range !111, !noundef !112
  store i8 %i.s, ptr %0, align 8, !tbaa !360
  %i.t = load i8, ptr @_ZN7testing28FLAGS_gtest_break_on_failureE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !361
  %i.v = load i8, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.w, align 2, !tbaa !362
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing17FLAGS_gtest_colorB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.x = load i8, ptr @_ZN7testing31FLAGS_gtest_death_test_use_forkE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.x, ptr %i.y, align 8, !tbaa !363
  %i.z = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !364
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_filterB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3
  %i.ab = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.ab, ptr %i.ac, align 8, !tbaa !365
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing18FLAGS_gtest_outputB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4
  %i.ad = load i8, ptr @_ZN7testing17FLAGS_gtest_briefE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !366
  %i.af = load i8, ptr @_ZN7testing22FLAGS_gtest_print_timeE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !367
  %i.ah = load i8, ptr @_ZN7testing22FLAGS_gtest_print_utf8E, align 1, !tbaa !110, !range !111, !noundef !112
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i8 %i.ah, ptr %i.ai, align 2, !tbaa !368
  %i.aj = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !369
  %i.al = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.al, ptr %i.am, align 8, !tbaa !370
  %i.an = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !371
  %i.ap = load i32, ptr @_ZN7testing29FLAGS_gtest_stack_trace_depthE, align 4, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !372
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit6 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5
  %i.ar = load i8, ptr @_ZN7testing28FLAGS_gtest_throw_on_failureE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.ar, ptr %i.as, align 8, !tbaa !373
  ret void

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !64  ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.q
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !65
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !64  ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.n
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !65
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !64  ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.k
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.be = load i64, ptr %i.k, align 8, !tbaa !65
  %i.bf = add i64 %i.be, 1
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !64  ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.h
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !65
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !64  ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.e
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !65
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.b
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !65
  %i.br = add i64 %i.bq, 1
  tail call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing4TestD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing4TestE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !358  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i

_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN7testing8internal14GTestFlagSaverD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %i.b) #54
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 248) #55
  br label %_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN7testing8internal14GTestFlagSaverESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7testing8internal14GTestFlagSaverEEclEPS2_.exit.i
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN7testing4TestD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #25 align 2 {
bb.a:
  tail call void @llvm.trap() #59
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #26

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7testing4Test5SetUpEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7testing4Test8TearDownEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Test14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::TestProperty", align 8 ; 10 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !88

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.r, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  call void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(601) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !65
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !65
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #55
  br label %_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %common.resume

_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8UnitTest14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::TestProperty", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  invoke void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(601) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !65
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.i = load ptr, ptr %3, align 8, !tbaa !64     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN7testing12TestPropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !65
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #55
  br label %_ZN7testing12TestPropertyD2Ev.exit

_ZN7testing12TestPropertyD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Test14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.b = load ptr, ptr %2, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %1)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.h ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  %i.e = load ptr, ptr %2, align 8, !tbaa !71, !noalias !951
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.e)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !64     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !66
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.i, ptr %i.a, align 8, !tbaa !83
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.j    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i
  store ptr %i.k, ptr %3, align 8, !tbaa !64
  %i.l = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.l, ptr %i.g, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc8, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc8 ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !65
  store i8 %i.n, ptr %i.m, align 1, !tbaa !65
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !67
  %i.q = load ptr, ptr %3, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  invoke void @_ZN7testing4Test14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %3, align 8, !tbaa !64     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.u = load i64, ptr %i.g, align 8, !tbaa !65
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !65
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  %i.ab = load ptr, ptr %2, align 8, !tbaa !71    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(128) %i.ab) #54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  ret void

bb.h:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.j:                                             ; preds = %.noexc.i, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.k:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.g
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.k
  %i.al = load i64, ptr %i.g, align 8, !tbaa !65
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.ai, %bb.k ] ; 2 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !65
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %i.af, %bb.h ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !71    ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.as, null
  br i1 %.not.i.i18, label %_ZN7testing7MessageD2Ev.exit20, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19: ; preds = %bb.l
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !73
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit20

_ZN7testing7MessageD2Ev.exit20:                   ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !88

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !67
  store i8 0, ptr %i.f, align 8, !tbaa !65
  invoke void @_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i32 noundef %0, ptr noundef null, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.h = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.f, align 8, !tbaa !65
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  ret void

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.o = load i64, ptr %i.f, align 8, !tbaa !65
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
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
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit59, %_ZN7testing7MessageD2Ev.exit92, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn33.pn.pn, %_ZN7testing7MessageD2Ev.exit59 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit92 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !245
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !266  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !374  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !244  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !374  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64   ; 5 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #54
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !71
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.95, i64 noundef 64)
          to label %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit:       ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.96, i64 noundef 59)
          to label %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA65_cEERS0_RKT_.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.97, i64 noundef 24)
          to label %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA60_cEERS0_RKT_.exit
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !64  ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = load ptr, ptr %0, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  br i1 %i.aj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #54
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.an = phi ptr [ %i.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.90, %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit ]
  %i.ao = phi i64 [ %i.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 6, %_ZN7testing7MessagelsIA25_cEERS0_RKT_.exit ]
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.an, i64 noundef %i.ao)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  %i.aq = load ptr, ptr %0, align 8, !tbaa !71
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.77, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.at = load ptr, ptr %0, align 8, !tbaa !71
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.98, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit
  %i.aw = icmp eq ptr %i.y, null
  %i.ax = load ptr, ptr %0, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  br i1 %i.aw, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit
  %i.az = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #54
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41
  %i.ba = phi ptr [ %i.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41 ], [ @.str.90, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit ]
  %i.bb = phi i64 [ %i.az, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41 ], [ 6, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit ]
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i41.invoke
  %i.bd = load ptr, ptr %0, align 8, !tbaa !71
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.99, i64 noundef 29)
          to label %_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit44
  %i.bg = load ptr, ptr %0, align 8, !tbaa !71
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.98, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47:      ; preds = %_ZN7testing7MessagelsIA30_cEERS0_RKT_.exit
  %i.bj = icmp eq ptr %i.x, null
  %i.bk = load ptr, ptr %0, align 8, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  br i1 %i.bj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #54
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke: ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48
  %i.bn = phi ptr [ %i.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48 ], [ @.str.90, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 ]
  %i.bo = phi i64 [ %i.bm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48 ], [ 6, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit47 ]
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.bn, i64 noundef %i.bo)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i48.invoke
  %i.bq = load ptr, ptr %0, align 8, !tbaa !71
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.100, i64 noundef 38)
          to label %_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit51
  %i.bt = load ptr, ptr %0, align 8, !tbaa !71
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.101, i64 noundef 61)
          to label %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA39_cEERS0_RKT_.exit
  %i.bw = load ptr, ptr %0, align 8, !tbaa !71
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.102, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55 unwind label %bb.j ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55:      ; preds = %_ZN7testing7MessagelsIA62_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #54
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef 2506, ptr noundef nonnull @.str.103)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit55
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #54
  %i.bz = load ptr, ptr %0, align 8, !tbaa !71    ; 3 uses
  %.not.i.i56 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i56, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !73
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(128) %i.bz) #54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #54
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
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #54
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn33 = phi { ptr, i32 } [ %i.cf, %bb.l ], [ %i.ce, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #54
  br label %bb.n

end_hunk_6
begin_hunk_7_@_ZN7testing8internal26GoogleTestFailureExceptionC2ERKNS_14TestPartResultE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !65
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal26GoogleTestFailureExceptionE, i64 16), ptr %0, align 8, !tbaa !73
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !65
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !67
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %i.a, align 8
  %spec.select.i = select i1 %i.d, ptr null, ptr %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !375
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %spec.select.i, i32 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %3, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.122, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.q = load i32, ptr %1, align 8, !tbaa !242    ; 2 uses
  %i.r = icmp ult i32 %i.q, 4
  br i1 %i.r, label %switch.lookup, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

switch.lookup:                                    ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.s = zext nneg i32 %i.q to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN7testing8internalL27PrintTestPartResultToStringB5cxx11ERKNS_14TestPartResultE, i64 %i.s
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.422, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit ] ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #54
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %.0.i, i64 noundef %i.v)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = load ptr, ptr %2, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br i1 %i.z, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #54
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12
  %i.ad = phi ptr [ %i.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12 ], [ @.str.90, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit ]
  %i.ae = phi i64 [ %i.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12 ], [ 6, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit ]
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.ad, i64 noundef %i.ae)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15 unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke
  %i.ag = load ptr, ptr %2, align 8, !tbaa !71, !noalias !954
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.ag)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit unwind label %bb.d

_ZNK7testing7Message9GetStringB5cxx11Ev.exit:     ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15
  %i.ah = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !65
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  %i.am = load ptr, ptr %2, align 8, !tbaa !71    ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(128) %i.am) #54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  ret void

bb.c:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i12.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.b, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit15
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.d
  %i.av = load i64, ptr %i.at, align 8, !tbaa !65
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.c ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.ar, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  %i.ax = load ptr, ptr %2, align 8, !tbaa !71    ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit22, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !73
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit22

_ZN7testing7MessageD2Ev.exit22:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #22

; Function Attrs: mustprogress uwtable
define void @_ZN7testing4Test3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7testing4Test19HasSameFixtureClassEv()
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  resume { ptr, i32 } %i.f

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 528 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !73
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.k = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.k, align 8, !tbaa !73
  store ptr %i.k, ptr %i.h, align 8, !tbaa !201
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.g
  %i.l = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.g ], [ %.pre, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.m = phi ptr [ %i.k, %bb.g ], [ %i.i, %_ZN7testing8internal15GetUnitTestImplEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 17, i64 0, ptr noundef nonnull @.str.111)
  %i.p = tail call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.p, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.q = tail call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.q, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !201  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge: ; preds = %bb.i
  %.pre10 = load ptr, ptr %i.r, align 8, !tbaa !73
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8

bb.j:                                             ; preds = %bb.i
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.t, align 8, !tbaa !73
  store ptr %i.t, ptr %i.h, align 8, !tbaa !201
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge, %bb.j
  %i.u = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.j ], [ %.pre10, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge ]
  %i.v = phi ptr [ %i.t, %bb.j ], [ %i.r, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8_crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 33, i64 0, ptr noundef nonnull @.str.112)
  br label %bb.k

bb.k:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit8, %bb.h, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !201  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge: ; preds = %bb.k
  %.pre11 = load ptr, ptr %i.y, align 8, !tbaa !73
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.aa, align 8, !tbaa !73
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !201
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge, %bb.l
  %i.ab = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.l ], [ %.pre11, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge ]
  %i.ac = phi ptr [ %i.aa, %bb.l ], [ %i.y, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit9_crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 25, i64 0, ptr noundef nonnull @.str.113)
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
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.bf, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.h = load i8, ptr %i.g, align 8, !tbaa !376, !range !111, !noundef !112
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !112
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !955

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 3 uses
  %i.u = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #54
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.s) #54 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #54
  %i.y = icmp eq i32 %i.t, %i.x
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.s) #54 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #54
  %i.ab = icmp eq i32 %i.t, %i.aa
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.s) #54 ; 2 uses
  br i1 %i.ab, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #54
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ag, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !65
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.t
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !65
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.v:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !65
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.as, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.x:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.x
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !65
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.w
  %.pn34 = phi { ptr, i32 } [ %i.ay, %bb.w ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.az, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
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
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.bh = getelementptr i8, ptr %i.bg, i64 %1
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  %i.bj = load ptr, ptr %i.bi, align 8, !nosanitize !112
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
  call void @__clang_call_terminate(ptr %i.bn) #59
  unreachable

bb.ae:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !245  ; 2 uses
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !356  ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !356  ; 3 uses
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
  %i.ah = load i32, ptr %next.gep, align 8, !tbaa !242
  %i.ai = load i32, ptr %next.gep6, align 8, !tbaa !242
  %i.aj = load i32, ptr %next.gep7, align 8, !tbaa !242
  %i.ak = load i32, ptr %next.gep8, align 8, !tbaa !242
  %i.al = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 1
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 2
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 3
  %i.ap = load i32, ptr %next.gep9, align 8, !tbaa !242
  %i.aq = load i32, ptr %next.gep10, align 8, !tbaa !242
  %i.ar = load i32, ptr %next.gep11, align 8, !tbaa !242
  %i.as = load i32, ptr %next.gep12, align 8, !tbaa !242
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
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !956

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
  %i.bf = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !242
  %i.bg = icmp eq i32 %i.bf, 2
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bh ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bi, %i.q
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !957

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
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !245  ; 2 uses
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !226  ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !231  ; 13 uses
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
  br i1 %exitcond16.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !11

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.u
  br i1 %exitcond.not.i.i, label %bb.k, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.u, i64 noundef %i.u) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.y = load i32, ptr %i.x, align 8, !tbaa !242
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
  %i.ao = load i32, ptr %next.gep, align 8, !tbaa !242
  %i.ap = load i32, ptr %next.gep7, align 8, !tbaa !242
  %i.aq = load i32, ptr %next.gep8, align 8, !tbaa !242
  %i.ar = load i32, ptr %next.gep9, align 8, !tbaa !242
  %i.as = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %i.at = insertelement <4 x i32> %i.as, i32 %i.ap, i64 1
  %i.au = insertelement <4 x i32> %i.at, i32 %i.aq, i64 2
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 3
  %i.aw = load i32, ptr %next.gep10, align 8, !tbaa !242
  %i.ax = load i32, ptr %next.gep11, align 8, !tbaa !242
  %i.ay = load i32, ptr %next.gep12, align 8, !tbaa !242
  %i.az = load i32, ptr %next.gep13, align 8, !tbaa !242
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
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !958

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
  %i.bm = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !242
  %i.bn = icmp eq i32 %i.bm, 3
  %i.bo = zext i1 %i.bn to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bo ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bp, %i.p
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i1.i, !llvm.loop !959

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
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !245  ; 2 uses
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !356  ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !356  ; 3 uses
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
  %i.ah = load i32, ptr %next.gep, align 8, !tbaa !242
  %i.ai = load i32, ptr %next.gep6, align 8, !tbaa !242
  %i.aj = load i32, ptr %next.gep7, align 8, !tbaa !242
  %i.ak = load i32, ptr %next.gep8, align 8, !tbaa !242
  %i.al = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 1
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 2
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 3
  %i.ap = load i32, ptr %next.gep9, align 8, !tbaa !242
  %i.aq = load i32, ptr %next.gep10, align 8, !tbaa !242
  %i.ar = load i32, ptr %next.gep11, align 8, !tbaa !242
  %i.as = load i32, ptr %next.gep12, align 8, !tbaa !242
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
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !960

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
  %i.bf = load i32, ptr %.sroa.04.08.i.i, align 8, !tbaa !242
  %i.bg = icmp eq i32 %i.bf, 1
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i = add nuw nsw i32 %.09.i.i, %i.bh ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 112 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.bi, %i.q
  br i1 %.not.i.i1, label %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !961

_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.be, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.bj = icmp ne i32 %spec.select.i.i.lcssa, 0
  br label %_ZNK7testing10TestResult18HasNonfatalFailureEv.exit

_ZNK7testing10TestResult18HasNonfatalFailureEv.exit: ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i
  %.0.lcssa.i.i = phi i1 [ false, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ], [ %i.bj, %_ZN7testing8internal7CountIfISt6vectorINS_14TestPartResultESaIS3_EEPFbRKS3_EEEiRKT_T0_.exit.loopexit.i ]
  ret i1 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKcSA_NS_8internal12CodeLocationEPKvPNSB_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly align 8 captures(none) %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !66
  %i.g = load ptr, ptr %1, align 8, !tbaa !64     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #54
  store i64 %i.i, ptr %i.e, align 8, !tbaa !83
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !64
  %i.l = load i64, ptr %i.e, align 8, !tbaa !83
  store i64 %i.l, ptr %i.f, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !65
  store i8 %i.n, ptr %i.m, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !67
  %i.q = load ptr, ptr %0, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #54
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !66
  %i.u = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #54
  store i64 %i.w, ptr %i.d, align 8, !tbaa !83
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i44, label %._crit_edge.i.i43

.noexc.i44:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.u     ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE:bb.a

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  store i64 %i.g, ptr %i.c, align 8, !tbaa !83
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc18 unwind label %bb.t   ; 2 uses

.noexc18:                                         ; preds = %.noexc.i
  store ptr %i.i, ptr %9, align 8, !tbaa !64
  %i.j = load i64, ptr %i.c, align 8, !tbaa !83
  store i64 %i.j, ptr %i.e, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc18, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc18 ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %0, align 1, !tbaa !65
  store i8 %i.l, ptr %i.k, align 1, !tbaa !65
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %0, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = load i64, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !67
  %i.o = load ptr, ptr %9, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #54
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.q, ptr %10, align 8, !tbaa !66
  %i.r = icmp eq ptr %1, null
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
          to label %.noexc21 unwind label %bb.u

.noexc21:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store i64 %i.s, ptr %i.b, align 8, !tbaa !83
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i20, label %._crit_edge.i.i19

.noexc.i20:                                       ; preds = %bb.h
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc22 unwind label %bb.u   ; 2 uses

.noexc22:                                         ; preds = %.noexc.i20
  store ptr %i.u, ptr %10, align 8, !tbaa !64
  %i.v = load i64, ptr %i.b, align 8, !tbaa !83
  store i64 %i.v, ptr %i.q, align 8, !tbaa !65
  br label %._crit_edge.i.i19

._crit_edge.i.i19:                                ; preds = %.noexc22, %bb.h
  %i.w = phi ptr [ %i.u, %.noexc22 ], [ %i.q, %bb.h ] ; 2 uses
  switch i64 %i.s, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i19
  %i.x = load i8, ptr %1, align 1, !tbaa !65
  store i8 %i.x, ptr %i.w, align 1, !tbaa !65
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %1, i64 %i.s, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i19
  %i.y = load i64, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !67
  %i.aa = load ptr, ptr %10, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ac, ptr %11, align 8, !tbaa !66
  %i.ad = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.af, ptr %i.a, align 8, !tbaa !83
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.k
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.v   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i.i
  store ptr %i.ah, ptr %11, align 8, !tbaa !64
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !65
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc24, %bb.k
  %i.aj = phi ptr [ %i.ah, %.noexc24 ], [ %i.ac, %bb.k ] ; 2 uses
  switch i64 %i.af, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !65
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !65
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !83  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !67
  %i.an = load ptr, ptr %11, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !206
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !206
  invoke void @_ZN7testing8TestInfoC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PKcSA_NS_8internal12CodeLocationEPKvPNSB_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 %11, ptr noundef %5, ptr noundef %8)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %11, align 8, !tbaa !64   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ac
  br i1 %i.at, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !65
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #55
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aw = load ptr, ptr %10, align 8, !tbaa !64   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !65
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #54
  %i.ba = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.e
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !65
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #54
  %i.be = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.p, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.r unwind label %bb.s, !inline_history !2

bb.r:                                             ; preds = %bb.q
  %i.bh = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.s ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.p, %bb.r
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  call void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(601) %i.bj, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.d)
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
  %i.bo = load ptr, ptr %11, align 8, !tbaa !64   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ac
  br i1 %i.bp, label %_ZN7testing8internal12CodeLocationD2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28: ; preds = %bb.w
  %i.bq = load i64, ptr %i.ac, align 8, !tbaa !65
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #55
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit30

_ZN7testing8internal12CodeLocationD2Ev.exit30:    ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28 ], [ %i.bn, %bb.w ] ; 2 uses
  %i.bs = load ptr, ptr %10, align 8, !tbaa !64   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.q
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit30
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !65
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit30 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #54
  %i.bw = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.e
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.by = load i64, ptr %i.e, align 8, !tbaa !65
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #54
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 272) #55
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  call void @_ZN7testing8internal8FilePath13GetCurrentDirEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %4)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal8FilePath3SetERKS1_.exit unwind label %bb.c

_ZN7testing8internal8FilePath3SetERKS1_.exit:     ; preds = %bb.b
  %i.e = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN7testing8internal8FilePathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal8FilePath3SetERKS1_.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !65
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #55
  br label %_ZN7testing8internal8FilePathD2Ev.exit

_ZN7testing8internal8FilePathD2Ev.exit:           ; preds = %_ZN7testing8internal8FilePath3SetERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  %i.j = load i64, ptr %i.a, align 8, !tbaa !67
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN7testing8internal8FilePathD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !65
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #55
  br label %_ZN7testing8internal8FilePathD2Ev.exit11

_ZN7testing8internal8FilePathD2Ev.exit11:         ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  br label %bb.h

bb.d:                                             ; preds = %_ZN7testing8internal8FilePathD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.417, i32 noundef 688)
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.418, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.419, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZN7testing8internal8FilePathD2Ev.exit, %bb.a
  %i.t = load ptr, ptr %3, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !217  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNK7testing8TestInfo10type_paramEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.114, i64 noundef 37)
          to label %_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit:       ; preds = %bb.a
  %i.d = icmp eq ptr %0, null                     ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br i1 %i.d, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #54
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %_ZN7testing7MessagelsIA38_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
end_hunk_8
begin_hunk_9_@_ZN7testing8internal18FormatFileLocationB5cxx11EPKci:bb.a
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.s
  %i.do = phi i64 [ %i.dk, %bb.s ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.do, ptr %i.dq, align 8, !tbaa !67, !alias.scope !988
  store ptr %i.dh, ptr %i.de, align 8, !tbaa !64
  store i64 0, ptr %i.dp, align 8, !tbaa !67
  store i8 0, ptr %i.dh, align 8, !tbaa !65
  %i.dr = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.t
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !65
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.dw = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !65
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  %i.eb = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ai
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.ed = load i64, ptr %i.ai, align 8, !tbaa !65
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.u:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit24
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body26

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.p, %.critedge.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.r
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.w
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !65
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.v
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.v ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.eh, %bb.w ] ; 2 uses
  %i.en = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %.body26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !65
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #55
  br label %.body26

.body26:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.u, %_ZN7testing7MessageD2Ev.exit4.i
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %_ZN7testing7MessageD2Ev.exit4.i ], [ %i.ef, %bb.u ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  %i.es = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ai
  br i1 %i.et, label %.body22, label %.body22.sink.split

.body22.sink.split:                               ; preds = %.body26, %bb.j
  %.sink = phi ptr [ %i.at, %bb.j ], [ %i.es, %.body26 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.as, %bb.j ], [ %.pn.pn, %.body26 ]
  %i.eu = load i64, ptr %i.ai, align 8, !tbaa !65
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ev) #55
  br label %.body22

.body22:                                          ; preds = %.body22.sink.split, %.body26, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %.pn.pn, %.body26 ], [ %.pn.pn.pn.ph, %.body22.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ew = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.d
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ey = load i64, ptr %i.d, align 8, !tbaa !65
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  ret void

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.body22
  %.pn11 = phi { ptr, i32 } [ %.pn.pn.pn, %.body22 ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ab, %bb.g ]
  %i.fa = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.d
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %.body
  %i.fc = load i64, ptr %i.d, align 8, !tbaa !65
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal12UnitTestImpl26RegisterParameterizedTestsEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(601) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !378, !range !111, !noundef !112
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !379  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !379  ; 2 uses
  %.not7.i = icmp eq ptr %i.e, %i.g
  br i1 %.not7.i, label %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !381 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !989
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i, label %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, label %.lr.ph.i

_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit: ; preds = %.lr.ph.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry22CheckForInstantiationsEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  store i8 1, ptr %i.a, align 8, !tbaa !378
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !269, !range !111, !noundef !112
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %common.resume, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 368 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !244
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !87

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %common.resume, !inline_history !88

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.d, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54
  resume { ptr, i32 } %i.n

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.f, %bb.h
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 504
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !246  ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(272) %0)
  %i.u = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #54
  %i.v = sdiv i64 %i.u, 1000000
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.v, ptr %i.w, align 8, !tbaa !382
  %i.x = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #54
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 528 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !201  ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !73
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.i:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ab = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.ab, align 8, !tbaa !73
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !201
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.i
  %i.ac = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.i ], [ %.pre, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ad = phi ptr [ %i.ab, %bb.i ], [ %i.z, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !377
  %i.ai = tail call noundef ptr @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc(ptr noundef %i.ah, i64 17, i64 0, ptr noundef nonnull @.str.123) ; 3 uses
  %i.aj = tail call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.ak = tail call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.ak, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  tail call void @_ZN7testing4Test3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai)
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !201 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.m, label %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12_crit_edge

._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12_crit_edge: ; preds = %bb.l
  %.pre14 = load ptr, ptr %i.al, align 8, !tbaa !73
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12

bb.m:                                             ; preds = %bb.l
  %i.an = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.an, align 8, !tbaa !73
  store ptr %i.an, ptr %i.y, align 8, !tbaa !201
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12: ; preds = %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12_crit_edge, %bb.m
  %i.ao = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.m ], [ %.pre14, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12_crit_edge ]
  %i.ap = phi ptr [ %i.an, %bb.m ], [ %i.al, %._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12_crit_edge ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_4TestEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %i.ai, i64 ptrtoint (ptr @_ZN7testing4Test11DeleteSelf_Ev to i64), i64 0, ptr noundef nonnull @.str.124)
  br label %bb.n

bb.n:                                             ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit12, %bb.k
  %i.as = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #54
  %i.at = sub nsw i64 %i.as, %i.x
  %i.au = sdiv i64 %i.at, 1000000
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.au, ptr %i.av, align 8, !tbaa !355
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(272) %0)
  store ptr null, ptr %i.i, align 8, !tbaa !244
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN7testing8UnitTest9listenersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #14 align 2 {
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
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.bg, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.h = load i8, ptr %i.g, align 8, !tbaa !376, !range !111, !noundef !112
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !112
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  %i.r = invoke noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit unwind label %bb.j, !inline_history !990

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0        ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.s, 1        ; 3 uses
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #54
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #54 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.y = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #54
  %i.z = icmp eq i32 %i.u, %i.y
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.t) #54 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.ab = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #54
  %i.ac = icmp eq i32 %i.u, %i.ab
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.t) #54 ; 2 uses
  br i1 %i.ac, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #54
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ah, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !65
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.an = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.t
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !65
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_15TestFactoryBaseEPNS_4TestEEET0_PT_MS6_FS5_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.v:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !65
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.u
  %.pn = phi { ptr, i32 } [ %i.as, %bb.u ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.at, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.x:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.x
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !65
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.w
  %.pn36 = phi { ptr, i32 } [ %i.az, %bb.w ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.ba, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
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
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.bi = getelementptr i8, ptr %i.bh, i64 %1
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load ptr, ptr %i.bj, align 8, !nosanitize !112
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
  call void @__clang_call_terminate(ptr %i.bp) #59
  unreachable

bb.ae:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing4Test11DeleteSelf_Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #54
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::TestPartResult", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !269, !range !111, !noundef !112
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.o, %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.o, %bb.j ], [ %i.ba, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 368 ; 2 uses
  store ptr %0, ptr %i.j, align 8, !tbaa !244
  %i.k = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.g, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !87

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.i unwind label %bb.j, !inline_history !88

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.g, %bb.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 504
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !246  ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(272) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #54
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !383
  call void @_ZN7testing14TestPartResultC2ENS0_4TypeEPKciS3_(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 3, ptr noundef %i.w, i32 noundef %i.y, ptr noundef nonnull @.str.32)
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(272) %0)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.j, align 8, !tbaa !244
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !65
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !65
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN7testing14TestPartResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !65
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #55
  br label %_ZN7testing14TestPartResultD2Ev.exit

_ZN7testing14TestPartResultD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #54
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN7testing14TestPartResultD2Ev.exit
  ret void

bb.o:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit, %bb.l, %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing14TestPartResultD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %1) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #54
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing14TestPartResultC2ENS0_4TypeEPKciS3_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  store i32 %1, ptr %0, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = icmp eq ptr %2, null
  %i.e = select i1 %i.d, ptr @.str.32, ptr %2     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !66
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store i64 %i.g, ptr %i.b, align 8, !tbaa !83
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !64
  %i.j = load i64, ptr %i.b, align 8, !tbaa !83
  store i64 %i.j, ptr %i.f, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !65
  store i8 %i.l, ptr %i.k, align 1, !tbaa !65
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !67
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.q, align 8, !tbaa !375
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_ZN7testing14TestPartResult14ExtractSummaryB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.r, ptr noundef %4)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !66
  %i.u = icmp eq ptr %4, null
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
          to label %.noexc14 unwind label %bb.l

.noexc14:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.v, ptr %i.a, align 8, !tbaa !83
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i13, label %._crit_edge.i.i12

.noexc.i13:                                       ; preds = %bb.g
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc15 unwind label %bb.l   ; 2 uses

.noexc15:                                         ; preds = %.noexc.i13
  store ptr %i.x, ptr %i.s, align 8, !tbaa !64
  %i.y = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.y, ptr %i.t, align 8, !tbaa !65
  br label %._crit_edge.i.i12

._crit_edge.i.i12:                                ; preds = %.noexc15, %bb.g
  %i.z = phi ptr [ %i.x, %.noexc15 ], [ %i.t, %bb.g ] ; 2 uses
  switch i64 %i.v, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i12
  %i.aa = load i8, ptr %4, align 1, !tbaa !65
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !65
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %4, i64 %i.v, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i12
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !83  ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN7testing9TestSuite18GetMutableTestInfoEi
define noundef ptr @_ZN7testing9TestSuite18GetMutableTestInfoEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !389
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !386  ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !69   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = zext nneg i32 %i.m to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !275
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !266
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !274  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !388
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !266
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !274
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !275  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.477) #56
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
  store ptr %1, ptr %i.s, align 8, !tbaa !266
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
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !388
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #55
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !275
  store ptr %i.u, ptr %i.b, align 8, !tbaa !274
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !388
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !389 ; 4 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !386 ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 4 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !387
  %.not.i.i = icmp eq ptr %i.ab, %i.aj
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !389
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  %i.al = icmp eq i64 %i.af, 9223372036854775804
  br i1 %i.al, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.477) #56
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
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !69
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
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !387
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ax) #55
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !386
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !389
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ay, ptr %i.ai, align 8, !tbaa !387
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !262, !range !111, !noundef !112
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %common.resume, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !245
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !87

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %common.resume, !inline_history !88

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.d, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54
  resume { ptr, i32 } %i.n

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.f, %bb.h
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 504
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !246  ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 528 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !201  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !73
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.i:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.aa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.aa, align 8, !tbaa !73
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !201
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.i
  %i.ab = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.i ], [ %.pre, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ac = phi ptr [ %i.aa, %bb.i ], [ %i.y, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite17RunSetUpTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.125)
  %i.af = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #54
  %i.ag = sdiv i64 %i.af, 1000000
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !390
  %i.ai = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #54
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !274
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !275 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 3
  %i.ar = trunc i64 %i.aq to i32
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit.thread
  %indvars.iv50 = phi i64 [ 1, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next51, %_ZNK7testing10TestResult6FailedEv.exit.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit.thread ] ; 6 uses
  %i.av = phi ptr [ %i.am, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %.pre57, %_ZNK7testing10TestResult6FailedEv.exit.thread ]
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !389
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !386 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = shl i64 %i.ba, 30
  %i.bc = ashr i64 %i.bb, 32
  %.not.i.i19 = icmp slt i64 %indvars.iv, %i.bc
  tail call void @llvm.assume(i1 %.not.i.i19)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !69 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !266
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %i.bi)
  %i.bj = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.bk = trunc nuw i8 %i.bj to i1
  %.pre57 = load ptr, ptr %i.aj, align 8, !tbaa !275 ; 5 uses
  br i1 %i.bk, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i21, label %_ZNK7testing10TestResult6FailedEv.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i21: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !389
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !386 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = shl i64 %i.bp, 30
  %i.br = ashr i64 %i.bq, 32
  %.not.i.i20 = icmp slt i64 %indvars.iv, %i.br
  tail call void @llvm.assume(i1 %.not.i.i20)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !69 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.pre57, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !266 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 200
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 208
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !226
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !231 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 112               ; 5 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.preheader.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread

.lr.ph.preheader.i:                               ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i21
  %wide.trip.count.i = and i64 %i.cf, 2147483647
  br label %.lr.ph.i

bb.j:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread, label %.lr.ph.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.cf
  br i1 %exitcond.not.i, label %bb.k, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %i.cf, i64 noundef %i.cf) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.ci = getelementptr inbounds nuw [112 x i8], ptr %i.cb, i64 %indvars.iv.i
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !242
  %i.ck = add i32 %i.cj, -1
  %spec.select.i.i = icmp ult i32 %i.ck, 2
  br i1 %spec.select.i.i, label %_ZNK7testing10TestResult6FailedEv.exit.preheader, label %bb.j

_ZNK7testing10TestResult6FailedEv.exit.preheader: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32
  %.043 = add nuw nsw i32 %i.cl, 1
  %i.cm = load ptr, ptr %i.ak, align 8, !tbaa !274
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %.pre57 to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = lshr exact i64 %i.cp, 3
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = icmp slt i32 %.043, %i.cr
  br i1 %i.cs, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24: ; preds = %_ZNK7testing10TestResult6FailedEv.exit.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24 ], [ %indvars.iv50, %_ZNK7testing10TestResult6FailedEv.exit.preheader ] ; 3 uses
  %i.ct = phi ptr [ %i.di, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24 ], [ %.pre57, %_ZNK7testing10TestResult6FailedEv.exit.preheader ]
  %i.cu = load ptr, ptr %i.au, align 8, !tbaa !389
  %i.cv = load ptr, ptr %i.at, align 8, !tbaa !386 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = shl i64 %i.cy, 30
  %i.da = ashr i64 %i.cz, 32
  %.not.i.i23 = icmp slt i64 %indvars.iv54, %i.da
  tail call void @llvm.assume(i1 %.not.i.i23)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv54
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !69 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, -1
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !266
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.dg)
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.dh = load ptr, ptr %i.ak, align 8, !tbaa !274
  %i.di = load ptr, ptr %i.aj, align 8, !tbaa !275 ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = lshr exact i64 %i.dl, 3
  %i.dn = trunc i64 %i.dm to i32
  %i.do = trunc nuw i64 %indvars.iv.next55 to i32
  %i.dp = icmp slt i32 %i.do, %i.dn
  br i1 %i.dp, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24, label %.loopexit, !llvm.loop !991

_ZNK7testing10TestResult6FailedEv.exit.thread:    ; preds = %bb.j, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i21, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dq = load ptr, ptr %i.ak, align 8, !tbaa !274
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %.pre57 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = shl i64 %i.dt, 29
  %i.dv = ashr i64 %i.du, 32
  %i.dw = icmp slt i64 %indvars.iv.next, %i.dv
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br i1 %i.dw, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit, !llvm.loop !992

.loopexit:                                        ; preds = %_ZNK7testing10TestResult6FailedEv.exit.thread, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit, %_ZNK7testing10TestResult6FailedEv.exit.preheader
  %i.dx = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #54
  %i.dy = sub nsw i64 %i.dx, %i.ai
  %i.dz = sdiv i64 %i.dy, 1000000
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !391
  %i.eb = load ptr, ptr %i.x, align 8, !tbaa !201 ; 3 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.l, label %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26_crit_edge

.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26_crit_edge: ; preds = %.loopexit
  %.pre58 = load ptr, ptr %i.eb, align 8, !tbaa !73
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26

bb.l:                                             ; preds = %.loopexit
  %i.ed = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #57 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.ed, align 8, !tbaa !73
  store ptr %i.ed, ptr %i.x, align 8, !tbaa !201
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26: ; preds = %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26_crit_edge, %bb.l
  %i.ee = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.l ], [ %.pre58, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26_crit_edge ]
  %i.ef = phi ptr [ %i.ed, %bb.l ], [ %i.eb, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26_crit_edge ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ef)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite20RunTearDownTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.126)
  %i.ei = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.el = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  %i.en = load ptr, ptr %i.em, align 8
  tail call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  store ptr null, ptr %i.i, align 8, !tbaa !245
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.bf, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.h = load i8, ptr %i.g, align 8, !tbaa !376, !range !111, !noundef !112
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !112
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(264) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !993

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 3 uses
  %i.u = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #54
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.s) #54 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #54
  %i.y = icmp eq i32 %i.t, %i.x
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.s) #54 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #54
  %i.ab = icmp eq i32 %i.t, %i.aa
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.s) #54 ; 2 uses
  br i1 %i.ab, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #54
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ag, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !65
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.t
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !65
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.v:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !65
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.as, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.x:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.x
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !65
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.w
  %.pn34 = phi { ptr, i32 } [ %i.ay, %bb.w ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.az, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
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
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.bh = getelementptr i8, ptr %i.bg, i64 %1
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  %i.bj = load ptr, ptr %i.bi, align 8, !nosanitize !112
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
  call void @__clang_call_terminate(ptr %i.bn) #59
  unreachable

bb.ae:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing9TestSuite17RunSetUpTestSuiteEv(ptr noundef nonnull align 8 dereferenceable(264) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384  ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385  ; 2 uses
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
  %i.b = load i8, ptr %i.a, align 8, !tbaa !262, !range !111, !noundef !112
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %common.resume, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !245
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !87

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %common.resume, !inline_history !88

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.d, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54
  resume { ptr, i32 } %i.n

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.f, %bb.h
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 504
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !246  ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !274
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !275 ; 2 uses
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
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  store ptr null, ptr %i.i, align 8, !tbaa !245
  br label %bb.i

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %indvars.iv = phi i64 [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ] ; 3 uses
  %i.ap = phi ptr [ %i.aa, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %i.be, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ]
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !389
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !386 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = shl i64 %i.au, 30
  %i.aw = ashr i64 %i.av, 32
  %.not.i.i9 = icmp slt i64 %indvars.iv, %i.aw
  tail call void @llvm.assume(i1 %.not.i.i9)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !69 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !266
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.bc)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !274
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !275 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = shl i64 %i.bh, 29
  %i.bj = ashr i64 %i.bi, 32
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %._crit_edge, !llvm.loop !994

bb.i:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing9TestSuite11ClearResultEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN7testing10TestResult5ClearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !265  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !265  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not5.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.02.06.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.02.06.i.i, align 8, !tbaa !266
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  tail call void @_ZN7testing10TestResult5ClearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !30

_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing9TestSuite12ShuffleTestsEPNS_8internal6RandomE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !389
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !386
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  tail call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef %1, i32 noundef 0, i32 noundef %i.i, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7testing9TestSuite14UnshuffleTestsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !389  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !386  ; 4 uses
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
  store <4 x i32> %vec.ind, ptr %i.i, align 4, !tbaa !69
  store <4 x i32> %step.add, ptr %i.j, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !995

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
  store i32 %i.l, ptr %i.m, align 4, !tbaa !69
  %i.n = add nuw i64 %.04, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !996
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZN7testing8internal14ShouldUseColorEb(i1 noundef zeroext %0) local_unnamed_addr #20 {
bb.a:
  %i.a = load ptr, ptr @_ZN7testing17FLAGS_gtest_colorB5cxx11E, align 8, !tbaa !64 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN7testing8internal6String13CStringEqualsEPKcS3_.exit46, label %_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit

_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit: ; preds = %bb.a
  %i.c = tail call noundef i32 @strcasecmp(ptr noundef nonnull readonly %i.a, ptr noundef nonnull @.str.9) #60
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit40

bb.b:                                             ; preds = %_ZN7testing8internal6String28CaseInsensitiveCStringEqualsEPKcS3_.exit
  %i.e = tail call noundef ptr @getenv(ptr noundef nonnull @.str.127) #54 ; 12 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN7testing8internal6String13CStringEqualsEPKcS3_.exit46, label %_ZN7testing8internal6String13CStringEqualsEPKcS3_.exit

_ZN7testing8internal6String13CStringEqualsEPKcS3_.exit: ; preds = %bb.b
end_hunk_10
begin_hunk_11_@_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.v, ptr %i.p, align 8, !tbaa !64
  %i.w = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.w, ptr %i.q, align 8, !tbaa !65
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.y = load i8, ptr %i.r, align 1, !tbaa !65
  store i8 %i.y, ptr %i.x, align 1, !tbaa !65
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.z = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !67
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !65
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing12TestPropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !65
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !65
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7testing8UnitTest3RunEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::ScopedPrematureExitFile", align 8 ; 6 uses
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !67
  %.not = icmp eq i64 %i.a, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #54
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @getenv(ptr noundef nonnull @.str.280) #54
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @_ZN7testing8internal23ScopedPrematureExitFileC2EPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %i.f = load i8, ptr @_ZN7testing28FLAGS_gtest_catch_exceptionsE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  store i8 %i.f, ptr %i.g, align 8, !tbaa !376
  %i.h = invoke noundef zeroext i1 @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %i.e, i64 ptrtoint (ptr @_ZN7testing8internal12UnitTestImpl11RunAllTestsEv to i64), i64 0, ptr noundef nonnull @.str.281)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %not. = xor i1 %i.h, true
  %i.i = zext i1 %not. to i32
  call void @_ZN7testing8internal23ScopedPrematureExitFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #54
  ret i32 %i.i

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal23ScopedPrematureExitFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #54
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7testing8internal23ScopedPrematureExitFileC2EPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq ptr %1, null
  %i.b = select i1 %.not, ptr @.str.32, ptr %1    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !66
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.d, ptr %i.a, align 8, !tbaa !83
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !64
  %i.g = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.g, ptr %i.c, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !65
  store i8 %i.i, ptr %i.h, align 1, !tbaa !65
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !67
  %i.l = load ptr, ptr %0, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  %i.n = load i64, ptr %i.k, align 8, !tbaa !67
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call noalias noundef ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.289) ; 2 uses
  %fputc = call i32 @fputc(i32 48, ptr %i.p)      ; 0 uses
  %i.q = call i32 @fclose(ptr noundef %i.p)       ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.bg, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.h = load i8, ptr %i.g, align 8, !tbaa !376, !range !111, !noundef !112
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !112
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(601) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !1446

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0        ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.s, 1        ; 3 uses
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #54
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #54 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.y = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #54
  %i.z = icmp eq i32 %i.u, %i.y
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.t) #54 ; 0 uses
  invoke void @__cxa_rethrow() #56
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.ab = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #54
  %i.ac = icmp eq i32 %i.u, %i.ab
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.t) #54 ; 2 uses
  br i1 %i.ac, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #54
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ah, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !65
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.an = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.t
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !65
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS0_12UnitTestImplEbEET0_PT_MS4_FS3_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.v:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !65
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.u
  %.pn = phi { ptr, i32 } [ %i.as, %bb.u ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.at, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ad

bb.w:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.x:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.x
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !65
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.w
  %.pn36 = phi { ptr, i32 } [ %i.az, %bb.w ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.ba, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
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
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.bi = getelementptr i8, ptr %i.bh, i64 %1
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load ptr, ptr %i.bj, align 8, !nosanitize !112
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bl = inttoptr i64 %1 to ptr
  br label %bb.ac
end_hunk_11
begin_hunk_12_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a
  tail call void @exit(i32 noundef 1) #61
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit

_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit: ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !425
  %i.m = icmp ne ptr %i.l, null                   ; 2 uses
  %i.n = tail call noundef zeroext i1 @_ZN7testing8internal11ShouldShardEPKcS2_b(ptr noundef nonnull @_ZN7testingL16kTestTotalShardsE, ptr noundef nonnull @_ZN7testingL15kTestShardIndexE, i1 noundef zeroext %i.m)
  %not. = xor i1 %i.n, true
  %i.o = zext i1 %not. to i32
  %i.p = tail call noundef i32 @_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE(ptr noundef nonnull align 8 dereferenceable(601) %0, i32 noundef %i.o)
  %i.q = icmp sgt i32 %i.p, 0                     ; 2 uses
  %i.r = load i8, ptr @_ZN7testing22FLAGS_gtest_list_testsE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit
  tail call void @_ZN7testing8internal12UnitTestImpl23ListTestsMatchingFilterEv(ptr noundef nonnull align 8 dereferenceable(601) %0)
  br label %bb.ax

bb.g:                                             ; preds = %_ZN7testing8internal30WriteToShardStatusFileIfNeededEv.exit
  %i.t = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr @_ZN7testing23FLAGS_gtest_random_seedE, align 4, !tbaa !69 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #54
  %i.y = sdiv i64 %i.x, 1000000
  %i.z = trunc i64 %i.y to i32
  br label %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit

_ZN7testing8internal21GetRandomSeedFromFlagEi.exit: ; preds = %bb.h, %bb.i
  %i.aa = phi i32 [ %i.z, %bb.i ], [ %i.v, %bb.h ]
  %i.ab = add i32 %i.aa, -1
  %i.ac = urem i32 %i.ab, 99999
  %i.ad = add nuw nsw i32 %i.ac, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit
  %i.ae = phi i32 [ %i.ad, %_ZN7testing8internal21GetRandomSeedFromFlagEi.exit ], [ 0, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 4 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !392
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !246 ; 16 uses
  %i.ai = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #54
  %i.aj = sdiv i64 %i.ai, 1000000
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !407
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !426
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.am)
  %i.aq = load i32, ptr @_ZN7testing18FLAGS_gtest_repeatE, align 4
  %i.ar = select i1 %i.m, i32 1, i32 %i.aq        ; 3 uses
  %i.as = icmp slt i32 %i.ar, 0
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 10 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %bb.k

._crit_edge119.loopexit:                          ; preds = %bb.av
  %i.bg = xor i1 %i.ms, true
  br label %._crit_edge119

._crit_edge119:                                   ; preds = %._crit_edge119.loopexit, %bb.j
  %.050.lcssa = phi i1 [ true, %bb.j ], [ %i.bg, %._crit_edge119.loopexit ] ; 2 uses
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !426
  %i.bi = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.bh)
  br i1 %i.b, label %bb.ax, label %bb.aw

bb.k:                                             ; preds = %.lr.ph118, %bb.av
  %.049116 = phi i32 [ 0, %.lr.ph118 ], [ %i.og, %bb.av ] ; 3 uses
  %.050115 = phi i1 [ false, %.lr.ph118 ], [ %i.ms, %bb.av ] ; 2 uses
  call void @_ZN7testing8internal12UnitTestImpl23ClearNonAdHocTestResultEv(ptr noundef nonnull align 8 dereferenceable(601) %0)
  %i.bl = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #54
  %i.bm = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !range !111
  %i.bn = trunc nuw i8 %i.bm to i1
  %or.cond = select i1 %i.q, i1 %i.bn, i1 false
  br i1 %or.cond, label %bb.l, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit

bb.l:                                             ; preds = %bb.k
  %i.bo = load i32, ptr %i.af, align 4, !tbaa !392
  store i32 %i.bo, ptr %i.at, align 8, !tbaa !77
  %i.bp = load i32, ptr %i.au, align 4, !tbaa !427
  %i.bq = add nsw i32 %i.bp, 1
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.at, i32 noundef 0, i32 noundef %i.bq, ptr noundef nonnull %i.av)
  %i.br = load i32, ptr %i.au, align 4, !tbaa !427
  %i.bs = add nsw i32 %i.br, 1
  %i.bt = load ptr, ptr %i.ax, align 8, !tbaa !263
  %i.bu = load ptr, ptr %i.aw, align 8, !tbaa !264
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = lshr exact i64 %i.bx, 3
  %i.bz = trunc i64 %i.by to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.at, i32 noundef %i.bs, i32 noundef %i.bz, ptr noundef nonnull %i.av)
  %i.ca = load ptr, ptr %i.aw, align 8, !tbaa !248 ; 2 uses
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !248 ; 2 uses
  %.not7.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not7.i, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %i.ca, %bb.l ] ; 2 uses
  %i.cc = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !249 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !389
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !386
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = lshr exact i64 %i.cj, 2
  %i.cl = trunc i64 %i.ck to i32
  call void @_ZN7testing8internal12ShuffleRangeIiEEvPNS0_6RandomEiiPSt6vectorIT_SaIS5_EE(ptr noundef nonnull %i.at, i32 noundef 0, i32 noundef %i.cl, ptr noundef nonnull %i.cd)
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i52 = icmp eq ptr %i.cm, %i.cb
  br i1 %.not.i52, label %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit, label %.lr.ph.i

_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit: ; preds = %.lr.ph.i, %bb.l, %bb.k
  %i.cn = load ptr, ptr %i.al, align 8, !tbaa !426
  %i.co = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.cn, i32 noundef %.049116)
  br i1 %i.q, label %bb.m, label %bb.ag

bb.m:                                             ; preds = %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !426
  %i.cs = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.cr)
  %i.cv = load ptr, ptr %i.ay, align 8, !tbaa !428 ; 2 uses
  %i.cw = load ptr, ptr %i.az, align 8, !tbaa !428 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.cv, %i.cw
  br i1 %.not5.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.i
  %.sroa.02.06.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.cv, %bb.m ] ; 2 uses
  %i.cx = load ptr, ptr %.sroa.02.06.i.i, align 8, !tbaa !423 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !73
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx), !inline_history !1447
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.db, %i.cw
  br i1 %.not.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !33

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.m
  %i.dc = load ptr, ptr %i.al, align 8, !tbaa !426
  %i.dd = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.dc)
  %i.dg = call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.dg, label %bb.n, label %bb.ad

bb.n:                                             ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.dh = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.o, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.o:                                             ; preds = %bb.n
  %i.dj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i53 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i53, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.q unwind label %bb.r, !inline_history !2

bb.q:                                             ; preds = %bb.p
  %i.dk = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.au, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.dl, %bb.r ], [ %i.oc, %bb.au ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.n, %bb.o, %bb.q
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 368
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !244 ; 2 uses
  %.not.i54 = icmp eq ptr %i.do, null
  br i1 %.not.i54, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.t:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 360
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !245 ; 2 uses
  %.not4.i = icmp eq ptr %i.dr, null
  br i1 %.not4.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.v:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.s, %bb.u, %bb.v
  %.0.i = phi ptr [ %i.dp, %bb.s ], [ %i.ds, %bb.u ], [ %i.dt, %bb.v ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !226 ; 2 uses
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !231 ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 112               ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ac, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.ee = load ptr, ptr @stdout, align 8, !tbaa !75
  %i.ef = call i32 @fflush(ptr noundef %i.ee)     ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %bb.ac
  %i.eg = phi ptr [ %i.fd, %bb.ac ], [ %i.dx, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %i.eh = phi ptr [ %i.fe, %bb.ac ], [ %i.dw, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ]
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %bb.ac ], [ 0, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 4 uses
  %i.ei = phi i64 [ %i.fi, %bb.ac ], [ %i.eb, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.ei, %indvars.iv145
  br i1 %.not.i.i.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.518, i64 noundef %indvars.iv145, i64 noundef %i.ei) #56
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.ej = getelementptr inbounds nuw [112 x i8], ptr %i.eg, i64 %indvars.iv145 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !242
  %i.el = icmp eq i32 %i.ek, 3
  br i1 %i.el, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !64 ; 4 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !66
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %.noexc, label %bb.y

.noexc:                                           ; preds = %bb.x
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.ep = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.en) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.ep, ptr %i.a, align 8, !tbaa !83
  %i.eq = icmp ugt i64 %i.ep, 15
  br i1 %i.eq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.er = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.er, ptr %2, align 8, !tbaa !64
  %i.es = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.es, ptr %i.bb, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.y
  %i.et = phi ptr [ %i.er, %.noexc.i ], [ %i.bb, %bb.y ] ; 2 uses
  switch i64 %i.ep, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.eu = load i8, ptr %i.en, align 1, !tbaa !65
  store i8 %i.eu, ptr %i.et, align 1, !tbaa !65
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr nonnull align 1 %i.en, i64 %i.ep, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !83  ; 2 uses
  store i64 %i.ev, ptr %i.bc, align 8, !tbaa !67
  %i.ew = load ptr, ptr %2, align 8, !tbaa !64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 0, ptr %i.ex, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  %i.ey = load ptr, ptr %2, align 8, !tbaa !64
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.ey) ; 0 uses
  %i.ez = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.bb
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.fb = load i64, ptr %i.bb, align 8, !tbaa !65
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  %.pre = load ptr, ptr %i.dv, align 8, !tbaa !226
  %.pre148 = load ptr, ptr %i.du, align 8, !tbaa !231
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.fd = phi ptr [ %.pre148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.eg, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.fe = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.eh, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = sdiv exact i64 %i.fh, 112               ; 2 uses
  %i.fj = shl i64 %i.fi, 32
  %i.fk = ashr exact i64 %i.fj, 32
  %i.fl = icmp slt i64 %indvars.iv.next146, %i.fk
  br i1 %i.fl, label %.lr.ph, label %._crit_edge, !llvm.loop !1448

bb.ad:                                            ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.fm = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.fm, label %bb.af, label %.preheader89

.preheader89:                                     ; preds = %bb.ad
  %i.fn = load ptr, ptr %i.ax, align 8, !tbaa !263
  %i.fo = load ptr, ptr %i.aw, align 8, !tbaa !264 ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = lshr exact i64 %i.fr, 3
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %.preheader89, %bb.ae
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %bb.ae ], [ 1, %.preheader89 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ae ], [ 0, %.preheader89 ] ; 6 uses
  %i.fv = phi ptr [ %i.ih, %bb.ae ], [ %i.fo, %.preheader89 ]
  %i.fw = load ptr, ptr %i.ba, align 8, !tbaa !389
  %i.fx = load ptr, ptr %i.av, align 8, !tbaa !386 ; 2 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = shl i64 %i.ga, 30
  %i.gc = ashr i64 %i.gb, 32
  %.not.i.i57 = icmp slt i64 %indvars.iv, %i.gc
  call void @llvm.assume(i1 %.not.i.i57)
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !69 ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  call void @llvm.assume(i1 %i.gf)
  %i.gg = zext nneg i32 %i.ge to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !249
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gi)
  %i.gj = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !110, !range !111, !noundef !112
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i59, label %bb.ae

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i59: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.gl = load ptr, ptr %i.ba, align 8, !tbaa !389
  %i.gm = load ptr, ptr %i.av, align 8, !tbaa !386 ; 2 uses
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
end_hunk_12
begin_hunk_13_@_ZN7testing8internal25JsonUnitTestResultPrinterD2Ev:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !65
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal12UnitTestImpl25set_os_stack_trace_getterEPNS0_27OsStackTraceGetterInterfaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(601) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 4 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %1, ptr %i.a, align 8, !tbaa !201
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389
  %i.c = load ptr, ptr %3, align 8, !tbaa !386
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.417, i32 noundef 322)
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.524, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.525, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.526, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.459, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %bb.d
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  br label %bb.m

bb.f:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.s = icmp sle i32 %1, %2
  %i.t = icmp sle i32 %2, %i.h
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.417, i32 noundef 325)
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.527, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %bb.g
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.528, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %2)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.529, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.h
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef %1)
          to label %bb.i unwind label %bb.k       ; 2 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.298, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.h)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.459, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %bb.j
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
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
  %i.am = load ptr, ptr %3, align 8, !tbaa !386   ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.ah
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4     ; 2 uses
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !69
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !69
  store i32 %i.as, ptr %i.an, align 4, !tbaa !69
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !69
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.at = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !1517

bb.m:                                             ; preds = %bb.k, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.r, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal31GetCurrentOsStackTraceExceptTopB5cxx11EPNS_8UnitTestEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = add nsw i32 %2, 1
  tail call void @_ZN7testing8internal12UnitTestImpl28CurrentOsStackTraceExceptTopB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(601) %i.f, i32 noundef %i.g)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7testing8internal10SkipPrefixEPKcPS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #34 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #60 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !333    ; 2 uses
  %i.c = tail call i32 @strncmp(ptr noundef %i.b, ptr noundef nonnull %0, i64 noundef %i.a) #60
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.a
  store ptr %i.e, ptr %1, align 8, !tbaa !333
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal14ParseInt32FlagEPKcS2_Pi(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::Message", align 8  ; 9 uses
  %i.a = tail call fastcc noundef ptr @_ZN7testing8internalL14ParseFlagValueEPKcS2_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.c = load ptr, ptr %3, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.303, i64 noundef 20)
          to label %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit:       ; preds = %bb.b
  %i.f = icmp eq ptr %1, null
  %i.g = load ptr, ptr %3, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br i1 %i.f, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #54
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke: ; preds = %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.j = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.90, %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit ]
  %i.k = phi i64 [ %i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 6, %_ZN7testing7MessagelsIA21_cEERS0_RKT_.exit ]
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.j, i64 noundef %i.k)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke
  %i.m = invoke noundef zeroext i1 @_ZN7testing8internal10ParseInt32ERKNS_7MessageEPKcPi(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, ptr noundef %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.n = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.c, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke, %bb.b, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.s, null
  br i1 %.not.i.i8, label %_ZN7testing7MessageD2Ev.exit10, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9: ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit10

_ZN7testing7MessageD2Ev.exit10:                   ; preds = %bb.d, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !66
  store i16 11565, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !65
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.343, i64 noundef 6)
          to label %.noexc25 unwind label %bb.g   ; 6 uses

.noexc25:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !66, !alias.scope !1522
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc25
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc25
  store ptr %i.h, ptr %4, align 8, !tbaa !64, !alias.scope !1522
  %i.o = load i64, ptr %i.i, align 8, !tbaa !65
  store i64 %i.o, ptr %i.g, align 8, !tbaa !65, !alias.scope !1522
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.p = phi i64 [ %i.l, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !tbaa !67, !alias.scope !1522
  store ptr %i.i, ptr %i.f, align 8, !tbaa !64
  store i64 0, ptr %i.q, align 8, !tbaa !67
  store i8 0, ptr %i.i, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #54, !noalias !1523 ; 2 uses
  %i.t = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !1523
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc30 unwind label %bb.h

.noexc30:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26: ; preds = %bb.c
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %1, i64 noundef %i.s)
          to label %.noexc31 unwind label %bb.h   ; 6 uses

.noexc31:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !66, !alias.scope !1523
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

bb.e:                                             ; preds = %.noexc31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !67 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
end_hunk_13
begin_hunk_14_@_ZN7testing8internal28ParseGoogleTestFlagsOnlyImplIwEEvPiPPT_:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27
  %i.ao = load i16, ptr %i.af, align 1
  %i.ap = icmp ne i16 %i.ao, 16175
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN7testing8internalL15ParseStringFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35
  %i.as = load i8, ptr %i.i, align 1
  switch i8 %i.as, label %.critedge [
    i8 45, label %.tail.i
    i8 47, label %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i
  ]

.tail.i:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 45
  %..i = select i1 %i.av, i64 2, i64 1
  br label %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i

_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i: ; preds = %.tail.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36
  %.sink.i = phi i64 [ %..i, %.tail.i ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.i ; 3 uses
  %i.ax = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(16) @.str.535, i64 noundef 15) #60
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.critedge, label %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit3.i

_ZN7testing8internal10SkipPrefixEPKcPS2_.exit3.i: ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i
  %i.az = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(7) @.str.343, i64 noundef 6) #60
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit

_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit: ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit3.i
  %i.bb = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(7) @.str.536, i64 noundef 6) #60
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit3.i, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread35, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i8 1, ptr @_ZN7testing8internal11g_help_flagE, align 1, !tbaa !110
  br label %.critedge

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.bd = load i32, ptr %0, align 4, !tbaa !69    ; 4 uses
  %.not40 = icmp eq i32 %.02042, %i.bd
  br i1 %.not40, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.be = xor i32 %.02042, -1
  %i.bf = add i32 %i.bd, %i.be                    ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bf, 3
  br i1 %min.iters.check, label %.lr.ph.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bh, 8589934588              ; 3 uses
  %i.bi = add nsw i64 %n.vec, %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = add i64 %index, %i.g                    ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %1, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = getelementptr i8, ptr %i.bk, i64 24
  %wide.load = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !334
  %wide.load54 = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !334
  %i.bn = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bj ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x ptr> %wide.load, ptr %i.bn, align 8, !tbaa !334
  store <2 x ptr> %wide.load54, ptr %i.bo, align 8, !tbaa !334
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1533

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader55

.lr.ph.preheader55:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %.lr.ph.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.h
  %i.bq = add nsw i32 %i.bd, -1
  store i32 %i.bq, ptr %0, align 4, !tbaa !69
  %i.br = add nsw i32 %.02042, -1
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader55, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader55 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !334
  %i.bu = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !334
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.bd, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !1534

.critedge:                                        ; preds = %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge
  %.1 = phi i32 [ %i.br, %._crit_edge ], [ %.02042, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.02042, %_ZN7testing8internalL23HasGoogleTestFlagPrefixEPKc.exit ], [ %.02042, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread36 ], [ %.02042, %_ZN7testing8internal10SkipPrefixEPKcPS2_.exit2.thread.i ]
  %i.bv = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.d
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %.critedge
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !65
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  %i.bz = add nsw i32 %.1, 1                      ; 2 uses
  %i.ca = load i32, ptr %0, align 4, !tbaa !69
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.b, label %._crit_edge45, !llvm.loop !1535

bb.i:                                             ; preds = %._crit_edge45
  call fastcc void @_ZN7testing8internalL17PrintColorEncodedEPKc()
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge45
  ret void
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
  %i.b = load i32, ptr %0, align 4, !tbaa !69
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, align 8, !tbaa !214 ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !215 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !65
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #55
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !215
  %.pre = load i32, ptr %0, align 4, !tbaa !69
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
  br i1 %i.p, label %bb.d, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.d:                                             ; preds = %._crit_edge
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i9 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i9, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.f unwind label %bb.g, !inline_history !2

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZN7testing7MessageD2Ev.exit6.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.ai, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %._crit_edge, %bb.d, %bb.f
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(601) %i.t)
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54, !noalias !1541
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !1541
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !333, !noalias !1541 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = load ptr, ptr %2, align 8, !tbaa !71, !noalias !1541
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br i1 %i.w, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.h
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #54, !noalias !1541
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.h
  %i.aa = phi ptr [ %i.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.90, %bb.h ]
  %i.ab = phi i64 [ %i.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %bb.h ]
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.aa, i64 noundef %i.ab)
          to label %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i unwind label %bb.i, !noalias !1541 ; 0 uses

_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i:        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !71, !noalias !1542
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %i.ad)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.i

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i
  %i.ae = load ptr, ptr %2, align 8, !tbaa !71, !noalias !1541 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #54, !inline_history !38
  br label %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.i:                                             ; preds = %_ZN7testing7MessagelsIcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8, !tbaa !71, !noalias !1541 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #54, !inline_history !38
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54, !noalias !1541
  br label %common.resume

_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54, !noalias !1541
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !215 ; 7 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 16), align 8, !tbaa !216
  %.not.i.i10 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i10, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !66
  %i.aq = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.m
  br i1 %i.ar, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.as = load i64, ptr %i.n, align 8, !tbaa !67  ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.au, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !64
  %i.av = load i64, ptr %i.m, align 8, !tbaa !65
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !65
  %.pre17 = load i64, ptr %i.n, align 8, !tbaa !67
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aw = phi i64 [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.as, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !67
  store ptr %i.m, ptr %3, align 8, !tbaa !64
  store i64 0, ptr %i.n, align 8, !tbaa !67
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !215
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E, ptr %i.an, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.m

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.l
  %.pre18 = load ptr, ptr %3, align 8, !tbaa !64  ; 2 uses
  %i.az = icmp eq ptr %.pre18, %i.m
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !65
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre18, i64 noundef %i.bb) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i32, ptr %0, align 4, !tbaa !69
  %i.bd = zext i32 %i.bc to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.bd
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !1540

bb.m:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.m
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.m
  %i.bh = load i64, ptr %i.m, align 8, !tbaa !65
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
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
  %i.b = load i32, ptr %0, align 4, !tbaa !69
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, align 8, !tbaa !214 ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !215 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !65
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #55
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !215
  %.pre = load i32, ptr %0, align 4, !tbaa !69
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
  br i1 %i.p, label %bb.d, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.d:                                             ; preds = %._crit_edge
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i9 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i9, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.f unwind label %bb.g, !inline_history !2

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %._crit_edge, %bb.d, %bb.f
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  call void @_ZN7testing8internal12UnitTestImpl19PostFlagParsingInitEv(ptr noundef nonnull align 8 dereferenceable(601) %i.t)
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  call void @_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !215 ; 7 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 16), align 8, !tbaa !216
  %.not.i.i10 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i10, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !66
  %i.y = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.m
  br i1 %i.z, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !67  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  store ptr %i.y, ptr %i.v, align 8, !tbaa !64
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !65
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !65
  %.pre17 = load i64, ptr %i.n, align 8, !tbaa !67
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ae = phi i64 [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aa, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !67
  store ptr %i.m, ptr %2, align 8, !tbaa !64
  store i64 0, ptr %i.n, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !215
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN7testing8internalL7g_argvsB5cxx11E, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.l

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.k
  %.pre18 = load ptr, ptr %2, align 8, !tbaa !64  ; 2 uses
  %i.ah = icmp eq ptr %.pre18, %i.m
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !65
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %.pre18, i64 noundef %i.aj) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %0, align 4, !tbaa !69
  %i.al = zext i32 %i.ak to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.al
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !1543

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.m
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.l
  %i.ap = load i64, ptr %i.m, align 8, !tbaa !65
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %common.resume

bb.m:                                             ; preds = %bb.b, %bb.a, %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing14InitGoogleTestEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i32 1, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store ptr @.str.304, ptr %i.b, align 8, !tbaa !333
  call void @_ZN7testing8internal18InitGoogleTestImplIcEEvPiPPT_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing7TempDirB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef ptr @getenv(ptr noundef nonnull @.str.305) #54 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !65
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.306, i64 5, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.g, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.h, align 1, !tbaa !65
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !66
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.j, ptr %i.a, align 8, !tbaa !83
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i8, label %._crit_edge.i.i7

.noexc.i8:                                        ; preds = %bb.c
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !64
  %i.m = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.m, ptr %i.i, align 8, !tbaa !65
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc.i8, %bb.c
  %i.n = phi ptr [ %i.l, %.noexc.i8 ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.j, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i7
  %i.o = load i8, ptr %i.b, align 1, !tbaa !65
  store i8 %i.o, ptr %i.n, align 1, !tbaa !65
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.b, i64 %i.j, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i7
  %i.p = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !67
  %i.r = load ptr, ptr %0, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.testing::internal::TraceInfo", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #54
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !67
  store i8 0, ptr %i.b, align 8, !tbaa !65
  store ptr %1, ptr %4, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !106
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3) #54
  %i.e = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !88

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.d, %bb.b, %bb.a
  invoke void @_ZN7testing8UnitTest14PushGTestTraceERKNS_8internal9TraceInfoE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZN7testing8internal9TraceInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.b, align 8, !tbaa !65
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #55
  br label %_ZN7testing8internal9TraceInfoD2Ev.exit

_ZN7testing8internal9TraceInfoD2Ev.exit:          ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  ret void

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.i, %bb.e ]
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZN7testing8internal9TraceInfoD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %.body
  %i.q = load i64, ptr %i.b, align 8, !tbaa !65
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #55
  br label %_ZN7testing8internal9TraceInfoD2Ev.exit5

_ZN7testing8internal9TraceInfoD2Ev.exit5:         ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing11ScopedTraceD2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !88

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7testing8internal16InDeathTestChildEv() local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, i64 8), align 8, !tbaa !67
  %i.b = icmp eq i64 %i.a, 10
  br i1 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN7testing28FLAGS_gtest_death_test_styleB5cxx11E, align 8, !tbaa !64 ; 2 uses
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
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal35FLAGS_gtest_internal_run_death_testB5cxx11E, i64 8), align 8, !tbaa !67
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
define void @_ZN7testing14ExitedWithCodeC2Ei(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #13 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !1545
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
define void @_ZN7testing14KilledBySignalC2Ei(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #13 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !1547
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #54
  call void @_ZN7testing14ExitedWithCodeC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 0)
  %i.a = and i32 %0, 127
  %i.b = icmp ne i32 %i.a, 0
  %i.c = lshr i32 %0, 8
  %i.d = and i32 %i.c, 255
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp ne i32 %i.d, %i.e
  %.not2 = select i1 %i.b, i1 true, i1 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #54
  ret i1 %.not2
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal23GetLastErrnoDescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call ptr @__errno_location() #58
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !66
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @strerror(i32 noundef %i.c) #54 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !66
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
  unreachable

bb.c:                                             ; preds = %.thread, %bb.b
  %i.i = phi ptr [ %i.e, %.thread ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = phi ptr [ @.str.32, %.thread ], [ %i.f, %bb.b ] ; 3 uses
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.k, ptr %i.a, align 8, !tbaa !83
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !64
  %i.n = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.n, ptr %i.i, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !65
  store i8 %i.p, ptr %i.o, align 1, !tbaa !65
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.j, i64 %i.k, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !67
  %i.s = load ptr, ptr %0, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #35

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal9DeathTestC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing8internal9DeathTestE, i64 16), ptr %0, align 8, !tbaa !73
  %i.b = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !244
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.noexc.i, label %bb.h

.noexc.i:                                         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #54
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 61, ptr %i.a, align 8, !tbaa !83
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.l, ptr %1, align 8, !tbaa !64
  %i.m = load i64, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.l, ptr noundef nonnull align 1 dereferenceable(61) @.str.313, i64 61, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
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
  %i.r = load ptr, ptr %1, align 8, !tbaa !64     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.k
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.t = load i64, ptr %i.k, align 8, !tbaa !65
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.f
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ], [ %i.q, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #54
  br label %common.resume

bb.h:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #36 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  resume { ptr, i32 } %i.e

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !425  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !439
  %i.k = tail call noundef ptr @_ZN7testing8internal5posix6FDOpenEiPKc(i32 noundef %i.j, ptr noundef nonnull @.str.289) ; 3 uses
  %i.l = tail call i32 @fputc(i32 noundef 73, ptr noundef %i.k) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !64
  %fputs7 = tail call i32 @fputs(ptr %i.m, ptr %i.k) ; 0 uses
  %i.n = tail call i32 @fflush(ptr noundef %i.k)  ; 0 uses
  tail call void @_exit(i32 noundef 1) #56
  unreachable

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.p = load ptr, ptr %0, align 8, !tbaa !64
  %fputs = tail call i32 @fputs(ptr %i.p, ptr %i.o) #62 ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !75
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
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.ae, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !431  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !449
  store ptr %i.k, ptr %i.i, align 8, !tbaa !449
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !65
  store i64 %i.n, ptr %i.l, align 8, !tbaa !65
  store ptr null, ptr %i.j, align 8, !tbaa !449
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !73
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %0, ptr noundef nonnull align 8 %5, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !73
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !449  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !451
  %.not.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i5, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.h, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !449
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !451
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !65
  invoke void %i.aa(ptr noundef %i.ab)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.i, !inline_history !39

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #59, !inline_history !452
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.f, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.g, %bb.h
  ret i1 %i.r

bb.j:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #54
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !451
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !449
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !451
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !65
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit unwind label %bb.d, !inline_history !1548

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #59
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv() local_unnamed_addr #37 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, align 8, !tbaa !64
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
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !457
  %i.f = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.c, i64 noundef 1)
  %i.g = trunc i64 %i.f to i32
  switch i32 %i.g, label %.critedge [
    i32 -1, label %bb.c
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #58
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.b, label %.critedge, !llvm.loop !1549

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.k, align 8, !tbaa !458
  br label %.preheader

bb.e:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.c, align 1, !tbaa !65    ; 2 uses
  switch i8 %i.l, label %bb.af [
    i8 82, label %bb.f
    i8 84, label %bb.g
    i8 76, label %bb.h
    i8 73, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %i.m, align 8, !tbaa !458
  br label %.preheader

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 4, ptr %i.n, align 8, !tbaa !458
  br label %.preheader

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_14
begin_hunk_15_@_ZN7testing8internal13DeathTestImpl5AbortENS0_9DeathTest11AbortReasonE:bb.a

.noexc36:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.cu, ptr %6, align 8, !tbaa !66, !alias.scope !1610
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 5 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.p:                                             ; preds = %.noexc36
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !67 ; 2 uses
  %i.da = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.da)
  %i.db = add nuw nsw i64 %i.cz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.db, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc36
  store ptr %i.cv, ptr %6, align 8, !tbaa !64, !alias.scope !1610
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !65
  store i64 %i.dc, ptr %i.cu, align 8, !tbaa !65, !alias.scope !1610
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !67
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.de, ptr %i.df, align 8, !tbaa !67, !alias.scope !1610
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !64
  store i64 0, ptr %i.dd, align 8, !tbaa !67
  store i8 0, ptr %i.cw, align 8, !tbaa !65
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !67, !noalias !1611
  %i.di = and i64 %i.dh, -2
  %i.dj = icmp eq i64 %i.di, 4611686018427387902
  br i1 %i.dj, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37

bb.q:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc42 unwind label %bb.aj

.noexc42:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.dk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.321, i64 noundef 2)
          to label %.noexc43 unwind label %bb.aj  ; 6 uses

.noexc43:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.dl, ptr %5, align 8, !tbaa !66, !alias.scope !1611
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !64 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 5 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

bb.r:                                             ; preds = %.noexc43
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !67 ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 16
  call void @llvm.assume(i1 %i.dr)
  %i.ds = add nuw nsw i64 %i.dq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dl, ptr noundef nonnull align 8 dereferenceable(1) %i.dn, i64 %i.ds, i1 false)
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %.noexc43
  store ptr %i.dm, ptr %5, align 8, !tbaa !64, !alias.scope !1611
  %i.dt = load i64, ptr %i.dn, align 8, !tbaa !65
  store i64 %i.dt, ptr %i.dl, align 8, !tbaa !65, !alias.scope !1611
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.pre.i40 = load i64, ptr %.phi.trans.insert.i39, align 8, !tbaa !67
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.r
  %i.du = phi i64 [ %i.dq, %bb.r ], [ %.pre.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !67, !alias.scope !1611
  store ptr %i.dn, ptr %i.dk, align 8, !tbaa !64
  store i64 0, ptr %i.dv, align 8, !tbaa !67
  store i8 0, ptr %i.dn, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !67, !noalias !1612
  %i.dy = add i64 %i.dx, -4611686018427387865
  %i.dz = icmp ult i64 %i.dy, 39
  br i1 %i.dz, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc50 unwind label %bb.ak

.noexc50:                                         ; preds = %bb.t
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45: ; preds = %bb.s
  %i.ea = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.324, i64 noundef 39)
          to label %.noexc51 unwind label %bb.ak  ; 6 uses

.noexc51:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.eb, ptr %4, align 8, !tbaa !66, !alias.scope !1612
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !64 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 5 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

bb.u:                                             ; preds = %.noexc51
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !67 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.eh)
  %i.ei = add nuw nsw i64 %i.eg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eb, ptr noundef nonnull align 8 dereferenceable(1) %i.ed, i64 %i.ei, i1 false)
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %.noexc51
  store ptr %i.ec, ptr %4, align 8, !tbaa !64, !alias.scope !1612
  %i.ej = load i64, ptr %i.ed, align 8, !tbaa !65
  store i64 %i.ej, ptr %i.eb, align 8, !tbaa !65, !alias.scope !1612
  %.phi.trans.insert.i47 = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.pre.i48 = load i64, ptr %.phi.trans.insert.i47, align 8, !tbaa !67
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.u
  %i.ek = phi i64 [ %i.eg, %bb.u ], [ %.pre.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ek, ptr %i.em, align 8, !tbaa !67, !alias.scope !1612
  store ptr %i.ed, ptr %i.ea, align 8, !tbaa !64
  store i64 0, ptr %i.el, align 8, !tbaa !67
  store i8 0, ptr %i.ed, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  %i.en = load i64, ptr %i.em, align 8, !tbaa !67, !noalias !1613
  %i.eo = add i64 %i.en, -4611686018427387898
  %i.ep = icmp ult i64 %i.eo, 6
  br i1 %i.ep, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc58 unwind label %bb.al

.noexc58:                                         ; preds = %bb.w
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53: ; preds = %bb.v
  %i.eq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.323, i64 noundef 6)
          to label %.noexc59 unwind label %bb.al  ; 6 uses

.noexc59:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.er, ptr %3, align 8, !tbaa !66, !alias.scope !1613
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !64 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 5 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

bb.x:                                             ; preds = %.noexc59
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !67 ; 3 uses
  %i.ex = icmp ult i64 %i.ew, 16
  call void @llvm.assume(i1 %i.ex)
  %i.ey = add nuw nsw i64 %i.ew, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.er, ptr noundef nonnull align 8 dereferenceable(1) %i.et, i64 %i.ey, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %.noexc59
  store ptr %i.es, ptr %3, align 8, !tbaa !64, !alias.scope !1613
  %i.ez = load i64, ptr %i.et, align 8, !tbaa !65
  store i64 %i.ez, ptr %i.er, align 8, !tbaa !65, !alias.scope !1613
  %.phi.trans.insert.i55 = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.pre.i56 = load i64, ptr %.phi.trans.insert.i55, align 8, !tbaa !67
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.x
  %i.fa = phi i64 [ %i.ew, %bb.x ], [ %.pre.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fa, ptr %i.fc, align 8, !tbaa !67, !alias.scope !1613
  store ptr %i.et, ptr %i.eq, align 8, !tbaa !64
  store i64 0, ptr %i.fb, align 8, !tbaa !67
  store i8 0, ptr %i.et, align 8, !tbaa !65
  %i.fd = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %bb.z, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, !prof !87

bb.z:                                             ; preds = %bb.y
  %i.ff = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !1605
  %.not.i.i.i62 = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i.i62, label %_ZN7testing8internal15GetUnitTestImplEv.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.ab unwind label %bb.ac, !inline_history !1605

bb.ab:                                            ; preds = %bb.aa
  %i.fg = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !1605 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !1605
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !1605
  br label %.body63

_ZN7testing8internal15GetUnitTestImplEv.exit.i:   ; preds = %bb.ab, %bb.z, %bb.y
  %i.fi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 568
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !425 ; 2 uses
  %.not.i61 = icmp eq ptr %i.fk, null
  br i1 %.not.i61, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !439
  %i.fn = call noalias noundef ptr @fdopen(i32 noundef %i.fm, ptr noundef nonnull @.str.289) #54 ; 3 uses
  %i.fo = call i32 @fputc(i32 noundef 73, ptr noundef %i.fn), !inline_history !1614 ; 0 uses
  %i.fp = load ptr, ptr %3, align 8, !tbaa !64
  %fputs7.i = call i32 @fputs(ptr %i.fp, ptr %i.fn), !inline_history !1614 ; 0 uses
  %i.fq = call i32 @fflush(ptr noundef %i.fn), !inline_history !1614 ; 0 uses
  invoke void @_exit(i32 noundef 1) #56
          to label %.noexc65 unwind label %bb.am, !inline_history !1614

.noexc65:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit.i
  %i.fr = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.fs = load ptr, ptr %3, align 8, !tbaa !64
  %fputs.i = call i32 @fputs(ptr %i.fs, ptr %i.fr) #62, !inline_history !1614 ; 0 uses
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.fu = call i32 @fflush(ptr noundef %i.ft), !inline_history !1614 ; 0 uses
  call void @_ZN7testing8internal5posix5AbortEv() #56, !inline_history !1614
  unreachable

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i25, %bb.g
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.ah:                                            ; preds = %bb.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.o, %.critedge.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i37, %bb.q
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i45, %bb.t
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53, %bb.w
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.am:                                            ; preds = %bb.ad
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body63

.body63:                                          ; preds = %bb.ac, %bb.am
  %eh.lpad-body64 = phi { ptr, i32 } [ %i.gc, %bb.am ], [ %i.fh, %bb.ac ] ; 2 uses
  %i.gd = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.er
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %.body63
  %i.gf = load i64, ptr %i.er, align 8, !tbaa !65
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %.body63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.al
  %.pn = phi { ptr, i32 } [ %i.gb, %bb.al ], [ %eh.lpad-body64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %eh.lpad-body64, %.body63 ] ; 2 uses
  %i.gh = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.eb
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.gj = load i64, ptr %i.eb, align 8, !tbaa !65
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %i.ga, %bb.ak ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ] ; 2 uses
  %i.gl = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.dl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.gn = load i64, ptr %i.dl, align 8, !tbaa !65
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.aj
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.aj ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  %i.gp = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !65
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.ai
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fy, %bb.ai ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.gu = load ptr, ptr %10, align 8, !tbaa !64   ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !65
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #55
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ah, %_ZN7testing7MessageD2Ev.exit4.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bi, %_ZN7testing7MessageD2Ev.exit4.i ], [ %i.fx, %bb.ah ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #54
  %i.gz = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.ao
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %.body
  %i.hb = load i64, ptr %i.ao, align 8, !tbaa !65
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ag
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.ag ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  %i.hd = load ptr, ptr %8, align 8, !tbaa !64    ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.y
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.hf = load i64, ptr %i.y, align 8, !tbaa !65
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fv, %bb.af ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  %i.hh = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.o
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.hj = load i64, ptr %i.o, align 8, !tbaa !65
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

.critedge22:                                      ; preds = %bb.b
  tail call void @_exit(i32 noundef 1) #56
  unreachable
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #38

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal13DeathTestImpl6PassedEb(ptr noundef nonnull align 8 dereferenceable(60) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_15
begin_hunk_16_@_ZN7testing8internal15NoExecDeathTest10AssumeRoleEv:bb.a
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !67 ; 3 uses
  %i.uq = icmp ult i64 %i.up, 16
  call void @llvm.assume(i1 %i.uq)
  %i.ur = add nuw nsw i64 %i.up, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uk, ptr noundef nonnull align 8 dereferenceable(1) %i.um, i64 %i.ur, i1 false)
  br label %bb.ci

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %.noexc369
  store ptr %i.ul, ptr %23, align 8, !tbaa !64, !alias.scope !1760
  %i.us = load i64, ptr %i.um, align 8, !tbaa !65
  store i64 %i.us, ptr %i.uk, align 8, !tbaa !65, !alias.scope !1760
  %.phi.trans.insert.i365 = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %.pre.i366 = load i64, ptr %.phi.trans.insert.i365, align 8, !tbaa !67
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364, %bb.ch
  %i.ut = phi i64 [ %i.up, %bb.ch ], [ %.pre.i366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ]
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.uv = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.ut, ptr %i.uv, align 8, !tbaa !67, !alias.scope !1760
  store ptr %i.um, ptr %i.uj, align 8, !tbaa !64
  store i64 0, ptr %i.uu, align 8, !tbaa !67
  store i8 0, ptr %i.um, align 8, !tbaa !65
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %.unreachable549 unwind label %bb.cr

.unreachable549:                                  ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %.critedge
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i302, %bb.bn
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i310, %bb.bq
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

bb.cm:                                            ; preds = %bb.bs
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %.body327

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i332, %bb.by, %.critedge.i338
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i347, %bb.ca
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i355, %bb.cd
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i363, %bb.cg
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

bb.cr:                                            ; preds = %bb.ci
  %i.ve = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vf = load ptr, ptr %23, align 8, !tbaa !64   ; 2 uses
  %i.vg = icmp eq ptr %i.vf, %i.uk
  br i1 %i.vg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %bb.cr
  %i.vh = load i64, ptr %i.uk, align 8, !tbaa !65
  %i.vi = add i64 %i.vh, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vi) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395, %bb.cq
  %.pn79 = phi { ptr, i32 } [ %i.vd, %bb.cq ], [ %i.ve, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ], [ %i.ve, %bb.cr ] ; 2 uses
  %i.vj = load ptr, ptr %24, align 8, !tbaa !64   ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.tu
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397
  %i.vl = load i64, ptr %i.tu, align 8, !tbaa !65
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398, %bb.cp
  %.pn79.pn = phi { ptr, i32 } [ %i.vc, %bb.cp ], [ %.pn79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398 ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397 ] ; 2 uses
  %i.vn = load ptr, ptr %25, align 8, !tbaa !64   ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.te
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  %i.vp = load i64, ptr %i.te, align 8, !tbaa !65
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vq) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401, %bb.co
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.vb, %bb.co ], [ %.pn79.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401 ], [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ] ; 2 uses
  %i.vr = load ptr, ptr %26, align 8, !tbaa !64   ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.vt = icmp eq ptr %i.vr, %i.vs
  br i1 %i.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403
  %i.vu = load i64, ptr %i.vs, align 8, !tbaa !65
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vv) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %bb.cn
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.va, %bb.cn ], [ %.pn79.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ], [ %.pn79.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403 ] ; 2 uses
  %i.vw = load ptr, ptr %30, align 8, !tbaa !64   ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.vy = icmp eq ptr %i.vw, %i.vx
  br i1 %i.vy, label %.body327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406
  %i.vz = load i64, ptr %i.vx, align 8, !tbaa !65
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vw, i64 noundef %i.wa) #55
  br label %.body327

.body327:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407, %bb.cm, %_ZN7testing7MessageD2Ev.exit4.i320
  %.pn79.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rb, %_ZN7testing7MessageD2Ev.exit4.i320 ], [ %i.uz, %bb.cm ], [ %.pn79.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407 ], [ %.pn79.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #54
  %i.wb = load ptr, ptr %27, align 8, !tbaa !64   ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.qh
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410: ; preds = %.body327
  %i.wd = load i64, ptr %i.qh, align 8, !tbaa !65
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412: ; preds = %.body327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410, %bb.cl
  %.pn79.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.uy, %bb.cl ], [ %.pn79.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410 ], [ %.pn79.pn.pn.pn.pn, %.body327 ] ; 2 uses
  %i.wf = load ptr, ptr %28, align 8, !tbaa !64   ; 2 uses
  %i.wg = icmp eq ptr %i.wf, %i.pr
  br i1 %i.wg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412
  %i.wh = load i64, ptr %i.pr, align 8, !tbaa !65
  %i.wi = add i64 %i.wh, 1
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wi) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413, %bb.ck
  %.pn79.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ux, %bb.ck ], [ %.pn79.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413 ], [ %.pn79.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412 ] ; 2 uses
  %i.wj = load ptr, ptr %29, align 8, !tbaa !64   ; 2 uses
  %i.wk = icmp eq ptr %i.wj, %i.ph
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %i.wl = load i64, ptr %i.ph, align 8, !tbaa !65
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wm) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416, %bb.cj
  %.pn79.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.uw, %bb.cj ], [ %.pn79.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416 ], [ %.pn79.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #54
  br label %bb.ee

.critedge91:                                      ; preds = %.preheader
  %i.wn = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !69
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.wo, ptr %i.wp, align 8, !tbaa !461
  %i.wq = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.wr = icmp eq i8 %i.wq, 0
  br i1 %i.wr, label %bb.cs, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.cs:                                            ; preds = %.critedge91
  %i.ws = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.ws, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.cu unwind label %bb.cv, !inline_history !2

bb.cu:                                            ; preds = %bb.ct
  %i.wt = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %.body, %bb.ee, %bb.cv
  %common.resume.op = phi { ptr, i32 } [ %i.wu, %bb.cv ], [ %.pn79.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ee ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.cv:                                            ; preds = %bb.ct
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %.critedge91, %bb.cs, %bb.cu
  %i.wv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 504
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !246
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  store i8 0, ptr %i.wy, align 8, !tbaa !406
  store i1 true, ptr @_ZN7testing8internalL26g_in_fast_death_test_childE, align 1
  br label %bb.ed

bb.cw:                                            ; preds = %.preheader552, %bb.cx
  %i.wz = load i32, ptr %i.pa, align 4, !tbaa !69
  %i.xa = call i32 @close(i32 noundef %i.wz)
  %i.xb = icmp eq i32 %i.xa, -1
  br i1 %i.xb, label %bb.cx, label %.critedge92

bb.cx:                                            ; preds = %bb.cw
  %i.xc = tail call ptr @__errno_location() #58
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !69
  %i.xe = icmp eq i32 %i.xd, 4
  br i1 %i.xe, label %bb.cw, label %.critedge2, !llvm.loop !1720

.critedge2:                                       ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #54
  %i.xf = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  store ptr %i.xf, ptr %37, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 19, ptr %i.a, align 8, !tbaa !83
  %i.xg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc421 unwind label %bb.du ; 2 uses

.noexc421:                                        ; preds = %.critedge2
  store ptr %i.xg, ptr %37, align 8, !tbaa !64
  %i.xh = load i64, ptr %i.a, align 8, !tbaa !83  ; 3 uses
  store i64 %i.xh, ptr %i.xf, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.xg, ptr noundef nonnull align 1 dereferenceable(19) @.str.319, i64 19, i1 false)
  %i.xi = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store i64 %i.xh, ptr %i.xi, align 8, !tbaa !67
  %i.xj = load ptr, ptr %37, align 8, !tbaa !64
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xh
  store i8 0, ptr %i.xk, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  call void @llvm.experimental.noalias.scope.decl(metadata !1761)
  %i.xl = load i64, ptr %i.xi, align 8, !tbaa !67, !noalias !1761
  %i.xm = add i64 %i.xl, -4611686018427387748
  %i.xn = icmp ult i64 %i.xm, 156
  br i1 %i.xn, label %bb.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i423

bb.cy:                                            ; preds = %.noexc421
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc428 unwind label %bb.dv

.noexc428:                                        ; preds = %bb.cy
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i423: ; preds = %.noexc421
  %i.xo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @.str.315, i64 noundef 156)
          to label %.noexc429 unwind label %bb.dv ; 6 uses

.noexc429:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i423
  %i.xp = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 5 uses
  store ptr %i.xp, ptr %36, align 8, !tbaa !66, !alias.scope !1761
  %i.xq = load ptr, ptr %i.xo, align 8, !tbaa !64 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xo, i64 16 ; 5 uses
  %i.xs = icmp eq ptr %i.xq, %i.xr
  br i1 %i.xs, label %bb.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424

bb.cz:                                            ; preds = %.noexc429
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !67 ; 3 uses
  %i.xv = icmp ult i64 %i.xu, 16
  call void @llvm.assume(i1 %i.xv)
  %i.xw = add nuw nsw i64 %i.xu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.xp, ptr noundef nonnull align 8 dereferenceable(1) %i.xr, i64 %i.xw, i1 false)
  br label %bb.da

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424: ; preds = %.noexc429
  store ptr %i.xq, ptr %36, align 8, !tbaa !64, !alias.scope !1761
  %i.xx = load i64, ptr %i.xr, align 8, !tbaa !65
  store i64 %i.xx, ptr %i.xp, align 8, !tbaa !65, !alias.scope !1761
  %.phi.trans.insert.i425 = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %.pre.i426 = load i64, ptr %.phi.trans.insert.i425, align 8, !tbaa !67
  br label %bb.da

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424, %bb.cz
  %i.xy = phi i64 [ %i.xu, %bb.cz ], [ %.pre.i426, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424 ]
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.ya = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store i64 %i.xy, ptr %i.ya, align 8, !tbaa !67, !alias.scope !1761
  store ptr %i.xr, ptr %i.xo, align 8, !tbaa !64
  store i64 0, ptr %i.xz, align 8, !tbaa !67
  store i8 0, ptr %i.xr, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !67, !noalias !1762
  %i.yc = add i64 %i.yb, -4611686018427387897
  %i.yd = icmp ult i64 %i.yc, 7
  br i1 %i.yd, label %bb.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i431

bb.db:                                            ; preds = %bb.da
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc436 unwind label %bb.dw

.noexc436:                                        ; preds = %bb.db
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i431: ; preds = %bb.da
  %i.ye = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.320, i64 noundef 7)
          to label %.noexc437 unwind label %bb.dw ; 6 uses

.noexc437:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i431
  %i.yf = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 7 uses
  store ptr %i.yf, ptr %35, align 8, !tbaa !66, !alias.scope !1762
  %i.yg = load ptr, ptr %i.ye, align 8, !tbaa !64 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 16 ; 5 uses
  %i.yi = icmp eq ptr %i.yg, %i.yh
  br i1 %i.yi, label %bb.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432

bb.dc:                                            ; preds = %.noexc437
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !67 ; 3 uses
  %i.yl = icmp ult i64 %i.yk, 16
  call void @llvm.assume(i1 %i.yl)
  %i.ym = add nuw nsw i64 %i.yk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.yf, ptr noundef nonnull align 8 dereferenceable(1) %i.yh, i64 %i.ym, i1 false)
  br label %bb.dd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432: ; preds = %.noexc437
  store ptr %i.yg, ptr %35, align 8, !tbaa !64, !alias.scope !1762
  %i.yn = load i64, ptr %i.yh, align 8, !tbaa !65
  store i64 %i.yn, ptr %i.yf, align 8, !tbaa !65, !alias.scope !1762
  %.phi.trans.insert.i433 = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %.pre.i434 = load i64, ptr %.phi.trans.insert.i433, align 8, !tbaa !67
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432, %bb.dc
  %i.yo = phi i64 [ %i.yk, %bb.dc ], [ %.pre.i434, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432 ]
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yq = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  store i64 %i.yo, ptr %i.yq, align 8, !tbaa !67, !alias.scope !1762
  store ptr %i.yh, ptr %i.ye, align 8, !tbaa !64
  store i64 0, ptr %i.yp, align 8, !tbaa !67
  store i8 0, ptr %i.yh, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #54, !noalias !1763
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc447 unwind label %bb.dx

.noexc447:                                        ; preds = %bb.dd
  %i.yr = load ptr, ptr %1, align 8, !tbaa !71, !noalias !1763
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.yt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ys, i32 noundef 1154)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i442 unwind label %bb.de, !noalias !1763 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i442:      ; preds = %.noexc447
  %i.yu = load ptr, ptr %1, align 8, !tbaa !71, !noalias !1764
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef %i.yu)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i443 unwind label %bb.de

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i443: ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i442
  %i.yv = load ptr, ptr %1, align 8, !tbaa !71, !noalias !1763 ; 3 uses
  %.not.i.i.i444 = icmp eq ptr %i.yv, null
  br i1 %.not.i.i.i444, label %bb.df, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i445

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i445: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i443
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !73
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.yy = load ptr, ptr %i.yx, align 8
  call void %i.yy(ptr noundef nonnull align 8 dereferenceable(128) %i.yv) #54, !inline_history !5
  br label %bb.df

bb.de:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i442, %.noexc447
  %i.yz = landingpad { ptr, i32 }
          cleanup
  %i.za = load ptr, ptr %1, align 8, !tbaa !71, !noalias !1763 ; 3 uses
  %.not.i.i2.i439 = icmp eq ptr %i.za, null
  br i1 %.not.i.i2.i439, label %_ZN7testing7MessageD2Ev.exit4.i441, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i440

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i440: ; preds = %bb.de
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !73
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8
  call void %i.zd(ptr noundef nonnull align 8 dereferenceable(128) %i.za) #54, !inline_history !5
end_hunk_16
begin_hunk_17_@_ZN7testing8internal14GetThreadCountEv:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSirsERm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #54
  %i.bb = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !65
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  ret i64 %i.ao

bb.g:                                             ; preds = %bb.a, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIiEERS0_RKT_.exit, %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i6, label %_ZN7testing7MessageD2Ev.exit8, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7: ; preds = %bb.g
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.bh) #54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit8

_ZN7testing7MessageD2Ev.exit8:                    ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i
  %i.bl = load i64, ptr %i.az, align 8, !tbaa !65
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bm) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %_ZN7testing7MessageD2Ev.exit8
  %.pn4 = phi { ptr, i32 } [ %i.bg, %_ZN7testing7MessageD2Ev.exit8 ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal13CaptureStderrEv() local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN7testing8internalL13CaptureStreamEiPKcPPNS0_14CapturedStreamE(i32 noundef 2, ptr noundef nonnull @.str.366, ptr noundef nonnull @_ZN7testing8internalL17g_captured_stderrE)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7testing8internal13ExecDeathTest10AssumeRoleEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"struct.testing::internal::ExecDeathTestArgs", align 8 ; 7 uses
  %9 = alloca %struct.sigaction, align 8          ; 5 uses
  %10 = alloca %struct.sigaction, align 8         ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
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
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %55 = alloca %"class.testing::Message", align 8 ; 8 uses
  %56 = alloca %"class.testing::Message", align 8 ; 8 uses
  %57 = alloca %"class.testing::Message", align 8 ; 8 uses
  %58 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %59 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca [2 x i32], align 4                ; 7 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %95 = alloca %"class.testing::internal::Arguments", align 8 ; 15 uses
  %96 = alloca %"class.std::vector.76", align 8   ; 8 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.o = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.ng, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.e ], [ %.pn115.pn.pn.pn.pn.pn, %bb.ng ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !425  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 368
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !244  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  %i.z = load i32, ptr %i.y, align 8, !tbaa !354
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !439
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !461
  br label %bb.nh

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #54
  %i.ad = call i32 @pipe(ptr noundef nonnull %i.n) #54
  %.not786 = icmp eq i32 %i.ad, -1
  br i1 %.not786, label %.noexc.i, label %bb.ai

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #54
  %i.ae = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 4 uses
  store ptr %i.ae, ptr %65, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #54
  store i64 19, ptr %i.m, align 8, !tbaa !83
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc unwind label %bb.aa    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.af, ptr %65, align 8, !tbaa !64
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !83  ; 3 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.af, ptr noundef nonnull align 1 dereferenceable(19) @.str.319, i64 19, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !67
  %i.ai = load ptr, ptr %65, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #54
  call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !67, !noalias !1956
  %i.al = add i64 %i.ak, -4611686018427387748
  %i.am = icmp ult i64 %i.al, 156
  br i1 %i.am, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc123 unwind label %bb.ab

.noexc123:                                        ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.noexc
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @.str.315, i64 noundef 156)
          to label %.noexc124 unwind label %bb.ab ; 6 uses

.noexc124:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 5 uses
  store ptr %i.ao, ptr %64, align 8, !tbaa !66, !alias.scope !1956
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc124
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !67 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc124
  store ptr %i.ap, ptr %64, align 8, !tbaa !64, !alias.scope !1956
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !65
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !65, !alias.scope !1956
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.ax = phi i64 [ %i.at, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !67, !alias.scope !1956
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !64
  store i64 0, ptr %i.ay, align 8, !tbaa !67
  store i8 0, ptr %i.aq, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !67, !noalias !1957
  %i.bb = add i64 %i.ba, -4611686018427387897
  %i.bc = icmp ult i64 %i.bb, 7
  br i1 %i.bc, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i125

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc129 unwind label %bb.ac

.noexc129:                                        ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i125: ; preds = %bb.j
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @.str.320, i64 noundef 7)
          to label %.noexc130 unwind label %bb.ac ; 6 uses

.noexc130:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i125
  %i.be = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 7 uses
  store ptr %i.be, ptr %63, align 8, !tbaa !66, !alias.scope !1957
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !64 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

bb.l:                                             ; preds = %.noexc130
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !67 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %.noexc130
  store ptr %i.bf, ptr %63, align 8, !tbaa !64, !alias.scope !1957
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !65
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !65, !alias.scope !1957
  %.phi.trans.insert.i127 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.pre.i128 = load i64, ptr %.phi.trans.insert.i127, align 8, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.l
  %i.bn = phi i64 [ %i.bj, %bb.l ], [ %.pre.i128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !67, !alias.scope !1957
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !64
  store i64 0, ptr %i.bo, align 8, !tbaa !67
  store i8 0, ptr %i.bg, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #54, !noalias !1958
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %.noexc132 unwind label %bb.ad

.noexc132:                                        ; preds = %bb.m
  %i.bq = load ptr, ptr %59, align 8, !tbaa !71, !noalias !1958
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 noundef 1417)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %bb.n, !noalias !1958 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %.noexc132
  %i.bt = load ptr, ptr %59, align 8, !tbaa !71, !noalias !1959
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %66, ptr noundef %i.bt)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.n

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.bu = load ptr, ptr %59, align 8, !tbaa !71, !noalias !1958 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %bb.o, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(128) %i.bu) #54, !inline_history !5
  br label %bb.o

bb.n:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i, %.noexc132
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %59, align 8, !tbaa !71, !noalias !1958 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i2.i, label %_ZN7testing7MessageD2Ev.exit4.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i: ; preds = %bb.n
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !73
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
end_hunk_17
begin_hunk_18_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #54
  br label %.body577

.critedge122:                                     ; preds = %bb.lb
  %i.cih = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.171.i, ptr %i.cih, align 4, !tbaa !467
  %i.cii = load i32, ptr %i.n, align 4, !tbaa !69
  %i.cij = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.cii, ptr %i.cij, align 4, !tbaa !457
  %i.cik = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.cik, align 8, !tbaa !462
  %i.cil = load ptr, ptr %95, align 8, !tbaa !475 ; 3 uses
  %i.cim = load ptr, ptr %i.afn, align 8, !tbaa !475
  %.not4.i = icmp eq ptr %i.cil, %i.cim
  br i1 %.not4.i, label %._crit_edge.i, label %.lr.ph.i759

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i759
  %.pre.i761 = load ptr, ptr %95, align 8, !tbaa !472
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge122
  %i.cin = phi ptr [ %.pre.i761, %._crit_edge.loopexit.i ], [ %i.cil, %.critedge122 ] ; 3 uses
  %.not.i.i.i.i762 = icmp eq ptr %i.cin, null
  br i1 %.not.i.i.i.i762, label %_ZN7testing8internal9ArgumentsD2Ev.exit, label %bb.nf

bb.nf:                                            ; preds = %._crit_edge.i
  %i.cio = load ptr, ptr %i.aff, align 8, !tbaa !473
  %i.cip = ptrtoint ptr %i.cio to i64
  %i.ciq = ptrtoint ptr %i.cin to i64
  %i.cir = sub i64 %i.cip, %i.ciq
  call void @_ZdlPvm(ptr noundef nonnull %i.cin, i64 noundef %i.cir) #55
  br label %_ZN7testing8internal9ArgumentsD2Ev.exit

.lr.ph.i759:                                      ; preds = %.critedge122, %.lr.ph.i759
  %.sroa.01.05.i = phi ptr [ %i.cit, %.lr.ph.i759 ], [ %i.cil, %.critedge122 ] ; 2 uses
  %i.cis = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !333
  call void @free(ptr noundef %i.cis) #54
  %i.cit = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  %i.ciu = load ptr, ptr %i.afn, align 8, !tbaa !475
  %.not.i760 = icmp eq ptr %i.cit, %i.ciu
  br i1 %.not.i760, label %._crit_edge.loopexit.i, label %.lr.ph.i759, !llvm.loop !40

_ZN7testing8internal9ArgumentsD2Ev.exit:          ; preds = %._crit_edge.i, %bb.nf
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #54
  %i.civ = load ptr, ptr %81, align 8, !tbaa !64  ; 2 uses
  %i.ciw = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.cix = icmp eq ptr %i.civ, %i.ciw
  br i1 %i.cix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764: ; preds = %_ZN7testing8internal9ArgumentsD2Ev.exit
  %i.ciy = load i64, ptr %i.ciw, align 8, !tbaa !65
  %i.ciz = add i64 %i.ciy, 1
  call void @_ZdlPvm(ptr noundef %i.civ, i64 noundef %i.ciz) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766: ; preds = %_ZN7testing8internal9ArgumentsD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #54
  %i.cja = load ptr, ptr %74, align 8, !tbaa !64  ; 2 uses
  %i.cjb = icmp eq ptr %i.cja, %i.qm
  br i1 %i.cjb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766
  %i.cjc = load i64, ptr %i.qm, align 8, !tbaa !65
  %i.cjd = add i64 %i.cjc, 1
  call void @_ZdlPvm(ptr noundef %i.cja, i64 noundef %i.cjd) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #54
  br label %bb.nh

.body577:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734, %bb.mu
  %.pn115.pn = phi { ptr, i32 } [ %.pn101, %bb.mu ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758 ], [ %i.cgl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734 ], [ %.pn116.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.ky ], [ %lpad.loopexit.split-lp1325, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7testing8internal9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %95) #54
  br label %.body553

.body553:                                         ; preds = %bb.dr, %bb.dq, %.body577
  %.pn115.pn.pn = phi { ptr, i32 } [ %.pn115.pn, %.body577 ], [ %i.afh, %bb.dq ], [ %i.afh, %bb.dr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #54
  %i.cje = load ptr, ptr %81, align 8, !tbaa !64  ; 2 uses
  %i.cjf = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.cjg = icmp eq ptr %i.cje, %i.cjf
  br i1 %i.cjg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770: ; preds = %.body553
  %i.cjh = load i64, ptr %i.cjf, align 8, !tbaa !65
  %i.cji = add i64 %i.cjh, 1
  call void @_ZdlPvm(ptr noundef %i.cje, i64 noundef %i.cji) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772: ; preds = %.body553, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731
  %.pn115.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731 ], [ %.pn115.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770 ], [ %.pn115.pn.pn, %.body553 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #54
  %i.cjj = load ptr, ptr %74, align 8, !tbaa !64  ; 2 uses
  %i.cjk = icmp eq ptr %i.cjj, %i.qm
  br i1 %i.cjk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i773

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i773: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772
  %i.cjl = load i64, ptr %i.qm, align 8, !tbaa !65
  %i.cjm = add i64 %i.cjl, 1
  call void @_ZdlPvm(ptr noundef %i.cjj, i64 noundef %i.cjm) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i773, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692
  %.pn115.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn80.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692 ], [ %.pn115.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i773 ], [ %.pn115.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #54
  br label %bb.ng

bb.ng:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %.pn115.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn115.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775 ], [ %.pn72.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #54
  br label %common.resume

bb.nh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769, %bb.f
  %.063 = phi i32 [ 1, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769 ]
  ret i32 %.063
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !475    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !475
  %.not4 = icmp eq ptr %i.a, %i.c
  br i1 %.not4, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !472
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.d = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !473
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #55
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.01.05, align 8, !tbaa !333
  tail call void @free(ptr noundef %i.j) #54
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.05, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !475
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !40
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7testing8internal23DefaultDeathTestFactory6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPNS0_9DeathTestE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef align 8 captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %.body.i, %.body.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZN7testing7MessageD2Ev.exit4.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.x, %_ZN7testing7MessageD2Ev.exit4.i ], [ %i.iq, %.body.i114 ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn37.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %i.hr, %.body.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.jj, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !425  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !244
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !354  ; 2 uses
  %i.m = add nsw i32 %i.l, 1                      ; 3 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !354
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.af, label %bb.f

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 36 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !479  ; 2 uses
  %.not149 = icmp slt i32 %i.l, %i.o
  br i1 %.not149, label %bb.ad, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #54, !noalias !2072
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11), !noalias !2072
  %i.p = load ptr, ptr %11, align 8, !tbaa !71, !noalias !2072
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %i.m)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %bb.h, !noalias !2072 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %bb.g
  %i.s = load ptr, ptr %11, align 8, !tbaa !71, !noalias !2073
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef %i.s)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i unwind label %bb.h

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i:   ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.t = load ptr, ptr %11, align 8, !tbaa !71, !noalias !2072 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #54, !inline_history !5
  br label %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.h:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %11, align 8, !tbaa !71, !noalias !2072 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i2.i, label %_ZN7testing7MessageD2Ev.exit4.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i: ; preds = %bb.h
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #54, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit4.i

_ZN7testing7MessageD2Ev.exit4.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #54, !noalias !2072
  br label %common.resume

_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #54, !noalias !2072
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.345, i64 noundef 18)
          to label %.noexc unwind label %bb.x     ; 6 uses

.noexc:                                           ; preds = %_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.ad, ptr %15, align 8, !tbaa !66, !alias.scope !2074
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !67 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ae, ptr %15, align 8, !tbaa !64, !alias.scope !2074
  %i.al = load i64, ptr %i.af, align 8, !tbaa !65
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !65, !alias.scope !2074
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.am = phi i64 [ %i.ai, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !67, !alias.scope !2074
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !64
  store i64 0, ptr %i.an, align 8, !tbaa !67
  store i8 0, ptr %i.af, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !67, !noalias !2075
  %i.aq = add i64 %i.ap, -4611686018427387867
  %i.ar = icmp ult i64 %i.aq, 37
  br i1 %i.ar, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc47 unwind label %bb.y

.noexc47:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.j
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.346, i64 noundef 37)
          to label %.noexc48 unwind label %bb.y   ; 6 uses

.noexc48:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.at, ptr %14, align 8, !tbaa !66, !alias.scope !2075
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

bb.l:                                             ; preds = %.noexc48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !67 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %.noexc48
  store ptr %i.au, ptr %14, align 8, !tbaa !64, !alias.scope !2075
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !65
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !65, !alias.scope !2075
  %.phi.trans.insert.i45 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.pre.i46 = load i64, ptr %.phi.trans.insert.i45, align 8, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.l
  %i.bc = phi i64 [ %i.ay, %bb.l ], [ %.pre.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !67, !alias.scope !2075
  store ptr %i.av, ptr %i.as, align 8, !tbaa !64
  store i64 0, ptr %i.bd, align 8, !tbaa !67
  store i8 0, ptr %i.av, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #54
  %i.bf = load i32, ptr %i.n, align 4, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #54, !noalias !2076
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc56 unwind label %bb.z

.noexc56:                                         ; preds = %bb.m
  %i.bg = load ptr, ptr %10, align 8, !tbaa !71, !noalias !2076
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 noundef %i.bf)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i52 unwind label %bb.n, !noalias !2076 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i52:       ; preds = %.noexc56
  %i.bj = load ptr, ptr %10, align 8, !tbaa !71, !noalias !2077
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef %i.bj)
          to label %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i53 unwind label %bb.n

_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i53: ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i52
  %i.bk = load ptr, ptr %10, align 8, !tbaa !71, !noalias !2076 ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i54, label %bb.o, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i55

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i55: ; preds = %_ZNK7testing7Message9GetStringB5cxx11Ev.exit.i53
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(128) %i.bk) #54, !inline_history !5
  br label %bb.o

bb.n:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i52, %.noexc56
  %i.bo = landingpad { ptr, i32 }
          cleanup
end_hunk_18
begin_hunk_19_@_ZN7testinglsERSoRKNS_14TestPartResultE:bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 9 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.122, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.m = load i32, ptr %1, align 8, !tbaa !242    ; 2 uses
  %i.n = icmp ult i32 %i.m, 4
  br i1 %i.n, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = zext nneg i32 %i.m to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN7testinglsERSoRKNS_14TestPartResultE, i64 %i.o
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %switch.lookup
  %i.p = phi ptr [ %switch.load, %switch.lookup ], [ @.str.381, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 2 uses
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #54
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.p, i64 noundef %i.q)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %bb.b
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.382, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64   ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !330
  %i.ab = or i32 %i.aa, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.y, i32 noundef %i.ab)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.h

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #54
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.u, i64 noundef %i.ac)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.k, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !344 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  invoke void @_ZSt16__throw_bad_castv() #56
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.e
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !349
  %.not.i1.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !65
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
          to label %.noexc17 unwind label %bb.h

.noexc17:                                         ; preds = %bb.g
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !73
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.h, !inline_history !46

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc17, %bb.f
  %.0.i.i.i = phi i8 [ %i.an, %bb.f ], [ %i.ar, %.noexc17 ]
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %.0.i.i.i)
          to label %.noexc19 unwind label %bb.h

.noexc19:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.h

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc19
  %i.au = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !65
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  ret ptr %i.at

bb.h:                                             ; preds = %.noexc19, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc17, %bb.g, %bb.e, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %bb.b, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.h
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !65
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(112) ptr @_ZNK7testing19TestPartResultArray17GetTestPartResultEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !226
  %i.d = load ptr, ptr %0, align 8, !tbaa !231    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 112
  %i.i = trunc i64 %i.h to i32
  %.not = icmp slt i32 %1, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.383, i32 noundef %1) ; 0 uses
  tail call void @_ZN7testing8internal5posix5AbortEv() #56
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %i.k
  ret ptr %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK7testing19TestPartResultArray4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226
  %i.c = load ptr, ptr %0, align 8, !tbaa !231
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24HasNewFatalFailureHelperE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !513
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %.body, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109
  store ptr %i.j, ptr %i.b, align 8, !tbaa !514
  %i.k = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.i, !prof !87

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i2 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i2, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %.body, !inline_history !2

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %bb.i

.body:                                            ; preds = %bb.c, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54
  resume { ptr, i32 } %i.o

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  store ptr %0, ptr %i.r, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelperD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24HasNewFatalFailureHelperE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !2
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !514
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.j = invoke noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr %i.j, align 8, !tbaa !109
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
define void @_ZN7testing8internal24HasNewFatalFailureHelperD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN7testing8internal24HasNewFatalFailureHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #54
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #55
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal24HasNewFatalFailureHelper20ReportTestPartResultERKNS_14TestPartResultE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !242
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !513
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !514  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
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
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::vector.76", align 8    ; 12 uses
  %10 = alloca %"class.testing::Message", align 8 ; 15 uses
  %11 = alloca %"class.std::set", align 8         ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #54
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.c, ptr %8, align 8, !tbaa !66
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.502) #56
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  store i64 %i.e, ptr %i.b, align 8, !tbaa !83
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc33 unwind label %bb.x   ; 2 uses

.noexc33:                                         ; preds = %.noexc.i
  store ptr %i.g, ptr %8, align 8, !tbaa !64
  %i.h = load i64, ptr %i.b, align 8, !tbaa !83
  store i64 %i.h, ptr %i.c, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc33, %bb.c
  %i.i = phi ptr [ %i.g, %.noexc33 ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !65
  store i8 %i.j, ptr %i.i, align 1, !tbaa !65
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %2, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !67
  %i.m = load ptr, ptr %8, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !66
  %i.p = load ptr, ptr %8, align 8, !tbaa !64     ; 2 uses
  %i.q = load i64, ptr %i.l, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  store i64 %i.q, ptr %i.a, align 8, !tbaa !83
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc34 unwind label %bb.y   ; 2 uses

.noexc34:                                         ; preds = %.noexc.i.i
  store ptr %i.s, ptr %7, align 8, !tbaa !64
  %i.t = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.t, ptr %i.o, align 8, !tbaa !65
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc34, %bb.f
  %i.u = phi ptr [ %i.s, %.noexc34 ], [ %i.o, %bb.f ] ; 2 uses
  switch i64 %i.q, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.p, align 1, !tbaa !65
  store i8 %i.v, ptr %i.u, align 1, !tbaa !65
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !67
  %i.y = load ptr, ptr %7, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %3, ptr %i.aa, align 8, !tbaa !206
  invoke void @_ZN7testing8internal34RegisterTypeParameterizedTestSuiteEPKcNS0_12CodeLocationE(ptr noundef %1, ptr noundef nonnull align 8 %7)
          to label %bb.j unwind label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.o
  br i1 %i.ac, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !65
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #55
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.af = load ptr, ptr %8, align 8, !tbaa !64    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !65
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_19
begin_hunk_20_@_ZN7testing8internalL22ExecDeathTestChildMainEPv:bb.a
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

bb.x:                                             ; preds = %.noexc96
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !67 ; 3 uses
  %i.er = icmp ult i64 %i.eq, 16
  call void @llvm.assume(i1 %i.er)
  %i.es = add nuw nsw i64 %i.eq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.el, ptr noundef nonnull align 8 dereferenceable(1) %i.en, i64 %i.es, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %.noexc96
  store ptr %i.em, ptr %2, align 8, !tbaa !64, !alias.scope !2367
  %i.et = load i64, ptr %i.en, align 8, !tbaa !65
  store i64 %i.et, ptr %i.el, align 8, !tbaa !65, !alias.scope !2367
  %.phi.trans.insert.i92 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.pre.i93 = load i64, ptr %.phi.trans.insert.i92, align 8, !tbaa !67
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.x
  %i.eu = phi i64 [ %i.eq, %bb.x ], [ %.pre.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.eu, ptr %i.ew, align 8, !tbaa !67, !alias.scope !2367
  store ptr %i.en, ptr %i.ek, align 8, !tbaa !64
  store i64 0, ptr %i.ev, align 8, !tbaa !67
  store i8 0, ptr %i.en, align 8, !tbaa !65
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.unreachable311 unwind label %bb.ah

.unreachable311:                                  ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %.critedge
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62, %bb.g
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.ac:                                            ; preds = %bb.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.o, %.critedge.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i74, %bb.q
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i82, %bb.t
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i90, %bb.w
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.ah:                                            ; preds = %bb.y
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.el
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.ah
  %i.fi = load i64, ptr %i.el, align 8, !tbaa !65
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.fe, %bb.ag ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %i.ff, %bb.ah ] ; 2 uses
  %i.fk = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.dv
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.fm = load i64, ptr %i.dv, align 8, !tbaa !65
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %i.fd, %bb.af ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ] ; 2 uses
  %i.fo = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.df
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.fq = load i64, ptr %i.df, align 8, !tbaa !65
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.ae
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %bb.ae ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ] ; 2 uses
  %i.fs = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !65
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.ad
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.ad ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ] ; 2 uses
  %i.fx = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !65
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #55
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.ac, %_ZN7testing7MessageD2Ev.exit4.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %_ZN7testing7MessageD2Ev.exit4.i ], [ %i.fa, %bb.ac ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #54
  %i.gc = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ai
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %.body
  %i.ge = load i64, ptr %i.ai, align 8, !tbaa !65
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.ab
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ez, %bb.ab ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  %i.gg = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.s
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.gi = load i64, ptr %i.s, align 8, !tbaa !65
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.aa
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ey, %bb.aa ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 2 uses
  %i.gk = load ptr, ptr %8, align 8, !tbaa !64    ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.i
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.gm = load i64, ptr %i.i, align 8, !tbaa !65
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.z
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ex, %bb.z ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %common.resume

.critedge59:                                      ; preds = %bb.b
  %i.go = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.gp = icmp eq i8 %i.go, 0
  br i1 %i.gp, label %bb.ai, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !87

bb.ai:                                            ; preds = %.critedge59
  %i.gq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  %.not.i145 = icmp eq i32 %i.gq, 0
  br i1 %.not.i145, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.ak unwind label %bb.al, !inline_history !88

bb.ak:                                            ; preds = %bb.aj
  %i.gr = tail call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #54, !inline_history !88 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.gs, %bb.al ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.pn51.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn43.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ]
  resume { ptr, i32 } %common.resume.op

bb.al:                                            ; preds = %bb.aj
  %i.gs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #54, !inline_history !88
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %.critedge59, %bb.ai, %bb.ak
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !64 ; 5 uses
  %i.gw = tail call i32 @chdir(ptr noundef %i.gv) #54
  %.not = icmp eq i32 %i.gw, 0
  br i1 %.not, label %._crit_edge.i.i213, label %._crit_edge.i.i146

._crit_edge.i.i146:                               ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #54
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.gx, ptr %13, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.gx, ptr noundef nonnull align 1 dereferenceable(7) @.str.484, i64 7, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 7, ptr %i.gy, align 8, !tbaa !67
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 23
  store i8 0, ptr %i.gz, align 1, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !2368)
  %i.ha = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gv) #54, !noalias !2368 ; 2 uses
  %i.hb = icmp ugt i64 %i.ha, 4611686018427387896
  br i1 %i.hb, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i150

bb.am:                                            ; preds = %._crit_edge.i.i146
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc155 unwind label %bb.ay

.noexc155:                                        ; preds = %bb.am
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i150: ; preds = %._crit_edge.i.i146
  %i.hc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %i.gv, i64 noundef %i.ha)
          to label %.noexc156 unwind label %bb.ay ; 6 uses

.noexc156:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i150
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.hd, ptr %12, align 8, !tbaa !66, !alias.scope !2368
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !64 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 5 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

bb.an:                                            ; preds = %.noexc156
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !67 ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 16
  call void @llvm.assume(i1 %i.hj)
  %i.hk = add nuw nsw i64 %i.hi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hd, ptr noundef nonnull align 8 dereferenceable(1) %i.hf, i64 %i.hk, i1 false)
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %.noexc156
  store ptr %i.he, ptr %12, align 8, !tbaa !64, !alias.scope !2368
  %i.hl = load i64, ptr %i.hf, align 8, !tbaa !65
  store i64 %i.hl, ptr %i.hd, align 8, !tbaa !65, !alias.scope !2368
  %.phi.trans.insert.i152 = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.pre.i153 = load i64, ptr %.phi.trans.insert.i152, align 8, !tbaa !67
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.an
  %i.hm = phi i64 [ %i.hi, %bb.an ], [ %.pre.i153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.hm, ptr %i.ho, align 8, !tbaa !67, !alias.scope !2368
  store ptr %i.hf, ptr %i.hc, align 8, !tbaa !64
  store i64 0, ptr %i.hn, align 8, !tbaa !67
  store i8 0, ptr %i.hf, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !67, !noalias !2369
  %i.hq = add i64 %i.hp, -4611686018427387893
  %i.hr = icmp ult i64 %i.hq, 11
  br i1 %i.hr, label %bb.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.400) #56
          to label %.noexc163 unwind label %bb.az

.noexc163:                                        ; preds = %bb.ap
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158: ; preds = %bb.ao
  %i.hs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.485, i64 noundef 11)
          to label %.noexc164 unwind label %bb.az ; 6 uses

.noexc164:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158
  %i.ht = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ht, ptr %11, align 8, !tbaa !66, !alias.scope !2369
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !64 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 5 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

bb.aq:                                            ; preds = %.noexc164
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !67 ; 3 uses
  %i.hz = icmp ult i64 %i.hy, 16
  call void @llvm.assume(i1 %i.hz)
  %i.ia = add nuw nsw i64 %i.hy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ht, ptr noundef nonnull align 8 dereferenceable(1) %i.hv, i64 %i.ia, i1 false)
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %.noexc164
  store ptr %i.hu, ptr %11, align 8, !tbaa !64, !alias.scope !2369
  %i.ib = load i64, ptr %i.hv, align 8, !tbaa !65
  store i64 %i.ib, ptr %i.ht, align 8, !tbaa !65, !alias.scope !2369
  %.phi.trans.insert.i160 = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %.pre.i161 = load i64, ptr %.phi.trans.insert.i160, align 8, !tbaa !67
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %bb.aq
  %i.ic = phi i64 [ %i.hy, %bb.aq ], [ %.pre.i161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.ic, ptr %i.ie, align 8, !tbaa !67, !alias.scope !2369
  store ptr %i.hv, ptr %i.hs, align 8, !tbaa !64
  store i64 0, ptr %i.id, align 8, !tbaa !67
  store i8 0, ptr %i.hv, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #54
  invoke void @_ZN7testing8internal23GetLastErrnoDescriptionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14)
          to label %bb.as unwind label %bb.ba

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !67, !noalias !2370 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !67, !noalias !2370 ; 4 uses
  %i.ii = add i64 %i.ih, %i.if                    ; 2 uses
  %i.ij = load ptr, ptr %11, align 8, !tbaa !64, !noalias !2370 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.ht
  br i1 %i.ik, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i178: ; preds = %bb.as
  %i.il = icmp ult i64 %i.if, 16
  call void @llvm.assume(i1 %i.il)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.as
  %i.im = load i64, ptr %i.ht, align 8, !tbaa !65, !noalias !2370
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i167: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i178
  %i.in = phi i64 [ %i.im, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i178 ]
  %i.io = icmp ugt i64 %i.ii, %i.in
  br i1 %i.io, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i167
  %i.ip = load ptr, ptr %14, align 8, !tbaa !64, !noalias !2370
  %i.iq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i177: ; preds = %bb.at
  %i.is = icmp ult i64 %i.ih, 16
  call void @llvm.assume(i1 %i.is)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i171: ; preds = %bb.at
  %i.it = load i64, ptr %i.iq, align 8, !tbaa !65, !noalias !2370
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i172: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i177
  %i.iu = phi i64 [ %i.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i171 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i177 ]
  %.not.i173 = icmp ugt i64 %i.ii, %i.iu
  br i1 %.not.i173, label %bb.av, label %.critedge.i174

.critedge.i174:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i172
  %i.iv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.ij, i64 noundef %i.if)
          to label %.noexc179 unwind label %bb.bb ; 5 uses

.noexc179:                                        ; preds = %.critedge.i174
  %i.iw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.iw, ptr %10, align 8, !tbaa !66, !alias.scope !2370
  %i.ix = load ptr, ptr %i.iv, align 8, !tbaa !64 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 5 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i175

bb.au:                                            ; preds = %.noexc179
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !67 ; 2 uses
  %i.jc = icmp ult i64 %i.jb, 16
  call void @llvm.assume(i1 %i.jc)
  %i.jd = add nuw nsw i64 %i.jb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iw, ptr noundef nonnull align 8 dereferenceable(1) %i.iy, i64 %i.jd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i176
end_hunk_20
