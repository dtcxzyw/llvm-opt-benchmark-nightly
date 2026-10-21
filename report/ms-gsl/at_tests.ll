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
  br i1 %i.g, label %bb.b, label %bb.ai

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
  br i1 %i.h, label %bb.h, label %bb.ag

bb.g:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  br label %bb.ah

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
  br i1 %i.an, label %bb.r, label %bb.v

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
  br i1 %i.as, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.2, i32 noundef 49)
          to label %bb.u unwind label %bb.aa

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
          to label %.invoke unwind label %bb.ab

bb.v:                                             ; preds = %.invoke, %bb.q
  %i.bm = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i32 noundef 2)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.bq = load ptr, ptr %i.am, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #22
  unreachable

bb.y:                                             ; preds = %bb.s
  %i.bv = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i32 noundef 1)
          to label %.invoke unwind label %bb.z

.invoke:                                          ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.fk

bb.aa:                                            ; preds = %bb.t
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %.invoke, %bb.v
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.ca, %bb.aa ]
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.fk

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.z
  %.pn87 = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.bz, %bb.z ], [ %i.cc, %bb.ac ]
  %i.cd = load ptr, ptr %i.am, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.j, %bb.o, %bb.w
  %i.ci = load ptr, ptr %i.w, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %.thread

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o
  %i.cl = load ptr, ptr %i.w, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %bb.ag

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177: ; preds = %bb.ae, %bb.k
  %.pn89 = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %.pn87, %bb.ae ]
  %i.co = load ptr, ptr %i.w, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %bb.ah

.thread:                                          ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ap

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177, %bb.g
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177 ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.fj

bb.ai:                                            ; preds = %bb.ag, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cr = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 49, ptr noundef %i.cr)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cs = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i178 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i178, label %_ZN7testing7MessageD2Ev.exit180, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.al
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit180

_ZN7testing7MessageD2Ev.exit180:                  ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ap

bb.am:                                            ; preds = %bb.aj, %bb.ai
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn92 = phi { ptr, i32 } [ %i.cx, %bb.an ], [ %i.cw, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cy = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i181 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i181, label %_ZN7testing7MessageD2Ev.exit183, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182: ; preds = %bb.ao
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(128) %i.cy) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit183

_ZN7testing7MessageD2Ev.exit183:                  ; preds = %bb.ao, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.fj

bb.ap:                                            ; preds = %.thread, %_ZN7testing7MessageD2Ev.exit180
  %i.dc = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.dc, label %bb.aq, label %bb.bx

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %5, ptr noundef nonnull %i.f)
  %i.dd = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.2, i32 noundef 50, ptr noundef nonnull %i.b)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i184, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185: ; preds = %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  %.not.i.i186 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i186, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187, label %bb.as

bb.as:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %18 = atomicrmw sub ptr %i.dj, i32 1 acq_rel, align 4
  %i.dk = icmp eq i32 %18, 1
  br i1 %i.dk, label %bb.at, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187

bb.at:                                            ; preds = %bb.as
  %i.dl = load ptr, ptr %i.de, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.di, align 8
  invoke void %i.dn(ptr noundef %i.do)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187 unwind label %bb.au, !inline_history !0

bb.au:                                            ; preds = %bb.at
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187: ; preds = %bb.ar, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185, %bb.as, %bb.at
  br i1 %i.dd, label %bb.aw, label %bb.bv

bb.av:                                            ; preds = %bb.aq
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  br label %bb.bw

bb.aw:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187
  %i.ds = load ptr, ptr %i.b, align 8             ; 9 uses
  %.not94 = icmp eq ptr %i.ds, null
  br i1 %.not94, label %.thread276, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  switch i32 %i.dw, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread [
    i32 0, label %bb.ba
    i32 1, label %bb.be
  ]

bb.az:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ax
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200

bb.ba:                                            ; preds = %bb.ay
  %i.dy = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = invoke noundef i32 %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dy)
          to label %bb.bb unwind label %bb.az

bb.bb:                                            ; preds = %bb.ba
  %i.ed = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ec)
          to label %bb.bc unwind label %bb.az

bb.bc:                                            ; preds = %bb.bb
  %i.ee = load ptr, ptr %i.dy, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef zeroext i1 %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i1 noundef zeroext %i.ed)
          to label %bb.bd unwind label %bb.az

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.eh, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197

bb.be:                                            ; preds = %bb.ay
  %i.ei = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ej = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  br i1 %i.ej, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.ek = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  %i.em = extractvalue { ptr, i32 } %i.ek, 1
  %i.en = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.eo = icmp eq i32 %i.em, %i.en
  %i.ep = call ptr @__cxa_begin_catch(ptr %i.el) #21 ; 2 uses
  br i1 %i.eo, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.eq = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.2, i32 noundef 50)
          to label %bb.bj unwind label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.er = load ptr, ptr %6, align 8
  %i.es = load ptr, ptr %i.ep, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call noundef ptr %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.ep) #21
  %i.ew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str.8, ptr noundef %i.er, ptr noundef %i.ev) #23 ; 0 uses
  %i.ex = load ptr, ptr %6, align 8               ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.bj
  %i.fa = load i64, ptr %i.ey, align 8
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fc = load ptr, ptr @stderr, align 8
  %i.fd = call i32 @fflush(ptr noundef %i.fc)     ; 0 uses
  %i.fe = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8
  invoke void %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, i32 noundef 1)
          to label %.invoke312 unwind label %bb.bq

bb.bk:                                            ; preds = %.invoke312, %bb.bf
  %i.fi = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, i32 noundef 2)
          to label %bb.bl unwind label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.fm = load ptr, ptr %i.ei, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #22
  unreachable

bb.bn:                                            ; preds = %bb.bh
  %i.fr = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8
  invoke void %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, i32 noundef 1)
          to label %.invoke312 unwind label %bb.bo

.invoke312:                                       ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bt unwind label %bb.fk

bb.bp:                                            ; preds = %bb.bi
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bs

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %.invoke312, %bb.bk
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  %.pn95 = phi { ptr, i32 } [ %i.fx, %bb.bq ], [ %i.fw, %bb.bp ]
  invoke void @__cxa_end_catch()
          to label %bb.bt unwind label %bb.fk

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bo
  %.pn99 = phi { ptr, i32 } [ %.pn95, %bb.bs ], [ %i.fv, %bb.bo ], [ %i.fy, %bb.br ]
  %i.fz = load ptr, ptr %i.ei, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8
  invoke void %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread: ; preds = %bb.ay, %bb.bd, %bb.bl
  %i.ge = load ptr, ptr %i.ds, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #21, !inline_history !1
  br label %.thread276

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197: ; preds = %bb.bd
  %i.gh = load ptr, ptr %i.ds, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #21, !inline_history !1
  br label %bb.bv

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200: ; preds = %bb.bt, %bb.az
  %.pn101 = phi { ptr, i32 } [ %i.dx, %bb.az ], [ %.pn99, %bb.bt ]
  %i.gk = load ptr, ptr %i.ds, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #21, !inline_history !1
  br label %bb.bw

.thread276:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ce

bb.bv:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.bx

bb.bw:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200, %bb.av
  %.pn101.pn = phi { ptr, i32 } [ %.pn101, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200 ], [ %i.dr, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.fj

bb.bx:                                            ; preds = %bb.bv, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.gn = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 50, ptr noundef %i.gn)
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.go = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.go, null
  br i1 %.not.i.i201, label %_ZN7testing7MessageD2Ev.exit203, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202: ; preds = %bb.ca
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(128) %i.go) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit203

_ZN7testing7MessageD2Ev.exit203:                  ; preds = %bb.ca, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ce

bb.cb:                                            ; preds = %bb.by, %bb.bx
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bz
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn104 = phi { ptr, i32 } [ %i.gt, %bb.cc ], [ %i.gs, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.gu = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i204, label %_ZN7testing7MessageD2Ev.exit206, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %bb.cd
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(128) %i.gu) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit206

_ZN7testing7MessageD2Ev.exit206:                  ; preds = %bb.cd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.fj

bb.ce:                                            ; preds = %.thread276, %_ZN7testing7MessageD2Ev.exit203
  %i.gy = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.gy, label %bb.cf, label %bb.dm

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull %i.f)
  %i.gz = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.10, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.2, i32 noundef 51, ptr noundef nonnull %i.c)
          to label %bb.cg unwind label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %9, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not.i.i.i207 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i207, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208: ; preds = %bb.cg
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8
  %.not.i.i209 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i209, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210, label %bb.ch

bb.ch:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8
  %19 = atomicrmw sub ptr %i.hf, i32 1 acq_rel, align 4
  %i.hg = icmp eq i32 %19, 1
  br i1 %i.hg, label %bb.ci, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210

bb.ci:                                            ; preds = %bb.ch
  %i.hh = load ptr, ptr %i.ha, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = load ptr, ptr %i.he, align 8
  invoke void %i.hj(ptr noundef %i.hk)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210 unwind label %bb.cj, !inline_history !0

bb.cj:                                            ; preds = %bb.ci
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210: ; preds = %bb.cg, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208, %bb.ch, %bb.ci
  br i1 %i.gz, label %bb.cl, label %bb.dk

bb.ck:                                            ; preds = %bb.cf
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  br label %bb.dl

bb.cl:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210
  %i.ho = load ptr, ptr %i.c, align 8             ; 9 uses
  %.not106 = icmp eq ptr %i.ho, null
  br i1 %.not106, label %.thread281, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = invoke noundef i32 %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.ho)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  switch i32 %i.hs, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread [
    i32 0, label %bb.cp
    i32 1, label %bb.ct
  ]

bb.co:                                            ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.cm
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223

bb.cp:                                            ; preds = %bb.cn
  %i.hu = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = invoke noundef i32 %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.hu)
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp
  %i.hz = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.hy)
          to label %bb.cr unwind label %bb.co

bb.cr:                                            ; preds = %bb.cq
  %i.ia = load ptr, ptr %i.hu, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = invoke noundef zeroext i1 %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, i1 noundef zeroext %i.hz)
          to label %bb.cs unwind label %bb.co

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.id, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220

bb.ct:                                            ; preds = %bb.cn
  %i.ie = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.if = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.if, label %bb.cv, label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.cw:                                            ; preds = %bb.ct
  %i.ig = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  %i.ii = extractvalue { ptr, i32 } %i.ig, 1
  %i.ij = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ik = icmp eq i32 %i.ii, %i.ij
  %i.il = call ptr @__cxa_begin_catch(ptr %i.ih) #21 ; 2 uses
  br i1 %i.ik, label %bb.cx, label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  %i.im = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.2, i32 noundef 51)
          to label %bb.cy unwind label %bb.de

bb.cy:                                            ; preds = %bb.cx
  %i.in = load ptr, ptr %10, align 8
  %i.io = load ptr, ptr %i.il, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = call noundef ptr %i.iq(ptr noundef nonnull align 8 dereferenceable(8) %i.il) #21
  %i.is = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.im, ptr noundef nonnull @.str.8, ptr noundef %i.in, ptr noundef %i.ir) #23 ; 0 uses
  %i.it = load ptr, ptr %10, align 8              ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.cy
  %i.iw = load i64, ptr %i.iu, align 8
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.iy = load ptr, ptr @stderr, align 8
  %i.iz = call i32 @fflush(ptr noundef %i.iy)     ; 0 uses
  %i.ja = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8
  invoke void %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, i32 noundef 1)
          to label %.invoke313 unwind label %bb.df

bb.cz:                                            ; preds = %.invoke313, %bb.cu
  %i.je = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8
  invoke void %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %i.je, i32 noundef 2)
          to label %bb.da unwind label %bb.dg

bb.da:                                            ; preds = %bb.cz
  %i.ji = load ptr, ptr %i.ie, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  %i.jk = load ptr, ptr %i.jj, align 8
  invoke void %i.jk(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #22
  unreachable

bb.dc:                                            ; preds = %bb.cw
  %i.jn = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.jq = load ptr, ptr %i.jp, align 8
  invoke void %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, i32 noundef 1)
          to label %.invoke313 unwind label %bb.dd

