Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ms-gsl/original/at_tests?download=true
inline.NumInlined: 680
inline.NumDeleted: 266
begin_hunk_0
@.str.40 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.41 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.43 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_at_tests.cpp, ptr null }]

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.39, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.40, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.41, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.42, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.39, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.40, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.43, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.42, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN26at_tests_static_array_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %1 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %5 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %13 = alloca %"class.testing::Matcher", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = tail call noundef ptr @_ZSt13set_terminatePFvvE(ptr noundef nonnull @"_ZZN26at_tests_static_array_Test8TestBodyEvEN3$_08__invokeEv") #21
  %.not.i = icmp eq ptr %i.e, null
  %i.f = select i1 %.not.i, ptr @_ZL32failed_set_terminate_deathstring, ptr @_ZL11deathstring ; 4 uses
  %i.g = tail call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.g, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %1, ptr noundef nonnull %i.f)
  %i.h = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.7, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 49, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i.i167 = icmp eq ptr %i.l, null
  br i1 %.not.i.i167, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %17 = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.o = icmp eq i32 %17, 1
  br i1 %i.o, label %bb.e, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.m, align 8
  invoke void %i.r(ptr noundef %i.s)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.c, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.d, %bb.e
  br i1 %i.h, label %bb.h, label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  br label %bb.ak

bb.h:                                             ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.w = load ptr, ptr %i.a, align 8              ; 9 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  switch i32 %i.aa, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread [
    i32 0, label %bb.l
    i32 1, label %bb.p
  ]

bb.k:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177

bb.l:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.ah = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ag)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i1 noundef zeroext %i.ah)
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  br i1 %i.al, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit

bb.p:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.an = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %i.an, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = extractvalue { ptr, i32 } %i.ao, 1
  %i.ar = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.as = icmp eq i32 %i.aq, %i.ar
  %i.at = call ptr @__cxa_begin_catch(ptr %i.ap) #21 ; 2 uses
  br i1 %i.as, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.2, i32 noundef 49)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.av = load ptr, ptr %2, align 8
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #21
  %i.ba = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.8, ptr noundef %i.av, ptr noundef %i.az) #23 ; 0 uses
  %i.bb = load ptr, ptr %2, align 8               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.u
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bg = load ptr, ptr @stderr, align 8
  %i.bh = call i32 @fflush(ptr noundef %i.bg)     ; 0 uses
  %i.bi = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i32 noundef 1)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v, %bb.q, %bb.aa
  %i.bm = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i32 noundef 2)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bq = load ptr, ptr %i.am, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #22
  unreachable

bb.z:                                             ; preds = %bb.s
  %i.bv = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i32 noundef 1)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ah unwind label %bb.fw

bb.ac:                                            ; preds = %bb.aa, %bb.w
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %bb.t
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.ae ], [ %i.cb, %bb.ad ]
  invoke void @__cxa_end_catch()
          to label %bb.ah unwind label %bb.fw

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ab, %bb.ac
  %.pn87 = phi { ptr, i32 } [ %i.ca, %bb.ac ], [ %i.bz, %bb.ab ], [ %i.cd, %bb.af ], [ %.pn, %bb.ag ]
  %i.ce = load ptr, ptr %i.am, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.j, %bb.o, %bb.x
  %i.cj = load ptr, ptr %i.w, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %.thread

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o
  %i.cm = load ptr, ptr %i.w, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %bb.aj

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177: ; preds = %bb.ah, %bb.k
  %.pn89 = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %.pn87, %bb.ah ]
  %i.cp = load ptr, ptr %i.w, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %bb.ak

.thread:                                          ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.as

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.al

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177, %bb.g
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177 ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.fv

bb.al:                                            ; preds = %bb.aj, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cs = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 49, ptr noundef %i.cs)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ct = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i178 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i178, label %_ZN7testing7MessageD2Ev.exit180, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.ao
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit180

_ZN7testing7MessageD2Ev.exit180:                  ; preds = %bb.ao, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.as

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn92 = phi { ptr, i32 } [ %i.cy, %bb.aq ], [ %i.cx, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cz = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i181 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i181, label %_ZN7testing7MessageD2Ev.exit183, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182: ; preds = %bb.ar
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(128) %i.cz) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit183

_ZN7testing7MessageD2Ev.exit183:                  ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.fv

bb.as:                                            ; preds = %.thread, %_ZN7testing7MessageD2Ev.exit180
  %i.dd = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.dd, label %bb.at, label %bb.cd

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %5, ptr noundef nonnull %i.f)
  %i.de = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.2, i32 noundef 50, ptr noundef nonnull %i.b)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i184, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185: ; preds = %bb.au
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  %.not.i.i186 = icmp eq ptr %i.di, null
  br i1 %.not.i.i186, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187, label %bb.av

bb.av:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %18 = atomicrmw sub ptr %i.dk, i32 1 acq_rel, align 4
  %i.dl = icmp eq i32 %18, 1
  br i1 %i.dl, label %bb.aw, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187

bb.aw:                                            ; preds = %bb.av
  %i.dm = load ptr, ptr %i.df, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = load ptr, ptr %i.dj, align 8
  invoke void %i.do(ptr noundef %i.dp)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187 unwind label %bb.ax, !inline_history !0

bb.ax:                                            ; preds = %bb.aw
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187: ; preds = %bb.au, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185, %bb.av, %bb.aw
  br i1 %i.de, label %bb.az, label %bb.cb

bb.ay:                                            ; preds = %bb.at
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  br label %bb.cc

bb.az:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187
  %i.dt = load ptr, ptr %i.b, align 8             ; 9 uses
  %.not94 = icmp eq ptr %i.dt, null
  br i1 %.not94, label %.thread276, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef i32 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  switch i32 %i.dx, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread [
    i32 0, label %bb.bd
    i32 1, label %bb.bh
  ]

bb.bc:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.ba
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200

bb.bd:                                            ; preds = %bb.bb
  %i.dz = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef i32 %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.dz)
          to label %bb.be unwind label %bb.bc

bb.be:                                            ; preds = %bb.bd
  %i.ee = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ed)
          to label %bb.bf unwind label %bb.bc

bb.bf:                                            ; preds = %bb.be
  %i.ef = load ptr, ptr %i.dz, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = invoke noundef zeroext i1 %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i1 noundef zeroext %i.ee)
          to label %bb.bg unwind label %bb.bc

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ei, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197

bb.bh:                                            ; preds = %bb.bb
  %i.ej = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ek = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.ek, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.el = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  %i.en = extractvalue { ptr, i32 } %i.el, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ep = icmp eq i32 %i.en, %i.eo
  %i.eq = call ptr @__cxa_begin_catch(ptr %i.em) #21 ; 2 uses
  br i1 %i.ep, label %bb.bl, label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.er = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.2, i32 noundef 50)
          to label %bb.bm unwind label %bb.bv

bb.bm:                                            ; preds = %bb.bl
  %i.es = load ptr, ptr %6, align 8
  %i.et = load ptr, ptr %i.eq, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call noundef ptr %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.eq) #21
  %i.ex = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.8, ptr noundef %i.es, ptr noundef %i.ew) #23 ; 0 uses
  %i.ey = load ptr, ptr %6, align 8               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.bm
  %i.fb = load i64, ptr %i.ez, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fd = load ptr, ptr @stderr, align 8
  %i.fe = call i32 @fflush(ptr noundef %i.fd)     ; 0 uses
  %i.ff = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, i32 noundef 1)
          to label %bb.bn unwind label %bb.bw

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  invoke void @__cxa_end_catch()
          to label %bb.bo unwind label %bb.bx

bb.bo:                                            ; preds = %bb.bn, %bb.bi, %bb.bs
  %i.fj = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, i32 noundef 2)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.fn = load ptr, ptr %i.ej, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #22
  unreachable

bb.br:                                            ; preds = %bb.bk
  %i.fs = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8
  invoke void %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, i32 noundef 1)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_end_catch()
          to label %bb.bo unwind label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.fw

bb.bu:                                            ; preds = %bb.bs, %bb.bo
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bl
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.by

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bn
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw, %bb.bv
  %.pn95 = phi { ptr, i32 } [ %i.fz, %bb.bw ], [ %i.fy, %bb.bv ]
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.fw

bb.bz:                                            ; preds = %bb.bx, %bb.by, %bb.bt, %bb.bu
  %.pn99 = phi { ptr, i32 } [ %i.fx, %bb.bu ], [ %i.fw, %bb.bt ], [ %i.ga, %bb.bx ], [ %.pn95, %bb.by ]
  %i.gb = load ptr, ptr %i.ej, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8
  invoke void %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread: ; preds = %bb.bb, %bb.bg, %bb.bp
  %i.gg = load ptr, ptr %i.dt, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #21, !inline_history !1
  br label %.thread276

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197: ; preds = %bb.bg
  %i.gj = load ptr, ptr %i.dt, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #21, !inline_history !1
  br label %bb.cb

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200: ; preds = %bb.bz, %bb.bc
  %.pn101 = phi { ptr, i32 } [ %i.dy, %bb.bc ], [ %.pn99, %bb.bz ]
  %i.gm = load ptr, ptr %i.dt, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #21, !inline_history !1
  br label %bb.cc

.thread276:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ck

bb.cb:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.cd

bb.cc:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200, %bb.ay
  %.pn101.pn = phi { ptr, i32 } [ %.pn101, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200 ], [ %i.ds, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.fv

bb.cd:                                            ; preds = %bb.cb, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.gp = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 50, ptr noundef %i.gp)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.gq = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i201, label %_ZN7testing7MessageD2Ev.exit203, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202: ; preds = %bb.cg
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(128) %i.gq) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit203

_ZN7testing7MessageD2Ev.exit203:                  ; preds = %bb.cg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ck

bb.ch:                                            ; preds = %bb.ce, %bb.cd
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cf
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pn104 = phi { ptr, i32 } [ %i.gv, %bb.ci ], [ %i.gu, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.gw = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i204, label %_ZN7testing7MessageD2Ev.exit206, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %bb.cj
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(128) %i.gw) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit206

_ZN7testing7MessageD2Ev.exit206:                  ; preds = %bb.cj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.fv

bb.ck:                                            ; preds = %.thread276, %_ZN7testing7MessageD2Ev.exit203
  %i.ha = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.ha, label %bb.cl, label %bb.dv

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull %i.f)
  %i.hb = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.10, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.2, i32 noundef 51, ptr noundef nonnull %i.c)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %9, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8            ; 2 uses
  %.not.i.i.i207 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i207, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208: ; preds = %bb.cm
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  %.not.i.i209 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i209, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210, label %bb.cn

bb.cn:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8
  %19 = atomicrmw sub ptr %i.hh, i32 1 acq_rel, align 4
  %i.hi = icmp eq i32 %19, 1
  br i1 %i.hi, label %bb.co, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210

bb.co:                                            ; preds = %bb.cn
  %i.hj = load ptr, ptr %i.hc, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = load ptr, ptr %i.hg, align 8
  invoke void %i.hl(ptr noundef %i.hm)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210 unwind label %bb.cp, !inline_history !0

bb.cp:                                            ; preds = %bb.co
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210: ; preds = %bb.cm, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208, %bb.cn, %bb.co
  br i1 %i.hb, label %bb.cr, label %bb.dt

bb.cq:                                            ; preds = %bb.cl
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  br label %bb.du

bb.cr:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210
  %i.hq = load ptr, ptr %i.c, align 8             ; 9 uses
  %.not106 = icmp eq ptr %i.hq, null
  br i1 %.not106, label %.thread281, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = invoke noundef i32 %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %i.hq)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  switch i32 %i.hu, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread [
    i32 0, label %bb.cv
    i32 1, label %bb.cz
  ]

bb.cu:                                            ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cs
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223

bb.cv:                                            ; preds = %bb.ct
  %i.hw = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = invoke noundef i32 %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
          to label %bb.cw unwind label %bb.cu

bb.cw:                                            ; preds = %bb.cv
  %i.ib = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ia)
          to label %bb.cx unwind label %bb.cu

bb.cx:                                            ; preds = %bb.cw
  %i.ic = load ptr, ptr %i.hw, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = invoke noundef zeroext i1 %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, i1 noundef zeroext %i.ib)
          to label %bb.cy unwind label %bb.cu

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.if, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220

bb.cz:                                            ; preds = %bb.ct
  %i.ig = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ih = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %bb.cz
  br i1 %i.ih, label %bb.db, label %bb.dg

bb.db:                                            ; preds = %bb.da
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.dc:                                            ; preds = %bb.cz
  %i.ii = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  %i.ik = extractvalue { ptr, i32 } %i.ii, 1
  %i.il = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.im = icmp eq i32 %i.ik, %i.il
  %i.in = call ptr @__cxa_begin_catch(ptr %i.ij) #21 ; 2 uses
  br i1 %i.im, label %bb.dd, label %bb.dj

bb.dd:                                            ; preds = %bb.dc
  %i.io = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.2, i32 noundef 51)
          to label %bb.de unwind label %bb.dn

bb.de:                                            ; preds = %bb.dd
  %i.ip = load ptr, ptr %10, align 8
  %i.iq = load ptr, ptr %i.in, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef ptr %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.in) #21
  %i.iu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.io, ptr noundef nonnull @.str.8, ptr noundef %i.ip, ptr noundef %i.it) #23 ; 0 uses
  %i.iv = load ptr, ptr %10, align 8              ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.de
  %i.iy = load i64, ptr %i.iw, align 8
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.ja = load ptr, ptr @stderr, align 8
  %i.jb = call i32 @fflush(ptr noundef %i.ja)     ; 0 uses
  %i.jc = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  %i.jf = load ptr, ptr %i.je, align 8
  invoke void %i.jf(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, i32 noundef 1)
          to label %bb.df unwind label %bb.do

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  invoke void @__cxa_end_catch()
          to label %bb.dg unwind label %bb.dp

bb.dg:                                            ; preds = %bb.df, %bb.da, %bb.dk
  %i.jg = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jj = load ptr, ptr %i.ji, align 8
  invoke void %i.jj(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, i32 noundef 2)
          to label %bb.dh unwind label %bb.dm

