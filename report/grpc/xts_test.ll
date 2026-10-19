Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xts_test?download=true
inline.NumInlined: 623
inline.NumDeleted: 281
begin_hunk_0
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.40 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.44 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_xts_test.cc, ptr null }]

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.36, i32 noundef 513)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.37, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.38, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !14
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.39, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.36, i32 noundef 534)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.37, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.40, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !14
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.39, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
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
define hidden void @_ZN24XTSTest_TestVectors_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %1 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %2 = alloca %"class.std::vector", align 8       ; 14 uses
  %3 = alloca %"class.std::vector", align 8       ; 14 uses
  %4 = alloca %"class.std::vector", align 8       ; 16 uses
  %5 = alloca %"class.std::vector", align 8       ; 15 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.l = alloca i8, align 1                       ; 8 uses
  %35 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %36 = alloca %"class.std::vector", align 8      ; 26 uses
  %37 = alloca %"class.bssl::internal::StackAllocated", align 8 ; 16 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %39 = alloca %"class.testing::Message", align 8 ; 7 uses
  %40 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %43 = alloca %"class.testing::Message", align 8 ; 7 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %47 = alloca %struct.Bytes, align 8             ; 6 uses
  %48 = alloca %struct.Bytes, align 8             ; 6 uses
  %49 = alloca %"class.testing::Message", align 8 ; 7 uses
  %50 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %52 = alloca %"class.testing::Message", align 8 ; 7 uses
  %53 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %60 = alloca %struct.Bytes, align 8             ; 6 uses
  %61 = alloca %struct.Bytes, align 8             ; 6 uses
  %62 = alloca %"class.testing::Message", align 8 ; 7 uses
  %63 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 4, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 16 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %47, i64 8
  %.sroa.2.0..sroa_idx.i467 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i539 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %.sroa.2.0..sroa_idx.i540 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit586, %bb.a
  %.0133.idx1447 = phi i64 [ 0, %bb.a ], [ %.0133.add, %_ZNSt6vectorIhSaIhEED2Ev.exit586 ] ; 2 uses
  %.0133.ptr1448 = getelementptr inbounds nuw i8, ptr @_ZL13kXTSTestCases, i64 %.0133.idx1447 ; 4 uses
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !26
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.e, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZN7testing11ScopedTraceC2IjEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.2, i32 noundef 215, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.ay = invoke ptr @EVP_aes_256_xts()
          to label %bb.c unwind label %bb.j       ; 4 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.az = load ptr, ptr %.0133.ptr1448, align 16, !tbaa !70 ; 4 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !29
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.35) #19
          to label %.noexc unwind label %.loopexit.split-lp669

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i64 %i.bb, ptr %i.d, align 8, !tbaa !30
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc240 unwind label %.loopexit668 ; 2 uses

.noexc240:                                        ; preds = %.noexc.i
  store ptr %i.bd, ptr %7, align 8, !tbaa !32
  %i.be = load i64, ptr %i.d, align 8, !tbaa !30
  store i64 %i.be, ptr %i.n, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc240, %bb.e
  %i.bf = phi ptr [ %i.bd, %.noexc240 ], [ %i.n, %bb.e ] ; 2 uses
  switch i64 %i.bb, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !33
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !33
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr nonnull align 1 %i.az, i64 %i.bb, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  store i64 %i.bh, ptr %i.o, align 8, !tbaa !34
  %i.bi = load ptr, ptr %7, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 0, ptr %i.bj, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.bk = invoke noundef zeroext i1 @_Z9DecodeHexPSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.k       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.bl = zext i1 %i.bk to i8
  store i8 %i.bl, ptr %6, align 8, !tbaa !78
  store ptr null, ptr %i.p, align 8, !tbaa !79
  %i.bm = load ptr, ptr %7, align 8, !tbaa !32    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.n
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %i.bk, label %.critedge, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  %i.bo = load i64, ptr %i.n, align 8, !tbaa !33
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #20
  %.pre = load i8, ptr %6, align 8, !tbaa !78, !range !37
  %i.bq = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %i.bq, label %.critedge, label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ke

.loopexit668:                                     ; preds = %.noexc.i
  %lpad.loopexit670 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

.loopexit.split-lp669:                            ; preds = %bb.d
  %lpad.loopexit.split-lp671 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

bb.k:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %7, align 8, !tbaa !32    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.n
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.k
  %i.bv = load i64, ptr %i.n, align 8, !tbaa !33
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