.invoke313:                                       ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  invoke void @__cxa_end_catch()
          to label %bb.cz unwind label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.fk

bb.de:                                            ; preds = %bb.cx
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.dh

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dg:                                            ; preds = %.invoke313, %bb.cz
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.df, %bb.de
  %.pn107 = phi { ptr, i32 } [ %i.jt, %bb.df ], [ %i.js, %bb.de ]
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.fk

bb.di:                                            ; preds = %bb.dg, %bb.dh, %bb.dd
  %.pn111 = phi { ptr, i32 } [ %.pn107, %bb.dh ], [ %i.jr, %bb.dd ], [ %i.ju, %bb.dg ]
  %i.jv = load ptr, ptr %i.ie, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8
  invoke void %i.jx(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223 unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread: ; preds = %bb.cn, %bb.cs, %bb.da
  %i.ka = load ptr, ptr %i.ho, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.ho) #21, !inline_history !1
  br label %.thread281

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220: ; preds = %bb.cs
  %i.kd = load ptr, ptr %i.ho, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.ho) #21, !inline_history !1
  br label %bb.dk

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223: ; preds = %bb.di, %bb.co
  %.pn113 = phi { ptr, i32 } [ %i.ht, %bb.co ], [ %.pn111, %bb.di ]
  %i.kg = load ptr, ptr %i.ho, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.ho) #21, !inline_history !1
  br label %bb.dl

.thread281:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.dt

bb.dk:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.dm

bb.dl:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223, %bb.ck
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223 ], [ %i.hn, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.fj

bb.dm:                                            ; preds = %bb.dk, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.kj = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.dn unwind label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 51, ptr noundef %i.kj)
          to label %bb.do unwind label %bb.dq

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.dp unwind label %bb.dr

bb.dp:                                            ; preds = %bb.do
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.kk = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i224 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i224, label %_ZN7testing7MessageD2Ev.exit226, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225: ; preds = %bb.dp
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(128) %i.kk) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit226

_ZN7testing7MessageD2Ev.exit226:                  ; preds = %bb.dp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.dt

bb.dq:                                            ; preds = %bb.dn, %bb.dm
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.do
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn116 = phi { ptr, i32 } [ %i.kp, %bb.dr ], [ %i.ko, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.kq = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i227 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i227, label %_ZN7testing7MessageD2Ev.exit229, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228: ; preds = %bb.ds
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(128) %i.kq) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit229

_ZN7testing7MessageD2Ev.exit229:                  ; preds = %bb.ds, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.fj

bb.dt:                                            ; preds = %.thread281, %_ZN7testing7MessageD2Ev.exit226
  %i.ku = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.ku, label %bb.du, label %bb.fb

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %13, ptr noundef nonnull %i.f)
  %i.kv = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.11, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull @.str.2, i32 noundef 52, ptr noundef nonnull %i.d)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %bb.du
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %13, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8            ; 2 uses
  %.not.i.i.i230 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i230, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231: ; preds = %bb.dv
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8
  %.not.i.i232 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i232, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233, label %bb.dw

bb.dw:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231
  %i.la = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8
  %20 = atomicrmw sub ptr %i.lb, i32 1 acq_rel, align 4
  %i.lc = icmp eq i32 %20, 1
  br i1 %i.lc, label %bb.dx, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233

bb.dx:                                            ; preds = %bb.dw
  %i.ld = load ptr, ptr %i.kw, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = load ptr, ptr %i.la, align 8
  invoke void %i.lf(ptr noundef %i.lg)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233 unwind label %bb.dy, !inline_history !0

bb.dy:                                            ; preds = %bb.dx
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233: ; preds = %bb.dv, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231, %bb.dw, %bb.dx
  br i1 %i.kv, label %bb.ea, label %bb.ez

bb.dz:                                            ; preds = %bb.du
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  br label %bb.fa

bb.ea:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233
  %i.lk = load ptr, ptr %i.d, align 8             ; 9 uses
  %.not118 = icmp eq ptr %i.lk, null
  br i1 %.not118, label %.thread286, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = invoke noundef i32 %i.ln(ptr noundef nonnull align 8 dereferenceable(8) %i.lk)
          to label %bb.ec unwind label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  switch i32 %i.lo, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread [
    i32 0, label %bb.ee
    i32 1, label %bb.ei
  ]

bb.ed:                                            ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.eb
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246

bb.ee:                                            ; preds = %bb.ec
  %i.lq = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = invoke noundef i32 %i.lt(ptr noundef nonnull align 8 dereferenceable(8) %i.lq)
          to label %bb.ef unwind label %bb.ed

bb.ef:                                            ; preds = %bb.ee
  %i.lv = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.lu)
          to label %bb.eg unwind label %bb.ed

bb.eg:                                            ; preds = %bb.ef
  %i.lw = load ptr, ptr %i.lq, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = invoke noundef zeroext i1 %i.ly(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, i1 noundef zeroext %i.lv)
          to label %bb.eh unwind label %bb.ed

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.lz, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243

bb.ei:                                            ; preds = %bb.ec
  %i.ma = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.mb = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.ej unwind label %bb.el

bb.ej:                                            ; preds = %bb.ei
  br i1 %i.mb, label %bb.ek, label %bb.eo

bb.ek:                                            ; preds = %bb.ej
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.el:                                            ; preds = %bb.ei
  %i.mc = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.md = extractvalue { ptr, i32 } %i.mc, 0
  %i.me = extractvalue { ptr, i32 } %i.mc, 1
  %i.mf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.mg = icmp eq i32 %i.me, %i.mf
  %i.mh = call ptr @__cxa_begin_catch(ptr %i.md) #21 ; 2 uses
  br i1 %i.mg, label %bb.em, label %bb.er

bb.em:                                            ; preds = %bb.el
  %i.mi = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.2, i32 noundef 52)
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %bb.em
  %i.mj = load ptr, ptr %14, align 8
  %i.mk = load ptr, ptr %i.mh, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = call noundef ptr %i.mm(ptr noundef nonnull align 8 dereferenceable(8) %i.mh) #21
  %i.mo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mi, ptr noundef nonnull @.str.8, ptr noundef %i.mj, ptr noundef %i.mn) #23 ; 0 uses
  %i.mp = load ptr, ptr %14, align 8              ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.en
  %i.ms = load i64, ptr %i.mq, align 8
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.mu = load ptr, ptr @stderr, align 8
  %i.mv = call i32 @fflush(ptr noundef %i.mu)     ; 0 uses
  %i.mw = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 40
  %i.mz = load ptr, ptr %i.my, align 8
  invoke void %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, i32 noundef 1)
          to label %.invoke314 unwind label %bb.eu

bb.eo:                                            ; preds = %.invoke314, %bb.ej
  %i.na = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.nd = load ptr, ptr %i.nc, align 8
  invoke void %i.nd(ptr noundef nonnull align 8 dereferenceable(8) %i.na, i32 noundef 2)
          to label %bb.ep unwind label %bb.ev

bb.ep:                                            ; preds = %bb.eo
  %i.ne = load ptr, ptr %i.ma, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.ng = load ptr, ptr %i.nf, align 8
  invoke void %i.ng(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.nh = landingpad { ptr, i32 }
          catch ptr null
  %i.ni = extractvalue { ptr, i32 } %i.nh, 0
  call void @__clang_call_terminate(ptr %i.ni) #22
  unreachable

bb.er:                                            ; preds = %bb.el
  %i.nj = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 40
  %i.nm = load ptr, ptr %i.nl, align 8
  invoke void %i.nm(ptr noundef nonnull align 8 dereferenceable(8) %i.nj, i32 noundef 1)
          to label %.invoke314 unwind label %bb.es

.invoke314:                                       ; preds = %bb.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  invoke void @__cxa_end_catch()
          to label %bb.eo unwind label %bb.ev

bb.es:                                            ; preds = %bb.er
  %i.nn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ex unwind label %bb.fk

bb.et:                                            ; preds = %bb.em
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.ew

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %.invoke314, %bb.eo
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu, %bb.et
  %.pn119 = phi { ptr, i32 } [ %i.np, %bb.eu ], [ %i.no, %bb.et ]
  invoke void @__cxa_end_catch()
          to label %bb.ex unwind label %bb.fk

bb.ex:                                            ; preds = %bb.ev, %bb.ew, %bb.es
  %.pn123 = phi { ptr, i32 } [ %.pn119, %bb.ew ], [ %i.nn, %bb.es ], [ %i.nq, %bb.ev ]
  %i.nr = load ptr, ptr %i.ma, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 40
  %i.nt = load ptr, ptr %i.ns, align 8
  invoke void %i.nt(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246 unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
end_hunk_0
begin_hunk_1_@_ZN26at_tests_static_array_Test8TestBodyEv:bb.a
  br label %bb.fj

bb.fi:                                            ; preds = %.thread286, %_ZN7testing7MessageD2Ev.exit249
  ret void

bb.fj:                                            ; preds = %bb.ah, %_ZN7testing7MessageD2Ev.exit183, %bb.bw, %_ZN7testing7MessageD2Ev.exit206, %bb.dl, %_ZN7testing7MessageD2Ev.exit229, %bb.fa, %_ZN7testing7MessageD2Ev.exit252
  %.pn135.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %bb.ah ], [ %.pn92, %_ZN7testing7MessageD2Ev.exit183 ], [ %.pn128, %_ZN7testing7MessageD2Ev.exit252 ], [ %.pn125.pn, %bb.fa ], [ %.pn116, %_ZN7testing7MessageD2Ev.exit229 ], [ %.pn113.pn, %bb.dl ], [ %.pn104, %_ZN7testing7MessageD2Ev.exit206 ], [ %.pn101.pn, %bb.bw ]
  resume { ptr, i32 } %.pn135.pn.pn.pn.pn

bb.fk:                                            ; preds = %bb.ew, %bb.es, %bb.dh, %bb.dd, %bb.bs, %bb.bo, %bb.ad, %bb.z
  %i.oq = landingpad { ptr, i32 }
          catch ptr null
  %i.or = extractvalue { ptr, i32 } %i.oq, 0
  call void @__clang_call_terminate(ptr %i.or) #22
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
  br i1 %i.g, label %bb.b, label %bb.ai

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
  br i1 %i.h, label %bb.h, label %bb.ag

bb.g:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  br label %bb.ah

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
  br i1 %i.an, label %bb.r, label %bb.v

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
  br i1 %i.as, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.2, i32 noundef 72)
          to label %bb.u unwind label %bb.aa

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
          to label %.invoke unwind label %bb.ab

bb.v:                                             ; preds = %.invoke, %bb.q
  %i.bm = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i32 noundef 2)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.bq = load ptr, ptr %i.am, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #22
  unreachable

bb.y:                                             ; preds = %bb.s
  %i.bv = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i32 noundef 1)
          to label %.invoke unwind label %bb.z

.invoke:                                          ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.fk

bb.aa:                                            ; preds = %bb.t
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %.invoke, %bb.v
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.ca, %bb.aa ]
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.fk

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.z
  %.pn87 = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.bz, %bb.z ], [ %i.cc, %bb.ac ]
  %i.cd = load ptr, ptr %i.am, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.j, %bb.o, %bb.w
  %i.ci = load ptr, ptr %i.w, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %.thread

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o
  %i.cl = load ptr, ptr %i.w, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %bb.ag

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177: ; preds = %bb.ae, %bb.k
  %.pn89 = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %.pn87, %bb.ae ]
  %i.co = load ptr, ptr %i.w, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #21, !inline_history !1
  br label %bb.ah

.thread:                                          ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ap

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177, %bb.g
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit177 ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.fj

bb.ai:                                            ; preds = %bb.ag, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cr = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 72, ptr noundef %i.cr)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cs = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i178 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i178, label %_ZN7testing7MessageD2Ev.exit180, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.al
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit180