bb.dh:                                            ; preds = %bb.dg
  %i.jk = load ptr, ptr %i.ig, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8
  invoke void %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #22
  unreachable

bb.dj:                                            ; preds = %bb.dc
  %i.jp = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %i.js = load ptr, ptr %i.jr, align 8
  invoke void %i.js(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, i32 noundef 1)
          to label %bb.dk unwind label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  invoke void @__cxa_end_catch()
          to label %bb.dg unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dr unwind label %bb.fw

bb.dm:                                            ; preds = %bb.dk, %bb.dg
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dn:                                            ; preds = %bb.dd
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.dq

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %bb.df
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do, %bb.dn
  %.pn107 = phi { ptr, i32 } [ %i.jw, %bb.do ], [ %i.jv, %bb.dn ]
  invoke void @__cxa_end_catch()
          to label %bb.dr unwind label %bb.fw

bb.dr:                                            ; preds = %bb.dp, %bb.dq, %bb.dl, %bb.dm
  %.pn111 = phi { ptr, i32 } [ %i.ju, %bb.dm ], [ %i.jt, %bb.dl ], [ %i.jx, %bb.dp ], [ %.pn107, %bb.dq ]
  %i.jy = load ptr, ptr %i.ig, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  %i.ka = load ptr, ptr %i.jz, align 8
  invoke void %i.ka(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223 unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread: ; preds = %bb.ct, %bb.cy, %bb.dh
  %i.kd = load ptr, ptr %i.hq, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.hq) #21, !inline_history !1
  br label %.thread281

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220: ; preds = %bb.cy
  %i.kg = load ptr, ptr %i.hq, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.hq) #21, !inline_history !1
  br label %bb.dt

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223: ; preds = %bb.dr, %bb.cu
  %.pn113 = phi { ptr, i32 } [ %i.hv, %bb.cu ], [ %.pn111, %bb.dr ]
  %i.kj = load ptr, ptr %i.hq, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(8) %i.hq) #21, !inline_history !1
  br label %bb.du

.thread281:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.ec

bb.dt:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.dv

bb.du:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223, %bb.cq
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223 ], [ %i.hp, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.fv

bb.dv:                                            ; preds = %bb.dt, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.km = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.dw unwind label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 51, ptr noundef %i.km)
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.dy unwind label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.kn = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i224 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i224, label %_ZN7testing7MessageD2Ev.exit226, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225: ; preds = %bb.dy
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(128) %i.kn) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit226

_ZN7testing7MessageD2Ev.exit226:                  ; preds = %bb.dy, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ec

bb.dz:                                            ; preds = %bb.dw, %bb.dv
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dx
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pn116 = phi { ptr, i32 } [ %i.ks, %bb.ea ], [ %i.kr, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.kt = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i227 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i227, label %_ZN7testing7MessageD2Ev.exit229, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228: ; preds = %bb.eb
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(128) %i.kt) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit229

_ZN7testing7MessageD2Ev.exit229:                  ; preds = %bb.eb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.fv

bb.ec:                                            ; preds = %.thread281, %_ZN7testing7MessageD2Ev.exit226
  %i.kx = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.kx, label %bb.ed, label %bb.fn

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %13, ptr noundef nonnull %i.f)
  %i.ky = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.11, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull @.str.2, i32 noundef 52, ptr noundef nonnull %i.d)
          to label %bb.ee unwind label %bb.ei

bb.ee:                                            ; preds = %bb.ed
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %13, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8            ; 2 uses
  %.not.i.i.i230 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i230, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231: ; preds = %bb.ee
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8
  %.not.i.i232 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i232, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233, label %bb.ef

bb.ef:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8
  %20 = atomicrmw sub ptr %i.le, i32 1 acq_rel, align 4
  %i.lf = icmp eq i32 %20, 1
  br i1 %i.lf, label %bb.eg, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233

bb.eg:                                            ; preds = %bb.ef
  %i.lg = load ptr, ptr %i.kz, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = load ptr, ptr %i.ld, align 8
  invoke void %i.li(ptr noundef %i.lj)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233 unwind label %bb.eh, !inline_history !0

bb.eh:                                            ; preds = %bb.eg
  %i.lk = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  call void @__clang_call_terminate(ptr %i.ll) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233: ; preds = %bb.ee, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231, %bb.ef, %bb.eg
  br i1 %i.ky, label %bb.ej, label %bb.fl

bb.ei:                                            ; preds = %bb.ed
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  br label %bb.fm

bb.ej:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233
  %i.ln = load ptr, ptr %i.d, align 8             ; 9 uses
  %.not118 = icmp eq ptr %i.ln, null
  br i1 %.not118, label %.thread286, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = invoke noundef i32 %i.lq(ptr noundef nonnull align 8 dereferenceable(8) %i.ln)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %bb.ek
  switch i32 %i.lr, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread [
    i32 0, label %bb.en
    i32 1, label %bb.er
  ]

bb.em:                                            ; preds = %bb.ep, %bb.eo, %bb.en, %bb.ek
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246

bb.en:                                            ; preds = %bb.el
  %i.lt = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = invoke noundef i32 %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %i.lt)
          to label %bb.eo unwind label %bb.em

bb.eo:                                            ; preds = %bb.en
  %i.ly = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.lx)
          to label %bb.ep unwind label %bb.em

bb.ep:                                            ; preds = %bb.eo
  %i.lz = load ptr, ptr %i.lt, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = invoke noundef zeroext i1 %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, i1 noundef zeroext %i.ly)
          to label %bb.eq unwind label %bb.em

bb.eq:                                            ; preds = %bb.ep
  br i1 %i.mc, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243

bb.er:                                            ; preds = %bb.el
  %i.md = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.me = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.es unwind label %bb.eu

bb.es:                                            ; preds = %bb.er
  br i1 %i.me, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.eu:                                            ; preds = %bb.er
  %i.mf = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.mg = extractvalue { ptr, i32 } %i.mf, 0
  %i.mh = extractvalue { ptr, i32 } %i.mf, 1
  %i.mi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.mj = icmp eq i32 %i.mh, %i.mi
  %i.mk = call ptr @__cxa_begin_catch(ptr %i.mg) #21 ; 2 uses
  br i1 %i.mj, label %bb.ev, label %bb.fb

bb.ev:                                            ; preds = %bb.eu
  %i.ml = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.2, i32 noundef 52)
          to label %bb.ew unwind label %bb.ff

bb.ew:                                            ; preds = %bb.ev
  %i.mm = load ptr, ptr %14, align 8
  %i.mn = load ptr, ptr %i.mk, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = call noundef ptr %i.mp(ptr noundef nonnull align 8 dereferenceable(8) %i.mk) #21
  %i.mr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ml, ptr noundef nonnull @.str.8, ptr noundef %i.mm, ptr noundef %i.mq) #23 ; 0 uses
  %i.ms = load ptr, ptr %14, align 8              ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.ew
  %i.mv = load i64, ptr %i.mt, align 8
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.mx = load ptr, ptr @stderr, align 8
  %i.my = call i32 @fflush(ptr noundef %i.mx)     ; 0 uses
  %i.mz = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.nc = load ptr, ptr %i.nb, align 8
  invoke void %i.nc(ptr noundef nonnull align 8 dereferenceable(8) %i.mz, i32 noundef 1)
          to label %bb.ex unwind label %bb.fg

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  invoke void @__cxa_end_catch()
          to label %bb.ey unwind label %bb.fh

bb.ey:                                            ; preds = %bb.ex, %bb.es, %bb.fc
  %i.nd = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.ng = load ptr, ptr %i.nf, align 8
  invoke void %i.ng(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, i32 noundef 2)
          to label %bb.ez unwind label %bb.fe

bb.ez:                                            ; preds = %bb.ey
  %i.nh = load ptr, ptr %i.md, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  %i.nj = load ptr, ptr %i.ni, align 8
  invoke void %i.nj(ptr noundef nonnull align 8 dereferenceable(8) %i.md, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.nk = landingpad { ptr, i32 }
          catch ptr null
  %i.nl = extractvalue { ptr, i32 } %i.nk, 0
  call void @__clang_call_terminate(ptr %i.nl) #22
  unreachable

bb.fb:                                            ; preds = %bb.eu
  %i.nm = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = load ptr, ptr %i.no, align 8
  invoke void %i.np(ptr noundef nonnull align 8 dereferenceable(8) %i.nm, i32 noundef 1)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  invoke void @__cxa_end_catch()
          to label %bb.ey unwind label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.nq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fj unwind label %bb.fw

bb.fe:                                            ; preds = %bb.fc, %bb.ey
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ff:                                            ; preds = %bb.ev
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.fi

bb.fg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ex
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg, %bb.ff
  %.pn119 = phi { ptr, i32 } [ %i.nt, %bb.fg ], [ %i.ns, %bb.ff ]
  invoke void @__cxa_end_catch()
          to label %bb.fj unwind label %bb.fw

end_hunk_0
begin_hunk_1_@_ZN26at_tests_static_array_Test8TestBodyEv:bb.a
  br label %bb.fv

bb.fu:                                            ; preds = %.thread286, %_ZN7testing7MessageD2Ev.exit249
  ret void

bb.fv:                                            ; preds = %bb.ak, %_ZN7testing7MessageD2Ev.exit183, %bb.cc, %_ZN7testing7MessageD2Ev.exit206, %bb.du, %_ZN7testing7MessageD2Ev.exit229, %bb.fm, %_ZN7testing7MessageD2Ev.exit252
  %.pn135.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %bb.ak ], [ %.pn92, %_ZN7testing7MessageD2Ev.exit183 ], [ %.pn128, %_ZN7testing7MessageD2Ev.exit252 ], [ %.pn125.pn, %bb.fm ], [ %.pn116, %_ZN7testing7MessageD2Ev.exit229 ], [ %.pn113.pn, %bb.du ], [ %.pn104, %_ZN7testing7MessageD2Ev.exit206 ], [ %.pn101.pn, %bb.cc ]
  resume { ptr, i32 } %.pn135.pn.pn.pn.pn

bb.fw:                                            ; preds = %bb.fi, %bb.fd, %bb.dq, %bb.dl, %bb.by, %bb.bt, %bb.ag, %bb.ab
  %i.ou = landingpad { ptr, i32 }
          catch ptr null
  %i.ov = extractvalue { ptr, i32 } %i.ou, 0
  call void @__clang_call_terminate(ptr %i.ov) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #24
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZSt13set_terminatePFvvE(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv() local_unnamed_addr #0

declare noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.testing::Matcher") align 8 %0, ptr noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.testing::PolymorphicMatcher", align 16 ; 8 uses
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN7testing13ContainsRegexIPKcEENS_18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc unwind label %bb.l     ; 4 uses

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.b, align 8, !noalias !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !15 ; 2 uses
  %i.f = load <2 x ptr>, ptr %2, align 16, !noalias !15
  store <2 x ptr> %i.f, ptr %i.c, align 8, !noalias !15
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !noalias !15
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !noalias !15
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !noalias !15
  br label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4, !noalias !15 ; 0 uses
  br label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_.exit.i

_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_.exit.i: ; preds = %bb.d, %bb.c, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i8, ptr %i.m, align 16, !range !9, !noalias !15, !noundef !10
  store i8 %i.n, ptr %i.l, align 8, !noalias !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.o, align 8, !alias.scope !15
  %i.p = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.e unwind label %bb.l       ; 3 uses

bb.e:                                             ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.p, align 4, !noalias !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = ptrtoint ptr %i.b to i64
  store i64 %i.s, ptr %i.r, align 8, !noalias !15
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !15
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !alias.scope !15
  %i.t = load ptr, ptr %i.d, align 8              ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #21, !inline_history !14
  %i.ac = load ptr, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #21, !inline_history !14
  br label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.af = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %bb.i ], [ %i.ah, %bb.j ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.k, label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev.exit, !prof !11

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #21
  br label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev.exit

_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.l:                                             ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEE15MonomorphicImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_.exit.i, %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %1 = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.e, align 8
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit unwind label %bb.d, !inline_history !16

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #22
  unreachable
}

declare noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #9

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

declare void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23at_tests_std_array_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %1 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %5 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %13 = alloca %"class.testing::Matcher", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = tail call noundef ptr @_ZSt13set_terminatePFvvE(ptr noundef nonnull @"_ZZN23at_tests_std_array_Test8TestBodyEvEN3$_08__invokeEv") #21
  %.not.i = icmp eq ptr %i.e, null
  %i.f = select i1 %.not.i, ptr @_ZL32failed_set_terminate_deathstring, ptr @_ZL11deathstring ; 4 uses
  %i.g = tail call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.g, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %1, ptr noundef nonnull %i.f)
  %i.h = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.7, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 72, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i.i167 = icmp eq ptr %i.l, null
  br i1 %.not.i.i167, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %17 = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.o = icmp eq i32 %17, 1
  br i1 %i.o, label %bb.e, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.m, align 8
  invoke void %i.r(ptr noundef %i.s)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.c, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.d, %bb.e
  br i1 %i.h, label %bb.h, label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  br label %bb.ak

bb.h:                                             ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.w = load ptr, ptr %i.a, align 8              ; 9 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  switch i32 %i.aa, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread [
    i32 0, label %bb.l
    i32 1, label %bb.p
  ]

bb.k:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177

bb.l:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.ah = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ag)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i1 noundef zeroext %i.ah)
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  br i1 %i.al, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit

bb.p:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.an = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %i.an, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = extractvalue { ptr, i32 } %i.ao, 1
  %i.ar = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.as = icmp eq i32 %i.aq, %i.ar
  %i.at = call ptr @__cxa_begin_catch(ptr %i.ap) #21 ; 2 uses
  br i1 %i.as, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.2, i32 noundef 72)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.av = load ptr, ptr %2, align 8
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #21
  %i.ba = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.8, ptr noundef %i.av, ptr noundef %i.az) #23 ; 0 uses
  %i.bb = load ptr, ptr %2, align 8               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.u
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bg = load ptr, ptr @stderr, align 8
  %i.bh = call i32 @fflush(ptr noundef %i.bg)     ; 0 uses
  %i.bi = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i32 noundef 1)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v, %bb.q, %bb.aa
  %i.bm = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i32 noundef 2)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bq = load ptr, ptr %i.am, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #22
  unreachable