end_hunk_0
begin_hunk_1_@_ZN24XTSTest_TestVectors_Test8TestBodyEv:bb.a
  call void %i.ms(ptr noundef nonnull align 8 dereferenceable(128) %i.mp) #18, !call_target !48, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit392

_ZN7testing7MessageD2Ev.exit392:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i391, %bb.ds, %bb.dp
  %.pn169.pn = phi { ptr, i32 } [ %i.mm, %bb.dp ], [ %.pn169, %bb.ds ], [ %.pn169, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i391 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #18
  br label %bb.dx

.critedge223:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIjmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit379
  %i.mt = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 4 uses
  %.not.i.i393 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i393, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %.critedge223
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !32 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 16 ; 2 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i394: ; preds = %bb.dt
  %i.mx = load i64, ptr %i.mv, align 8, !tbaa !33
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.my) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i394
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef 32) #20
  br label %bb.du

bb.du:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i395, %.critedge223
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  %i.mz = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.na = load ptr, ptr %4, align 8, !tbaa !52
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = sub i64 %i.nb, %i.nc                    ; 2 uses
  store i64 %i.nd, ptr %i.j, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  %i.ne = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.nf = load ptr, ptr %5, align 8, !tbaa !52
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = sub i64 %i.ng, %i.nh                    ; 2 uses
  store i64 %i.ni, ptr %i.k, align 8, !tbaa !30
  %i.nj = icmp eq i64 %i.nd, %i.ni
  br i1 %i.nj, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %32)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.dy

bb.dw:                                            ; preds = %bb.du
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %32, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.dy

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  %i.nk = load i8, ptr %32, align 8, !tbaa !78, !range !37, !noundef !53
  %i.nl = trunc nuw i8 %i.nk to i1
  br i1 %i.nl, label %.critedge225, label %bb.dz

bb.dx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit392, %bb.di
  %.pn169.pn.pn = phi { ptr, i32 } [ %.pn169.pn, %_ZN7testing7MessageD2Ev.exit392 ], [ %.pn167, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %bb.jz

bb.dy:                                            ; preds = %bb.dw, %bb.dv
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  br label %bb.el

bb.dz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.ea unwind label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  %i.nn = load ptr, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %.not.i.i400 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i400, label %_ZNK7testing15AssertionResult15failure_messageEv.exit401, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !32
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit401

_ZNK7testing15AssertionResult15failure_messageEv.exit401: ; preds = %bb.eb, %bb.ea
  %i.np = phi ptr [ %i.no, %bb.eb ], [ @.str.34, %bb.ea ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 227, ptr noundef %i.np)
          to label %bb.ec unwind label %bb.eg

bb.ec:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit401
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.ed unwind label %bb.eh

bb.ed:                                            ; preds = %bb.ec
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  %i.nq = load ptr, ptr %33, align 8, !tbaa !39   ; 3 uses
  %.not.i.i402 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i402, label %_ZN7testing7MessageD2Ev.exit404, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i403

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i403: ; preds = %bb.ed
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !14
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(128) %i.nq) #18, !call_target !48, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit404

_ZN7testing7MessageD2Ev.exit404:                  ; preds = %bb.ed, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  %i.nu = load ptr, ptr %i.af, align 8, !tbaa !49 ; 4 uses
  %.not.i.i405 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i405, label %_ZN7testing15AssertionResultD2Ev.exit409, label %bb.ee