_ZN7testing7MessageD2Ev.exit180:                  ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ap

bb.am:                                            ; preds = %bb.aj, %bb.ai
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn92 = phi { ptr, i32 } [ %i.cx, %bb.an ], [ %i.cw, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cy = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i181 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i181, label %_ZN7testing7MessageD2Ev.exit183, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182: ; preds = %bb.ao
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(128) %i.cy) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit183

_ZN7testing7MessageD2Ev.exit183:                  ; preds = %bb.ao, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.fj

bb.ap:                                            ; preds = %.thread, %_ZN7testing7MessageD2Ev.exit180
  %i.dc = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.dc, label %bb.aq, label %bb.bx

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %5, ptr noundef nonnull %i.f)
  %i.dd = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.2, i32 noundef 73, ptr noundef nonnull %i.b)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i184, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185: ; preds = %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  %.not.i.i186 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i186, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187, label %bb.as

bb.as:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %18 = atomicrmw sub ptr %i.dj, i32 1 acq_rel, align 4
  %i.dk = icmp eq i32 %18, 1
  br i1 %i.dk, label %bb.at, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187

bb.at:                                            ; preds = %bb.as
  %i.dl = load ptr, ptr %i.de, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.di, align 8
  invoke void %i.dn(ptr noundef %i.do)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187 unwind label %bb.au, !inline_history !0

bb.au:                                            ; preds = %bb.at
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187: ; preds = %bb.ar, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i185, %bb.as, %bb.at
  br i1 %i.dd, label %bb.aw, label %bb.bv

bb.av:                                            ; preds = %bb.aq
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  br label %bb.bw

bb.aw:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187
  %i.ds = load ptr, ptr %i.b, align 8             ; 9 uses
  %.not94 = icmp eq ptr %i.ds, null
  br i1 %.not94, label %.thread276, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  switch i32 %i.dw, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread [
    i32 0, label %bb.ba
    i32 1, label %bb.be
  ]

bb.az:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ax
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200

bb.ba:                                            ; preds = %bb.ay
  %i.dy = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = invoke noundef i32 %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dy)
          to label %bb.bb unwind label %bb.az

bb.bb:                                            ; preds = %bb.ba
  %i.ed = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ec)
          to label %bb.bc unwind label %bb.az

bb.bc:                                            ; preds = %bb.bb
  %i.ee = load ptr, ptr %i.dy, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef zeroext i1 %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i1 noundef zeroext %i.ed)
          to label %bb.bd unwind label %bb.az

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.eh, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197

bb.be:                                            ; preds = %bb.ay
  %i.ei = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ej = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  br i1 %i.ej, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.ek = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  %i.em = extractvalue { ptr, i32 } %i.ek, 1
  %i.en = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.eo = icmp eq i32 %i.em, %i.en
  %i.ep = call ptr @__cxa_begin_catch(ptr %i.el) #21 ; 2 uses
  br i1 %i.eo, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.eq = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.2, i32 noundef 73)
          to label %bb.bj unwind label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.er = load ptr, ptr %6, align 8
  %i.es = load ptr, ptr %i.ep, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call noundef ptr %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.ep) #21
  %i.ew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str.8, ptr noundef %i.er, ptr noundef %i.ev) #23 ; 0 uses
  %i.ex = load ptr, ptr %6, align 8               ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.bj
  %i.fa = load i64, ptr %i.ey, align 8
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fc = load ptr, ptr @stderr, align 8
  %i.fd = call i32 @fflush(ptr noundef %i.fc)     ; 0 uses
  %i.fe = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8
  invoke void %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, i32 noundef 1)
          to label %.invoke312 unwind label %bb.bq

bb.bk:                                            ; preds = %.invoke312, %bb.bf
  %i.fi = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, i32 noundef 2)
          to label %bb.bl unwind label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.fm = load ptr, ptr %i.ei, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #22
  unreachable

bb.bn:                                            ; preds = %bb.bh
  %i.fr = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8
  invoke void %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, i32 noundef 1)
          to label %.invoke312 unwind label %bb.bo

.invoke312:                                       ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bt unwind label %bb.fk

bb.bp:                                            ; preds = %bb.bi
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bs

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %.invoke312, %bb.bk
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  %.pn95 = phi { ptr, i32 } [ %i.fx, %bb.bq ], [ %i.fw, %bb.bp ]
  invoke void @__cxa_end_catch()
          to label %bb.bt unwind label %bb.fk

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bo
  %.pn99 = phi { ptr, i32 } [ %.pn95, %bb.bs ], [ %i.fv, %bb.bo ], [ %i.fy, %bb.br ]
  %i.fz = load ptr, ptr %i.ei, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8
  invoke void %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread: ; preds = %bb.ay, %bb.bd, %bb.bl
  %i.ge = load ptr, ptr %i.ds, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #21, !inline_history !1
  br label %.thread276

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197: ; preds = %bb.bd
  %i.gh = load ptr, ptr %i.ds, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #21, !inline_history !1
  br label %bb.bv

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200: ; preds = %bb.bt, %bb.az
  %.pn101 = phi { ptr, i32 } [ %i.dx, %bb.az ], [ %.pn99, %bb.bt ]
  %i.gk = load ptr, ptr %i.ds, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #21, !inline_history !1
  br label %bb.bw

.thread276:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197.thread, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ce

bb.bv:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit197, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.bx

bb.bw:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200, %bb.av
  %.pn101.pn = phi { ptr, i32 } [ %.pn101, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit200 ], [ %i.dr, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.fj

bb.bx:                                            ; preds = %bb.bv, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.gn = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 73, ptr noundef %i.gn)
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.go = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.go, null
  br i1 %.not.i.i201, label %_ZN7testing7MessageD2Ev.exit203, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202: ; preds = %bb.ca
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(128) %i.go) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit203

_ZN7testing7MessageD2Ev.exit203:                  ; preds = %bb.ca, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ce

bb.cb:                                            ; preds = %bb.by, %bb.bx
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bz
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn104 = phi { ptr, i32 } [ %i.gt, %bb.cc ], [ %i.gs, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.gu = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i204, label %_ZN7testing7MessageD2Ev.exit206, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %bb.cd
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(128) %i.gu) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit206

_ZN7testing7MessageD2Ev.exit206:                  ; preds = %bb.cd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.fj

bb.ce:                                            ; preds = %.thread276, %_ZN7testing7MessageD2Ev.exit203
  %i.gy = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.gy, label %bb.cf, label %bb.dm

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull %i.f)
  %i.gz = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.10, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.2, i32 noundef 74, ptr noundef nonnull %i.c)
          to label %bb.cg unwind label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %9, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not.i.i.i207 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i207, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208: ; preds = %bb.cg
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8
  %.not.i.i209 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i209, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210, label %bb.ch

bb.ch:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8
  %19 = atomicrmw sub ptr %i.hf, i32 1 acq_rel, align 4
  %i.hg = icmp eq i32 %19, 1
  br i1 %i.hg, label %bb.ci, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210

bb.ci:                                            ; preds = %bb.ch
  %i.hh = load ptr, ptr %i.ha, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = load ptr, ptr %i.he, align 8
  invoke void %i.hj(ptr noundef %i.hk)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210 unwind label %bb.cj, !inline_history !0

bb.cj:                                            ; preds = %bb.ci
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210: ; preds = %bb.cg, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i208, %bb.ch, %bb.ci
  br i1 %i.gz, label %bb.cl, label %bb.dk

bb.ck:                                            ; preds = %bb.cf
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  br label %bb.dl

bb.cl:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210
  %i.ho = load ptr, ptr %i.c, align 8             ; 9 uses
  %.not106 = icmp eq ptr %i.ho, null
  br i1 %.not106, label %.thread281, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = invoke noundef i32 %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.ho)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  switch i32 %i.hs, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread [
    i32 0, label %bb.cp
    i32 1, label %bb.ct
  ]

bb.co:                                            ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.cm
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223

bb.cp:                                            ; preds = %bb.cn
  %i.hu = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = invoke noundef i32 %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.hu)
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp
  %i.hz = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.hy)
          to label %bb.cr unwind label %bb.co

bb.cr:                                            ; preds = %bb.cq
  %i.ia = load ptr, ptr %i.hu, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = invoke noundef zeroext i1 %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, i1 noundef zeroext %i.hz)
          to label %bb.cs unwind label %bb.co

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.id, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220

bb.ct:                                            ; preds = %bb.cn
  %i.ie = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.if = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.if, label %bb.cv, label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.cw:                                            ; preds = %bb.ct
  %i.ig = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  %i.ii = extractvalue { ptr, i32 } %i.ig, 1
  %i.ij = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ik = icmp eq i32 %i.ii, %i.ij
  %i.il = call ptr @__cxa_begin_catch(ptr %i.ih) #21 ; 2 uses
  br i1 %i.ik, label %bb.cx, label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  %i.im = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.2, i32 noundef 74)
          to label %bb.cy unwind label %bb.de

bb.cy:                                            ; preds = %bb.cx
  %i.in = load ptr, ptr %10, align 8
  %i.io = load ptr, ptr %i.il, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = call noundef ptr %i.iq(ptr noundef nonnull align 8 dereferenceable(8) %i.il) #21
  %i.is = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.im, ptr noundef nonnull @.str.8, ptr noundef %i.in, ptr noundef %i.ir) #23 ; 0 uses
  %i.it = load ptr, ptr %10, align 8              ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.cy
  %i.iw = load i64, ptr %i.iu, align 8
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.iy = load ptr, ptr @stderr, align 8
  %i.iz = call i32 @fflush(ptr noundef %i.iy)     ; 0 uses
  %i.ja = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8
  invoke void %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, i32 noundef 1)
          to label %.invoke313 unwind label %bb.df

bb.cz:                                            ; preds = %.invoke313, %bb.cu
  %i.je = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8
  invoke void %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %i.je, i32 noundef 2)
          to label %bb.da unwind label %bb.dg

bb.da:                                            ; preds = %bb.cz
  %i.ji = load ptr, ptr %i.ie, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  %i.jk = load ptr, ptr %i.jj, align 8
  invoke void %i.jk(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #22
  unreachable

bb.dc:                                            ; preds = %bb.cw
  %i.jn = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.jq = load ptr, ptr %i.jp, align 8
  invoke void %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, i32 noundef 1)
          to label %.invoke313 unwind label %bb.dd

.invoke313:                                       ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  invoke void @__cxa_end_catch()
          to label %bb.cz unwind label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.fk

bb.de:                                            ; preds = %bb.cx
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.dh

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dg:                                            ; preds = %.invoke313, %bb.cz
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.df, %bb.de
  %.pn107 = phi { ptr, i32 } [ %i.jt, %bb.df ], [ %i.js, %bb.de ]
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.fk

bb.di:                                            ; preds = %bb.dg, %bb.dh, %bb.dd
  %.pn111 = phi { ptr, i32 } [ %.pn107, %bb.dh ], [ %i.jr, %bb.dd ], [ %i.ju, %bb.dg ]
  %i.jv = load ptr, ptr %i.ie, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8
  invoke void %i.jx(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223 unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread: ; preds = %bb.cn, %bb.cs, %bb.da
  %i.ka = load ptr, ptr %i.ho, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.ho) #21, !inline_history !1
  br label %.thread281

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220: ; preds = %bb.cs
  %i.kd = load ptr, ptr %i.ho, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.ho) #21, !inline_history !1
  br label %bb.dk

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223: ; preds = %bb.di, %bb.co
  %.pn113 = phi { ptr, i32 } [ %i.ht, %bb.co ], [ %.pn111, %bb.di ]
  %i.kg = load ptr, ptr %i.ho, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.ho) #21, !inline_history !1
  br label %bb.dl

.thread281:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220.thread, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.dt

bb.dk:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit220, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.dm