bb.z:                                             ; preds = %bb.s
  %i.bv = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i32 noundef 1)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ah unwind label %bb.fw

bb.ac:                                            ; preds = %bb.aa, %bb.w
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %bb.t
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.ae ], [ %i.cb, %bb.ad ]
  invoke void @__cxa_end_catch()
          to label %bb.ah unwind label %bb.fw

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ab, %bb.ac
  %.pn87 = phi { ptr, i32 } [ %i.ca, %bb.ac ], [ %i.bz, %bb.ab ], [ %i.cd, %bb.af ], [ %.pn, %bb.ag ]
  %i.ce = load ptr, ptr %i.am, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.j, %bb.o, %bb.x
  %i.cj = load ptr, ptr %i.w, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %.thread

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o
  %i.cm = load ptr, ptr %i.w, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %bb.aj

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177: ; preds = %bb.ah, %bb.k
  %.pn89 = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %.pn87, %bb.ah ]
  %i.cp = load ptr, ptr %i.w, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %bb.ak

.thread:                                          ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.as

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.al

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177, %bb.g
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177 ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.fv

bb.al:                                            ; preds = %bb.aj, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cs = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 72, ptr noundef %i.cs)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ct = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i178 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i178, label %_ZN7testing7MessageD2Ev.exit180, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.ao
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit180

_ZN7testing7MessageD2Ev.exit180:                  ; preds = %bb.ao, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.as

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn92 = phi { ptr, i32 } [ %i.cy, %bb.aq ], [ %i.cx, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cz = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i181 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i181, label %_ZN7testing7MessageD2Ev.exit183, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182: ; preds = %bb.ar
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(128) %i.cz) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit183

_ZN7testing7MessageD2Ev.exit183:                  ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.fv

bb.as:                                            ; preds = %.thread, %_ZN7testing7MessageD2Ev.exit180
  %i.dd = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.dd, label %bb.at, label %bb.cd

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %5, ptr noundef nonnull %i.f)
  %i.de = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.2, i32 noundef 73, ptr noundef nonnull %i.b)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i184, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185: ; preds = %bb.au
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  %.not.i.i186 = icmp eq ptr %i.di, null
  br i1 %.not.i.i186, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187, label %bb.av

bb.av:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %18 = atomicrmw sub ptr %i.dk, i32 1 acq_rel, align 4
  %i.dl = icmp eq i32 %18, 1
  br i1 %i.dl, label %bb.aw, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187

bb.aw:                                            ; preds = %bb.av
  %i.dm = load ptr, ptr %i.df, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = load ptr, ptr %i.dj, align 8
  invoke void %i.do(ptr noundef %i.dp)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187 unwind label %bb.ax, !inline_history !0

bb.ax:                                            ; preds = %bb.aw
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187: ; preds = %bb.au, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185, %bb.av, %bb.aw
  br i1 %i.de, label %bb.az, label %bb.cb

bb.ay:                                            ; preds = %bb.at
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  br label %bb.cc

bb.az:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187
  %i.dt = load ptr, ptr %i.b, align 8             ; 9 uses
  %.not94 = icmp eq ptr %i.dt, null
  br i1 %.not94, label %.thread276, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef i32 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  switch i32 %i.dx, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread [
    i32 0, label %bb.bd
    i32 1, label %bb.bh
  ]

bb.bc:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.ba
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200

bb.bd:                                            ; preds = %bb.bb
  %i.dz = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef i32 %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.dz)
          to label %bb.be unwind label %bb.bc

bb.be:                                            ; preds = %bb.bd
  %i.ee = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ed)
          to label %bb.bf unwind label %bb.bc

bb.bf:                                            ; preds = %bb.be
  %i.ef = load ptr, ptr %i.dz, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = invoke noundef zeroext i1 %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i1 noundef zeroext %i.ee)
          to label %bb.bg unwind label %bb.bc

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ei, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197

bb.bh:                                            ; preds = %bb.bb
  %i.ej = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ek = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.ek, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.el = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  %i.en = extractvalue { ptr, i32 } %i.el, 1
  %i.eo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ep = icmp eq i32 %i.en, %i.eo
  %i.eq = call ptr @__cxa_begin_catch(ptr %i.em) #21 ; 2 uses
  br i1 %i.ep, label %bb.bl, label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.er = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.2, i32 noundef 73)
          to label %bb.bm unwind label %bb.bv

bb.bm:                                            ; preds = %bb.bl
  %i.es = load ptr, ptr %6, align 8
  %i.et = load ptr, ptr %i.eq, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call noundef ptr %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.eq) #21
  %i.ex = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.8, ptr noundef %i.es, ptr noundef %i.ew) #23 ; 0 uses
  %i.ey = load ptr, ptr %6, align 8               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.bm
  %i.fb = load i64, ptr %i.ez, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fd = load ptr, ptr @stderr, align 8
  %i.fe = call i32 @fflush(ptr noundef %i.fd)     ; 0 uses
  %i.ff = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, i32 noundef 1)
          to label %bb.bn unwind label %bb.bw

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  invoke void @__cxa_end_catch()
          to label %bb.bo unwind label %bb.bx

bb.bo:                                            ; preds = %bb.bn, %bb.bi, %bb.bs
  %i.fj = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, i32 noundef 2)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.fn = load ptr, ptr %i.ej, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #22
  unreachable

bb.br:                                            ; preds = %bb.bk
  %i.fs = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8
  invoke void %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, i32 noundef 1)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_end_catch()
          to label %bb.bo unwind label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.fw

bb.bu:                                            ; preds = %bb.bs, %bb.bo
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bl
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.by

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bn
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw, %bb.bv
  %.pn95 = phi { ptr, i32 } [ %i.fz, %bb.bw ], [ %i.fy, %bb.bv ]
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.fw

bb.bz:                                            ; preds = %bb.bx, %bb.by, %bb.bt, %bb.bu
  %.pn99 = phi { ptr, i32 } [ %i.fx, %bb.bu ], [ %i.fw, %bb.bt ], [ %i.ga, %bb.bx ], [ %.pn95, %bb.by ]
  %i.gb = load ptr, ptr %i.ej, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8
  invoke void %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread: ; preds = %bb.bb, %bb.bg, %bb.bp
  %i.gg = load ptr, ptr %i.dt, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #21, !inline_history !1
  br label %.thread276

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197: ; preds = %bb.bg
  %i.gj = load ptr, ptr %i.dt, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #21, !inline_history !1
  br label %bb.cb

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200: ; preds = %bb.bz, %bb.bc
  %.pn101 = phi { ptr, i32 } [ %i.dy, %bb.bc ], [ %.pn99, %bb.bz ]
  %i.gm = load ptr, ptr %i.dt, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #21, !inline_history !1
  br label %bb.cc

.thread276:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ck

bb.cb:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.cd

bb.cc:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200, %bb.ay
  %.pn101.pn = phi { ptr, i32 } [ %.pn101, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200 ], [ %i.ds, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.fv

bb.cd:                                            ; preds = %bb.cb, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.gp = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 73, ptr noundef %i.gp)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.gq = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i201, label %_ZN7testing7MessageD2Ev.exit203, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202: ; preds = %bb.cg
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(128) %i.gq) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit203

_ZN7testing7MessageD2Ev.exit203:                  ; preds = %bb.cg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ck

bb.ch:                                            ; preds = %bb.ce, %bb.cd
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cf
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pn104 = phi { ptr, i32 } [ %i.gv, %bb.ci ], [ %i.gu, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.gw = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i204, label %_ZN7testing7MessageD2Ev.exit206, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %bb.cj
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(128) %i.gw) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit206

_ZN7testing7MessageD2Ev.exit206:                  ; preds = %bb.cj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.fv

bb.ck:                                            ; preds = %.thread276, %_ZN7testing7MessageD2Ev.exit203
  %i.ha = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.ha, label %bb.cl, label %bb.dv

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull %i.f)
  %i.hb = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.10, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.2, i32 noundef 74, ptr noundef nonnull %i.c)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %9, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8            ; 2 uses
  %.not.i.i.i207 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i207, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208: ; preds = %bb.cm
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  %.not.i.i209 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i209, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210, label %bb.cn

bb.cn:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8
  %19 = atomicrmw sub ptr %i.hh, i32 1 acq_rel, align 4
  %i.hi = icmp eq i32 %19, 1
  br i1 %i.hi, label %bb.co, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210

bb.co:                                            ; preds = %bb.cn
  %i.hj = load ptr, ptr %i.hc, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = load ptr, ptr %i.hg, align 8
  invoke void %i.hl(ptr noundef %i.hm)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210 unwind label %bb.cp, !inline_history !0

bb.cp:                                            ; preds = %bb.co
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210: ; preds = %bb.cm, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208, %bb.cn, %bb.co
  br i1 %i.hb, label %bb.cr, label %bb.dt

bb.cq:                                            ; preds = %bb.cl
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  br label %bb.du

bb.cr:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210
  %i.hq = load ptr, ptr %i.c, align 8             ; 9 uses
  %.not106 = icmp eq ptr %i.hq, null
  br i1 %.not106, label %.thread281, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = invoke noundef i32 %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %i.hq)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  switch i32 %i.hu, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread [
    i32 0, label %bb.cv
    i32 1, label %bb.cz
  ]

bb.cu:                                            ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cs
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223

bb.cv:                                            ; preds = %bb.ct
  %i.hw = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = invoke noundef i32 %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
          to label %bb.cw unwind label %bb.cu

bb.cw:                                            ; preds = %bb.cv
  %i.ib = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ia)
          to label %bb.cx unwind label %bb.cu

bb.cx:                                            ; preds = %bb.cw
  %i.ic = load ptr, ptr %i.hw, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = invoke noundef zeroext i1 %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, i1 noundef zeroext %i.ib)
          to label %bb.cy unwind label %bb.cu

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.if, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220

bb.cz:                                            ; preds = %bb.ct
  %i.ig = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ih = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %bb.cz
  br i1 %i.ih, label %bb.db, label %bb.dg

bb.db:                                            ; preds = %bb.da
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.dc:                                            ; preds = %bb.cz
  %i.ii = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  %i.ik = extractvalue { ptr, i32 } %i.ii, 1
  %i.il = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.im = icmp eq i32 %i.ik, %i.il
  %i.in = call ptr @__cxa_begin_catch(ptr %i.ij) #21 ; 2 uses
  br i1 %i.im, label %bb.dd, label %bb.dj

bb.dd:                                            ; preds = %bb.dc
  %i.io = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.2, i32 noundef 74)
          to label %bb.de unwind label %bb.dn

bb.de:                                            ; preds = %bb.dd
  %i.ip = load ptr, ptr %10, align 8
  %i.iq = load ptr, ptr %i.in, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef ptr %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.in) #21
  %i.iu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.io, ptr noundef nonnull @.str.8, ptr noundef %i.ip, ptr noundef %i.it) #23 ; 0 uses
  %i.iv = load ptr, ptr %10, align 8              ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.de
  %i.iy = load i64, ptr %i.iw, align 8
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.ja = load ptr, ptr @stderr, align 8
  %i.jb = call i32 @fflush(ptr noundef %i.ja)     ; 0 uses
  %i.jc = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  %i.jf = load ptr, ptr %i.je, align 8
  invoke void %i.jf(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, i32 noundef 1)
          to label %bb.df unwind label %bb.do

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  invoke void @__cxa_end_catch()
          to label %bb.dg unwind label %bb.dp

bb.dg:                                            ; preds = %bb.df, %bb.da, %bb.dk
  %i.jg = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jj = load ptr, ptr %i.ji, align 8
  invoke void %i.jj(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, i32 noundef 2)
          to label %bb.dh unwind label %bb.dm

bb.dh:                                            ; preds = %bb.dg
  %i.jk = load ptr, ptr %i.ig, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8
  invoke void %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #22
  unreachable

bb.dj:                                            ; preds = %bb.dc
  %i.jp = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %i.js = load ptr, ptr %i.jr, align 8
  invoke void %i.js(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, i32 noundef 1)
          to label %bb.dk unwind label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  invoke void @__cxa_end_catch()
          to label %bb.dg unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dr unwind label %bb.fw

bb.dm:                                            ; preds = %bb.dk, %bb.dg
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dn:                                            ; preds = %bb.dd
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.dq

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %bb.df
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do, %bb.dn
  %.pn107 = phi { ptr, i32 } [ %i.jw, %bb.do ], [ %i.jv, %bb.dn ]
  invoke void @__cxa_end_catch()
          to label %bb.dr unwind label %bb.fw

bb.dr:                                            ; preds = %bb.dp, %bb.dq, %bb.dl, %bb.dm
  %.pn111 = phi { ptr, i32 } [ %i.ju, %bb.dm ], [ %i.jt, %bb.dl ], [ %i.jx, %bb.dp ], [ %.pn107, %bb.dq ]
  %i.jy = load ptr, ptr %i.ig, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  %i.ka = load ptr, ptr %i.jz, align 8
  invoke void %i.ka(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223 unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread: ; preds = %bb.ct, %bb.cy, %bb.dh
  %i.kd = load ptr, ptr %i.hq, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.hq) #21, !inline_history !1
  br label %.thread281

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220: ; preds = %bb.cy
  %i.kg = load ptr, ptr %i.hq, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.hq) #21, !inline_history !1
  br label %bb.dt

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223: ; preds = %bb.dr, %bb.cu
  %.pn113 = phi { ptr, i32 } [ %i.hv, %bb.cu ], [ %.pn111, %bb.dr ]
  %i.kj = load ptr, ptr %i.hq, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(8) %i.hq) #21, !inline_history !1
  br label %bb.du