bb.ee:                                            ; preds = %_ZN7testing7MessageD2Ev.exit404
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !32 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 16 ; 2 uses
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i406: ; preds = %bb.ee
  %i.ny = load i64, ptr %i.nw, align 8, !tbaa !33
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.nz) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i407

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i407: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i406
  call void @_ZdlPvm(ptr noundef nonnull %i.nu, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit409

_ZN7testing15AssertionResultD2Ev.exit409:         ; preds = %_ZN7testing7MessageD2Ev.exit404, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i407
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %.critedge237

bb.ef:                                            ; preds = %bb.dz
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit412

bb.eg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit401
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ec
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #18
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn173 = phi { ptr, i32 } [ %i.oc, %bb.eh ], [ %i.ob, %bb.eg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  %i.od = load ptr, ptr %33, align 8, !tbaa !39   ; 3 uses
  %.not.i.i410 = icmp eq ptr %i.od, null
  br i1 %.not.i.i410, label %_ZN7testing7MessageD2Ev.exit412, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i411

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i411: ; preds = %bb.ei
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !14
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr noundef nonnull align 8 dereferenceable(128) %i.od) #18, !call_target !48, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit412

_ZN7testing7MessageD2Ev.exit412:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i411, %bb.ei, %bb.ef
  %.pn173.pn = phi { ptr, i32 } [ %i.oa, %bb.ef ], [ %.pn173, %bb.ei ], [ %.pn173, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i411 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #18
  br label %bb.el

.critedge225:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.oh = load ptr, ptr %i.af, align 8, !tbaa !49 ; 4 uses
  %.not.i.i413 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i413, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.critedge225
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !32 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 16 ; 2 uses
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i414: ; preds = %bb.ej
  %i.ol = load i64, ptr %i.oj, align 8, !tbaa !33
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.om) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i414
  call void @_ZdlPvm(ptr noundef nonnull %i.oh, i64 noundef 32) #20
  br label %bb.ek

bb.ek:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415, %.critedge225
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.em

bb.el:                                            ; preds = %_ZN7testing7MessageD2Ev.exit412, %bb.dy
  %.pn173.pn.pn = phi { ptr, i32 } [ %.pn173.pn, %_ZN7testing7MessageD2Ev.exit412 ], [ %i.nm, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.jz

bb.em:                                            ; preds = %bb.ek, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.0.ptr.sroa.idx = phi i8 [ 0, %bb.ek ], [ 1, %_ZNSt6vectorIhSaIhEED2Ev.exit ]
  %.not177 = phi i1 [ false, %bb.ek ], [ true, %_ZNSt6vectorIhSaIhEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  store i8 %.0.ptr.sroa.idx, ptr %i.l, align 1, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  invoke void @_ZN7testing11ScopedTraceC2IbEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %35, ptr noundef nonnull @.str.2, i32 noundef 231, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %bb.em
  %i.on = load ptr, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.oo = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = ptrtoint ptr %i.on to i64
  %i.or = sub i64 %i.op, %i.oq                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  %i.os = icmp slt i64 %i.or, 0
  br i1 %i.os, label %bb.eo, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #19
          to label %.noexc418 unwind label %.loopexit.split-lp

.noexc418:                                        ; preds = %bb.eo
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.en
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.or, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ot = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.or) #21
          to label %.noexc419 unwind label %.loopexit661 ; 4 uses

.noexc419:                                        ; preds = %bb.ep
  store ptr %i.ot, ptr %36, align 8, !tbaa !52
  %i.ou = getelementptr i8, ptr %i.ot, i64 %i.or  ; 2 uses
  store ptr %i.ou, ptr %i.ag, align 8, !tbaa !55
  store i8 0, ptr %i.ot, align 1, !tbaa !33
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 1 ; 2 uses
  %i.ow = add nsw i64 %i.or, -1                   ; 2 uses
  %i.ox = icmp eq i64 %i.ow, 0
  br i1 %i.ox, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %bb.eq

bb.eq:                                            ; preds = %.noexc419
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ov, i8 0, i64 %i.ow, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %bb.eq, %.noexc419
  %.0.i.i.i.i.i = phi ptr [ %i.ou, %bb.eq ], [ %i.ov, %.noexc419 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  store ptr %.0.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !51
  %i.oy = load i8, ptr %i.l, align 1, !tbaa !54, !range !37, !noundef !53
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.er, label %bb.ev

bb.er:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.pa = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.es unwind label %bb.eu     ; 0 uses

bb.es:                                            ; preds = %bb.er
  %i.pb = load ptr, ptr %36, align 8, !tbaa !52   ; 2 uses
  %i.pc = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.pd = ptrtoint ptr %i.pc to i64
  %i.pe = ptrtoint ptr %i.pb to i64
  %i.pf = sub i64 %i.pd, %i.pe
  br label %bb.ev

bb.et:                                            ; preds = %bb.em
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

.loopexit661:                                     ; preds = %bb.ep
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit575

.loopexit.split-lp:                               ; preds = %bb.eo
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit575

bb.eu:                                            ; preds = %bb.er
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

bb.ev:                                            ; preds = %bb.es, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %.sroa.0648.0 = phi ptr [ %i.pb, %bb.es ], [ %i.on, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ]
  %.sroa.11.0 = phi i64 [ %i.pf, %bb.es ], [ %i.or, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
  invoke void @EVP_CIPHER_CTX_init(ptr noundef nonnull align 8 dereferenceable(152) %37)
          to label %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEEC2Ev.exit unwind label %bb.ex

_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEEC2Ev.exit: ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  %i.pi = load ptr, ptr %2, align 8, !tbaa !52
  %i.pj = load ptr, ptr %3, align 8, !tbaa !52
  %i.pk = invoke i32 @EVP_EncryptInit_ex(ptr noundef nonnull %37, ptr noundef %i.ay, ptr noundef null, ptr noundef %i.pi, ptr noundef %i.pj)
          to label %bb.ew unwind label %bb.ey

bb.ew:                                            ; preds = %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEEC2Ev.exit
  %i.pl = icmp ne i32 %i.pk, 0                    ; 2 uses
  %i.pm = zext i1 %i.pl to i8
  store i8 %i.pm, ptr %38, align 8, !tbaa !78
  store ptr null, ptr %i.ai, align 8, !tbaa !79
  br i1 %i.pl, label %bb.fk, label %bb.ez

bb.ex:                                            ; preds = %bb.ev
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit573

bb.ey:                                            ; preds = %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEEC2Ev.exit
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.ez:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.fa unwind label %bb.ff

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.fb unwind label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  %i.pp = load ptr, ptr %41, align 8, !tbaa !32
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 243, ptr noundef %i.pp)
          to label %bb.fc unwind label %bb.fh

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.fd unwind label %bb.fi

bb.fd:                                            ; preds = %bb.fc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #18
  %i.pq = load ptr, ptr %41, align 8, !tbaa !32   ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.ao
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %bb.fd
  %i.ps = load i64, ptr %i.ao, align 8, !tbaa !33
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  %i.pu = load ptr, ptr %39, align 8, !tbaa !39   ; 3 uses
  %.not.i.i424 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i424, label %_ZN7testing7MessageD2Ev.exit426, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i425

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i425: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !14
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(128) %i.pu) #18, !call_target !48, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit426

_ZN7testing7MessageD2Ev.exit426:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i425
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  %i.py = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 4 uses
  %.not.i.i427 = icmp eq ptr %i.py, null
  br i1 %.not.i.i427, label %.critedge235, label %bb.fe

bb.fe:                                            ; preds = %_ZN7testing7MessageD2Ev.exit426
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !32 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 16 ; 2 uses
  %i.qb = icmp eq ptr %i.pz, %i.qa
  br i1 %i.qb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i428: ; preds = %bb.fe
  %i.qc = load i64, ptr %i.qa, align 8, !tbaa !33
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qd) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i429

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i429: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i428
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef 32) #20
  br label %.critedge235