bb.dl:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223, %bb.ck
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit223 ], [ %i.hn, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.fj

bb.dm:                                            ; preds = %bb.dk, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.kj = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.dn unwind label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 74, ptr noundef %i.kj)
          to label %bb.do unwind label %bb.dq

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.dp unwind label %bb.dr

bb.dp:                                            ; preds = %bb.do
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.kk = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i224 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i224, label %_ZN7testing7MessageD2Ev.exit226, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225: ; preds = %bb.dp
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(128) %i.kk) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit226

_ZN7testing7MessageD2Ev.exit226:                  ; preds = %bb.dp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.dt

bb.dq:                                            ; preds = %bb.dn, %bb.dm
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.do
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn116 = phi { ptr, i32 } [ %i.kp, %bb.dr ], [ %i.ko, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.kq = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i227 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i227, label %_ZN7testing7MessageD2Ev.exit229, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228: ; preds = %bb.ds
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(128) %i.kq) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit229

_ZN7testing7MessageD2Ev.exit229:                  ; preds = %bb.ds, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.fj

bb.dt:                                            ; preds = %.thread281, %_ZN7testing7MessageD2Ev.exit226
  %i.ku = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.ku, label %bb.du, label %bb.fb

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %13, ptr noundef nonnull %i.f)
  %i.kv = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.11, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull @.str.2, i32 noundef 75, ptr noundef nonnull %i.d)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %bb.du
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %13, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8            ; 2 uses
  %.not.i.i.i230 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i230, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231: ; preds = %bb.dv
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8
  %.not.i.i232 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i232, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233, label %bb.dw

bb.dw:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231
  %i.la = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8
  %20 = atomicrmw sub ptr %i.lb, i32 1 acq_rel, align 4
  %i.lc = icmp eq i32 %20, 1
  br i1 %i.lc, label %bb.dx, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233

bb.dx:                                            ; preds = %bb.dw
  %i.ld = load ptr, ptr %i.kw, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = load ptr, ptr %i.la, align 8
  invoke void %i.lf(ptr noundef %i.lg)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233 unwind label %bb.dy, !inline_history !0

bb.dy:                                            ; preds = %bb.dx
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233: ; preds = %bb.dv, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i231, %bb.dw, %bb.dx
  br i1 %i.kv, label %bb.ea, label %bb.ez

bb.dz:                                            ; preds = %bb.du
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  br label %bb.fa

bb.ea:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233
  %i.lk = load ptr, ptr %i.d, align 8             ; 9 uses
  %.not118 = icmp eq ptr %i.lk, null
  br i1 %.not118, label %.thread286, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = invoke noundef i32 %i.ln(ptr noundef nonnull align 8 dereferenceable(8) %i.lk)
          to label %bb.ec unwind label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  switch i32 %i.lo, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread [
    i32 0, label %bb.ee
    i32 1, label %bb.ei
  ]

bb.ed:                                            ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.eb
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246

bb.ee:                                            ; preds = %bb.ec
  %i.lq = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = invoke noundef i32 %i.lt(ptr noundef nonnull align 8 dereferenceable(8) %i.lq)
          to label %bb.ef unwind label %bb.ed

bb.ef:                                            ; preds = %bb.ee
  %i.lv = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.lu)
          to label %bb.eg unwind label %bb.ed

bb.eg:                                            ; preds = %bb.ef
  %i.lw = load ptr, ptr %i.lq, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = invoke noundef zeroext i1 %i.ly(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, i1 noundef zeroext %i.lv)
          to label %bb.eh unwind label %bb.ed

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.lz, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243

bb.ei:                                            ; preds = %bb.ec
  %i.ma = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.mb = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.ej unwind label %bb.el

bb.ej:                                            ; preds = %bb.ei
  br i1 %i.mb, label %bb.ek, label %bb.eo

bb.ek:                                            ; preds = %bb.ej
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.el:                                            ; preds = %bb.ei
  %i.mc = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.md = extractvalue { ptr, i32 } %i.mc, 0
  %i.me = extractvalue { ptr, i32 } %i.mc, 1
  %i.mf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.mg = icmp eq i32 %i.me, %i.mf
  %i.mh = call ptr @__cxa_begin_catch(ptr %i.md) #21 ; 2 uses
  br i1 %i.mg, label %bb.em, label %bb.er

bb.em:                                            ; preds = %bb.el
  %i.mi = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.2, i32 noundef 75)
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %bb.em
  %i.mj = load ptr, ptr %14, align 8
  %i.mk = load ptr, ptr %i.mh, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = call noundef ptr %i.mm(ptr noundef nonnull align 8 dereferenceable(8) %i.mh) #21
  %i.mo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mi, ptr noundef nonnull @.str.8, ptr noundef %i.mj, ptr noundef %i.mn) #23 ; 0 uses
  %i.mp = load ptr, ptr %14, align 8              ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.en
  %i.ms = load i64, ptr %i.mq, align 8
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.mu = load ptr, ptr @stderr, align 8
  %i.mv = call i32 @fflush(ptr noundef %i.mu)     ; 0 uses
  %i.mw = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 40
  %i.mz = load ptr, ptr %i.my, align 8
  invoke void %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.mw, i32 noundef 1)
          to label %.invoke314 unwind label %bb.eu

bb.eo:                                            ; preds = %.invoke314, %bb.ej
  %i.na = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.nd = load ptr, ptr %i.nc, align 8
  invoke void %i.nd(ptr noundef nonnull align 8 dereferenceable(8) %i.na, i32 noundef 2)
          to label %bb.ep unwind label %bb.ev

bb.ep:                                            ; preds = %bb.eo
  %i.ne = load ptr, ptr %i.ma, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.ng = load ptr, ptr %i.nf, align 8
  invoke void %i.ng(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.nh = landingpad { ptr, i32 }
          catch ptr null
  %i.ni = extractvalue { ptr, i32 } %i.nh, 0
  call void @__clang_call_terminate(ptr %i.ni) #22
  unreachable

bb.er:                                            ; preds = %bb.el
  %i.nj = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 40
  %i.nm = load ptr, ptr %i.nl, align 8
  invoke void %i.nm(ptr noundef nonnull align 8 dereferenceable(8) %i.nj, i32 noundef 1)
          to label %.invoke314 unwind label %bb.es

.invoke314:                                       ; preds = %bb.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  invoke void @__cxa_end_catch()
          to label %bb.eo unwind label %bb.ev

bb.es:                                            ; preds = %bb.er
  %i.nn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ex unwind label %bb.fk

bb.et:                                            ; preds = %bb.em
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.ew

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %.invoke314, %bb.eo
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu, %bb.et
  %.pn119 = phi { ptr, i32 } [ %i.np, %bb.eu ], [ %i.no, %bb.et ]
  invoke void @__cxa_end_catch()
          to label %bb.ex unwind label %bb.fk

bb.ex:                                            ; preds = %bb.ev, %bb.ew, %bb.es
  %.pn123 = phi { ptr, i32 } [ %.pn119, %bb.ew ], [ %i.nn, %bb.es ], [ %i.nq, %bb.ev ]
  %i.nr = load ptr, ptr %i.ma, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 40
  %i.nt = load ptr, ptr %i.ns, align 8
  invoke void %i.nt(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246 unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.nu = landingpad { ptr, i32 }
          catch ptr null
  %i.nv = extractvalue { ptr, i32 } %i.nu, 0
  call void @__clang_call_terminate(ptr %i.nv) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread: ; preds = %bb.ec, %bb.eh, %bb.ep
  %i.nw = load ptr, ptr %i.lk, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(8) %i.lk) #21, !inline_history !1
  br label %.thread286

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243: ; preds = %bb.eh
  %i.nz = load ptr, ptr %i.lk, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(8) %i.lk) #21, !inline_history !1
  br label %bb.ez

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246: ; preds = %bb.ex, %bb.ed
  %.pn125 = phi { ptr, i32 } [ %i.lp, %bb.ed ], [ %.pn123, %bb.ex ]
  %i.oc = load ptr, ptr %i.lk, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(8) %i.lk) #21, !inline_history !1
  br label %bb.fa

.thread286:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243.thread, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.fi

bb.ez:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit243, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.fb

bb.fa:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246, %bb.dz
  %.pn125.pn = phi { ptr, i32 } [ %.pn125, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit246 ], [ %i.lj, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.fj

bb.fb:                                            ; preds = %bb.ez, %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.of = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.fc unwind label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 75, ptr noundef %i.of)
          to label %bb.fd unwind label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.fe unwind label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.og = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i247 = icmp eq ptr %i.og, null
  br i1 %.not.i.i247, label %_ZN7testing7MessageD2Ev.exit249, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248: ; preds = %bb.fe
  %i.oh = load ptr, ptr %i.og, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(128) %i.og) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit249

_ZN7testing7MessageD2Ev.exit249:                  ; preds = %bb.fe, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.fi

bb.ff:                                            ; preds = %bb.fc, %bb.fb
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fd
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.pn128 = phi { ptr, i32 } [ %i.ol, %bb.fg ], [ %i.ok, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.om = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i250 = icmp eq ptr %i.om, null
  br i1 %.not.i.i250, label %_ZN7testing7MessageD2Ev.exit252, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251: ; preds = %bb.fh
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(128) %i.om) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit252

_ZN7testing7MessageD2Ev.exit252:                  ; preds = %bb.fh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.fj

bb.fi:                                            ; preds = %.thread286, %_ZN7testing7MessageD2Ev.exit249
  ret void

bb.fj:                                            ; preds = %bb.ah, %_ZN7testing7MessageD2Ev.exit183, %bb.bw, %_ZN7testing7MessageD2Ev.exit206, %bb.dl, %_ZN7testing7MessageD2Ev.exit229, %bb.fa, %_ZN7testing7MessageD2Ev.exit252
  %.pn135.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %bb.ah ], [ %.pn92, %_ZN7testing7MessageD2Ev.exit183 ], [ %.pn128, %_ZN7testing7MessageD2Ev.exit252 ], [ %.pn125.pn, %bb.fa ], [ %.pn116, %_ZN7testing7MessageD2Ev.exit229 ], [ %.pn113.pn, %bb.dl ], [ %.pn104, %_ZN7testing7MessageD2Ev.exit206 ], [ %.pn101.pn, %bb.bw ]
  resume { ptr, i32 } %.pn135.pn.pn.pn.pn

bb.fk:                                            ; preds = %bb.ew, %bb.es, %bb.dh, %bb.dd, %bb.bs, %bb.bo, %bb.ad, %bb.z
  %i.oq = landingpad { ptr, i32 }
          catch ptr null
  %i.or = extractvalue { ptr, i32 } %i.oq, 0
  call void @__clang_call_terminate(ptr %i.or) #22
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
  br i1 %i.g, label %bb.b, label %bb.ak

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
  br i1 %i.h, label %bb.j, label %bb.ai

bb.h:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.i:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  br label %bb.aj

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
  br i1 %i.ao, label %bb.t, label %bb.x

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
  br i1 %i.at, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.av = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.2, i32 noundef 95)
          to label %bb.w unwind label %bb.ac

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
          to label %.invoke unwind label %bb.ad

bb.x:                                             ; preds = %.invoke, %bb.s
  %i.bn = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i32 noundef 2)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.br = load ptr, ptr %i.an, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #22
  unreachable

bb.aa:                                            ; preds = %bb.u
  %i.bw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i32 noundef 1)
          to label %.invoke unwind label %bb.ab

.invoke:                                          ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.fw

bb.ac:                                            ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.af

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %.invoke, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.ad ], [ %i.cb, %bb.ac ]
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.fw

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ab
  %.pn92 = phi { ptr, i32 } [ %.pn, %bb.af ], [ %i.ca, %bb.ab ], [ %i.cd, %bb.ae ]
  %i.ce = load ptr, ptr %i.an, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit186 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.l, %bb.q, %bb.y
  %i.cj = load ptr, ptr %i.x, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #21, !inline_history !1
  br label %.thread

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.q
  %i.cm = load ptr, ptr %i.x, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #21, !inline_history !1
  br label %bb.ai

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit186: ; preds = %bb.ag, %bb.m
  %.pn94 = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %.pn92, %bb.ag ]
  %i.cp = load ptr, ptr %i.x, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #21, !inline_history !1
  br label %bb.aj