.thread281:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.ec

bb.dt:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.dv

bb.du:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223, %bb.cq
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223 ], [ %i.hp, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.fv

bb.dv:                                            ; preds = %bb.dt, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.km = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.dw unwind label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 74, ptr noundef %i.km)
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.dy unwind label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.kn = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i224 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i224, label %_ZN7testing7MessageD2Ev.exit226, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225: ; preds = %bb.dy
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(128) %i.kn) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit226

_ZN7testing7MessageD2Ev.exit226:                  ; preds = %bb.dy, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ec

bb.dz:                                            ; preds = %bb.dw, %bb.dv
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dx
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pn116 = phi { ptr, i32 } [ %i.ks, %bb.ea ], [ %i.kr, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.kt = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i227 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i227, label %_ZN7testing7MessageD2Ev.exit229, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228: ; preds = %bb.eb
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(128) %i.kt) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit229

_ZN7testing7MessageD2Ev.exit229:                  ; preds = %bb.eb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.fv

bb.ec:                                            ; preds = %.thread281, %_ZN7testing7MessageD2Ev.exit226
  %i.kx = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.kx, label %bb.ed, label %bb.fn

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %13, ptr noundef nonnull %i.f)
  %i.ky = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.11, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull @.str.2, i32 noundef 75, ptr noundef nonnull %i.d)
          to label %bb.ee unwind label %bb.ei

bb.ee:                                            ; preds = %bb.ed
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %13, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8            ; 2 uses
  %.not.i.i.i230 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i230, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231: ; preds = %bb.ee
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8
  %.not.i.i232 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i232, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233, label %bb.ef

bb.ef:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8
  %20 = atomicrmw sub ptr %i.le, i32 1 acq_rel, align 4
  %i.lf = icmp eq i32 %20, 1
  br i1 %i.lf, label %bb.eg, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233

bb.eg:                                            ; preds = %bb.ef
  %i.lg = load ptr, ptr %i.kz, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = load ptr, ptr %i.ld, align 8
  invoke void %i.li(ptr noundef %i.lj)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233 unwind label %bb.eh, !inline_history !0

bb.eh:                                            ; preds = %bb.eg
  %i.lk = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  call void @__clang_call_terminate(ptr %i.ll) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233: ; preds = %bb.ee, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231, %bb.ef, %bb.eg
  br i1 %i.ky, label %bb.ej, label %bb.fl

bb.ei:                                            ; preds = %bb.ed
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  br label %bb.fm

bb.ej:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233
  %i.ln = load ptr, ptr %i.d, align 8             ; 9 uses
  %.not118 = icmp eq ptr %i.ln, null
  br i1 %.not118, label %.thread286, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = invoke noundef i32 %i.lq(ptr noundef nonnull align 8 dereferenceable(8) %i.ln)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %bb.ek
  switch i32 %i.lr, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread [
    i32 0, label %bb.en
    i32 1, label %bb.er
  ]

bb.em:                                            ; preds = %bb.ep, %bb.eo, %bb.en, %bb.ek
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246

bb.en:                                            ; preds = %bb.el
  %i.lt = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = invoke noundef i32 %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %i.lt)
          to label %bb.eo unwind label %bb.em

bb.eo:                                            ; preds = %bb.en
  %i.ly = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.lx)
          to label %bb.ep unwind label %bb.em

bb.ep:                                            ; preds = %bb.eo
  %i.lz = load ptr, ptr %i.lt, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = invoke noundef zeroext i1 %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, i1 noundef zeroext %i.ly)
          to label %bb.eq unwind label %bb.em

bb.eq:                                            ; preds = %bb.ep
  br i1 %i.mc, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243

bb.er:                                            ; preds = %bb.el
  %i.md = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.me = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.es unwind label %bb.eu

bb.es:                                            ; preds = %bb.er
  br i1 %i.me, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.eu:                                            ; preds = %bb.er
  %i.mf = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.mg = extractvalue { ptr, i32 } %i.mf, 0
  %i.mh = extractvalue { ptr, i32 } %i.mf, 1
  %i.mi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.mj = icmp eq i32 %i.mh, %i.mi
  %i.mk = call ptr @__cxa_begin_catch(ptr %i.mg) #21 ; 2 uses
  br i1 %i.mj, label %bb.ev, label %bb.fb

bb.ev:                                            ; preds = %bb.eu
  %i.ml = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.2, i32 noundef 75)
          to label %bb.ew unwind label %bb.ff

bb.ew:                                            ; preds = %bb.ev
  %i.mm = load ptr, ptr %14, align 8
  %i.mn = load ptr, ptr %i.mk, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = call noundef ptr %i.mp(ptr noundef nonnull align 8 dereferenceable(8) %i.mk) #21
  %i.mr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ml, ptr noundef nonnull @.str.8, ptr noundef %i.mm, ptr noundef %i.mq) #23 ; 0 uses
  %i.ms = load ptr, ptr %14, align 8              ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.ew
  %i.mv = load i64, ptr %i.mt, align 8
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.mx = load ptr, ptr @stderr, align 8
  %i.my = call i32 @fflush(ptr noundef %i.mx)     ; 0 uses
  %i.mz = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.nc = load ptr, ptr %i.nb, align 8
  invoke void %i.nc(ptr noundef nonnull align 8 dereferenceable(8) %i.mz, i32 noundef 1)
          to label %bb.ex unwind label %bb.fg

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  invoke void @__cxa_end_catch()
          to label %bb.ey unwind label %bb.fh

bb.ey:                                            ; preds = %bb.ex, %bb.es, %bb.fc
  %i.nd = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.ng = load ptr, ptr %i.nf, align 8
  invoke void %i.ng(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, i32 noundef 2)
          to label %bb.ez unwind label %bb.fe

bb.ez:                                            ; preds = %bb.ey
  %i.nh = load ptr, ptr %i.md, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  %i.nj = load ptr, ptr %i.ni, align 8
  invoke void %i.nj(ptr noundef nonnull align 8 dereferenceable(8) %i.md, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.nk = landingpad { ptr, i32 }
          catch ptr null
  %i.nl = extractvalue { ptr, i32 } %i.nk, 0
  call void @__clang_call_terminate(ptr %i.nl) #22
  unreachable

bb.fb:                                            ; preds = %bb.eu
  %i.nm = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = load ptr, ptr %i.no, align 8
  invoke void %i.np(ptr noundef nonnull align 8 dereferenceable(8) %i.nm, i32 noundef 1)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  invoke void @__cxa_end_catch()
          to label %bb.ey unwind label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.nq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fj unwind label %bb.fw

bb.fe:                                            ; preds = %bb.fc, %bb.ey
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ff:                                            ; preds = %bb.ev
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.fi

bb.fg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ex
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg, %bb.ff
  %.pn119 = phi { ptr, i32 } [ %i.nt, %bb.fg ], [ %i.ns, %bb.ff ]
  invoke void @__cxa_end_catch()
          to label %bb.fj unwind label %bb.fw

bb.fj:                                            ; preds = %bb.fh, %bb.fi, %bb.fd, %bb.fe
  %.pn123 = phi { ptr, i32 } [ %i.nr, %bb.fe ], [ %i.nq, %bb.fd ], [ %i.nu, %bb.fh ], [ %.pn119, %bb.fi ]
  %i.nv = load ptr, ptr %i.md, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 40
  %i.nx = load ptr, ptr %i.nw, align 8
  invoke void %i.nx(ptr noundef nonnull align 8 dereferenceable(8) %i.md, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ny = landingpad { ptr, i32 }
          catch ptr null
  %i.nz = extractvalue { ptr, i32 } %i.ny, 0
  call void @__clang_call_terminate(ptr %i.nz) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread: ; preds = %bb.el, %bb.eq, %bb.ez
  %i.oa = load ptr, ptr %i.ln, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8
  call void %i.oc(ptr noundef nonnull align 8 dereferenceable(8) %i.ln) #21, !inline_history !1
  br label %.thread286

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243: ; preds = %bb.eq
  %i.od = load ptr, ptr %i.ln, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dereferenceable(8) %i.ln) #21, !inline_history !1
  br label %bb.fl

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246: ; preds = %bb.fj, %bb.em
  %.pn125 = phi { ptr, i32 } [ %i.ls, %bb.em ], [ %.pn123, %bb.fj ]
  %i.og = load ptr, ptr %i.ln, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(8) %i.ln) #21, !inline_history !1
  br label %bb.fm

.thread286:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.fu

bb.fl:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.fn

bb.fm:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246, %bb.ei
  %.pn125.pn = phi { ptr, i32 } [ %.pn125, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246 ], [ %i.lm, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.fv

bb.fn:                                            ; preds = %bb.fl, %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.oj = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.fo unwind label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 75, ptr noundef %i.oj)
          to label %bb.fp unwind label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.fq unwind label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.ok = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i247 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i247, label %_ZN7testing7MessageD2Ev.exit249, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248: ; preds = %bb.fq
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(128) %i.ok) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit249

_ZN7testing7MessageD2Ev.exit249:                  ; preds = %bb.fq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.fu

bb.fr:                                            ; preds = %bb.fo, %bb.fn
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fp
  %i.op = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.pn128 = phi { ptr, i32 } [ %i.op, %bb.fs ], [ %i.oo, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.oq = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i250 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i250, label %_ZN7testing7MessageD2Ev.exit252, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251: ; preds = %bb.ft
  %i.or = load ptr, ptr %i.oq, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = load ptr, ptr %i.os, align 8
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(128) %i.oq) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit252

_ZN7testing7MessageD2Ev.exit252:                  ; preds = %bb.ft, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.fv

bb.fu:                                            ; preds = %.thread286, %_ZN7testing7MessageD2Ev.exit249
  ret void

bb.fv:                                            ; preds = %bb.ak, %_ZN7testing7MessageD2Ev.exit183, %bb.cc, %_ZN7testing7MessageD2Ev.exit206, %bb.du, %_ZN7testing7MessageD2Ev.exit229, %bb.fm, %_ZN7testing7MessageD2Ev.exit252
  %.pn135.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %bb.ak ], [ %.pn92, %_ZN7testing7MessageD2Ev.exit183 ], [ %.pn128, %_ZN7testing7MessageD2Ev.exit252 ], [ %.pn125.pn, %bb.fm ], [ %.pn116, %_ZN7testing7MessageD2Ev.exit229 ], [ %.pn113.pn, %bb.du ], [ %.pn104, %_ZN7testing7MessageD2Ev.exit206 ], [ %.pn101.pn, %bb.cc ]
  resume { ptr, i32 } %.pn135.pn.pn.pn.pn

bb.fw:                                            ; preds = %bb.fi, %bb.fd, %bb.dq, %bb.dl, %bb.by, %bb.bt, %bb.ag, %bb.ab
  %i.ou = landingpad { ptr, i32 }
          catch ptr null
  %i.ov = extractvalue { ptr, i32 } %i.ou, 0
  call void @__clang_call_terminate(ptr %i.ov) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24at_tests_std_vector_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %1 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %5 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %9 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %13 = alloca %"class.testing::Matcher", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = tail call noundef ptr @_ZSt13set_terminatePFvvE(ptr noundef nonnull @"_ZZN24at_tests_std_vector_Test8TestBodyEvEN3$_08__invokeEv") #21
  %.not.i = icmp eq ptr %i.e, null
  %i.f = select i1 %.not.i, ptr @_ZL32failed_set_terminate_deathstring, ptr @_ZL11deathstring ; 4 uses
  %i.g = tail call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.g, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  invoke void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %1, ptr noundef nonnull %i.f)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.7, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 95, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i.i176 = icmp eq ptr %i.l, null
  br i1 %.not.i.i176, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %17 = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.o = icmp eq i32 %17, 1
  br i1 %i.o, label %bb.f, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.m, align 8
  invoke void %i.r(ptr noundef %i.s)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.g, !inline_history !0

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.d, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.e, %bb.f
  br i1 %i.h, label %bb.j, label %bb.al

bb.h:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.i:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  br label %bb.am

bb.j:                                             ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.x = load ptr, ptr %i.a, align 8              ; 9 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  switch i32 %i.ab, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread [
    i32 0, label %bb.n
    i32 1, label %bb.r
  ]

bb.m:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit186

bb.n:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.ai = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ah)
          to label %bb.p unwind label %bb.m

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i1 noundef zeroext %i.ai)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  br i1 %i.am, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit

bb.r:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ao = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %i.ao, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  %i.ar = extractvalue { ptr, i32 } %i.ap, 1
  %i.as = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.at = icmp eq i32 %i.ar, %i.as
  %i.au = call ptr @__cxa_begin_catch(ptr %i.aq) #21 ; 2 uses
  br i1 %i.at, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.av = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.2, i32 noundef 95)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.aw = load ptr, ptr %2, align 8
  %i.ax = load ptr, ptr %i.au, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef ptr %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #21
  %i.bb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.8, ptr noundef %i.aw, ptr noundef %i.ba) #23 ; 0 uses
  %i.bc = load ptr, ptr %2, align 8               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.w
  %i.bf = load i64, ptr %i.bd, align 8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bh = load ptr, ptr @stderr, align 8
  %i.bi = call i32 @fflush(ptr noundef %i.bh)     ; 0 uses
  %i.bj = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef 1)
          to label %bb.x unwind label %bb.ag

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  invoke void @__cxa_end_catch()
          to label %bb.y unwind label %bb.ah

bb.y:                                             ; preds = %bb.x, %bb.s, %bb.ac
  %i.bn = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i32 noundef 2)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.br = load ptr, ptr %i.an, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #22
  unreachable

bb.ab:                                            ; preds = %bb.u
  %i.bw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i32 noundef 1)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_end_catch()
          to label %bb.y unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.gi