bb.ff:                                            ; preds = %bb.ez
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit437

bb.fg:                                            ; preds = %bb.fa
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

bb.fh:                                            ; preds = %bb.fb
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fc
  %i.qh = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN24XTSTest_TestVectors_Test8TestBodyEv:bb.a
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.ja unwind label %bb.je

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #18
  %i.aav = load ptr, ptr %i.an, align 8, !tbaa !49 ; 2 uses
  %.not.i.i557 = icmp eq ptr %i.aav, null
  br i1 %.not.i.i557, label %_ZNK7testing15AssertionResult15failure_messageEv.exit558, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !32
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit558

_ZNK7testing15AssertionResult15failure_messageEv.exit558: ; preds = %bb.jb, %bb.ja
  %i.aax = phi ptr [ %i.aaw, %bb.jb ], [ @.str.34, %bb.ja ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %63, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 265, ptr noundef %i.aax)
          to label %bb.jc unwind label %bb.jf

bb.jc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit558
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.jd unwind label %bb.jg

bb.jd:                                            ; preds = %bb.jc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #18
  %i.aay = load ptr, ptr %62, align 8, !tbaa !39  ; 3 uses
  %.not.i.i559 = icmp eq ptr %i.aay, null
  br i1 %.not.i.i559, label %_ZN7testing7MessageD2Ev.exit561, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i560

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i560: ; preds = %bb.jd
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !14
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  %i.abb = load ptr, ptr %i.aba, align 8
  call void %i.abb(ptr noundef nonnull align 8 dereferenceable(128) %i.aay) #18, !call_target !48, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit561

_ZN7testing7MessageD2Ev.exit561:                  ; preds = %bb.jd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i560
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #18
  br label %.critedge239

bb.je:                                            ; preds = %bb.iz
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit564

bb.jf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit558
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