.thread:                                          ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.at

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit186, %bb.i, %bb.h
  %.pn94.pn = phi { ptr, i32 } [ %.pn94, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit186 ], [ %i.w, %bb.i ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.ak:                                            ; preds = %bb.ai, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cs = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 95, ptr noundef %i.cs)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ct = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i187, label %_ZN7testing7MessageD2Ev.exit189, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.ao
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit189

_ZN7testing7MessageD2Ev.exit189:                  ; preds = %bb.ao, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.at

bb.ap:                                            ; preds = %bb.ak
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit192

bb.aq:                                            ; preds = %bb.am, %bb.al
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn97 = phi { ptr, i32 } [ %i.cz, %bb.ar ], [ %i.cy, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.da = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i190 = icmp eq ptr %i.da, null
  br i1 %.not.i.i190, label %_ZN7testing7MessageD2Ev.exit192, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191: ; preds = %bb.as
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(128) %i.da) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit192

_ZN7testing7MessageD2Ev.exit192:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191, %bb.as, %bb.ap
  %.pn97.pn = phi { ptr, i32 } [ %i.cx, %bb.ap ], [ %.pn97, %bb.as ], [ %.pn97, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.at:                                            ; preds = %.thread, %_ZN7testing7MessageD2Ev.exit189
  %i.de = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.de, label %bb.au, label %bb.cc

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  invoke void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %5, ptr noundef nonnull %i.f)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.df = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.2, i32 noundef 96, ptr noundef nonnull %i.b)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i193, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i194

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i194: ; preds = %bb.aw
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %.not.i.i195 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i195, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196, label %bb.ax

bb.ax:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i194
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %18 = atomicrmw sub ptr %i.dl, i32 1 acq_rel, align 4
  %i.dm = icmp eq i32 %18, 1
  br i1 %i.dm, label %bb.ay, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196

bb.ay:                                            ; preds = %bb.ax
  %i.dn = load ptr, ptr %i.dg, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = load ptr, ptr %i.dk, align 8
  invoke void %i.dp(ptr noundef %i.dq)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196 unwind label %bb.az, !inline_history !0

bb.az:                                            ; preds = %bb.ay
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196: ; preds = %bb.aw, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i194, %bb.ax, %bb.ay
  br i1 %i.df, label %bb.bc, label %bb.ca

bb.ba:                                            ; preds = %bb.au
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bb:                                            ; preds = %bb.av
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  br label %bb.cb

bb.bc:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196
  %i.dv = load ptr, ptr %i.b, align 8             ; 9 uses
  %.not100 = icmp eq ptr %i.dv, null
  br i1 %.not100, label %.thread302, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  switch i32 %i.dz, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206.thread [
    i32 0, label %bb.bg
    i32 1, label %bb.bk
  ]

bb.bf:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bd
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit209

bb.bg:                                            ; preds = %bb.be
  %i.eb = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = invoke noundef i32 %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.eb)
          to label %bb.bh unwind label %bb.bf

bb.bh:                                            ; preds = %bb.bg
  %i.eg = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ef)
          to label %bb.bi unwind label %bb.bf

bb.bi:                                            ; preds = %bb.bh
  %i.eh = load ptr, ptr %i.eb, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, i1 noundef zeroext %i.eg)
          to label %bb.bj unwind label %bb.bf

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.ek, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206

bb.bk:                                            ; preds = %bb.be
  %i.el = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.em = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.em, label %.critedge.i197, label %bb.bp

.critedge.i197:                                   ; preds = %bb.bl
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.en = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  %i.ep = extractvalue { ptr, i32 } %i.en, 1
  %i.eq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.er = icmp eq i32 %i.ep, %i.eq
  %i.es = call ptr @__cxa_begin_catch(ptr %i.eo) #21 ; 2 uses
  br i1 %i.er, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  %i.et = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.2, i32 noundef 96)
          to label %bb.bo unwind label %bb.bu

bb.bo:                                            ; preds = %bb.bn
  %i.eu = load ptr, ptr %6, align 8
  %i.ev = load ptr, ptr %i.es, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = call noundef ptr %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.es) #21
  %i.ez = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.8, ptr noundef %i.eu, ptr noundef %i.ey) #23 ; 0 uses
  %i.fa = load ptr, ptr %6, align 8               ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.bo
  %i.fd = load i64, ptr %i.fb, align 8
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ff = load ptr, ptr @stderr, align 8
  %i.fg = call i32 @fflush(ptr noundef %i.ff)     ; 0 uses
  %i.fh = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8
  invoke void %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, i32 noundef 1)
          to label %.invoke338 unwind label %bb.bv

bb.bp:                                            ; preds = %.invoke338, %bb.bl
  %i.fl = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i32 noundef 2)
          to label %bb.bq unwind label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.fp = load ptr, ptr %i.el, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8
  invoke void %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206.thread unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #22
  unreachable

bb.bs:                                            ; preds = %bb.bm
  %i.fu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8
  invoke void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, i32 noundef 1)
          to label %.invoke338 unwind label %bb.bt

.invoke338:                                       ; preds = %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  invoke void @__cxa_end_catch()
          to label %bb.bp unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.by unwind label %bb.fw

bb.bu:                                            ; preds = %bb.bn
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bx

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %.invoke338, %bb.bp
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %.pn101 = phi { ptr, i32 } [ %i.ga, %bb.bv ], [ %i.fz, %bb.bu ]
  invoke void @__cxa_end_catch()
          to label %bb.by unwind label %bb.fw

bb.by:                                            ; preds = %bb.bw, %bb.bx, %bb.bt
  %.pn105 = phi { ptr, i32 } [ %.pn101, %bb.bx ], [ %i.fy, %bb.bt ], [ %i.gb, %bb.bw ]
  %i.gc = load ptr, ptr %i.el, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8
  invoke void %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit209 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206.thread: ; preds = %bb.be, %bb.bj, %bb.bq
  %i.gh = load ptr, ptr %i.dv, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(8) %i.dv) #21, !inline_history !1
  br label %.thread302

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206: ; preds = %bb.bj
  %i.gk = load ptr, ptr %i.dv, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %i.dv) #21, !inline_history !1
  br label %bb.ca

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit209: ; preds = %bb.by, %bb.bf
  %.pn107 = phi { ptr, i32 } [ %i.ea, %bb.bf ], [ %.pn105, %bb.by ]
  %i.gn = load ptr, ptr %i.dv, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(8) %i.dv) #21, !inline_history !1
  br label %bb.cb

.thread302:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206.thread, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.cl

bb.ca:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit206, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.cc

bb.cb:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit209, %bb.bb, %bb.ba
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit209 ], [ %i.du, %bb.bb ], [ %i.dt, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.cc:                                            ; preds = %bb.ca, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.gq = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 96, ptr noundef %i.gq)
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.cg unwind label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.gr = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i210 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i210, label %_ZN7testing7MessageD2Ev.exit212, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211: ; preds = %bb.cg
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(128) %i.gr) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit212

_ZN7testing7MessageD2Ev.exit212:                  ; preds = %bb.cg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cc
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit215

bb.ci:                                            ; preds = %bb.ce, %bb.cd
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn110 = phi { ptr, i32 } [ %i.gx, %bb.cj ], [ %i.gw, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.gy = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i213 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i213, label %_ZN7testing7MessageD2Ev.exit215, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.ck
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(128) %i.gy) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit215

_ZN7testing7MessageD2Ev.exit215:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, %bb.ck, %bb.ch
  %.pn110.pn = phi { ptr, i32 } [ %i.gv, %bb.ch ], [ %.pn110, %bb.ck ], [ %.pn110, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.cl:                                            ; preds = %.thread302, %_ZN7testing7MessageD2Ev.exit212
  %i.hc = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.hc, label %bb.cm, label %bb.dv

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  invoke void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %9, ptr noundef nonnull %i.f)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.hd = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.10, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.2, i32 noundef 97, ptr noundef nonnull %i.c)
          to label %bb.co unwind label %bb.ct

bb.co:                                            ; preds = %bb.cn
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %9, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8            ; 2 uses
  %.not.i.i.i216 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i216, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i217

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i217: ; preds = %bb.co
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  %.not.i.i218 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i218, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219, label %bb.cp

bb.cp:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i217
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8
  %19 = atomicrmw sub ptr %i.hj, i32 1 acq_rel, align 4
  %i.hk = icmp eq i32 %19, 1
  br i1 %i.hk, label %bb.cq, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219

bb.cq:                                            ; preds = %bb.cp
  %i.hl = load ptr, ptr %i.he, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = load ptr, ptr %i.hi, align 8
  invoke void %i.hn(ptr noundef %i.ho)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219 unwind label %bb.cr, !inline_history !0

bb.cr:                                            ; preds = %bb.cq
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219: ; preds = %bb.co, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i217, %bb.cp, %bb.cq
  br i1 %i.hd, label %bb.cu, label %bb.dt

bb.cs:                                            ; preds = %bb.cm
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.ct:                                            ; preds = %bb.cn
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  br label %bb.du

bb.cu:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219
  %i.ht = load ptr, ptr %i.c, align 8             ; 9 uses
  %.not113 = icmp eq ptr %i.ht, null
  br i1 %.not113, label %.thread307, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = invoke noundef i32 %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.ht)
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  switch i32 %i.hx, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229.thread [
    i32 0, label %bb.cy
    i32 1, label %bb.dc
  ]

bb.cx:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cv
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit232

bb.cy:                                            ; preds = %bb.cw
  %i.hz = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = invoke noundef i32 %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hz)
          to label %bb.cz unwind label %bb.cx

bb.cz:                                            ; preds = %bb.cy
  %i.ie = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.id)
          to label %bb.da unwind label %bb.cx

bb.da:                                            ; preds = %bb.cz
  %i.if = load ptr, ptr %i.hz, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = invoke noundef zeroext i1 %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, i1 noundef zeroext %i.ie)
          to label %bb.db unwind label %bb.cx

bb.db:                                            ; preds = %bb.da
  br i1 %i.ii, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229

bb.dc:                                            ; preds = %bb.cw
  %i.ij = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.ik = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.ik, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.df:                                            ; preds = %bb.dc
  %i.il = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  %i.in = extractvalue { ptr, i32 } %i.il, 1
  %i.io = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ip = icmp eq i32 %i.in, %i.io
  %i.iq = call ptr @__cxa_begin_catch(ptr %i.im) #21 ; 2 uses
  br i1 %i.ip, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  %i.ir = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.2, i32 noundef 97)
          to label %bb.dh unwind label %bb.dn

bb.dh:                                            ; preds = %bb.dg
  %i.is = load ptr, ptr %10, align 8
  %i.it = load ptr, ptr %i.iq, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = call noundef ptr %i.iv(ptr noundef nonnull align 8 dereferenceable(8) %i.iq) #21
  %i.ix = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ir, ptr noundef nonnull @.str.8, ptr noundef %i.is, ptr noundef %i.iw) #23 ; 0 uses
  %i.iy = load ptr, ptr %10, align 8              ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.dh
  %i.jb = load i64, ptr %i.iz, align 8
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.jd = load ptr, ptr @stderr, align 8
  %i.je = call i32 @fflush(ptr noundef %i.jd)     ; 0 uses
  %i.jf = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.ji = load ptr, ptr %i.jh, align 8
  invoke void %i.ji(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, i32 noundef 1)
          to label %.invoke339 unwind label %bb.do

bb.di:                                            ; preds = %.invoke339, %bb.dd
  %i.jj = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8
  invoke void %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, i32 noundef 2)
          to label %bb.dj unwind label %bb.dp