bb.ae:                                            ; preds = %bb.ac, %bb.y
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.af:                                            ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ai

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.x
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ag ], [ %i.cc, %bb.af ]
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.gi

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ad, %bb.ae
  %.pn92 = phi { ptr, i32 } [ %i.cb, %bb.ae ], [ %i.ca, %bb.ad ], [ %i.ce, %bb.ah ], [ %.pn, %bb.ai ]
  %i.cf = load ptr, ptr %i.an, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit186 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.l, %bb.q, %bb.z
  %i.ck = load ptr, ptr %i.x, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #21, !inline_history !1
  br label %.thread

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.q
  %i.cn = load ptr, ptr %i.x, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #21, !inline_history !1
  br label %bb.al

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit186: ; preds = %bb.aj, %bb.m
  %.pn94 = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %.pn92, %bb.aj ]
  %i.cq = load ptr, ptr %i.x, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #21, !inline_history !1
  br label %bb.am

.thread:                                          ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.aw

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.an

bb.am:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit186, %bb.i, %bb.h
  %.pn94.pn = phi { ptr, i32 } [ %.pn94, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit186 ], [ %i.w, %bb.i ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.an:                                            ; preds = %bb.al, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ct = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 95, ptr noundef %i.ct)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cu = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i187, label %_ZN7testing7MessageD2Ev.exit189, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.ar
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit189

_ZN7testing7MessageD2Ev.exit189:                  ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.aw

bb.as:                                            ; preds = %bb.an
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit192

bb.at:                                            ; preds = %bb.ap, %bb.ao
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.aq
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn97 = phi { ptr, i32 } [ %i.da, %bb.au ], [ %i.cz, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.db = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i190 = icmp eq ptr %i.db, null
  br i1 %.not.i.i190, label %_ZN7testing7MessageD2Ev.exit192, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191: ; preds = %bb.av
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(128) %i.db) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit192

_ZN7testing7MessageD2Ev.exit192:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191, %bb.av, %bb.as
  %.pn97.pn = phi { ptr, i32 } [ %i.cy, %bb.as ], [ %.pn97, %bb.av ], [ %.pn97, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.aw:                                            ; preds = %.thread, %_ZN7testing7MessageD2Ev.exit189
  %i.df = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.df, label %bb.ax, label %bb.ci

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  invoke void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %5, ptr noundef nonnull %i.f)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.dg = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.2, i32 noundef 96, ptr noundef nonnull %i.b)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i193, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i194

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i194: ; preds = %bb.az
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  %.not.i.i195 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i195, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196, label %bb.ba

bb.ba:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i194
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %18 = atomicrmw sub ptr %i.dm, i32 1 acq_rel, align 4
  %i.dn = icmp eq i32 %18, 1
  br i1 %i.dn, label %bb.bb, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196

bb.bb:                                            ; preds = %bb.ba
  %i.do = load ptr, ptr %i.dh, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load ptr, ptr %i.dl, align 8
  invoke void %i.dq(ptr noundef %i.dr)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196 unwind label %bb.bc, !inline_history !0

bb.bc:                                            ; preds = %bb.bb
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196: ; preds = %bb.az, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i194, %bb.ba, %bb.bb
  br i1 %i.dg, label %bb.bf, label %bb.cg

bb.bd:                                            ; preds = %bb.ax
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.be:                                            ; preds = %bb.ay
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  br label %bb.ch

bb.bf:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196
  %i.dw = load ptr, ptr %i.b, align 8             ; 9 uses
  %.not100 = icmp eq ptr %i.dw, null
  br i1 %.not100, label %.thread302, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = invoke noundef i32 %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  switch i32 %i.ea, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206.thread [
    i32 0, label %bb.bj
    i32 1, label %bb.bn
  ]

bb.bi:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bg
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit209

bb.bj:                                            ; preds = %bb.bh
  %i.ec = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef i32 %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.ec)
          to label %bb.bk unwind label %bb.bi

bb.bk:                                            ; preds = %bb.bj
  %i.eh = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.eg)
          to label %bb.bl unwind label %bb.bi

bb.bl:                                            ; preds = %bb.bk
  %i.ei = load ptr, ptr %i.ec, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i1 noundef zeroext %i.eh)
          to label %bb.bm unwind label %bb.bi

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.el, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206

bb.bn:                                            ; preds = %bb.bh
  %i.em = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.en = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.en, label %.critedge.i197, label %bb.bt

.critedge.i197:                                   ; preds = %bb.bo
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.eo = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  %i.eq = extractvalue { ptr, i32 } %i.eo, 1
  %i.er = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.es = icmp eq i32 %i.eq, %i.er
  %i.et = call ptr @__cxa_begin_catch(ptr %i.ep) #21 ; 2 uses
  br i1 %i.es, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.eu = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.2, i32 noundef 96)
          to label %bb.br unwind label %bb.ca

bb.br:                                            ; preds = %bb.bq
  %i.ev = load ptr, ptr %6, align 8
  %i.ew = load ptr, ptr %i.et, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef ptr %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.et) #21
  %i.fa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.8, ptr noundef %i.ev, ptr noundef %i.ez) #23 ; 0 uses
  %i.fb = load ptr, ptr %6, align 8               ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.br
  %i.fe = load i64, ptr %i.fc, align 8
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fg = load ptr, ptr @stderr, align 8
  %i.fh = call i32 @fflush(ptr noundef %i.fg)     ; 0 uses
  %i.fi = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, i32 noundef 1)
          to label %bb.bs unwind label %bb.cb

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  invoke void @__cxa_end_catch()
          to label %bb.bt unwind label %bb.cc

bb.bt:                                            ; preds = %bb.bs, %bb.bo, %bb.bx
  %i.fm = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, i32 noundef 2)
          to label %bb.bu unwind label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  %i.fq = load ptr, ptr %i.em, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8
  invoke void %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %i.em, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206.thread unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #22
  unreachable

bb.bw:                                            ; preds = %bb.bp
  %i.fv = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8
  invoke void %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, i32 noundef 1)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke void @__cxa_end_catch()
          to label %bb.bt unwind label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.gi

bb.bz:                                            ; preds = %bb.bx, %bb.bt
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bq
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.cd

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bs
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %.pn101 = phi { ptr, i32 } [ %i.gc, %bb.cb ], [ %i.gb, %bb.ca ]
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.gi

bb.ce:                                            ; preds = %bb.cc, %bb.cd, %bb.by, %bb.bz
  %.pn105 = phi { ptr, i32 } [ %i.ga, %bb.bz ], [ %i.fz, %bb.by ], [ %i.gd, %bb.cc ], [ %.pn101, %bb.cd ]
  %i.ge = load ptr, ptr %i.em, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8
  invoke void %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.em, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit209 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206.thread: ; preds = %bb.bh, %bb.bm, %bb.bu
  %i.gj = load ptr, ptr %i.dw, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) #21, !inline_history !1
  br label %.thread302

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206: ; preds = %bb.bm
  %i.gm = load ptr, ptr %i.dw, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) #21, !inline_history !1
  br label %bb.cg

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit209: ; preds = %bb.ce, %bb.bi
  %.pn107 = phi { ptr, i32 } [ %i.eb, %bb.bi ], [ %.pn105, %bb.ce ]
  %i.gp = load ptr, ptr %i.dw, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) #21, !inline_history !1
  br label %bb.ch

.thread302:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206.thread, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.cr

bb.cg:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ci

bb.ch:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit209, %bb.be, %bb.bd
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit209 ], [ %i.dv, %bb.be ], [ %i.du, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.ci:                                            ; preds = %bb.cg, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.cj unwind label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.gs = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 96, ptr noundef %i.gs)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.gt = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i210 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i210, label %_ZN7testing7MessageD2Ev.exit212, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211: ; preds = %bb.cm
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(128) %i.gt) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit212

_ZN7testing7MessageD2Ev.exit212:                  ; preds = %bb.cm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.cr

bb.cn:                                            ; preds = %bb.ci
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit215

bb.co:                                            ; preds = %bb.ck, %bb.cj
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cl
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn110 = phi { ptr, i32 } [ %i.gz, %bb.cp ], [ %i.gy, %bb.co ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ha = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i213 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i213, label %_ZN7testing7MessageD2Ev.exit215, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.cq
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(128) %i.ha) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit215

_ZN7testing7MessageD2Ev.exit215:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, %bb.cq, %bb.cn
  %.pn110.pn = phi { ptr, i32 } [ %i.gx, %bb.cn ], [ %.pn110, %bb.cq ], [ %.pn110, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.cr:                                            ; preds = %.thread302, %_ZN7testing7MessageD2Ev.exit212
  %i.he = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.he, label %bb.cs, label %bb.ee

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  invoke void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull %i.f)
          to label %bb.ct unwind label %bb.cy

bb.ct:                                            ; preds = %bb.cs
  %i.hf = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.10, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.2, i32 noundef 97, ptr noundef nonnull %i.c)
          to label %bb.cu unwind label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %9, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8            ; 2 uses
  %.not.i.i.i216 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i216, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i217

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i217: ; preds = %bb.cu
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8
  %.not.i.i218 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i218, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219, label %bb.cv

bb.cv:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i217
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8
  %19 = atomicrmw sub ptr %i.hl, i32 1 acq_rel, align 4
  %i.hm = icmp eq i32 %19, 1
  br i1 %i.hm, label %bb.cw, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219

bb.cw:                                            ; preds = %bb.cv
  %i.hn = load ptr, ptr %i.hg, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = load ptr, ptr %i.hk, align 8
  invoke void %i.hp(ptr noundef %i.hq)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219 unwind label %bb.cx, !inline_history !0

bb.cx:                                            ; preds = %bb.cw
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219: ; preds = %bb.cu, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i217, %bb.cv, %bb.cw
  br i1 %i.hf, label %bb.da, label %bb.ec

bb.cy:                                            ; preds = %bb.cs
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.cz:                                            ; preds = %bb.ct
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  br label %bb.ed

bb.da:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219
  %i.hv = load ptr, ptr %i.c, align 8             ; 9 uses
  %.not113 = icmp eq ptr %i.hv, null
  br i1 %.not113, label %.thread307, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = invoke noundef i32 %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %i.hv)
          to label %bb.dc unwind label %bb.dd

bb.dc:                                            ; preds = %bb.db
  switch i32 %i.hz, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229.thread [
    i32 0, label %bb.de
    i32 1, label %bb.di
  ]

bb.dd:                                            ; preds = %bb.dg, %bb.df, %bb.de, %bb.db
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit232

bb.de:                                            ; preds = %bb.dc
  %i.ib = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = invoke noundef i32 %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %i.ib)
          to label %bb.df unwind label %bb.dd

bb.df:                                            ; preds = %bb.de
  %i.ig = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.if)
          to label %bb.dg unwind label %bb.dd

bb.dg:                                            ; preds = %bb.df
  %i.ih = load ptr, ptr %i.ib, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = invoke noundef zeroext i1 %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, i1 noundef zeroext %i.ig)
          to label %bb.dh unwind label %bb.dd

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.ik, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229

bb.di:                                            ; preds = %bb.dc
  %i.il = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.im = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di
  br i1 %i.im, label %bb.dk, label %bb.dp

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.dl:                                            ; preds = %bb.di
  %i.in = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  %i.ip = extractvalue { ptr, i32 } %i.in, 1
  %i.iq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ir = icmp eq i32 %i.ip, %i.iq
  %i.is = call ptr @__cxa_begin_catch(ptr %i.io) #21 ; 2 uses
  br i1 %i.ir, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %bb.dl
  %i.it = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.2, i32 noundef 97)
          to label %bb.dn unwind label %bb.dw

bb.dn:                                            ; preds = %bb.dm
  %i.iu = load ptr, ptr %10, align 8
  %i.iv = load ptr, ptr %i.is, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = call noundef ptr %i.ix(ptr noundef nonnull align 8 dereferenceable(8) %i.is) #21
  %i.iz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.it, ptr noundef nonnull @.str.8, ptr noundef %i.iu, ptr noundef %i.iy) #23 ; 0 uses
  %i.ja = load ptr, ptr %10, align 8              ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.dn
  %i.jd = load i64, ptr %i.jb, align 8
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.jf = load ptr, ptr @stderr, align 8
  %i.jg = call i32 @fflush(ptr noundef %i.jf)     ; 0 uses
  %i.jh = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  %i.jk = load ptr, ptr %i.jj, align 8
  invoke void %i.jk(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, i32 noundef 1)
          to label %bb.do unwind label %bb.dx

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  invoke void @__cxa_end_catch()
          to label %bb.dp unwind label %bb.dy

bb.dp:                                            ; preds = %bb.do, %bb.dj, %bb.dt
  %i.jl = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.jo = load ptr, ptr %i.jn, align 8
  invoke void %i.jo(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, i32 noundef 2)
          to label %bb.dq unwind label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  %i.jp = load ptr, ptr %i.il, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %i.jr = load ptr, ptr %i.jq, align 8
  invoke void %i.jr(ptr noundef nonnull align 8 dereferenceable(8) %i.il, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229.thread unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.js = landingpad { ptr, i32 }
          catch ptr null
  %i.jt = extractvalue { ptr, i32 } %i.js, 0
  call void @__clang_call_terminate(ptr %i.jt) #22
  unreachable

bb.ds:                                            ; preds = %bb.dl
  %i.ju = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8
  invoke void %i.jx(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, i32 noundef 1)
          to label %bb.dt unwind label %bb.du

bb.dt:                                            ; preds = %bb.ds
  invoke void @__cxa_end_catch()
          to label %bb.dp unwind label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ea unwind label %bb.gi

bb.dv:                                            ; preds = %bb.dt, %bb.dp
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dw:                                            ; preds = %bb.dm
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.dz

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dy:                                            ; preds = %bb.do
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx, %bb.dw
  %.pn114 = phi { ptr, i32 } [ %i.kb, %bb.dx ], [ %i.ka, %bb.dw ]
  invoke void @__cxa_end_catch()
          to label %bb.ea unwind label %bb.gi

bb.ea:                                            ; preds = %bb.dy, %bb.dz, %bb.du, %bb.dv
  %.pn118 = phi { ptr, i32 } [ %i.jz, %bb.dv ], [ %i.jy, %bb.du ], [ %i.kc, %bb.dy ], [ %.pn114, %bb.dz ]
  %i.kd = load ptr, ptr %i.il, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8
  invoke void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.il, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit232 unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229.thread: ; preds = %bb.dc, %bb.dh, %bb.dq
  %i.ki = load ptr, ptr %i.hv, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(8) %i.hv) #21, !inline_history !1
  br label %.thread307

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229: ; preds = %bb.dh
  %i.kl = load ptr, ptr %i.hv, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.hv) #21, !inline_history !1
  br label %bb.ec

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit232: ; preds = %bb.ea, %bb.dd
  %.pn120 = phi { ptr, i32 } [ %i.ia, %bb.dd ], [ %.pn118, %bb.ea ]
  %i.ko = load ptr, ptr %i.hv, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(8) %i.hv) #21, !inline_history !1
  br label %bb.ed

