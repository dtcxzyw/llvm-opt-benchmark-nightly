Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/status_matchers?download=true
inline.NumInlined: 209
inline.NumDeleted: 114
begin_hunk_0

$_ZTSN7testing25StringMatchResultListenerE = comdat any

$_ZTIN7testing19MatchResultListenerE = comdat any

$_ZTSN7testing19MatchResultListenerE = comdat any

$_ZN4absl12lts_202605266Status16kMovedFromStringE = comdat any

$_ZTVN7testing8internal24DummyMatchResultListenerE = comdat any

$_ZTIN7testing8internal24DummyMatchResultListenerE = comdat any

$_ZTSN7testing8internal24DummyMatchResultListenerE = comdat any

@.str = private unnamed_addr constant [24 x i8] c"has a status code that \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c", and has an error message that \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"either has a status code that \00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c", or has an error message that \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"which is OK\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"whose status code is wrong\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"which has a status code \00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"whose error message is wrong\00", align 1
@_ZTVN7testing25StringMatchResultListenerE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN7testing25StringMatchResultListenerE, ptr @_ZN7testing25StringMatchResultListenerD2Ev, ptr @_ZN7testing25StringMatchResultListenerD0Ev] }, comdat, align 8
@_ZTIN7testing25StringMatchResultListenerE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing25StringMatchResultListenerE, ptr @_ZTIN7testing19MatchResultListenerE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7testing25StringMatchResultListenerE = linkonce_odr dso_local constant [38 x i8] c"N7testing25StringMatchResultListenerE\00", comdat, align 1
@_ZTIN7testing19MatchResultListenerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing19MatchResultListenerE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7testing19MatchResultListenerE = linkonce_odr dso_local constant [32 x i8] c"N7testing19MatchResultListenerE\00", comdat, align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZN4absl12lts_202605266Status16kMovedFromStringE = linkonce_odr dso_local constant [28 x i8] c"Status accessed after move.\00", comdat, align 16
@.str.10 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.11 = private unnamed_addr constant [101 x i8] c"/opt-bench/work/abseil-cpp/abseil-cpp/build/googletest-src/googletest/include/gtest/gtest-matchers.h\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Condition vtable_ != nullptr failed. \00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@_ZTVN7testing8internal24DummyMatchResultListenerE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN7testing8internal24DummyMatchResultListenerE, ptr @_ZN7testing19MatchResultListenerD2Ev, ptr @_ZN7testing8internal24DummyMatchResultListenerD0Ev] }, comdat, align 8
@_ZTIN7testing8internal24DummyMatchResultListenerE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal24DummyMatchResultListenerE, ptr @_ZTIN7testing19MatchResultListenerE }, comdat, align 8
@_ZTSN7testing8internal24DummyMatchResultListenerE = linkonce_odr dso_local constant [46 x i8] c"N7testing8internal24DummyMatchResultListenerE\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12absl_testing12lts_2026052615status_internal25StatusIsMatcherCommonImpl10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 23) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp ne ptr %i.c, null
  %i.e = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.d)
  br i1 %i.e, label %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE10DescribeToEPSo.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef 246)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE10DescribeToEPSo.exit

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE10DescribeToEPSo.exit: ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i1 noundef zeroext false), !inline_history !32
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 32) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = icmp ne ptr %i.m, null
  %i.o = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.n)
  br i1 %i.o, label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE10DescribeToEPSo.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE10DescribeToEPSo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef 246)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5: ; preds = %bb.d
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE10DescribeToEPSo.exit

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %common.resume

_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE10DescribeToEPSo.exit: ; preds = %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE10DescribeToEPSo.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull %1, i1 noundef zeroext false), !inline_history !33
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12absl_testing12lts_2026052615status_internal25StatusIsMatcherCommonImpl18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 30) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp ne ptr %i.c, null
  %i.e = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.d)
  br i1 %i.e, label %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE18DescribeNegationToEPSo.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef 252)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE18DescribeNegationToEPSo.exit

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE18DescribeNegationToEPSo.exit: ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !34
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 31) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = icmp ne ptr %i.m, null
  %i.o = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.n)
  br i1 %i.o, label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE18DescribeNegationToEPSo.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE18DescribeNegationToEPSo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef 252)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5: ; preds = %bb.d
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE18DescribeNegationToEPSo.exit

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %common.resume