bb.jg:                                            ; preds = %bb.jc
  %i.abe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #18
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %.pn202 = phi { ptr, i32 } [ %i.abe, %bb.jg ], [ %i.abd, %bb.jf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #18
  %i.abf = load ptr, ptr %62, align 8, !tbaa !39  ; 3 uses
  %.not.i.i562 = icmp eq ptr %i.abf, null
  br i1 %.not.i.i562, label %_ZN7testing7MessageD2Ev.exit564, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i563

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i563: ; preds = %bb.jh
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !14
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abi = load ptr, ptr %i.abh, align 8
  call void %i.abi(ptr noundef nonnull align 8 dereferenceable(128) %i.abf) #18, !call_target !48, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit564

_ZN7testing7MessageD2Ev.exit564:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i563, %bb.jh, %bb.je
  %.pn202.pn = phi { ptr, i32 } [ %i.abc, %bb.je ], [ %.pn202, %bb.jh ], [ %.pn202, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i563 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %59) #18
  br label %bb.jn

.critedge239:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit556, %_ZN7testing7MessageD2Ev.exit561
  %i.abj = load ptr, ptr %i.an, align 8, !tbaa !49 ; 4 uses
  %.not.i.i565 = icmp eq ptr %i.abj, null
  br i1 %.not.i.i565, label %_ZN7testing15AssertionResultD2Ev.exit569, label %bb.ji

bb.ji:                                            ; preds = %.critedge239
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !32 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abj, i64 16 ; 2 uses
  %i.abm = icmp eq ptr %i.abk, %i.abl
  br i1 %i.abm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i567, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i566: ; preds = %bb.ji
  %i.abn = load i64, ptr %i.abl, align 8, !tbaa !33
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abk, i64 noundef %i.abo) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i567

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i567: ; preds = %bb.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i566
  call void @_ZdlPvm(ptr noundef nonnull %i.abj, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit569

_ZN7testing15AssertionResultD2Ev.exit569:         ; preds = %.critedge239, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i567
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  %i.abp = invoke noundef i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(152) %37)
          to label %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit unwind label %bb.jj ; 0 uses

bb.jj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit569
  %i.abq = landingpad { ptr, i32 }
          catch ptr null
  %i.abr = extractvalue { ptr, i32 } %i.abq, 0
  call void @__clang_call_terminate(ptr %i.abr) #22
  unreachable

_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit569
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  %i.abs = load ptr, ptr %36, align 8, !tbaa !52  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.abs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.jk

bb.jk:                                            ; preds = %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit
  %i.abt = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.abu = ptrtoint ptr %i.abt to i64
  %i.abv = ptrtoint ptr %i.abs to i64
  %i.abw = sub i64 %i.abu, %i.abv
  call void @_ZdlPvm(ptr noundef nonnull %i.abs, i64 noundef %i.abw) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit, %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  br i1 %.not177, label %.loopexit, label %bb.em

bb.jl:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit523, %_ZN7testing15AssertionResultD2Ev.exit501, %_ZN7testing15AssertionResultD2Ev.exit453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  %i.abx = invoke noundef i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(152) %37)
          to label %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit570 unwind label %bb.jm ; 0 uses

bb.jm:                                            ; preds = %bb.jl
  %i.aby = landingpad { ptr, i32 }
          catch ptr null
  %i.abz = extractvalue { ptr, i32 } %i.aby, 0
  call void @__clang_call_terminate(ptr %i.abz) #22
  unreachable

_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit570: ; preds = %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  %i.aca = load ptr, ptr %36, align 8, !tbaa !52  ; 2 uses
  %.not.i.i.i571 = icmp eq ptr %i.aca, null
  br i1 %.not.i.i.i571, label %.loopexit.sink.split, label %.loopexit.sink.split.sink.split

bb.jn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit564, %bb.iy
  %.pn202.pn.pn = phi { ptr, i32 } [ %.pn202.pn, %_ZN7testing7MessageD2Ev.exit564 ], [ %i.aau, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #18
  br label %bb.jo

bb.jo:                                            ; preds = %.loopexit662, %.loopexit.split-lp663, %bb.jn, %bb.ix, %bb.hz, %bb.hi, %bb.gk
  %.pn202.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn, %bb.jn ], [ %.pn183.pn.pn.pn, %bb.gk ], [ %.pn197.pn.pn.pn, %bb.ix ], [ %.pn192.pn.pn.pn, %bb.hz ], [ %.pn188.pn.pn, %bb.hi ], [ %lpad.loopexit664, %.loopexit662 ], [ %lpad.loopexit.split-lp665, %.loopexit.split-lp663 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.fm
  %.pn202.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn, %bb.jo ], [ %.pn178.pn.pn.pn, %bb.fm ]
  %i.acb = invoke noundef i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(152) %37)
          to label %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit573 unwind label %bb.jq ; 0 uses