.thread307:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229.thread, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.en

bb.ec:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.ee

bb.ed:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit232, %bb.cz, %bb.cy
  %.pn120.pn = phi { ptr, i32 } [ %.pn120, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit232 ], [ %i.hu, %bb.cz ], [ %i.ht, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.ee:                                            ; preds = %bb.ec, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ef unwind label %bb.ej

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.kr = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 97, ptr noundef %i.kr)
          to label %bb.eh unwind label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ei unwind label %bb.el

bb.ei:                                            ; preds = %bb.eh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.ks = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i233 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i233, label %_ZN7testing7MessageD2Ev.exit235, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234: ; preds = %bb.ei
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(128) %i.ks) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit235

_ZN7testing7MessageD2Ev.exit235:                  ; preds = %bb.ei, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.en

bb.ej:                                            ; preds = %bb.ee
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit238

bb.ek:                                            ; preds = %bb.eg, %bb.ef
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.el:                                            ; preds = %bb.eh
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.pn123 = phi { ptr, i32 } [ %i.ky, %bb.el ], [ %i.kx, %bb.ek ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.kz = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i236 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i236, label %_ZN7testing7MessageD2Ev.exit238, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237: ; preds = %bb.em
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(128) %i.kz) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit238

_ZN7testing7MessageD2Ev.exit238:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237, %bb.em, %bb.ej
  %.pn123.pn = phi { ptr, i32 } [ %i.kw, %bb.ej ], [ %.pn123, %bb.em ], [ %.pn123, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.en:                                            ; preds = %.thread307, %_ZN7testing7MessageD2Ev.exit235
  %i.ld = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.ld, label %bb.eo, label %bb.fz

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  invoke void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %13, ptr noundef nonnull %i.f)
          to label %bb.ep unwind label %bb.eu

bb.ep:                                            ; preds = %bb.eo
  %i.le = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.11, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull @.str.2, i32 noundef 98, ptr noundef nonnull %i.d)
          to label %bb.eq unwind label %bb.ev

bb.eq:                                            ; preds = %bb.ep
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %13, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8            ; 2 uses
  %.not.i.i.i239 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i239, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240: ; preds = %bb.eq
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8
  %.not.i.i241 = icmp eq ptr %i.li, null
  br i1 %.not.i.i241, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242, label %bb.er

bb.er:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240
  %i.lj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8
  %20 = atomicrmw sub ptr %i.lk, i32 1 acq_rel, align 4
  %i.ll = icmp eq i32 %20, 1
  br i1 %i.ll, label %bb.es, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242

bb.es:                                            ; preds = %bb.er
  %i.lm = load ptr, ptr %i.lf, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = load ptr, ptr %i.lj, align 8
  invoke void %i.lo(ptr noundef %i.lp)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242 unwind label %bb.et, !inline_history !0

bb.et:                                            ; preds = %bb.es
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  call void @__clang_call_terminate(ptr %i.lr) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242: ; preds = %bb.eq, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240, %bb.er, %bb.es
  br i1 %i.le, label %bb.ew, label %bb.fx

bb.eu:                                            ; preds = %bb.eo
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.ev:                                            ; preds = %bb.ep
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  br label %bb.fy

bb.ew:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242
  %i.lu = load ptr, ptr %i.d, align 8             ; 9 uses
  %.not126 = icmp eq ptr %i.lu, null
  br i1 %.not126, label %.thread312, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = invoke noundef i32 %i.lx(ptr noundef nonnull align 8 dereferenceable(8) %i.lu)
          to label %bb.ey unwind label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  switch i32 %i.ly, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit252.thread [
    i32 0, label %bb.fa
    i32 1, label %bb.fe
  ]

bb.ez:                                            ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ex
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit255

bb.fa:                                            ; preds = %bb.ey
  %i.ma = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = invoke noundef i32 %i.md(ptr noundef nonnull align 8 dereferenceable(8) %i.ma)
          to label %bb.fb unwind label %bb.ez

bb.fb:                                            ; preds = %bb.fa
  %i.mf = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.me)
          to label %bb.fc unwind label %bb.ez

bb.fc:                                            ; preds = %bb.fb
  %i.mg = load ptr, ptr %i.ma, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = invoke noundef zeroext i1 %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, i1 noundef zeroext %i.mf)
          to label %bb.fd unwind label %bb.ez

bb.fd:                                            ; preds = %bb.fc
  br i1 %i.mj, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit252.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit252

bb.fe:                                            ; preds = %bb.ey
  %i.mk = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ml = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.ff unwind label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  br i1 %i.ml, label %.critedge.i243, label %bb.fk

.critedge.i243:                                   ; preds = %bb.ff
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.fg:                                            ; preds = %bb.fe
  %i.mm = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.mn = extractvalue { ptr, i32 } %i.mm, 0
  %i.mo = extractvalue { ptr, i32 } %i.mm, 1
  %i.mp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.mq = icmp eq i32 %i.mo, %i.mp
  %i.mr = call ptr @__cxa_begin_catch(ptr %i.mn) #21 ; 2 uses
  br i1 %i.mq, label %bb.fh, label %bb.fn

bb.fh:                                            ; preds = %bb.fg
  %i.ms = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.2, i32 noundef 98)
          to label %bb.fi unwind label %bb.fr

bb.fi:                                            ; preds = %bb.fh
  %i.mt = load ptr, ptr %14, align 8
  %i.mu = load ptr, ptr %i.mr, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8
  %i.mx = call noundef ptr %i.mw(ptr noundef nonnull align 8 dereferenceable(8) %i.mr) #21
  %i.my = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ms, ptr noundef nonnull @.str.8, ptr noundef %i.mt, ptr noundef %i.mx) #23 ; 0 uses
  %i.mz = load ptr, ptr %14, align 8              ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.fi
  %i.nc = load i64, ptr %i.na, align 8
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ne = load ptr, ptr @stderr, align 8
  %i.nf = call i32 @fflush(ptr noundef %i.ne)     ; 0 uses
  %i.ng = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  %i.nj = load ptr, ptr %i.ni, align 8
  invoke void %i.nj(ptr noundef nonnull align 8 dereferenceable(8) %i.ng, i32 noundef 1)
          to label %bb.fj unwind label %bb.fs

bb.fj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  invoke void @__cxa_end_catch()
          to label %bb.fk unwind label %bb.ft

bb.fk:                                            ; preds = %bb.fj, %bb.ff, %bb.fo
  %i.nk = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 40
  %i.nn = load ptr, ptr %i.nm, align 8
  invoke void %i.nn(ptr noundef nonnull align 8 dereferenceable(8) %i.nk, i32 noundef 2)
          to label %bb.fl unwind label %bb.fq

bb.fl:                                            ; preds = %bb.fk
  %i.no = load ptr, ptr %i.mk, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 40
  %i.nq = load ptr, ptr %i.np, align 8
  invoke void %i.nq(ptr noundef nonnull align 8 dereferenceable(8) %i.mk, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit252.thread unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.nr = landingpad { ptr, i32 }
          catch ptr null
  %i.ns = extractvalue { ptr, i32 } %i.nr, 0
  call void @__clang_call_terminate(ptr %i.ns) #22
  unreachable

bb.fn:                                            ; preds = %bb.fg
  %i.nt = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  %i.nw = load ptr, ptr %i.nv, align 8
  invoke void %i.nw(ptr noundef nonnull align 8 dereferenceable(8) %i.nt, i32 noundef 1)
          to label %bb.fo unwind label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  invoke void @__cxa_end_catch()
          to label %bb.fk unwind label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.nx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fv unwind label %bb.gi

bb.fq:                                            ; preds = %bb.fo, %bb.fk
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fr:                                            ; preds = %bb.fh
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.fu

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fj
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

end_hunk_1
begin_hunk_2_@_ZN29at_tests_InitializerList_Test8TestBodyEv:bb.a
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit156

_ZN7testing7MessageD2Ev.exit156:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %bb.h
  %.pn141.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %.pn141.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %.pn141.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i155 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.gu

bb.m:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.pr = load ptr, ptr %i.g, align 8              ; 4 uses
  %.not.i.i157 = icmp eq ptr %.pr, null
  br i1 %.not.i.i157, label %_ZN3gsl2atIiEET_St16initializer_listIS1_El.exit159, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr %.pr, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #24
  br label %_ZN3gsl2atIiEET_St16initializer_listIS1_El.exit159

_ZN3gsl2atIiEET_St16initializer_listIS1_El.exit159: ; preds = %_ZN3gsl2atIiEET_St16initializer_listIS1_El.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.b, align 16
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = icmp eq i64 %indvars.iv.next, %i.au     ; 2 uses
  %i.aw = zext i1 %i.av to i8
  store i8 %i.aw, ptr %5, align 8
  store ptr null, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %i.av, label %_ZN7testing15AssertionResultD2Ev.exit176, label %bb.o

bb.o:                                             ; preds = %_ZN3gsl2atIiEET_St16initializer_listIS1_El.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %8, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 108, ptr noundef %i.ax)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  %i.ay = load ptr, ptr %8, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.j
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.s
  %i.ba = load i64, ptr %i.j, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bc = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i163 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i163, label %bb.y, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #21, !inline_history !2
  br label %bb.y

bb.t:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit171

bb.u:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

bb.v:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn145 = phi { ptr, i32 } [ %i.bj, %bb.w ], [ %i.bi, %bb.v ] ; 2 uses
  %i.bk = load ptr, ptr %8, align 8               ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.j
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.x
  %i.bm = load i64, ptr %i.j, align 8
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.u
  %.pn145.pn = phi { ptr, i32 } [ %i.bh, %bb.u ], [ %.pn145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %.pn145, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bo = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i169 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i169, label %_ZN7testing7MessageD2Ev.exit171, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(128) %i.bo) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit171

_ZN7testing7MessageD2Ev.exit171:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %bb.t
  %.pn145.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.t ], [ %.pn145.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %.pn145.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.gu

bb.y:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.pr286 = load ptr, ptr %i.i, align 8           ; 4 uses
  %.not.i.i172 = icmp eq ptr %.pr286, null
  br i1 %.not.i.i172, label %_ZN7testing15AssertionResultD2Ev.exit176, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = load ptr, ptr %.pr286, align 8          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pr286, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i173: ; preds = %bb.z
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i174

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i174: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i173
  call void @_ZdlPvm(ptr noundef nonnull %.pr286, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit176

_ZN7testing15AssertionResultD2Ev.exit176:         ; preds = %_ZN3gsl2atIiEET_St16initializer_listIS1_El.exit159, %bb.y, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %_ZN3gsl2atIiEET_St16initializer_listIS1_El.exit, !llvm.loop !17

bb.aa:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull %i.l)
  %i.bx = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.7, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.2, i32 noundef 117, ptr noundef nonnull %i.c)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %9, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.ab
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %.not.i.i177 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i177, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  %25 = atomicrmw sub ptr %i.cd, i32 1 acq_rel, align 4
  %i.ce = icmp eq i32 %25, 1
  br i1 %i.ce, label %bb.ad, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load ptr, ptr %i.by, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = load ptr, ptr %i.cc, align 8
  invoke void %i.ch(ptr noundef %i.ci)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.ae, !inline_history !0

bb.ae:                                            ; preds = %bb.ad
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.ab, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.ac, %bb.ad
  br i1 %i.bx, label %bb.ag, label %bb.bi

bb.af:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  br label %bb.bj

bb.ag:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.cm = load ptr, ptr %i.c, align 8             ; 9 uses
  %.not = icmp eq ptr %i.cm, null
  br i1 %.not, label %.thread291, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke noundef i32 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  switch i32 %i.cq, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread [
    i32 0, label %bb.ak
    i32 1, label %bb.ao
  ]

bb.aj:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ah
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit187

bb.ak:                                            ; preds = %bb.ai
  %i.cs = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %bb.al unwind label %bb.aj

bb.al:                                            ; preds = %bb.ak
  %i.cx = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.cw)
          to label %bb.am unwind label %bb.aj

bb.am:                                            ; preds = %bb.al
  %i.cy = load ptr, ptr %i.cs, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, i1 noundef zeroext %i.cx)
          to label %bb.an unwind label %bb.aj

bb.an:                                            ; preds = %bb.am
  br i1 %i.db, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit

bb.ao:                                            ; preds = %bb.ai
  %i.dc = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.dd = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.dd, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.de = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  %i.dg = extractvalue { ptr, i32 } %i.de, 1
  %i.dh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.di = icmp eq i32 %i.dg, %i.dh
  %i.dj = call ptr @__cxa_begin_catch(ptr %i.df) #21 ; 2 uses
  br i1 %i.di, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.dk = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.2, i32 noundef 117)
          to label %bb.at unwind label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.dl = load ptr, ptr %10, align 8
  %i.dm = load ptr, ptr %i.dj, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef ptr %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dj) #21
  %i.dq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.8, ptr noundef %i.dl, ptr noundef %i.dp) #23 ; 0 uses
  %i.dr = load ptr, ptr %10, align 8              ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.at
  %i.du = load i64, ptr %i.ds, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.dw = load ptr, ptr @stderr, align 8
  %i.dx = call i32 @fflush(ptr noundef %i.dw)     ; 0 uses
  %i.dy = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i32 noundef 1)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  invoke void @__cxa_end_catch()
          to label %bb.av unwind label %bb.be