bb.dj:                                            ; preds = %bb.di
  %i.jn = load ptr, ptr %i.ij, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jp = load ptr, ptr %i.jo, align 8
  invoke void %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229.thread unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #22
  unreachable

bb.dl:                                            ; preds = %bb.df
  %i.js = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 40
  %i.jv = load ptr, ptr %i.ju, align 8
  invoke void %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %i.js, i32 noundef 1)
          to label %.invoke339 unwind label %bb.dm

.invoke339:                                       ; preds = %bb.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dr unwind label %bb.fw

bb.dn:                                            ; preds = %bb.dg
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.dq

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %.invoke339, %bb.di
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do, %bb.dn
  %.pn114 = phi { ptr, i32 } [ %i.jy, %bb.do ], [ %i.jx, %bb.dn ]
  invoke void @__cxa_end_catch()
          to label %bb.dr unwind label %bb.fw

bb.dr:                                            ; preds = %bb.dp, %bb.dq, %bb.dm
  %.pn118 = phi { ptr, i32 } [ %.pn114, %bb.dq ], [ %i.jw, %bb.dm ], [ %i.jz, %bb.dp ]
  %i.ka = load ptr, ptr %i.ij, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 40
  %i.kc = load ptr, ptr %i.kb, align 8
  invoke void %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit232 unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.kd = landingpad { ptr, i32 }
          catch ptr null
  %i.ke = extractvalue { ptr, i32 } %i.kd, 0
  call void @__clang_call_terminate(ptr %i.ke) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229.thread: ; preds = %bb.cw, %bb.db, %bb.dj
  %i.kf = load ptr, ptr %i.ht, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(8) %i.ht) #21, !inline_history !1
  br label %.thread307

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229: ; preds = %bb.db
  %i.ki = load ptr, ptr %i.ht, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(8) %i.ht) #21, !inline_history !1
  br label %bb.dt

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit232: ; preds = %bb.dr, %bb.cx
  %.pn120 = phi { ptr, i32 } [ %i.hy, %bb.cx ], [ %.pn118, %bb.dr ]
  %i.kl = load ptr, ptr %i.ht, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.ht) #21, !inline_history !1
  br label %bb.du

.thread307:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229.thread, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.ee

bb.dt:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit229, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.dv

bb.du:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit232, %bb.ct, %bb.cs
  %.pn120.pn = phi { ptr, i32 } [ %.pn120, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit232 ], [ %i.hs, %bb.ct ], [ %i.hr, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.dv:                                            ; preds = %bb.dt, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.dw unwind label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ko = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.dx unwind label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 97, ptr noundef %i.ko)
          to label %bb.dy unwind label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.dz unwind label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.kp = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i233 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i233, label %_ZN7testing7MessageD2Ev.exit235, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234: ; preds = %bb.dz
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit235

_ZN7testing7MessageD2Ev.exit235:                  ; preds = %bb.dz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ee

bb.ea:                                            ; preds = %bb.dv
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit238

bb.eb:                                            ; preds = %bb.dx, %bb.dw
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ec:                                            ; preds = %bb.dy
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.pn123 = phi { ptr, i32 } [ %i.kv, %bb.ec ], [ %i.ku, %bb.eb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.kw = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i236 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i236, label %_ZN7testing7MessageD2Ev.exit238, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237: ; preds = %bb.ed
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(128) %i.kw) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit238

_ZN7testing7MessageD2Ev.exit238:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237, %bb.ed, %bb.ea
  %.pn123.pn = phi { ptr, i32 } [ %i.kt, %bb.ea ], [ %.pn123, %bb.ed ], [ %.pn123, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit264

bb.ee:                                            ; preds = %.thread307, %_ZN7testing7MessageD2Ev.exit235
  %i.la = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.la, label %bb.ef, label %bb.fn

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  invoke void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %13, ptr noundef nonnull %i.f)
          to label %bb.eg unwind label %bb.el

bb.eg:                                            ; preds = %bb.ef
  %i.lb = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.11, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull @.str.2, i32 noundef 98, ptr noundef nonnull %i.d)
          to label %bb.eh unwind label %bb.em

bb.eh:                                            ; preds = %bb.eg
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %13, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8            ; 2 uses
  %.not.i.i.i239 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i239, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240: ; preds = %bb.eh
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8
  %.not.i.i241 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i241, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242, label %bb.ei

bb.ei:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240
  %i.lg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8
  %20 = atomicrmw sub ptr %i.lh, i32 1 acq_rel, align 4
  %i.li = icmp eq i32 %20, 1
  br i1 %i.li, label %bb.ej, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242

bb.ej:                                            ; preds = %bb.ei
  %i.lj = load ptr, ptr %i.lc, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = load ptr, ptr %i.lg, align 8
  invoke void %i.ll(ptr noundef %i.lm)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242 unwind label %bb.ek, !inline_history !0

bb.ek:                                            ; preds = %bb.ej
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242: ; preds = %bb.eh, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240, %bb.ei, %bb.ej
  br i1 %i.lb, label %bb.en, label %bb.fl

bb.el:                                            ; preds = %bb.ef
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.em:                                            ; preds = %bb.eg
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  br label %bb.fm

bb.en:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242
  %i.lr = load ptr, ptr %i.d, align 8             ; 9 uses
  %.not126 = icmp eq ptr %i.lr, null
  br i1 %.not126, label %.thread312, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = invoke noundef i32 %i.lu(ptr noundef nonnull align 8 dereferenceable(8) %i.lr)
          to label %bb.ep unwind label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  switch i32 %i.lv, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit252.thread [
    i32 0, label %bb.er
    i32 1, label %bb.ev
  ]

bb.eq:                                            ; preds = %bb.et, %bb.es, %bb.er, %bb.eo
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit255

bb.er:                                            ; preds = %bb.ep
  %i.lx = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = invoke noundef i32 %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.lx)
          to label %bb.es unwind label %bb.eq

bb.es:                                            ; preds = %bb.er
  %i.mc = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.mb)
          to label %bb.et unwind label %bb.eq

bb.et:                                            ; preds = %bb.es
  %i.md = load ptr, ptr %i.lx, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = invoke noundef zeroext i1 %i.mf(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, i1 noundef zeroext %i.mc)
          to label %bb.eu unwind label %bb.eq

bb.eu:                                            ; preds = %bb.et
  br i1 %i.mg, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit252.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit252

bb.ev:                                            ; preds = %bb.ep
  %i.mh = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.mi = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.ew unwind label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.mi, label %.critedge.i243, label %bb.fa

.critedge.i243:                                   ; preds = %bb.ew
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.ex:                                            ; preds = %bb.ev
  %i.mj = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.mk = extractvalue { ptr, i32 } %i.mj, 0
  %i.ml = extractvalue { ptr, i32 } %i.mj, 1
  %i.mm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.mn = icmp eq i32 %i.ml, %i.mm
  %i.mo = call ptr @__cxa_begin_catch(ptr %i.mk) #21 ; 2 uses
  br i1 %i.mn, label %bb.ey, label %bb.fd

bb.ey:                                            ; preds = %bb.ex
  %i.mp = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.2, i32 noundef 98)
          to label %bb.ez unwind label %bb.ff

bb.ez:                                            ; preds = %bb.ey
  %i.mq = load ptr, ptr %14, align 8
  %i.mr = load ptr, ptr %i.mo, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = call noundef ptr %i.mt(ptr noundef nonnull align 8 dereferenceable(8) %i.mo) #21
  %i.mv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mp, ptr noundef nonnull @.str.8, ptr noundef %i.mq, ptr noundef %i.mu) #23 ; 0 uses
  %i.mw = load ptr, ptr %14, align 8              ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.my = icmp eq ptr %i.mw, %i.mx
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.ez
  %i.mz = load i64, ptr %i.mx, align 8
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.na) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.nb = load ptr, ptr @stderr, align 8
  %i.nc = call i32 @fflush(ptr noundef %i.nb)     ; 0 uses
  %i.nd = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.ng = load ptr, ptr %i.nf, align 8
  invoke void %i.ng(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, i32 noundef 1)
          to label %.invoke340 unwind label %bb.fg

bb.fa:                                            ; preds = %.invoke340, %bb.ew
  %i.nh = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 40
  %i.nk = load ptr, ptr %i.nj, align 8
  invoke void %i.nk(ptr noundef nonnull align 8 dereferenceable(8) %i.nh, i32 noundef 2)
          to label %bb.fb unwind label %bb.fh

bb.fb:                                            ; preds = %bb.fa
  %i.nl = load ptr, ptr %i.mh, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 40
  %i.nn = load ptr, ptr %i.nm, align 8
  invoke void %i.nn(ptr noundef nonnull align 8 dereferenceable(8) %i.mh, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit252.thread unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.no = landingpad { ptr, i32 }
          catch ptr null
  %i.np = extractvalue { ptr, i32 } %i.no, 0
  call void @__clang_call_terminate(ptr %i.np) #22
  unreachable

bb.fd:                                            ; preds = %bb.ex
  %i.nq = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 40
  %i.nt = load ptr, ptr %i.ns, align 8
  invoke void %i.nt(ptr noundef nonnull align 8 dereferenceable(8) %i.nq, i32 noundef 1)
          to label %.invoke340 unwind label %bb.fe

.invoke340:                                       ; preds = %bb.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  invoke void @__cxa_end_catch()
          to label %bb.fa unwind label %bb.fh

bb.fe:                                            ; preds = %bb.fd
  %i.nu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fj unwind label %bb.fw

bb.ff:                                            ; preds = %bb.ey
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.fi

bb.fg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fh:                                            ; preds = %.invoke340, %bb.fa
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg, %bb.ff
  %.pn127 = phi { ptr, i32 } [ %i.nw, %bb.fg ], [ %i.nv, %bb.ff ]
  invoke void @__cxa_end_catch()
          to label %bb.fj unwind label %bb.fw

bb.fj:                                            ; preds = %bb.fh, %bb.fi, %bb.fe
  %.pn131 = phi { ptr, i32 } [ %.pn127, %bb.fi ], [ %i.nu, %bb.fe ], [ %i.nx, %bb.fh ]
  %i.ny = load ptr, ptr %i.mh, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 40
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
  br label %bb.gi

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
  br label %bb.gi

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
  br i1 %i.bx, label %bb.ag, label %bb.bf

bb.af:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  br label %bb.bg

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
  br i1 %i.dd, label %bb.aq, label %bb.au

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
  br i1 %i.di, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.dk = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.2, i32 noundef 117)
          to label %bb.at unwind label %bb.az

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
          to label %.invoke unwind label %bb.ba

bb.au:                                            ; preds = %.invoke, %bb.ap
  %i.ec = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i32 noundef 2)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.eg = load ptr, ptr %i.dc, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #22
  unreachable

bb.ax:                                            ; preds = %bb.ar
  %i.el = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i32 noundef 1)
          to label %.invoke unwind label %bb.ay

.invoke:                                          ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  invoke void @__cxa_end_catch()
          to label %bb.au unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bd unwind label %bb.gj

bb.az:                                            ; preds = %bb.as
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bc

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %.invoke, %bb.au
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %.pn = phi { ptr, i32 } [ %i.er, %bb.ba ], [ %i.eq, %bb.az ]
  invoke void @__cxa_end_catch()
          to label %bb.bd unwind label %bb.gj

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.ay
  %.pn97 = phi { ptr, i32 } [ %.pn, %bb.bc ], [ %i.ep, %bb.ay ], [ %i.es, %bb.bb ]
  %i.et = load ptr, ptr %i.dc, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8
  invoke void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit187 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.ai, %bb.an, %bb.av
  %i.ey = load ptr, ptr %i.cm, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) #21, !inline_history !1
  br label %.thread291

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.an
  %i.fb = load ptr, ptr %i.cm, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) #21, !inline_history !1
  br label %bb.bf

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit187: ; preds = %bb.bd, %bb.aj
  %.pn99 = phi { ptr, i32 } [ %i.cr, %bb.aj ], [ %.pn97, %bb.bd ]
  %i.fe = load ptr, ptr %i.cm, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) #21, !inline_history !1
  br label %bb.bg