bb.jq:                                            ; preds = %bb.jp
  %i.acc = landingpad { ptr, i32 }
          catch ptr null
  %i.acd = extractvalue { ptr, i32 } %i.acc, 0
  call void @__clang_call_terminate(ptr %i.acd) #22
  unreachable

_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit573: ; preds = %bb.jp, %bb.ex
  %.pn202.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pn, %bb.ex ], [ %.pn202.pn.pn.pn.pn, %bb.jp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  br label %bb.jr

bb.jr:                                            ; preds = %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit573, %bb.eu
  %.pn202.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn.pn.pn, %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit573 ], [ %i.ph, %bb.eu ] ; 2 uses
  %i.ace = load ptr, ptr %36, align 8, !tbaa !52  ; 3 uses
  %.not.i.i.i574 = icmp eq ptr %i.ace, null
  br i1 %.not.i.i.i574, label %_ZNSt6vectorIhSaIhEED2Ev.exit575, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.acf = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.acg = ptrtoint ptr %i.acf to i64
  %i.ach = ptrtoint ptr %i.ace to i64
  %i.aci = sub i64 %i.acg, %i.ach
  call void @_ZdlPvm(ptr noundef nonnull %i.ace, i64 noundef %i.aci) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit575

_ZNSt6vectorIhSaIhEED2Ev.exit575:                 ; preds = %.loopexit661, %.loopexit.split-lp, %bb.js, %bb.jr
  %.pn202.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn.pn.pn.pn, %bb.js ], [ %.pn202.pn.pn.pn.pn.pn.pn, %bb.jr ], [ %lpad.loopexit, %.loopexit661 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %35) #18
  br label %bb.jt

bb.jt:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit575, %bb.et
  %.pn202.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit575 ], [ %i.pg, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  br label %bb.jz

.critedge235:                                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i429, %_ZN7testing7MessageD2Ev.exit426
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  %i.acj = invoke noundef i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(152) %37)
          to label %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit576 unwind label %bb.ju ; 0 uses

bb.ju:                                            ; preds = %.critedge235
  %i.ack = landingpad { ptr, i32 }
          catch ptr null
  %i.acl = extractvalue { ptr, i32 } %i.ack, 0
  call void @__clang_call_terminate(ptr %i.acl) #22
  unreachable

_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit576: ; preds = %.critedge235
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  %i.acm = load ptr, ptr %36, align 8, !tbaa !52  ; 2 uses
  %.not.i.i.i577 = icmp eq ptr %i.acm, null
  br i1 %.not.i.i.i577, label %.loopexit.sink.split, label %.loopexit.sink.split.sink.split

.loopexit.sink.split.sink.split:                  ; preds = %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit576, %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit570
  %.sink1656 = phi ptr [ %i.aca, %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit570 ], [ %i.acm, %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit576 ] ; 2 uses
  %i.acn = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.aco = ptrtoint ptr %i.acn to i64
  %i.acp = ptrtoint ptr %.sink1656 to i64
  %i.acq = sub i64 %i.aco, %i.acp
  call void @_ZdlPvm(ptr noundef nonnull %.sink1656, i64 noundef %i.acq) #20
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.sink.split, %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit576, %_ZN4bssl8internal14StackAllocatedI17evp_cipher_ctx_stiXadL_Z19EVP_CIPHER_CTX_initEEXadL_Z22EVP_CIPHER_CTX_cleanupEEED2Ev.exit570
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %.loopexit.sink.split
  %.not177714.not = phi i1 [ true, %.loopexit.sink.split ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit ]
  %i.acr = load ptr, ptr %5, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i579 = icmp eq ptr %i.acr, null
  br i1 %.not.i.i.i579, label %_ZNSt6vectorIhSaIhEED2Ev.exit580, label %bb.jv

bb.jv:                                            ; preds = %.loopexit
  %i.acs = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.act = ptrtoint ptr %i.acs to i64
  %i.acu = ptrtoint ptr %i.acr to i64
  %i.acv = sub i64 %i.act, %i.acu
  call void @_ZdlPvm(ptr noundef nonnull %i.acr, i64 noundef %i.acv) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit580