_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE18DescribeNegationToEPSo.exit: ; preds = %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE18DescribeNegationToEPSo.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !35
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK12absl_testing12lts_2026052615status_internal25StatusIsMatcherCommonImpl15MatchAndExplainERKN4absl12lts_202605266StatusEPN7testing19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::StringMatchResultListener", align 8 ; 22 uses
  %7 = alloca %"class.absl_testing::lts_20260526::status_internal::StatusCode", align 4 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.f = load i64, ptr %1, align 8, !tbaa !56     ; 3 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %i.f, 2
  %i.i = trunc i64 %i.h to i32
  br label %_ZNK4absl12lts_202605266Status8raw_codeEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.f to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !73
  br label %_ZNK4absl12lts_202605266Status8raw_codeEv.exit.i

_ZNK4absl12lts_202605266Status8raw_codeEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ %i.l, %bb.c ]
  %i.m = invoke noundef i32 @_ZN4absl12lts_2026052615status_internal14MapToLocalCodeEi(i32 noundef %.0.i.i)
          to label %_ZNK4absl12lts_202605266Status4codeEv.exit unwind label %bb.s

_ZNK4absl12lts_202605266Status4codeEv.exit:       ; preds = %_ZNK4absl12lts_202605266Status8raw_codeEv.exit.i
  store i32 %i.m, ptr %7, align 4, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.p = icmp ne ptr %i.o, null
  %i.q = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.p)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %_ZNK4absl12lts_202605266Status4codeEv.exit
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef 234)
          to label %.noexc53 unwind label %bb.s

.noexc53:                                         ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc53
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.f

bb.e:                                             ; preds = %.noexc53
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull %6)
          to label %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !36

_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br i1 %i.v, label %bb.v, label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.w, ptr %9, align 8, !tbaa !80, !alias.scope !81
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !82, !alias.scope !81
  store i8 0, ptr %i.w, align 8, !tbaa !27, !alias.scope !81
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !86, !noalias !81 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !81 ; 2 uses
  %i.ac = icmp ugt ptr %i.z, %i.ab
  %.08.i.i.i.i = select i1 %i.ac, ptr %i.z, ptr %i.ab ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87, !noalias !81 ; 2 uses
  %i.af = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.ae, i64 noundef %i.ah)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %9, align 8, !tbaa !28, !alias.scope !81 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %.body55, label %.body55.sink.split

bb.j:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 112
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.an = load i64, ptr %i.x, align 8, !tbaa !82
  %.not134 = icmp eq i64 %i.an, 0                 ; 4 uses
  br i1 %.not134, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.ao = load i64, ptr %1, align 8, !tbaa !56
  %.not = icmp eq i64 %i.ao, 1                    ; 3 uses
  %i.ap = select i1 %.not, ptr @.str.4, ptr @.str.5
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.aq, ptr %8, align 8, !tbaa !80
  %i.ar = select i1 %.not, i64 11, i64 26         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !88
  br i1 %.not, label %._crit_edge.i.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.k
  %i.as = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc57 unwind label %.body65.thread117 ; 2 uses

.noexc57:                                         ; preds = %.noexc.i
  store ptr %i.as, ptr %8, align 8, !tbaa !28
  %i.at = load i64, ptr %i.b, align 8, !tbaa !88
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %.noexc57
  %i.au = phi ptr [ %i.as, %.noexc57 ], [ %i.aq, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.au, ptr noundef nonnull align 1 dereferenceable(11) %i.ap, i64 %i.ar, i1 false)
  %i.av = load i64, ptr %i.b, align 8, !tbaa !88  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !82
  %i.ax = load ptr, ptr %8, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.q