.thread291:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit.thread, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.bo

bb.bf:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.bh

bb.bg:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit187, %bb.af
  %.pn99.pn = phi { ptr, i32 } [ %.pn99, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit187 ], [ %i.cl, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.gi

bb.bh:                                            ; preds = %bb.bf, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.fh = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 117, ptr noundef %i.fh)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.fi = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i188 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i188, label %_ZN7testing7MessageD2Ev.exit190, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189: ; preds = %bb.bk
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(128) %i.fi) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit190

_ZN7testing7MessageD2Ev.exit190:                  ; preds = %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bi, %bb.bh
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bj
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn102 = phi { ptr, i32 } [ %i.fn, %bb.bm ], [ %i.fm, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.fo = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i191 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i191, label %_ZN7testing7MessageD2Ev.exit193, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192: ; preds = %bb.bn
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(128) %i.fo) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit193

_ZN7testing7MessageD2Ev.exit193:                  ; preds = %bb.bn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.gi

bb.bo:                                            ; preds = %.thread291, %_ZN7testing7MessageD2Ev.exit190
  %i.fs = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.fs, label %bb.bp, label %bb.cw

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %13, ptr noundef nonnull %i.l)
  %i.ft = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull @.str.2, i32 noundef 118, ptr noundef nonnull %i.d)
          to label %bb.bq unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %13, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i194, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i195

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i195: ; preds = %bb.bq
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  %.not.i.i196 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i196, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197, label %bb.br

bb.br:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i195
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8
  %26 = atomicrmw sub ptr %i.fz, i32 1 acq_rel, align 4
  %i.ga = icmp eq i32 %26, 1
  br i1 %i.ga, label %bb.bs, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197

bb.bs:                                            ; preds = %bb.br
  %i.gb = load ptr, ptr %i.fu, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = load ptr, ptr %i.fy, align 8
  invoke void %i.gd(ptr noundef %i.ge)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197 unwind label %bb.bt, !inline_history !0

bb.bt:                                            ; preds = %bb.bs
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197: ; preds = %bb.bq, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i195, %bb.br, %bb.bs
  br i1 %i.ft, label %bb.bv, label %bb.cu

bb.bu:                                            ; preds = %bb.bp
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  br label %bb.cv

bb.bv:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197
  %i.gi = load ptr, ptr %i.d, align 8             ; 9 uses
  %.not104 = icmp eq ptr %i.gi, null
  br i1 %.not104, label %.thread296, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = invoke noundef i32 %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.gi)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  switch i32 %i.gm, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207.thread [
    i32 0, label %bb.bz
    i32 1, label %bb.cd
  ]

bb.by:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bw
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit210

bb.bz:                                            ; preds = %bb.bx
  %i.go = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = invoke noundef i32 %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.go)
          to label %bb.ca unwind label %bb.by

bb.ca:                                            ; preds = %bb.bz
  %i.gt = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.gs)
          to label %bb.cb unwind label %bb.by

bb.cb:                                            ; preds = %bb.ca
  %i.gu = load ptr, ptr %i.go, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = invoke noundef zeroext i1 %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.go, i1 noundef zeroext %i.gt)
          to label %bb.cc unwind label %bb.by

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.gx, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207

bb.cd:                                            ; preds = %bb.bx
  %i.gy = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.gz = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.gz, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.cg:                                            ; preds = %bb.cd
  %i.ha = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  %i.hc = extractvalue { ptr, i32 } %i.ha, 1
  %i.hd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.he = icmp eq i32 %i.hc, %i.hd
  %i.hf = call ptr @__cxa_begin_catch(ptr %i.hb) #21 ; 2 uses
  br i1 %i.he, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.hg = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.2, i32 noundef 118)
          to label %bb.ci unwind label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.hh = load ptr, ptr %14, align 8
  %i.hi = load ptr, ptr %i.hf, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef ptr %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.hf) #21
  %i.hm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hg, ptr noundef nonnull @.str.8, ptr noundef %i.hh, ptr noundef %i.hl) #23 ; 0 uses
  %i.hn = load ptr, ptr %14, align 8              ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.ci
  %i.hq = load i64, ptr %i.ho, align 8
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.hs = load ptr, ptr @stderr, align 8
  %i.ht = call i32 @fflush(ptr noundef %i.hs)     ; 0 uses
  %i.hu = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %i.hx = load ptr, ptr %i.hw, align 8
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, i32 noundef 1)
          to label %.invoke348 unwind label %bb.cp

bb.cj:                                            ; preds = %.invoke348, %bb.ce
  %i.hy = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8
  invoke void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, i32 noundef 2)
          to label %bb.ck unwind label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %i.ic = load ptr, ptr %i.gy, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ie = load ptr, ptr %i.id, align 8
  invoke void %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207.thread unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #22
  unreachable

bb.cm:                                            ; preds = %bb.cg
  %i.ih = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, i32 noundef 1)
          to label %.invoke348 unwind label %bb.cn

.invoke348:                                       ; preds = %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  invoke void @__cxa_end_catch()
          to label %bb.cj unwind label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cs unwind label %bb.gj

bb.co:                                            ; preds = %bb.ch
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.cr

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cq:                                            ; preds = %.invoke348, %bb.cj
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp, %bb.co
  %.pn105 = phi { ptr, i32 } [ %i.in, %bb.cp ], [ %i.im, %bb.co ]
  invoke void @__cxa_end_catch()
          to label %bb.cs unwind label %bb.gj

bb.cs:                                            ; preds = %bb.cq, %bb.cr, %bb.cn
  %.pn109 = phi { ptr, i32 } [ %.pn105, %bb.cr ], [ %i.il, %bb.cn ], [ %i.io, %bb.cq ]
  %i.ip = load ptr, ptr %i.gy, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.ir = load ptr, ptr %i.iq, align 8
  invoke void %i.ir(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit210 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207.thread: ; preds = %bb.bx, %bb.cc, %bb.ck
  %i.iu = load ptr, ptr %i.gi, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(8) %i.gi) #21, !inline_history !1
  br label %.thread296

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207: ; preds = %bb.cc
  %i.ix = load ptr, ptr %i.gi, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(8) %i.gi) #21, !inline_history !1
  br label %bb.cu

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit210: ; preds = %bb.cs, %bb.by
  %.pn111 = phi { ptr, i32 } [ %i.gn, %bb.by ], [ %.pn109, %bb.cs ]
  %i.ja = load ptr, ptr %i.gi, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %i.gi) #21, !inline_history !1
  br label %bb.cv

.thread296:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207.thread, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.dd

bb.cu:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit207, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.cw

bb.cv:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit210, %bb.bu
  %.pn111.pn = phi { ptr, i32 } [ %.pn111, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit210 ], [ %i.gh, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.gi

bb.cw:                                            ; preds = %bb.cu, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.jd = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 118, ptr noundef %i.jd)
          to label %bb.cy unwind label %bb.da

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.je = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i211 = icmp eq ptr %i.je, null
  br i1 %.not.i.i211, label %_ZN7testing7MessageD2Ev.exit213, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212: ; preds = %bb.cz
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(128) %i.je) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit213

_ZN7testing7MessageD2Ev.exit213:                  ; preds = %bb.cz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.dd

bb.da:                                            ; preds = %bb.cx, %bb.cw
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.db:                                            ; preds = %bb.cy
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.pn114 = phi { ptr, i32 } [ %i.jj, %bb.db ], [ %i.ji, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.jk = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i214 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i214, label %_ZN7testing7MessageD2Ev.exit216, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215: ; preds = %bb.dc
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(128) %i.jk) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit216

_ZN7testing7MessageD2Ev.exit216:                  ; preds = %bb.dc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.gi

bb.dd:                                            ; preds = %.thread296, %_ZN7testing7MessageD2Ev.exit213
  %i.jo = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.jo, label %bb.de, label %bb.el

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %17, ptr noundef nonnull %i.l)
  %i.jp = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.22, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull @.str.2, i32 noundef 119, ptr noundef nonnull %i.e)
          to label %bb.df unwind label %bb.dj

bb.df:                                            ; preds = %bb.de
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %17, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8            ; 2 uses
  %.not.i.i.i217 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i217, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i218

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i218: ; preds = %bb.df
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8
  %.not.i.i219 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i219, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220, label %bb.dg

bb.dg:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i218
  %i.ju = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8
  %27 = atomicrmw sub ptr %i.jv, i32 1 acq_rel, align 4
  %i.jw = icmp eq i32 %27, 1
  br i1 %i.jw, label %bb.dh, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220

bb.dh:                                            ; preds = %bb.dg
  %i.jx = load ptr, ptr %i.jq, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = load ptr, ptr %i.ju, align 8
  invoke void %i.jz(ptr noundef %i.ka)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220 unwind label %bb.di, !inline_history !0

bb.di:                                            ; preds = %bb.dh
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220: ; preds = %bb.df, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i218, %bb.dg, %bb.dh
  br i1 %i.jp, label %bb.dk, label %bb.ej

bb.dj:                                            ; preds = %bb.de
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #21
  br label %bb.ek

bb.dk:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220
  %i.ke = load ptr, ptr %i.e, align 8             ; 9 uses
  %.not116 = icmp eq ptr %i.ke, null
  br i1 %.not116, label %.thread301, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = invoke noundef i32 %i.kh(ptr noundef nonnull align 8 dereferenceable(8) %i.ke)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  switch i32 %i.ki, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230.thread [
    i32 0, label %bb.do
    i32 1, label %bb.ds
  ]

bb.dn:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dl
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit233

bb.do:                                            ; preds = %bb.dm
  %i.kk = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = invoke noundef i32 %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.kk)
          to label %bb.dp unwind label %bb.dn

bb.dp:                                            ; preds = %bb.do
  %i.kp = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ko)
          to label %bb.dq unwind label %bb.dn

bb.dq:                                            ; preds = %bb.dp
  %i.kq = load ptr, ptr %i.kk, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = invoke noundef zeroext i1 %i.ks(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, i1 noundef zeroext %i.kp)
          to label %bb.dr unwind label %bb.dn

bb.dr:                                            ; preds = %bb.dq
  br i1 %i.kt, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230

bb.ds:                                            ; preds = %bb.dm
  %i.ku = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.kv = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.dt unwind label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.kv, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.dv:                                            ; preds = %bb.ds
  %i.kw = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.kx = extractvalue { ptr, i32 } %i.kw, 0
  %i.ky = extractvalue { ptr, i32 } %i.kw, 1
  %i.kz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.la = icmp eq i32 %i.ky, %i.kz
  %i.lb = call ptr @__cxa_begin_catch(ptr %i.kx) #21 ; 2 uses
  br i1 %i.la, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.lc = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull @.str.2, i32 noundef 119)
          to label %bb.dx unwind label %bb.ed

bb.dx:                                            ; preds = %bb.dw
  %i.ld = load ptr, ptr %18, align 8
  %i.le = load ptr, ptr %i.lb, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = call noundef ptr %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %i.lb) #21
  %i.li = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lc, ptr noundef nonnull @.str.8, ptr noundef %i.ld, ptr noundef %i.lh) #23 ; 0 uses
  %i.lj = load ptr, ptr %18, align 8              ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.dx
  %i.lm = load i64, ptr %i.lk, align 8
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.lo = load ptr, ptr @stderr, align 8
  %i.lp = call i32 @fflush(ptr noundef %i.lo)     ; 0 uses
  %i.lq = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 40
  %i.lt = load ptr, ptr %i.ls, align 8
  invoke void %i.lt(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, i32 noundef 1)
          to label %.invoke349 unwind label %bb.ee