_ZNSt6vectorIhSaIhEED2Ev.exit580:                 ; preds = %.loopexit, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.acw = load ptr, ptr %4, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i581 = icmp eq ptr %i.acw, null
  br i1 %.not.i.i.i581, label %_ZNSt6vectorIhSaIhEED2Ev.exit582, label %bb.jw

bb.jw:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit580
  %i.acx = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.acy = ptrtoint ptr %i.acx to i64
  %i.acz = ptrtoint ptr %i.acw to i64
  %i.ada = sub i64 %i.acy, %i.acz
  call void @_ZdlPvm(ptr noundef nonnull %i.acw, i64 noundef %i.ada) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit582

_ZNSt6vectorIhSaIhEED2Ev.exit582:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit580, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.adb = load ptr, ptr %3, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i583 = icmp eq ptr %i.adb, null
  br i1 %.not.i.i.i583, label %_ZNSt6vectorIhSaIhEED2Ev.exit584, label %bb.jx

bb.jx:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit582
  %i.adc = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.add = ptrtoint ptr %i.adc to i64
  %i.ade = ptrtoint ptr %i.adb to i64
  %i.adf = sub i64 %i.add, %i.ade
  call void @_ZdlPvm(ptr noundef nonnull %i.adb, i64 noundef %i.adf) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit584

_ZNSt6vectorIhSaIhEED2Ev.exit584:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit582, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.adg = load ptr, ptr %2, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i585 = icmp eq ptr %i.adg, null
  br i1 %.not.i.i.i585, label %_ZNSt6vectorIhSaIhEED2Ev.exit586, label %bb.jy

bb.jy:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit584
  %i.adh = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.adi = ptrtoint ptr %i.adh to i64
  %i.adj = ptrtoint ptr %i.adg to i64
  %i.adk = sub i64 %i.adi, %i.adj
  call void @_ZdlPvm(ptr noundef nonnull %i.adg, i64 noundef %i.adk) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit586

_ZNSt6vectorIhSaIhEED2Ev.exit586:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit584, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.0133.add = add nuw nsw i64 %.0133.idx1447, 32 ; 2 uses
  %.not = icmp eq i64 %.0133.add, 160
  %or.cond = select i1 %.not177714.not, i1 true, i1 %.not
  br i1 %or.cond, label %.loopexit667, label %bb.b

bb.jz:                                            ; preds = %bb.jt, %bb.el, %bb.dx, %bb.df, %bb.cm, %bb.bu, %bb.az, %bb.ae
  %.pn202.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jt ], [ %.pn173.pn.pn, %bb.el ], [ %.pn169.pn.pn, %bb.dx ], [ %.pn163.pn.pn, %bb.df ], [ %.pn156.pn.pn.pn, %bb.cm ], [ %.pn149.pn.pn.pn, %bb.bu ], [ %.pn142.pn.pn.pn, %bb.az ], [ %.pn135.pn.pn.pn, %bb.ae ]
  %i.adl = load ptr, ptr %5, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i587 = icmp eq ptr %i.adl, null
  br i1 %.not.i.i.i587, label %_ZNSt6vectorIhSaIhEED2Ev.exit588, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.adm = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.adn = ptrtoint ptr %i.adm to i64
  %i.ado = ptrtoint ptr %i.adl to i64
  %i.adp = sub i64 %i.adn, %i.ado
  call void @_ZdlPvm(ptr noundef nonnull %i.adl, i64 noundef %i.adp) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit588

_ZNSt6vectorIhSaIhEED2Ev.exit588:                 ; preds = %bb.jz, %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.adq = load ptr, ptr %4, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i589 = icmp eq ptr %i.adq, null
  br i1 %.not.i.i.i589, label %_ZNSt6vectorIhSaIhEED2Ev.exit590, label %bb.kb

bb.kb:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit588
  %i.adr = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.ads = ptrtoint ptr %i.adr to i64
  %i.adt = ptrtoint ptr %i.adq to i64
  %i.adu = sub i64 %i.ads, %i.adt
  call void @_ZdlPvm(ptr noundef nonnull %i.adq, i64 noundef %i.adu) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit590

_ZNSt6vectorIhSaIhEED2Ev.exit590:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit588, %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.adv = load ptr, ptr %3, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i591 = icmp eq ptr %i.adv, null
  br i1 %.not.i.i.i591, label %_ZNSt6vectorIhSaIhEED2Ev.exit592, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit590
  %i.adw = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.adx = ptrtoint ptr %i.adw to i64
  %i.ady = ptrtoint ptr %i.adv to i64
  %i.adz = sub i64 %i.adx, %i.ady
  call void @_ZdlPvm(ptr noundef nonnull %i.adv, i64 noundef %i.adz) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit592