bb.l:                                             ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.az, ptr %10, align 8, !tbaa !80, !alias.scope !92
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !82, !alias.scope !92
  store i8 0, ptr %i.az, align 8, !tbaa !27, !alias.scope !92
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !86, !noalias !92 ; 3 uses
  %.not.i.not.i.i.i58 = icmp eq ptr %i.bb, null
  %i.bc = load ptr, ptr %i.aa, align 8, !noalias !92 ; 2 uses
  %i.bd = icmp ugt ptr %i.bb, %i.bc
  %.08.i.i.i.i59 = select i1 %i.bd, ptr %i.bb, ptr %i.bc ; 2 uses
  %.not5.i.i.i60 = icmp eq ptr %.08.i.i.i.i59, null
  %.not.i.i.i61 = select i1 %.not.i.not.i.i.i58, i1 true, i1 %.not5.i.i.i60
  br i1 %.not.i.i.i61, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87, !noalias !92 ; 2 uses
  %i.bg = ptrtoint ptr %.08.i.i.i.i59 to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.bf, i64 noundef %i.bi)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit67 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %10, align 8, !tbaa !28, !alias.scope !92 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.az
  br i1 %i.bm, label %.split.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62: ; preds = %bb.n
  %i.bn = load i64, ptr %i.az, align 8, !tbaa !27, !alias.scope !92
  %13 = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %13) #10
  br label %.split.thread

bb.o:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 112
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.bo)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit67 unwind label %bb.n

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit67: ; preds = %bb.o, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 24)
          to label %.noexc68 unwind label %.thread, !noalias !93 ; 6 uses

.noexc68:                                         ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit67
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.bq, ptr %8, align 8, !tbaa !80, !alias.scope !93
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.p:                                             ; preds = %.noexc68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !82 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc68
  store ptr %i.br, ptr %8, align 8, !tbaa !28, !alias.scope !93
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !27
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !27, !alias.scope !93
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !82
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bz = phi i64 [ %i.bv, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !82, !alias.scope !93
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !28
  store i64 0, ptr %i.ca, align 8, !tbaa !82
  store i8 0, ptr %i.bs, align 8, !tbaa !27
  br label %bb.q

bb.q:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit, %._crit_edge.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp eq ptr %i.cd, null
  br i1 %.not.i, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %8, align 8, !tbaa !28
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !82
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.ce, i64 noundef %i.cg)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.t ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.q, %bb.r
  %i.ci = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !27
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  br i1 %.not134, label %.critedge49, label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %.critedge
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !27
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge49

.critedge49:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.cs = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.w
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %.critedge49
  %i.cu = load i64, ptr %i.w, align 8, !tbaa !27
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %.critedge49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %_ZN7testing19MatchResultListenerlsIA29_cEERS0_RKT_.exit

bb.s:                                             ; preds = %bb.f, %bb.d, %_ZNK4absl12lts_202605266Status4codeEv.exit, %_ZNK4absl12lts_202605266Status8raw_codeEv.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.cw, %bb.s ], [ %i.s, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.ak

.body65.thread117:                                ; preds = %.noexc.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.critedge51

bb.t:                                             ; preds = %bb.r
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cz = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.t
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !27
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #10
  br i1 %.not134, label %.critedge51, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.t
  br i1 %.not134, label %.critedge51, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.de = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

.thread:                                          ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit67
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.az
  br i1 %i.dj, label %.split.thread129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.thread: ; preds = %.thread
  %i.dk = load i64, ptr %i.az, align 8, !tbaa !27
  %14 = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge51

.split.thread129:                                 ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.u
  %15 = load i64, ptr %i.df, align 8, !tbaa !27
  %16 = add i64 %15, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge51

.split.thread:                                    ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge51

.split:                                           ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge51

.critedge51:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.thread, %.split.thread129, %.split.thread, %.body65.thread117
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.thread ], [ %i.dh, %.split.thread129 ], [ %i.cx, %.body65.thread117 ], [ %i.bk, %.split.thread ], [ %i.cy, %.split ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ] ; 2 uses
  %i.dl = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.w
  br i1 %i.dm, label %.body55, label %.body55.sink.split

.body55.sink.split:                               ; preds = %.critedge51, %bb.i
  %.sink.a = phi ptr [ %i.ak, %bb.i ], [ %i.dl, %.critedge51 ]
  %.pn40.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %.pn40.pn.pn.pn, %.critedge51 ]
  %i.dn = load i64, ptr %i.w, align 8, !tbaa !27
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %.sink.a, i64 noundef %i.do) #10
  br label %.body55