bb.dy:                                            ; preds = %.invoke349, %bb.dt
  %i.lu = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 40
  %i.lx = load ptr, ptr %i.lw, align 8
  invoke void %i.lx(ptr noundef nonnull align 8 dereferenceable(8) %i.lu, i32 noundef 2)
          to label %bb.dz unwind label %bb.ef

bb.dz:                                            ; preds = %bb.dy
  %i.ly = load ptr, ptr %i.ku, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  %i.ma = load ptr, ptr %i.lz, align 8
  invoke void %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230.thread unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.mb = landingpad { ptr, i32 }
          catch ptr null
  %i.mc = extractvalue { ptr, i32 } %i.mb, 0
  call void @__clang_call_terminate(ptr %i.mc) #22
  unreachable

bb.eb:                                            ; preds = %bb.dv
  %i.md = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.mg = load ptr, ptr %i.mf, align 8
  invoke void %i.mg(ptr noundef nonnull align 8 dereferenceable(8) %i.md, i32 noundef 1)
          to label %.invoke349 unwind label %bb.ec

.invoke349:                                       ; preds = %bb.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  invoke void @__cxa_end_catch()
          to label %bb.dy unwind label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.mh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.eh unwind label %bb.gj

bb.ed:                                            ; preds = %bb.dw
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.eg

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ef:                                            ; preds = %.invoke349, %bb.dy
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee, %bb.ed
  %.pn117 = phi { ptr, i32 } [ %i.mj, %bb.ee ], [ %i.mi, %bb.ed ]
  invoke void @__cxa_end_catch()
          to label %bb.eh unwind label %bb.gj

bb.eh:                                            ; preds = %bb.ef, %bb.eg, %bb.ec
  %.pn121 = phi { ptr, i32 } [ %.pn117, %bb.eg ], [ %i.mh, %bb.ec ], [ %i.mk, %bb.ef ]
  %i.ml = load ptr, ptr %i.ku, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  %i.mn = load ptr, ptr %i.mm, align 8
  invoke void %i.mn(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit233 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.mo = landingpad { ptr, i32 }
          catch ptr null
  %i.mp = extractvalue { ptr, i32 } %i.mo, 0
  call void @__clang_call_terminate(ptr %i.mp) #22
  unreachable

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230.thread: ; preds = %bb.dm, %bb.dr, %bb.dz
  %i.mq = load ptr, ptr %i.ke, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8
  call void %i.ms(ptr noundef nonnull align 8 dereferenceable(8) %i.ke) #21, !inline_history !1
  br label %.thread301

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230: ; preds = %bb.dr
  %i.mt = load ptr, ptr %i.ke, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.ke) #21, !inline_history !1
  br label %bb.ej

_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit233: ; preds = %bb.eh, %bb.dn
  %.pn123 = phi { ptr, i32 } [ %i.kj, %bb.dn ], [ %.pn121, %bb.eh ]
  %i.mw = load ptr, ptr %i.ke, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(8) %i.ke) #21, !inline_history !1
  br label %bb.ek

.thread301:                                       ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230.thread, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.es

bb.ej:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit230, %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.el

bb.ek:                                            ; preds = %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit233, %bb.dj
  %.pn123.pn = phi { ptr, i32 } [ %.pn123, %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit233 ], [ %i.kd, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.gi

bb.el:                                            ; preds = %bb.ej, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.mz = invoke noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv()
          to label %bb.em unwind label %bb.ep

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 119, ptr noundef %i.mz)
          to label %bb.en unwind label %bb.ep

bb.en:                                            ; preds = %bb.em
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.eo unwind label %bb.eq

bb.eo:                                            ; preds = %bb.en
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.na = load ptr, ptr %19, align 8              ; 3 uses
  %.not.i.i234 = icmp eq ptr %i.na, null
  br i1 %.not.i.i234, label %_ZN7testing7MessageD2Ev.exit236, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %bb.eo
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8
  call void %i.nd(ptr noundef nonnull align 8 dereferenceable(128) %i.na) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit236

_ZN7testing7MessageD2Ev.exit236:                  ; preds = %bb.eo, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.es

bb.ep:                                            ; preds = %bb.em, %bb.el
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.eq:                                            ; preds = %bb.en
  %i.nf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #21
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.pn126 = phi { ptr, i32 } [ %i.nf, %bb.eq ], [ %i.ne, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.ng = load ptr, ptr %19, align 8              ; 3 uses
  %.not.i.i237 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i237, label %_ZN7testing7MessageD2Ev.exit239, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238: ; preds = %bb.er
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(128) %i.ng) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit239

_ZN7testing7MessageD2Ev.exit239:                  ; preds = %bb.er, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.gi

bb.es:                                            ; preds = %.thread301, %_ZN7testing7MessageD2Ev.exit236
  %i.nk = call noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
  br i1 %i.nk, label %bb.et, label %bb.ga

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  call void @_ZN7testing8internal20MakeDeathTestMatcherB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %21, ptr noundef nonnull %i.l)
  %i.nl = invoke noundef zeroext i1 @_ZN7testing8internal9DeathTest6CreateEPKcNS_7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES3_iPPS1_(ptr noundef nonnull @.str.23, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull @.str.2, i32 noundef 120, ptr noundef nonnull %i.f)
          to label %bb.eu unwind label %bb.ey

bb.eu:                                            ; preds = %bb.et
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %21, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8            ; 2 uses
  %.not.i.i.i240 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i240, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i241

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i241: ; preds = %bb.eu
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = load ptr, ptr %i.no, align 8
  %.not.i.i242 = icmp eq ptr %i.np, null
  br i1 %.not.i.i242, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243, label %bb.ev

bb.ev:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i241
  %i.nq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8
  %28 = atomicrmw sub ptr %i.nr, i32 1 acq_rel, align 4
  %i.ns = icmp eq i32 %28, 1
  br i1 %i.ns, label %bb.ew, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243

bb.ew:                                            ; preds = %bb.ev
  %i.nt = load ptr, ptr %i.nm, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = load ptr, ptr %i.nq, align 8
  invoke void %i.nv(ptr noundef %i.nw)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243 unwind label %bb.ex, !inline_history !0

bb.ex:                                            ; preds = %bb.ew
  %i.nx = landingpad { ptr, i32 }
          catch ptr null
  %i.ny = extractvalue { ptr, i32 } %i.nx, 0
  call void @__clang_call_terminate(ptr %i.ny) #22, !inline_history !8
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243: ; preds = %bb.eu, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i241, %bb.ev, %bb.ew
  br i1 %i.nl, label %bb.ez, label %bb.fy

bb.ey:                                            ; preds = %bb.et
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #21
  br label %bb.fz

bb.ez:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit243
  %i.oa = load ptr, ptr %i.f, align 8             ; 9 uses
  %.not128 = icmp eq ptr %i.oa, null
  br i1 %.not128, label %.thread306, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = invoke noundef i32 %i.od(ptr noundef nonnull align 8 dereferenceable(8) %i.oa)
          to label %bb.fb unwind label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  switch i32 %i.oe, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit253.thread [
    i32 0, label %bb.fd
    i32 1, label %bb.fh
  ]

bb.fc:                                            ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fa
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit256

bb.fd:                                            ; preds = %bb.fb
  %i.og = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.oh = load ptr, ptr %i.og, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = invoke noundef i32 %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %i.og)
          to label %bb.fe unwind label %bb.fc

bb.fe:                                            ; preds = %bb.fd
  %i.ol = invoke noundef zeroext i1 @_ZN7testing8internal20ExitedUnsuccessfullyEi(i32 noundef %i.ok)
          to label %bb.ff unwind label %bb.fc

bb.ff:                                            ; preds = %bb.fe
  %i.om = load ptr, ptr %i.og, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = invoke noundef zeroext i1 %i.oo(ptr noundef nonnull align 8 dereferenceable(8) %i.og, i1 noundef zeroext %i.ol)
          to label %bb.fg unwind label %bb.fc

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.op, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit253.thread, label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit253

bb.fh:                                            ; preds = %bb.fb
  %i.oq = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.or = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.fi unwind label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  br i1 %i.or, label %bb.fj, label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  call void @_ZN3gsl7details9terminateEv() #22
  unreachable

bb.fk:                                            ; preds = %bb.fh
  %i.os = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ot = extractvalue { ptr, i32 } %i.os, 0
  %i.ou = extractvalue { ptr, i32 } %i.os, 1
  %i.ov = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ow = icmp eq i32 %i.ou, %i.ov
  %i.ox = call ptr @__cxa_begin_catch(ptr %i.ot) #21 ; 2 uses
  br i1 %i.ow, label %bb.fl, label %bb.fq

bb.fl:                                            ; preds = %bb.fk
  %i.oy = load ptr, ptr @stderr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  invoke void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull @.str.2, i32 noundef 120)
          to label %bb.fm unwind label %bb.fs

bb.fm:                                            ; preds = %bb.fl
  %i.oz = load ptr, ptr %22, align 8
  %i.pa = load ptr, ptr %i.ox, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8
  %i.pd = call noundef ptr %i.pc(ptr noundef nonnull align 8 dereferenceable(8) %i.ox) #21
  %i.pe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oy, ptr noundef nonnull @.str.8, ptr noundef %i.oz, ptr noundef %i.pd) #23 ; 0 uses
  %i.pf = load ptr, ptr %22, align 8              ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ph = icmp eq ptr %i.pf, %i.pg
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.fm
  %i.pi = load i64, ptr %i.pg, align 8
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.pk = load ptr, ptr @stderr, align 8
  %i.pl = call i32 @fflush(ptr noundef %i.pk)     ; 0 uses
  %i.pm = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 40
  %i.pp = load ptr, ptr %i.po, align 8
  invoke void %i.pp(ptr noundef nonnull align 8 dereferenceable(8) %i.pm, i32 noundef 1)
          to label %.invoke350 unwind label %bb.ft

bb.fn:                                            ; preds = %.invoke350, %bb.fi
  %i.pq = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 40
  %i.pt = load ptr, ptr %i.ps, align 8
  invoke void %i.pt(ptr noundef nonnull align 8 dereferenceable(8) %i.pq, i32 noundef 2)
          to label %bb.fo unwind label %bb.fu

bb.fo:                                            ; preds = %bb.fn
  %i.pu = load ptr, ptr %i.oq, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 40
  %i.pw = load ptr, ptr %i.pv, align 8
  invoke void %i.pw(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit253.thread unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.px = landingpad { ptr, i32 }
          catch ptr null
  %i.py = extractvalue { ptr, i32 } %i.px, 0
  call void @__clang_call_terminate(ptr %i.py) #22
  unreachable

bb.fq:                                            ; preds = %bb.fk
  %i.pz = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 40
  %i.qc = load ptr, ptr %i.qb, align 8
  invoke void %i.qc(ptr noundef nonnull align 8 dereferenceable(8) %i.pz, i32 noundef 1)
          to label %.invoke350 unwind label %bb.fr

.invoke350:                                       ; preds = %bb.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  invoke void @__cxa_end_catch()
          to label %bb.fn unwind label %bb.fu

bb.fr:                                            ; preds = %bb.fq
  %i.qd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fw unwind label %bb.gj

bb.fs:                                            ; preds = %bb.fl
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.fv

bb.ft:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fu:                                            ; preds = %.invoke350, %bb.fn
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft, %bb.fs
  %.pn129 = phi { ptr, i32 } [ %i.qf, %bb.ft ], [ %i.qe, %bb.fs ]
  invoke void @__cxa_end_catch()
          to label %bb.fw unwind label %bb.gj

bb.fw:                                            ; preds = %bb.fu, %bb.fv, %bb.fr
  %.pn133 = phi { ptr, i32 } [ %.pn129, %bb.fv ], [ %i.qd, %bb.fr ], [ %i.qg, %bb.fu ]
  %i.qh = load ptr, ptr %i.oq, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 40
  %i.qj = load ptr, ptr %i.qi, align 8
  invoke void %i.qj(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN7testing8internal9DeathTestESt14default_deleteIS2_EED2Ev.exit256 unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
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