_ZNSt6vectorIhSaIhEED2Ev.exit592:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit590, %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.aea = load ptr, ptr %2, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i593 = icmp eq ptr %i.aea, null
  br i1 %.not.i.i.i593, label %_ZNSt6vectorIhSaIhEED2Ev.exit594, label %bb.kd

bb.kd:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit592
  %i.aeb = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.aec = ptrtoint ptr %i.aeb to i64
  %i.aed = ptrtoint ptr %i.aea to i64
  %i.aee = sub i64 %i.aec, %i.aed
  call void @_ZdlPvm(ptr noundef nonnull %i.aea, i64 noundef %i.aee) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit594

_ZNSt6vectorIhSaIhEED2Ev.exit594:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit592, %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.ke

bb.ke:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit594, %bb.j
  %.pn202.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit594 ], [ %i.br, %bb.j ]
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  resume { ptr, i32 } %.pn202.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

.critedge237:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit409, %_ZN7testing15AssertionResultD2Ev.exit389, %_ZN7testing15AssertionResultD2Ev.exit368, %_ZN7testing15AssertionResultD2Ev.exit346, %_ZN7testing15AssertionResultD2Ev.exit313, %_ZN7testing15AssertionResultD2Ev.exit280, %_ZN7testing15AssertionResultD2Ev.exit
  %i.aef = load ptr, ptr %5, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i595 = icmp eq ptr %i.aef, null
  br i1 %.not.i.i.i595, label %_ZNSt6vectorIhSaIhEED2Ev.exit596, label %bb.kf

bb.kf:                                            ; preds = %.critedge237
  %i.aeg = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.aeh = ptrtoint ptr %i.aeg to i64
  %i.aei = ptrtoint ptr %i.aef to i64
  %i.aej = sub i64 %i.aeh, %i.aei
  call void @_ZdlPvm(ptr noundef nonnull %i.aef, i64 noundef %i.aej) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit596

_ZNSt6vectorIhSaIhEED2Ev.exit596:                 ; preds = %.critedge237, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.aek = load ptr, ptr %4, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i597 = icmp eq ptr %i.aek, null
  br i1 %.not.i.i.i597, label %_ZNSt6vectorIhSaIhEED2Ev.exit598, label %bb.kg

bb.kg:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit596
  %i.ael = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.aem = ptrtoint ptr %i.ael to i64
  %i.aen = ptrtoint ptr %i.aek to i64
  %i.aeo = sub i64 %i.aem, %i.aen
  call void @_ZdlPvm(ptr noundef nonnull %i.aek, i64 noundef %i.aeo) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit598

_ZNSt6vectorIhSaIhEED2Ev.exit598:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit596, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.aep = load ptr, ptr %3, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i599 = icmp eq ptr %i.aep, null
  br i1 %.not.i.i.i599, label %_ZNSt6vectorIhSaIhEED2Ev.exit600, label %bb.kh

bb.kh:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit598
  %i.aeq = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.aer = ptrtoint ptr %i.aeq to i64
  %i.aes = ptrtoint ptr %i.aep to i64
  %i.aet = sub i64 %i.aer, %i.aes
  call void @_ZdlPvm(ptr noundef nonnull %i.aep, i64 noundef %i.aet) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit600

_ZNSt6vectorIhSaIhEED2Ev.exit600:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit598, %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.aeu = load ptr, ptr %2, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i601 = icmp eq ptr %i.aeu, null
  br i1 %.not.i.i.i601, label %_ZNSt6vectorIhSaIhEED2Ev.exit602, label %bb.ki

bb.ki:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit600
  %i.aev = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.aew = ptrtoint ptr %i.aev to i64
  %i.aex = ptrtoint ptr %i.aeu to i64
  %i.aey = sub i64 %i.aew, %i.aex
  call void @_ZdlPvm(ptr noundef nonnull %i.aeu, i64 noundef %i.aey) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit602

_ZNSt6vectorIhSaIhEED2Ev.exit602:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit600, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %.loopexit667

.loopexit667:                                     ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit586, %_ZNSt6vectorIhSaIhEED2Ev.exit602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing11ScopedTraceC2IjEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
end_hunk_2