bb.av:                                            ; preds = %bb.au, %bb.ap, %bb.az
  %i.ec = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i32 noundef 2)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.eg = load ptr, ptr %i.dc, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #22
  unreachable

bb.ay:                                            ; preds = %bb.ar
  %i.el = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i32 noundef 1)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @__cxa_end_catch()
          to label %bb.av unwind label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bg unwind label %bb.gv

bb.bb:                                            ; preds = %bb.az, %bb.av
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bc:                                            ; preds = %bb.as
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bf

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.au
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.es, %bb.bd ], [ %i.er, %bb.bc ]
  invoke void @__cxa_end_catch()
          to label %bb.bg unwind label %bb.gv

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.ba, %bb.bb
  %.pn97 = phi { ptr, i32 } [ %i.eq, %bb.bb ], [ %i.ep, %bb.ba ], [ %i.et, %bb.be ], [ %.pn, %bb.bf ]
  %i.eu = load ptr, ptr %i.dc, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8
  invoke void %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit187 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.ai, %bb.an, %bb.aw
  %i.ez = load ptr, ptr %i.cm, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) #21, !inline_history !1
  br label %.thread291

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.an
  %i.fc = load ptr, ptr %i.cm, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) #21, !inline_history !1
  br label %bb.bi

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit187: ; preds = %bb.bg, %bb.aj
  %.pn99 = phi { ptr, i32 } [ %i.cr, %bb.aj ], [ %.pn97, %bb.bg ]
  %i.ff = load ptr, ptr %i.cm, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) #21, !inline_history !1
  br label %bb.bj

.thread291:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.br

bb.bi:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit187, %bb.af
  %.pn99.pn = phi { ptr, i32 } [ %.pn99, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit187 ], [ %i.cl, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.gu

bb.bk:                                            ; preds = %bb.bi, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.fi = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 117, ptr noundef %i.fi)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.fj = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i188 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i188, label %_ZN7testing7MessageD2Ev.exit190, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189: ; preds = %bb.bn
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(128) %i.fj) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit190

_ZN7testing7MessageD2Ev.exit190:                  ; preds = %bb.bn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.br

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bm
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn102 = phi { ptr, i32 } [ %i.fo, %bb.bp ], [ %i.fn, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.fp = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i191 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i191, label %_ZN7testing7MessageD2Ev.exit193, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192: ; preds = %bb.bq
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(128) %i.fp) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit193

_ZN7testing7MessageD2Ev.exit193:                  ; preds = %bb.bq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.gu

bb.br:                                            ; preds = %.thread291, %_ZN7testing7MessageD2Ev.exit190
  %i.ft = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.ft, label %bb.bs, label %bb.dc

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %13, ptr noundef nonnull %i.l)
  %i.fu = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull @.str.2, i32 noundef 118, ptr noundef nonnull %i.d)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %13, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i194, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i195

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i195: ; preds = %bb.bt
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  %.not.i.i196 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i196, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197, label %bb.bu

bb.bu:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i195
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %26 = atomicrmw sub ptr %i.ga, i32 1 acq_rel, align 4
  %i.gb = icmp eq i32 %26, 1
  br i1 %i.gb, label %bb.bv, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197

bb.bv:                                            ; preds = %bb.bu
  %i.gc = load ptr, ptr %i.fv, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = load ptr, ptr %i.fz, align 8
  invoke void %i.ge(ptr noundef %i.gf)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197 unwind label %bb.bw, !inline_history !0

bb.bw:                                            ; preds = %bb.bv
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197: ; preds = %bb.bt, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i195, %bb.bu, %bb.bv
  br i1 %i.fu, label %bb.by, label %bb.da

bb.bx:                                            ; preds = %bb.bs
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  br label %bb.db

bb.by:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197
  %i.gj = load ptr, ptr %i.d, align 8             ; 9 uses
  %.not104 = icmp eq ptr %i.gj, null
  br i1 %.not104, label %.thread296, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = invoke noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %i.gj)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  switch i32 %i.gn, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207.thread [
    i32 0, label %bb.cc
    i32 1, label %bb.cg
  ]

bb.cb:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.bz
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit210

bb.cc:                                            ; preds = %bb.ca
  %i.gp = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = invoke noundef i32 %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.gp)
          to label %bb.cd unwind label %bb.cb

bb.cd:                                            ; preds = %bb.cc
  %i.gu = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.gt)
          to label %bb.ce unwind label %bb.cb

bb.ce:                                            ; preds = %bb.cd
  %i.gv = load ptr, ptr %i.gp, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = invoke noundef zeroext i1 %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, i1 noundef zeroext %i.gu)
          to label %bb.cf unwind label %bb.cb

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.gy, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207

bb.cg:                                            ; preds = %bb.ca
  %i.gz = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ha = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.ha, label %bb.ci, label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.cj:                                            ; preds = %bb.cg
  %i.hb = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  %i.hd = extractvalue { ptr, i32 } %i.hb, 1
  %i.he = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.hf = icmp eq i32 %i.hd, %i.he
  %i.hg = call ptr @__cxa_begin_catch(ptr %i.hc) #21 ; 2 uses
  br i1 %i.hf, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %i.hh = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.2, i32 noundef 118)
          to label %bb.cl unwind label %bb.cu

bb.cl:                                            ; preds = %bb.ck
  %i.hi = load ptr, ptr %14, align 8
  %i.hj = load ptr, ptr %i.hg, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = call noundef ptr %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hg) #21
  %i.hn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hh, ptr noundef nonnull @.str.8, ptr noundef %i.hi, ptr noundef %i.hm) #23 ; 0 uses
  %i.ho = load ptr, ptr %14, align 8              ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.cl
  %i.hr = load i64, ptr %i.hp, align 8
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ht = load ptr, ptr @stderr, align 8
  %i.hu = call i32 @fflush(ptr noundef %i.ht)     ; 0 uses
  %i.hv = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8
  invoke void %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, i32 noundef 1)
          to label %bb.cm unwind label %bb.cv

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  invoke void @__cxa_end_catch()
          to label %bb.cn unwind label %bb.cw

bb.cn:                                            ; preds = %bb.cm, %bb.ch, %bb.cr
  %i.hz = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8
  invoke void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, i32 noundef 2)
          to label %bb.co unwind label %bb.ct

bb.co:                                            ; preds = %bb.cn
  %i.id = load ptr, ptr %i.gz, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 40
  %i.if = load ptr, ptr %i.ie, align 8
  invoke void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207.thread unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #22
  unreachable

bb.cq:                                            ; preds = %bb.cj
  %i.ii = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, i32 noundef 1)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  invoke void @__cxa_end_catch()
          to label %bb.cn unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cy unwind label %bb.gv

bb.ct:                                            ; preds = %bb.cr, %bb.cn
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cu:                                            ; preds = %bb.ck
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.cx

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cm
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %.pn105 = phi { ptr, i32 } [ %i.ip, %bb.cv ], [ %i.io, %bb.cu ]
  invoke void @__cxa_end_catch()
          to label %bb.cy unwind label %bb.gv

bb.cy:                                            ; preds = %bb.cw, %bb.cx, %bb.cs, %bb.ct
  %.pn109 = phi { ptr, i32 } [ %i.in, %bb.ct ], [ %i.im, %bb.cs ], [ %i.iq, %bb.cw ], [ %.pn105, %bb.cx ]
  %i.ir = load ptr, ptr %i.gz, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 40
  %i.it = load ptr, ptr %i.is, align 8
  invoke void %i.it(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit210 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207.thread: ; preds = %bb.ca, %bb.cf, %bb.co
  %i.iw = load ptr, ptr %i.gj, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(8) %i.gj) #21, !inline_history !1
  br label %.thread296

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207: ; preds = %bb.cf
  %i.iz = load ptr, ptr %i.gj, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %i.gj) #21, !inline_history !1
  br label %bb.da

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit210: ; preds = %bb.cy, %bb.cb
  %.pn111 = phi { ptr, i32 } [ %i.go, %bb.cb ], [ %.pn109, %bb.cy ]
  %i.jc = load ptr, ptr %i.gj, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(8) %i.gj) #21, !inline_history !1
  br label %bb.db

.thread296:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207.thread, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.dj

bb.da:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.dc

bb.db:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit210, %bb.bx
  %.pn111.pn = phi { ptr, i32 } [ %.pn111, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit210 ], [ %i.gi, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.gu

bb.dc:                                            ; preds = %bb.da, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.jf = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.dd unwind label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 118, ptr noundef %i.jf)
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.jg = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i211 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i211, label %_ZN7testing7MessageD2Ev.exit213, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212: ; preds = %bb.df
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(128) %i.jg) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit213

_ZN7testing7MessageD2Ev.exit213:                  ; preds = %bb.df, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.dj

bb.dg:                                            ; preds = %bb.dd, %bb.dc
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.de
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn114 = phi { ptr, i32 } [ %i.jl, %bb.dh ], [ %i.jk, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.jm = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i214 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i214, label %_ZN7testing7MessageD2Ev.exit216, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215: ; preds = %bb.di
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(128) %i.jm) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit216

_ZN7testing7MessageD2Ev.exit216:                  ; preds = %bb.di, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.gu

bb.dj:                                            ; preds = %.thread296, %_ZN7testing7MessageD2Ev.exit213
  %i.jq = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.jq, label %bb.dk, label %bb.eu

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %17, ptr noundef nonnull %i.l)
  %i.jr = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.22, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull @.str.2, i32 noundef 119, ptr noundef nonnull %i.e)
          to label %bb.dl unwind label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %17, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8            ; 2 uses
  %.not.i.i.i217 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i217, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i218

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i218: ; preds = %bb.dl
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  %.not.i.i219 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i219, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220, label %bb.dm

bb.dm:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i218
  %i.jw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8
  %27 = atomicrmw sub ptr %i.jx, i32 1 acq_rel, align 4
  %i.jy = icmp eq i32 %27, 1
  br i1 %i.jy, label %bb.dn, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220

bb.dn:                                            ; preds = %bb.dm
  %i.jz = load ptr, ptr %i.js, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = load ptr, ptr %i.jw, align 8
  invoke void %i.kb(ptr noundef %i.kc)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220 unwind label %bb.do, !inline_history !0

bb.do:                                            ; preds = %bb.dn
  %i.kd = landingpad { ptr, i32 }
          catch ptr null
  %i.ke = extractvalue { ptr, i32 } %i.kd, 0
  call void @__clang_call_terminate(ptr %i.ke) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220: ; preds = %bb.dl, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i218, %bb.dm, %bb.dn
  br i1 %i.jr, label %bb.dq, label %bb.es

bb.dp:                                            ; preds = %bb.dk
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #21
  br label %bb.et

bb.dq:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220
  %i.kg = load ptr, ptr %i.e, align 8             ; 9 uses
  %.not116 = icmp eq ptr %i.kg, null
  br i1 %.not116, label %.thread301, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = invoke noundef i32 %i.kj(ptr noundef nonnull align 8 dereferenceable(8) %i.kg)
          to label %bb.ds unwind label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  switch i32 %i.kk, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230.thread [
    i32 0, label %bb.du
    i32 1, label %bb.dy
  ]

bb.dt:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dr
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit233

bb.du:                                            ; preds = %bb.ds
  %i.km = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = invoke noundef i32 %i.kp(ptr noundef nonnull align 8 dereferenceable(8) %i.km)
          to label %bb.dv unwind label %bb.dt

bb.dv:                                            ; preds = %bb.du
  %i.kr = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.kq)
          to label %bb.dw unwind label %bb.dt

bb.dw:                                            ; preds = %bb.dv
  %i.ks = load ptr, ptr %i.km, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = invoke noundef zeroext i1 %i.ku(ptr noundef nonnull align 8 dereferenceable(8) %i.km, i1 noundef zeroext %i.kr)
          to label %bb.dx unwind label %bb.dt

bb.dx:                                            ; preds = %bb.dw
  br i1 %i.kv, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230

bb.dy:                                            ; preds = %bb.ds
  %i.kw = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.kx = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.dz unwind label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.kx, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.eb:                                            ; preds = %bb.dy
  %i.ky = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  %i.la = extractvalue { ptr, i32 } %i.ky, 1
  %i.lb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.lc = icmp eq i32 %i.la, %i.lb
  %i.ld = call ptr @__cxa_begin_catch(ptr %i.kz) #21 ; 2 uses
  br i1 %i.lc, label %bb.ec, label %bb.ei

bb.ec:                                            ; preds = %bb.eb
  %i.le = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull @.str.2, i32 noundef 119)
          to label %bb.ed unwind label %bb.em

bb.ed:                                            ; preds = %bb.ec
  %i.lf = load ptr, ptr %18, align 8
  %i.lg = load ptr, ptr %i.ld, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = call noundef ptr %i.li(ptr noundef nonnull align 8 dereferenceable(8) %i.ld) #21
  %i.lk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.le, ptr noundef nonnull @.str.8, ptr noundef %i.lf, ptr noundef %i.lj) #23 ; 0 uses
  %i.ll = load ptr, ptr %18, align 8              ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ln = icmp eq ptr %i.ll, %i.lm
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.ed
  %i.lo = load i64, ptr %i.lm, align 8
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.lq = load ptr, ptr @stderr, align 8
  %i.lr = call i32 @fflush(ptr noundef %i.lq)     ; 0 uses
  %i.ls = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  %i.lv = load ptr, ptr %i.lu, align 8
  invoke void %i.lv(ptr noundef nonnull align 8 dereferenceable(8) %i.ls, i32 noundef 1)
          to label %bb.ee unwind label %bb.en

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  invoke void @__cxa_end_catch()
          to label %bb.ef unwind label %bb.eo

bb.ef:                                            ; preds = %bb.ee, %bb.dz, %bb.ej
  %i.lw = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8
  invoke void %i.lz(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, i32 noundef 2)
          to label %bb.eg unwind label %bb.el