.body55:                                          ; preds = %.body55.sink.split, %.critedge51, %bb.i
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %.pn40.pn.pn.pn, %.critedge51 ], [ %.pn40.pn.pn.pn.pn.ph, %.body55.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.ak

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.dq = load i64, ptr %1, align 8, !tbaa !56    ; 3 uses
  %i.dr = trunc i64 %i.dq to i1
  br i1 %i.dr, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = inttoptr i64 %i.dq to ptr               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !82
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dx = and i64 %i.dq, 2
  %.not.i86 = icmp eq i64 %i.dx, 0                ; 2 uses
  %spec.select.i = select i1 %.not.i86, i64 0, i64 27
  %spec.select1.i = select i1 %.not.i86, ptr null, ptr @_ZN4absl12lts_202605266Status16kMovedFromStringE
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dw, %bb.w ], [ %spec.select.i, %bb.x ] ; 5 uses
  %.sroa.4.0.i = phi ptr [ %i.du, %bb.w ], [ %spec.select1.i, %bb.x ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.dy, ptr %12, align 8, !tbaa !80
  %i.dz = icmp eq ptr %.sroa.4.0.i, null
  %i.ea = icmp ne i64 %.sroa.0.0.i, 0
  %or.cond.i.i.i = and i1 %i.ea, %i.dz
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #11
          to label %.noexc87 unwind label %bb.ah

.noexc87:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %.sroa.0.0.i, ptr %i.a, align 8, !tbaa !88
  %i.eb = icmp ugt i64 %.sroa.0.0.i, 15
  br i1 %i.eb, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.aa
  %i.ec = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc88 unwind label %bb.ah  ; 2 uses

.noexc88:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ec, ptr %12, align 8, !tbaa !28
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.ed, ptr %i.dy, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc88, %bb.aa
  %i.ee = phi ptr [ %i.ec, %.noexc88 ], [ %i.dy, %bb.aa ] ; 2 uses
  switch i64 %.sroa.0.0.i, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ef = load i8, ptr %.sroa.4.0.i, align 1, !tbaa !27
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !27
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %.sroa.4.0.i, i64 %.sroa.0.0.i, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i.i
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !82
  %i.ei = load ptr, ptr %12, align 8, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ek = load ptr, ptr %12, align 8, !tbaa !28
  %i.el = load i64, ptr %i.eh, align 8, !tbaa !82
  store i64 %i.el, ptr %11, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ek, ptr %i.em, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.en, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %4, align 8, !tbaa !22
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !18
  %i.eq = icmp ne ptr %i.ep, null
  %i.er = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.eq)
          to label %.noexc92 unwind label %bb.ai

.noexc92:                                         ; preds = %bb.ad
  br i1 %i.er, label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef 234)
          to label %.noexc93 unwind label %bb.ai

.noexc93:                                         ; preds = %.noexc3.i
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc93
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc93
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.body94

_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc92
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !18
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !94
  %i.ew = invoke noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %4)
          to label %bb.ae unwind label %bb.ai, !inline_history !51

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.ex = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.dy
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.ae
  %i.ez = load i64, ptr %i.dy, align 8, !tbaa !27
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br i1 %i.ew, label %_ZN7testing19MatchResultListenerlsIA29_cEERS0_RKT_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !54 ; 2 uses
  %.not.i100 = icmp eq ptr %i.fc, null
  br i1 %.not.i100, label %_ZN7testing19MatchResultListenerlsIA29_cEERS0_RKT_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.7, i64 noundef 28)
          to label %_ZN7testing19MatchResultListenerlsIA29_cEERS0_RKT_.exit unwind label %bb.aj ; 0 uses

bb.ah:                                            ; preds = %.noexc.i.i.i, %bb.z
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.ai:                                            ; preds = %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit.i, %.noexc3.i, %bb.ad
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body94

.body94:                                          ; preds = %.body.i, %bb.ai
  %eh.lpad-body95 = phi { ptr, i32 } [ %i.ff, %bb.ai ], [ %i.et, %.body.i ] ; 2 uses
  %i.fg = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.dy
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %.body94
  %i.fi = load i64, ptr %i.dy, align 8, !tbaa !27
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %.body94, %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.fe, %bb.ah ], [ %eh.lpad-body95, %.body94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
end_hunk_0