bb.eg:                                            ; preds = %bb.ef
  %i.ma = load ptr, ptr %i.kw, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  %i.mc = load ptr, ptr %i.mb, align 8
  invoke void %i.mc(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230.thread unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.md = landingpad { ptr, i32 }
          catch ptr null
  %i.me = extractvalue { ptr, i32 } %i.md, 0
  call void @__clang_call_terminate(ptr %i.me) #22
  unreachable

bb.ei:                                            ; preds = %bb.eb
  %i.mf = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 40
  %i.mi = load ptr, ptr %i.mh, align 8
  invoke void %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, i32 noundef 1)
          to label %bb.ej unwind label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  invoke void @__cxa_end_catch()
          to label %bb.ef unwind label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.mj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.eq unwind label %bb.gv

bb.el:                                            ; preds = %bb.ej, %bb.ef
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.em:                                            ; preds = %bb.ec
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ep

bb.en:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.eo:                                            ; preds = %bb.ee
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ep:                                            ; preds = %bb.en, %bb.em
  %.pn117 = phi { ptr, i32 } [ %i.mm, %bb.en ], [ %i.ml, %bb.em ]
  invoke void @__cxa_end_catch()
          to label %bb.eq unwind label %bb.gv

bb.eq:                                            ; preds = %bb.eo, %bb.ep, %bb.ek, %bb.el
  %.pn121 = phi { ptr, i32 } [ %i.mk, %bb.el ], [ %i.mj, %bb.ek ], [ %i.mn, %bb.eo ], [ %.pn117, %bb.ep ]
  %i.mo = load ptr, ptr %i.kw, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 40
  %i.mq = load ptr, ptr %i.mp, align 8
  invoke void %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit233 unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.mr = landingpad { ptr, i32 }
          catch ptr null
  %i.ms = extractvalue { ptr, i32 } %i.mr, 0
  call void @__clang_call_terminate(ptr %i.ms) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230.thread: ; preds = %bb.ds, %bb.dx, %bb.eg
  %i.mt = load ptr, ptr %i.kg, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.kg) #21, !inline_history !1
  br label %.thread301

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230: ; preds = %bb.dx
  %i.mw = load ptr, ptr %i.kg, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(8) %i.kg) #21, !inline_history !1
  br label %bb.es

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit233: ; preds = %bb.eq, %bb.dt
  %.pn123 = phi { ptr, i32 } [ %i.kl, %bb.dt ], [ %.pn121, %bb.eq ]
  %i.mz = load ptr, ptr %i.kg, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(8) %i.kg) #21, !inline_history !1
  br label %bb.et

.thread301:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230.thread, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.fb

bb.es:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.eu

bb.et:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit233, %bb.dp
  %.pn123.pn = phi { ptr, i32 } [ %.pn123, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit233 ], [ %i.kf, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.gu

bb.eu:                                            ; preds = %bb.es, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.nc = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.ev unwind label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 119, ptr noundef %i.nc)
          to label %bb.ew unwind label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ex unwind label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.nd = load ptr, ptr %19, align 8              ; 3 uses
  %.not.i.i234 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i234, label %_ZN7testing7MessageD2Ev.exit236, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %bb.ex
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(128) %i.nd) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit236

_ZN7testing7MessageD2Ev.exit236:                  ; preds = %bb.ex, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.fb

bb.ey:                                            ; preds = %bb.ev, %bb.eu
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ew
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #21
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.pn126 = phi { ptr, i32 } [ %i.ni, %bb.ez ], [ %i.nh, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.nj = load ptr, ptr %19, align 8              ; 3 uses
  %.not.i.i237 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i237, label %_ZN7testing7MessageD2Ev.exit239, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238: ; preds = %bb.fa
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8
  call void %i.nm(ptr noundef nonnull align 8 dereferenceable(128) %i.nj) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit239

_ZN7testing7MessageD2Ev.exit239:                  ; preds = %bb.fa, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.gu

bb.fb:                                            ; preds = %.thread301, %_ZN7testing7MessageD2Ev.exit236
  %i.nn = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.nn, label %bb.fc, label %bb.gm

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %21, ptr noundef nonnull %i.l)
  %i.no = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.23, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull @.str.2, i32 noundef 120, ptr noundef nonnull %i.f)
          to label %bb.fd unwind label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %21, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8            ; 2 uses
  %.not.i.i.i240 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i240, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i241

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i241: ; preds = %bb.fd
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8
  %.not.i.i242 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i242, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243, label %bb.fe

bb.fe:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i241
  %i.nt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8
  %28 = atomicrmw sub ptr %i.nu, i32 1 acq_rel, align 4
  %i.nv = icmp eq i32 %28, 1
  br i1 %i.nv, label %bb.ff, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243

bb.ff:                                            ; preds = %bb.fe
  %i.nw = load ptr, ptr %i.np, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = load ptr, ptr %i.nt, align 8
  invoke void %i.ny(ptr noundef %i.nz)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243 unwind label %bb.fg, !inline_history !0

bb.fg:                                            ; preds = %bb.ff
  %i.oa = landingpad { ptr, i32 }
          catch ptr null
  %i.ob = extractvalue { ptr, i32 } %i.oa, 0
  call void @__clang_call_terminate(ptr %i.ob) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243: ; preds = %bb.fd, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i241, %bb.fe, %bb.ff
  br i1 %i.no, label %bb.fi, label %bb.gk

bb.fh:                                            ; preds = %bb.fc
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #21
  br label %bb.gl

bb.fi:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243
  %i.od = load ptr, ptr %i.f, align 8             ; 9 uses
  %.not128 = icmp eq ptr %i.od, null
  br i1 %.not128, label %.thread306, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = invoke noundef i32 %i.og(ptr noundef nonnull align 8 dereferenceable(8) %i.od)
          to label %bb.fk unwind label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  switch i32 %i.oh, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit253.thread [
    i32 0, label %bb.fm
    i32 1, label %bb.fq
  ]

bb.fl:                                            ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fj
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit256

bb.fm:                                            ; preds = %bb.fk
  %i.oj = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = invoke noundef i32 %i.om(ptr noundef nonnull align 8 dereferenceable(8) %i.oj)
          to label %bb.fn unwind label %bb.fl

bb.fn:                                            ; preds = %bb.fm
  %i.oo = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.on)
          to label %bb.fo unwind label %bb.fl

bb.fo:                                            ; preds = %bb.fn
  %i.op = load ptr, ptr %i.oj, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 32
  %i.or = load ptr, ptr %i.oq, align 8
  %i.os = invoke noundef zeroext i1 %i.or(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, i1 noundef zeroext %i.oo)
          to label %bb.fp unwind label %bb.fl

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.os, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit253.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit253

bb.fq:                                            ; preds = %bb.fk
  %i.ot = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.ou = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.fr unwind label %bb.ft

bb.fr:                                            ; preds = %bb.fq
  br i1 %i.ou, label %bb.fs, label %bb.fx

bb.fs:                                            ; preds = %bb.fr
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.ft:                                            ; preds = %bb.fq
  %i.ov = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ow = extractvalue { ptr, i32 } %i.ov, 0
  %i.ox = extractvalue { ptr, i32 } %i.ov, 1
  %i.oy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.oz = icmp eq i32 %i.ox, %i.oy
  %i.pa = call ptr @__cxa_begin_catch(ptr %i.ow) #21 ; 2 uses
  br i1 %i.oz, label %bb.fu, label %bb.ga

bb.fu:                                            ; preds = %bb.ft
  %i.pb = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull @.str.2, i32 noundef 120)
          to label %bb.fv unwind label %bb.ge

bb.fv:                                            ; preds = %bb.fu
  %i.pc = load ptr, ptr %22, align 8
  %i.pd = load ptr, ptr %i.pa, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8
  %i.pg = call noundef ptr %i.pf(ptr noundef nonnull align 8 dereferenceable(8) %i.pa) #21
  %i.ph = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pb, ptr noundef nonnull @.str.8, ptr noundef %i.pc, ptr noundef %i.pg) #23 ; 0 uses
  %i.pi = load ptr, ptr %22, align 8              ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.pk = icmp eq ptr %i.pi, %i.pj
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.fv
  %i.pl = load i64, ptr %i.pj, align 8
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.pn = load ptr, ptr @stderr, align 8
  %i.po = call i32 @fflush(ptr noundef %i.pn)     ; 0 uses
  %i.pp = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 40
  %i.ps = load ptr, ptr %i.pr, align 8
  invoke void %i.ps(ptr noundef nonnull align 8 dereferenceable(8) %i.pp, i32 noundef 1)
          to label %bb.fw unwind label %bb.gf

bb.fw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  invoke void @__cxa_end_catch()
          to label %bb.fx unwind label %bb.gg

bb.fx:                                            ; preds = %bb.fw, %bb.fr, %bb.gb
  %i.pt = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 40
  %i.pw = load ptr, ptr %i.pv, align 8
  invoke void %i.pw(ptr noundef nonnull align 8 dereferenceable(8) %i.pt, i32 noundef 2)
          to label %bb.fy unwind label %bb.gd

bb.fy:                                            ; preds = %bb.fx
  %i.px = load ptr, ptr %i.ot, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 40
  %i.pz = load ptr, ptr %i.py, align 8
  invoke void %i.pz(ptr noundef nonnull align 8 dereferenceable(8) %i.ot, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit253.thread unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.qa = landingpad { ptr, i32 }
          catch ptr null
  %i.qb = extractvalue { ptr, i32 } %i.qa, 0
  call void @__clang_call_terminate(ptr %i.qb) #22
  unreachable

bb.ga:                                            ; preds = %bb.ft
  %i.qc = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 40
  %i.qf = load ptr, ptr %i.qe, align 8
  invoke void %i.qf(ptr noundef nonnull align 8 dereferenceable(8) %i.qc, i32 noundef 1)
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  invoke void @__cxa_end_catch()
          to label %bb.fx unwind label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %i.qg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.gi unwind label %bb.gv

bb.gd:                                            ; preds = %bb.gb, %bb.fx
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.ge:                                            ; preds = %bb.fu
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.gh

bb.gf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gg:                                            ; preds = %bb.fw
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf, %bb.ge
  %.pn129 = phi { ptr, i32 } [ %i.qj, %bb.gf ], [ %i.qi, %bb.ge ]
  invoke void @__cxa_end_catch()
          to label %bb.gi unwind label %bb.gv

end_hunk_2
begin_hunk_3_@_ZNK7testing8internal19MatchesRegexMatcher18DescribeNegationToEPSo:bb.a
  store ptr %i.l, ptr %2, align 8
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #26
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.n, ptr %i.a, align 8
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %2, align 8
  %i.q = load i64, ptr %i.a, align 8
  store i64 %i.q, ptr %i.l, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.r = phi ptr [ %i.p, %.noexc.i ], [ %i.l, %bb.b ] ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.k, align 1
  store i8 %i.s, ptr %i.r, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.k, i64 %i.n, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.t, ptr %i.u, align 8
  %i.v = load ptr, ptr %2, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %1)
          to label %_ZN7testing8internal16UniversalPrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit unwind label %bb.f

_ZN7testing8internal16UniversalPrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit: ; preds = %bb.e
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal16UniversalPrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit
  %i.z = load i64, ptr %i.l, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal16UniversalPrinterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5PrintERKS7_PSo.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.l
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  %i.ae = load i64, ptr %i.l, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal19MatchesRegexMatcher15MatchAndExplainINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.b, ptr %3, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8
  %i.h = load i64, ptr %i.a, align 8
  store i64 %i.h, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !9, !noundef !10
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %i.s = load ptr, ptr %3, align 8                ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = invoke noundef zeroext i1 @_ZN7testing8internal2RE9FullMatchEPKcRKS1_(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(168) %i.r)
          to label %_ZN7testing8internal2RE9FullMatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS1_.exit unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = invoke noundef zeroext i1 @_ZN7testing8internal2RE12PartialMatchEPKcRKS1_(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(168) %i.r)
          to label %_ZN7testing8internal2RE9FullMatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS1_.exit unwind label %bb.f

_ZN7testing8internal2RE9FullMatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS1_.exit: ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  %i.w = load ptr, ptr %3, align 8                ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal2RE9FullMatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS1_.exit
  %i.y = load i64, ptr %i.b, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal2RE9FullMatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i1 %i.v

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %3, align 8               ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.b
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.ad = load i64, ptr %i.b, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.aa
}

declare noundef zeroext i1 @_ZN7testing8internal2RE9FullMatchEPKcRKS1_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN7testing8internal2RE12PartialMatchEPKcRKS1_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %1 = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.e, align 8
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.d, !inline_history !0

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef 245)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.34, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef 251)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.34, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %1 = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.e, align 8
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.d, !inline_history !0

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE19MatchAndExplainImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSA_S9_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12DescribeImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEvRKSA_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %. = select i1 %2, i64 24, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE16GetDescriberImplINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISD_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISD_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPSB_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPSB_.exit.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #21, !inline_history !30
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISD_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISD_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPSB_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISD_EEED2Ev.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI23at_tests_std_array_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI23at_tests_std_array_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV23at_tests_std_array_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: cold inlinehint mustprogress noreturn uwtable
define internal void @"_ZZN23at_tests_std_array_Test8TestBodyEvEN3$_08__invokeEv"() #14 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.35) ; 0 uses
  tail call void @abort() #22
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI24at_tests_std_vector_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI24at_tests_std_vector_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV24at_tests_std_vector_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: cold inlinehint mustprogress noreturn uwtable
define internal void @"_ZZN24at_tests_std_vector_Test8TestBodyEvEN3$_08__invokeEv"() #14 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.36) ; 0 uses
  tail call void @abort() #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI29at_tests_InitializerList_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI29at_tests_InitializerList_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV29at_tests_InitializerList_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: cold inlinehint mustprogress noreturn uwtable
define internal void @"_ZZN29at_tests_InitializerList_Test8TestBodyEvEN3$_08__invokeEv"() #14 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.37) ; 0 uses
  tail call void @abort() #22
  unreachable
}
end_hunk_3
