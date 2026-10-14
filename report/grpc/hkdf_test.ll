Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/hkdf_test?download=true
inline.NumInlined: 1030
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci:bb.a

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
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.65, i32 noundef 534)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.66, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.69, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !15
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.68, i64 noundef 1)
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

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125HKDFTest_TestVectors_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125HKDFTest_TestVectors_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_125HKDFTest_TestVectors_TestE, i64 16), ptr %i.a, align 8, !tbaa !15
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #20
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_125HKDFTest_TestVectors_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_125HKDFTest_TestVectors_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %1 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 17 uses
  %i.c = alloca i64, align 8                      ; 19 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %struct.Bytes, align 8              ; 6 uses
  %8 = alloca %struct.Bytes, align 8              ; 6 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = alloca [82 x i8], align 16               ; 28 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %16 = alloca %struct.Bytes, align 8             ; 6 uses
  %17 = alloca %struct.Bytes, align 8             ; 6 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %struct.Bytes, align 8             ; 6 uses
  %26 = alloca %struct.Bytes, align 8             ; 6 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.std::unique_ptr.22", align 8 ; 11 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %39 = alloca %"class.testing::Message", align 8 ; 7 uses
  %40 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %43 = alloca %"class.testing::Message", align 8 ; 7 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %47 = alloca %"class.testing::Message", align 8 ; 7 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %50 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %51 = alloca %"class.testing::Message", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.0 = alloca i8, align 1                   ; 6 uses
  %.sroa.6 = alloca i8, align 1                   ; 6 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %54 = alloca %"class.testing::ScopedTrace", align 1 ; 8 uses
  %55 = alloca %"class.std::unique_ptr.22", align 8 ; 7 uses
  %56 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %57 = alloca %"class.testing::Message", align 8 ; 7 uses
  %58 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %60 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %61 = alloca %"class.testing::Message", align 8 ; 7 uses
  %62 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %65 = alloca %"class.testing::Message", align 8 ; 7 uses
  %66 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %67 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %68 = alloca %"class.testing::Message", align 8 ; 7 uses
  %69 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %71 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %72 = alloca %"class.testing::Message", align 8 ; 7 uses
  %73 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %75 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %76 = alloca %struct.Bytes, align 8             ; 6 uses
  %77 = alloca %struct.Bytes, align 8             ; 6 uses
  %78 = alloca %"class.testing::Message", align 8 ; 7 uses
  %79 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %80 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %81 = alloca %"class.testing::Message", align 8 ; 7 uses
  %82 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %84 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %85 = alloca %struct.Bytes, align 8             ; 6 uses
  %86 = alloca %struct.Bytes, align 8             ; 6 uses
  %87 = alloca %"class.testing::Message", align 8 ; 7 uses
  %88 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %89 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %90 = alloca %"class.testing::Message", align 8 ; 7 uses
  %91 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %93 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %94 = alloca %"class.testing::Message", align 8 ; 7 uses
  %95 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %97 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %98 = alloca %"class.testing::Message", align 8 ; 7 uses
  %99 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %101 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %102 = alloca %"class.testing::Message", align 8 ; 7 uses
  %103 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %105 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %106 = alloca %"class.testing::Message", align 8 ; 7 uses
  %107 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %109 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %110 = alloca %"class.testing::Message", align 8 ; 7 uses
  %111 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %112 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %113 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %114 = alloca %"class.testing::Message", align 8 ; 7 uses
  %115 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i8, align 1                       ; 13 uses
  %117 = alloca %"class.testing::ScopedTrace", align 1 ; 14 uses
  %118 = alloca %"class.std::unique_ptr.22", align 8 ; 12 uses
  %119 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %120 = alloca %"class.testing::Message", align 8 ; 7 uses
  %121 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = alloca i64, align 8                      ; 12 uses
  %123 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %124 = alloca %"class.testing::Message", align 8 ; 7 uses
  %125 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %126 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %127 = alloca %"class.testing::AssertionResult", align 8 ; 13 uses
  %128 = alloca %struct.Bytes, align 8            ; 10 uses
  %129 = alloca %struct.Bytes, align 8            ; 10 uses
  %130 = alloca %"class.testing::Message", align 8 ; 12 uses
  %131 = alloca %"class.testing::internal::AssertHelper", align 8 ; 12 uses
  %132 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %133 = alloca %"class.testing::Message", align 8 ; 7 uses
  %134 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %135 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %136 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %137 = alloca %"class.testing::Message", align 8 ; 7 uses
  %138 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %139 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %140 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %141 = alloca %"class.testing::Message", align 8 ; 7 uses
  %142 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %143 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %144 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %145 = alloca %"class.testing::Message", align 8 ; 7 uses
  %146 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %147 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %148 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %149 = alloca %"class.testing::Message", align 8 ; 7 uses
  %150 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %151 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %152 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %153 = alloca %"class.testing::Message", align 8 ; 7 uses
  %154 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %155 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %156 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %157 = alloca %"class.testing::Message", align 8 ; 7 uses
  %158 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %159 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %160 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %161 = alloca %"class.testing::Message", align 8 ; 7 uses
  %162 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %163 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.h = alloca i8, align 1                       ; 13 uses
  %164 = alloca %"class.testing::ScopedTrace", align 1 ; 14 uses
  %165 = alloca %"class.std::unique_ptr.22", align 8 ; 12 uses
  %166 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %167 = alloca %"class.testing::Message", align 8 ; 7 uses
  %168 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %169 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.i = alloca i64, align 8                      ; 12 uses
  %170 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %171 = alloca %"class.testing::Message", align 8 ; 7 uses
  %172 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %173 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %174 = alloca %"class.testing::AssertionResult", align 8 ; 13 uses
  %175 = alloca %struct.Bytes, align 8            ; 10 uses
  %176 = alloca %struct.Bytes, align 8            ; 10 uses
  %177 = alloca %"class.testing::Message", align 8 ; 12 uses
  %178 = alloca %"class.testing::internal::AssertHelper", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %89, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %93, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %97, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %101, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %105, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %109, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %113, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %119, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %123, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %128, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %129, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %127, i64 8 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %132, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %136, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %140, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %144, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %148, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %152, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %156, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %160, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %166, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %170, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %175, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %176, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %174, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.yv
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.2, i32 noundef 257, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !27
  %i.bo = getelementptr inbounds nuw [440 x i8], ptr @_ZN12_GLOBAL__N_16kTestsE, i64 %i.bn ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !112 ; 6 uses
  %i.bq = invoke noundef ptr %i.bp()
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_125HKDFTest_TestVectors_Test8TestBodyEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928

bb.fb:                                            ; preds = %bb.ev
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fc:                                            ; preds = %bb.ew
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #18
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.pn447 = phi { ptr, i32 } [ %i.ow, %bb.fc ], [ %i.ov, %bb.fb ] ; 2 uses
  %i.ox = load ptr, ptr %49, align 8, !tbaa !42   ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.oz = icmp eq ptr %i.ox, %i.oy
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i926

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i926: ; preds = %bb.fd
  %i.pa = load i64, ptr %i.oy, align 8, !tbaa !43
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i926, %bb.fa
  %.pn447.pn = phi { ptr, i32 } [ %i.ou, %bb.fa ], [ %.pn447, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i926 ], [ %.pn447, %bb.fd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  %i.pc = load ptr, ptr %47, align 8, !tbaa !45   ; 3 uses
  %.not.i.i929 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i929, label %_ZN7testing7MessageD2Ev.exit931, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i930

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i930: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !15
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(128) %i.pc) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit931

_ZN7testing7MessageD2Ev.exit931:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i930, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928, %bb.ez
  %.pn447.pn.pn = phi { ptr, i32 } [ %i.ot, %bb.ez ], [ %.pn447.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928 ], [ %.pn447.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i930 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %46) #18
  br label %bb.fg

bb.fe:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18
  %i.pg = invoke i32 @EVP_PKEY_CTX_set1_hkdf_salt(ptr noundef nonnull %i.iw, ptr noundef nonnull %i.bu, i64 noundef %i.bw)
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.ph = icmp ne i32 %i.pg, 0                    ; 2 uses
  %i.pi = zext i1 %i.ph to i8
  store i8 %i.pi, ptr %50, align 8, !tbaa !37
  store ptr null, ptr %i.aa, align 8, !tbaa !38
  br i1 %i.ph, label %bb.ft, label %bb.fi

bb.fg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit931, %bb.es
  %.pn447.pn.pn.pn = phi { ptr, i32 } [ %.pn447.pn.pn, %_ZN7testing7MessageD2Ev.exit931 ], [ %i.oc, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  br label %bb.yw

bb.fh:                                            ; preds = %bb.fe
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.fi:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.fj unwind label %bb.fo

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %53, ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13)
          to label %bb.fk unwind label %bb.fp

bb.fk:                                            ; preds = %bb.fj
  %i.pk = load ptr, ptr %53, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %52, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 287, ptr noundef %i.pk)
          to label %bb.fl unwind label %bb.fq

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.fm unwind label %bb.fr

bb.fm:                                            ; preds = %bb.fl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #18
  %i.pl = load ptr, ptr %53, align 8, !tbaa !42   ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.pn = icmp eq ptr %i.pl, %i.pm
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937: ; preds = %bb.fm
  %i.po = load i64, ptr %i.pm, align 8, !tbaa !43
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.pp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  %i.pq = load ptr, ptr %51, align 8, !tbaa !45   ; 3 uses
  %.not.i.i940 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i940, label %_ZN7testing7MessageD2Ev.exit942, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i941

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i941: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !15
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8
  call void %i.pt(ptr noundef nonnull align 8 dereferenceable(128) %i.pq) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit942

_ZN7testing7MessageD2Ev.exit942:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i941
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  %i.pu = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 4 uses
  %.not.i.i943 = icmp eq ptr %i.pu, null
  br i1 %.not.i.i943, label %_ZN7testing15AssertionResultD2Ev.exit947, label %bb.fn

bb.fn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit942
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !42 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 16 ; 2 uses
  %i.px = icmp eq ptr %i.pv, %i.pw
  br i1 %i.px, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i945, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i944

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i944: ; preds = %bb.fn
  %i.py = load i64, ptr %i.pw, align 8, !tbaa !43
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.pz) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i945

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i945: ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i944
  call void @_ZdlPvm(ptr noundef nonnull %i.pu, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit947

_ZN7testing15AssertionResultD2Ev.exit947:         ; preds = %_ZN7testing7MessageD2Ev.exit942, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i945
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  br label %.critedge697

bb.fo:                                            ; preds = %bb.fi
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit953

bb.fp:                                            ; preds = %bb.fj
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950

bb.fq:                                            ; preds = %bb.fk
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fl
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #18
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.pn452 = phi { ptr, i32 } [ %i.qd, %bb.fr ], [ %i.qc, %bb.fq ] ; 2 uses
  %i.qe = load ptr, ptr %53, align 8, !tbaa !42   ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.qg = icmp eq ptr %i.qe, %i.qf
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i948

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i948: ; preds = %bb.fs
  %i.qh = load i64, ptr %i.qf, align 8, !tbaa !43
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i948, %bb.fp
  %.pn452.pn = phi { ptr, i32 } [ %i.qb, %bb.fp ], [ %.pn452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i948 ], [ %.pn452, %bb.fs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18
  %i.qj = load ptr, ptr %51, align 8, !tbaa !45   ; 3 uses
  %.not.i.i951 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i951, label %_ZN7testing7MessageD2Ev.exit953, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i952

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i952: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !15
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8
  call void %i.qm(ptr noundef nonnull align 8 dereferenceable(128) %i.qj) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit953

_ZN7testing7MessageD2Ev.exit953:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i952, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950, %bb.fo
  %.pn452.pn.pn = phi { ptr, i32 } [ %i.qa, %bb.fo ], [ %.pn452.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950 ], [ %.pn452.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i952 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %50) #18
  br label %bb.fu

bb.ft:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i8 0, ptr %.sroa.0, align 1, !tbaa !60
  store i8 1, ptr %.sroa.6, align 1, !tbaa !60
  %i.qn = add i64 %i.dg, -1
  %i.qo = add i64 %i.dg, 1
  br label %bb.fv

bb.fu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit953, %bb.fh
  %.pn452.pn.pn.pn = phi { ptr, i32 } [ %.pn452.pn.pn, %_ZN7testing7MessageD2Ev.exit953 ], [ %i.pj, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  br label %bb.yw

bb.fv:                                            ; preds = %bb.ft, %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit
  %.not = phi i1 [ false, %bb.ft ], [ true, %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit ]
  %.0180.idx3077.sroa.phi = phi ptr [ %.sroa.0, %bb.ft ], [ %.sroa.6, %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %179 = load i8, ptr %.0180.idx3077.sroa.phi, align 1, !tbaa !60, !range !56, !noundef !57
  store i8 %179, ptr %i.e, align 1, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #18
  invoke void @_ZN7testing11ScopedTraceC2IbEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %54, ptr noundef nonnull @.str.2, i32 noundef 289, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.fw unwind label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18
  store ptr null, ptr %55, align 8, !tbaa !125
  %i.qp = load i8, ptr %i.e, align 1, !tbaa !60, !range !56, !noundef !57
  %i.qq = trunc nuw i8 %i.qp to i1
  br i1 %i.qq, label %bb.fx, label %bb.gm

bb.fx:                                            ; preds = %bb.fw
  %i.qr = invoke ptr @EVP_PKEY_CTX_dup(ptr noundef nonnull %i.iw)
          to label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit unwind label %bb.fz ; 4 uses

_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit: ; preds = %bb.fx
  store ptr %i.qr, ptr %55, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18
  %i.qs = icmp ne ptr %i.qr, null                 ; 2 uses
  %i.qt = zext i1 %i.qs to i8
  store i8 %i.qt, ptr %56, align 8, !tbaa !37
  store ptr null, ptr %i.ab, align 8, !tbaa !38
  br i1 %i.qs, label %bb.gl, label %bb.ga

bb.fy:                                            ; preds = %bb.fv
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

bb.fz:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1035, %bb.fx
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

bb.ga:                                            ; preds = %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %bb.gb unwind label %bb.gg

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr noundef nonnull align 8 dereferenceable(16) %56, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13)
          to label %bb.gc unwind label %bb.gh

bb.gc:                                            ; preds = %bb.gb
  %i.qw = load ptr, ptr %59, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %58, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 294, ptr noundef %i.qw)
          to label %bb.gd unwind label %bb.gi

bb.gd:                                            ; preds = %bb.gc
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %bb.ge unwind label %bb.gj

bb.ge:                                            ; preds = %bb.gd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #18
  %i.qx = load ptr, ptr %59, align 8, !tbaa !42   ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.qz = icmp eq ptr %i.qx, %i.qy
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i960

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i960: ; preds = %bb.ge
  %i.ra = load i64, ptr %i.qy, align 8, !tbaa !43
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.rb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i960
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  %i.rc = load ptr, ptr %57, align 8, !tbaa !45   ; 3 uses
  %.not.i.i963 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i963, label %_ZN7testing7MessageD2Ev.exit965, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i964

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i964: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !15
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = load ptr, ptr %i.re, align 8
  call void %i.rf(ptr noundef nonnull align 8 dereferenceable(128) %i.rc) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit965

_ZN7testing7MessageD2Ev.exit965:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i964
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  %i.rg = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 4 uses
  %.not.i.i966 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i966, label %.thread, label %bb.gf

bb.gf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit965
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !42 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 16 ; 2 uses
  %i.rj = icmp eq ptr %i.rh, %i.ri
  br i1 %i.rj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i968, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i967

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i967: ; preds = %bb.gf
  %i.rk = load i64, ptr %i.ri, align 8, !tbaa !43
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rl) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i968

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i968: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i967
  call void @_ZdlPvm(ptr noundef nonnull %i.rg, i64 noundef 32) #20
  br label %.thread

.thread:                                          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i968, %_ZN7testing7MessageD2Ev.exit965
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  br label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit1139

bb.gg:                                            ; preds = %bb.ga
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit976

bb.gh:                                            ; preds = %bb.gb
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973

bb.gi:                                            ; preds = %bb.gc
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gd
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #18
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.pn457 = phi { ptr, i32 } [ %i.rp, %bb.gj ], [ %i.ro, %bb.gi ] ; 2 uses
  %i.rq = load ptr, ptr %59, align 8, !tbaa !42   ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.rs = icmp eq ptr %i.rq, %i.rr
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971: ; preds = %bb.gk
  %i.rt = load i64, ptr %i.rr, align 8, !tbaa !43
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.ru) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971, %bb.gh
  %.pn457.pn = phi { ptr, i32 } [ %i.rn, %bb.gh ], [ %.pn457, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971 ], [ %.pn457, %bb.gk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  %i.rv = load ptr, ptr %57, align 8, !tbaa !45   ; 3 uses
  %.not.i.i974 = icmp eq ptr %i.rv, null
  br i1 %.not.i.i974, label %_ZN7testing7MessageD2Ev.exit976, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i975

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i975: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !15
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(128) %i.rv) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit976

_ZN7testing7MessageD2Ev.exit976:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i975, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973, %bb.gg
  %.pn457.pn.pn = phi { ptr, i32 } [ %i.rm, %bb.gg ], [ %.pn457.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973 ], [ %.pn457.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i975 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %56) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  br label %bb.kp

bb.gl:                                            ; preds = %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.fw
  %i.rz = phi ptr [ %i.qr, %bb.gl ], [ null, %bb.fw ] ; 4 uses
  %.0179 = phi ptr [ %i.qr, %bb.gl ], [ %i.iw, %bb.fw ] ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #18
  %i.sa = invoke i32 @EVP_PKEY_derive(ptr noundef nonnull %.0179, ptr noundef null, ptr noundef nonnull %i.c)
          to label %bb.gn unwind label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.sb = icmp ne i32 %i.sa, 0                    ; 2 uses
  %i.sc = zext i1 %i.sb to i8
  store i8 %i.sc, ptr %60, align 8, !tbaa !37
  store ptr null, ptr %i.ac, align 8, !tbaa !38
  br i1 %i.sb, label %bb.ha, label %bb.gp

bb.go:                                            ; preds = %bb.gm
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.gp:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %bb.gq unwind label %bb.gv

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %63, ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13)
          to label %bb.gr unwind label %bb.gw

bb.gr:                                            ; preds = %bb.gq
  %i.se = load ptr, ptr %63, align 8, !tbaa !42
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_125HKDFTest_TestVectors_Test8TestBodyEv:bb.a
_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1100
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !15
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8
  call void %i.yu(ptr noundef nonnull align 8 dereferenceable(128) %i.yr) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1103

_ZN7testing7MessageD2Ev.exit1103:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1100, %bb.jr
  %.pn487.pn.pn = phi { ptr, i32 } [ %i.yi, %bb.jr ], [ %.pn487.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1100 ], [ %.pn487.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %80) #18
  br label %bb.jx

bb.jw:                                            ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #18
  store ptr %i.de, ptr %85, align 8, !tbaa !117
  store i64 %i.dg, ptr %i.al, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #18
  %i.yv = load i64, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  store ptr %i.b, ptr %86, align 8, !tbaa !117
  store i64 %i.yv, ptr %i.am, align 8, !tbaa !118
  %.not.i.i.i.i.i.i1115 = icmp eq i64 %i.dg, %i.yv
  br i1 %.not.i.i.i.i.i.i1115, label %_ZeqRK5BytesS1_.exit.i.i1118, label %_ZeqRK5BytesS1_.exit.thread7.i.i1116

_ZeqRK5BytesS1_.exit.i.i1118:                     ; preds = %bb.jw
  %bcmp.i.i.i.i.i.i.i.i.i.i1119 = call i32 @bcmp(ptr nonnull %i.de, ptr nonnull %i.b, i64 %i.dg), !noalias !128
  %.not9.i.i.i.i.i.i.i.i.i.i1120 = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i1119, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i1120, label %_ZeqRK5BytesS1_.exit.thread.i.i1121, label %_ZeqRK5BytesS1_.exit.thread7.i.i1116

_ZeqRK5BytesS1_.exit.thread.i.i1121:              ; preds = %_ZeqRK5BytesS1_.exit.i.i1118
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %84)
          to label %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit1124 unwind label %bb.jy

_ZeqRK5BytesS1_.exit.thread7.i.i1116:             ; preds = %_ZeqRK5BytesS1_.exit.i.i1118, %bb.jw
  invoke void @_ZN7testing8internal18CmpHelperEQFailureI5BytesS2_EENS_15AssertionResultEPKcS5_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %84, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(16) %85, ptr noundef nonnull align 8 dereferenceable(16) %86)
          to label %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit1124 unwind label %bb.jy

_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit1124: ; preds = %_ZeqRK5BytesS1_.exit.thread.i.i1121, %_ZeqRK5BytesS1_.exit.thread7.i.i1116
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #18
  %i.yw = load i8, ptr %84, align 8, !tbaa !37, !range !56, !noundef !57
  %i.yx = trunc nuw i8 %i.yw to i1
  br i1 %i.yx, label %.critedge641, label %bb.jz

bb.jx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1103, %bb.jk
  %.pn487.pn.pn.pn = phi { ptr, i32 } [ %.pn487.pn.pn, %_ZN7testing7MessageD2Ev.exit1103 ], [ %i.xr, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #18
  br label %bb.kp

bb.jy:                                            ; preds = %_ZeqRK5BytesS1_.exit.thread7.i.i1116, %_ZeqRK5BytesS1_.exit.thread.i.i1121
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #18
  br label %bb.ko

bb.jz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit1124
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %bb.ka unwind label %bb.ke

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #18
  %i.yz = load ptr, ptr %i.an, align 8, !tbaa !55 ; 2 uses
  %.not.i.i1125 = icmp eq ptr %i.yz, null
  br i1 %.not.i.i1125, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1126, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !42
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1126

_ZNK7testing15AssertionResult15failure_messageEv.exit1126: ; preds = %bb.kb, %bb.ka
  %i.zb = phi ptr [ %i.za, %bb.kb ], [ @.str.41, %bb.ka ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %88, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 318, ptr noundef %i.zb)
          to label %bb.kc unwind label %bb.kf

bb.kc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1126
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %bb.kd unwind label %bb.kg

bb.kd:                                            ; preds = %bb.kc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %88) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #18
  %i.zc = load ptr, ptr %87, align 8, !tbaa !45   ; 3 uses
  %.not.i.i1127 = icmp eq ptr %i.zc, null
  br i1 %.not.i.i1127, label %_ZN7testing7MessageD2Ev.exit1129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1128: ; preds = %bb.kd
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !15
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zf = load ptr, ptr %i.ze, align 8
  call void %i.zf(ptr noundef nonnull align 8 dereferenceable(128) %i.zc) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1129

_ZN7testing7MessageD2Ev.exit1129:                 ; preds = %bb.kd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1128
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #18
  br label %.critedge641

bb.ke:                                            ; preds = %bb.jz
  %i.zg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1132

bb.kf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1126
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.kg:                                            ; preds = %bb.kc
  %i.zi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %88) #18
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %.pn494 = phi { ptr, i32 } [ %i.zi, %bb.kg ], [ %i.zh, %bb.kf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #18
  %i.zj = load ptr, ptr %87, align 8, !tbaa !45   ; 3 uses
  %.not.i.i1130 = icmp eq ptr %i.zj, null
  br i1 %.not.i.i1130, label %_ZN7testing7MessageD2Ev.exit1132, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1131

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1131: ; preds = %bb.kh
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !15
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %i.zm = load ptr, ptr %i.zl, align 8
  call void %i.zm(ptr noundef nonnull align 8 dereferenceable(128) %i.zj) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1132

_ZN7testing7MessageD2Ev.exit1132:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1131, %bb.kh, %bb.ke
  %.pn494.pn = phi { ptr, i32 } [ %i.zg, %bb.ke ], [ %.pn494, %bb.kh ], [ %.pn494, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %84) #18
  br label %bb.ko

.critedge641:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareI5BytesS3_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSD_RKS5_RKS6_.exit1124, %_ZN7testing7MessageD2Ev.exit1129
  %i.zn = load ptr, ptr %i.an, align 8, !tbaa !55 ; 4 uses
  %.not.i.i1133 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i1133, label %_ZN7testing15AssertionResultD2Ev.exit1137, label %bb.ki

bb.ki:                                            ; preds = %.critedge641
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !42 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zn, i64 16 ; 2 uses
  %i.zq = icmp eq ptr %i.zo, %i.zp
  br i1 %i.zq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1134: ; preds = %bb.ki
  %i.zr = load i64, ptr %i.zp, align 8, !tbaa !43
  %i.zs = add i64 %i.zr, 1
  call void @_ZdlPvm(ptr noundef %i.zo, i64 noundef %i.zs) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1135

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1135: ; preds = %bb.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1134
  call void @_ZdlPvm(ptr noundef nonnull %i.zn, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit1137

_ZN7testing15AssertionResultD2Ev.exit1137:        ; preds = %.critedge641, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1135
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #18
  %.not.i = icmp eq ptr %i.rz, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.kj

bb.kj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1137
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.rz)
          to label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.zt = landingpad { ptr, i32 }
          catch ptr null
  %i.zu = extractvalue { ptr, i32 } %i.zt, 0
  call void @__clang_call_terminate(ptr %i.zu) #19
  unreachable

_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit1137, %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %54) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br i1 %.not, label %bb.kr, label %bb.fv

bb.kl:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1097, %_ZN7testing15AssertionResultD2Ev.exit1046, %_ZN7testing15AssertionResultD2Ev.exit992
  %.not.i1138 = icmp eq ptr %i.rz, null
  br i1 %.not.i1138, label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit1139, label %bb.km

bb.km:                                            ; preds = %bb.kl
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.rz)
          to label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit1139 unwind label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.zv = landingpad { ptr, i32 }
          catch ptr null
  %i.zw = extractvalue { ptr, i32 } %i.zv, 0
  call void @__clang_call_terminate(ptr %i.zw) #19
  unreachable

_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit1139: ; preds = %.thread, %bb.kl, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %54) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %.critedge697

bb.ko:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1132, %bb.jy
  %.pn494.pn.pn = phi { ptr, i32 } [ %.pn494.pn, %_ZN7testing7MessageD2Ev.exit1132 ], [ %i.yy, %bb.jy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #18
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.jx, %bb.jj, %bb.iv, %bb.ih, %bb.hr, %bb.hd, %_ZN7testing7MessageD2Ev.exit976, %bb.fz
  %.pn494.pn.pn.pn = phi { ptr, i32 } [ %.pn494.pn.pn, %bb.ko ], [ %.pn487.pn.pn.pn, %bb.jx ], [ %.pn483.pn.pn, %bb.jj ], [ %.pn476.pn.pn.pn, %bb.iv ], [ %i.qv, %bb.fz ], [ %.pn471.pn.pn.pn, %bb.ih ], [ %.pn466.pn.pn, %bb.hr ], [ %.pn461.pn.pn.pn, %bb.hd ], [ %.pn457.pn.pn, %_ZN7testing7MessageD2Ev.exit976 ]
  call void @_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %54) #18
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.fy
  %.pn494.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn494.pn.pn.pn, %bb.kp ], [ %i.qu, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.yw

bb.kr:                                            ; preds = %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.zx = invoke ptr @EVP_PKEY_CTX_new_id(i32 noundef 963, ptr noundef null)
          to label %bb.ks unwind label %bb.ku     ; 13 uses

bb.ks:                                            ; preds = %bb.kr
  store ptr %i.zx, ptr %29, align 8, !tbaa !59
  invoke void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.iw)
          to label %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit1141 unwind label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.zy = landingpad { ptr, i32 }
          catch ptr null
  %i.zz = extractvalue { ptr, i32 } %i.zy, 0
  call void @__clang_call_terminate(ptr %i.zz) #19
  unreachable

_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit1141: ; preds = %bb.ks
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #18
  %i.aaa = icmp ne ptr %i.zx, null                ; 2 uses
  %i.aab = zext i1 %i.aaa to i8
  store i8 %i.aab, ptr %89, align 8, !tbaa !37
  store ptr null, ptr %i.ao, align 8, !tbaa !38
  br i1 %i.aaa, label %bb.lg, label %bb.kv

bb.ku:                                            ; preds = %bb.kr
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %bb.yw

bb.kv:                                            ; preds = %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit1141
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %90)
          to label %bb.kw unwind label %bb.lb

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %92, ptr noundef nonnull align 8 dereferenceable(16) %89, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13)
          to label %bb.kx unwind label %bb.lc

bb.kx:                                            ; preds = %bb.kw
  %i.aad = load ptr, ptr %92, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %91, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 322, ptr noundef %i.aad)
          to label %bb.ky unwind label %bb.ld

bb.ky:                                            ; preds = %bb.kx
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef nonnull align 8 dereferenceable(8) %90)
          to label %bb.kz unwind label %bb.le

bb.kz:                                            ; preds = %bb.ky
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %91) #18
  %i.aae = load ptr, ptr %92, align 8, !tbaa !42  ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %92, i64 16 ; 2 uses
  %i.aag = icmp eq ptr %i.aae, %i.aaf
  br i1 %i.aag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1142: ; preds = %bb.kz
  %i.aah = load i64, ptr %i.aaf, align 8, !tbaa !43
  %i.aai = add i64 %i.aah, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aai) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1144: ; preds = %bb.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1142
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #18
  %i.aaj = load ptr, ptr %90, align 8, !tbaa !45  ; 3 uses
  %.not.i.i1145 = icmp eq ptr %i.aaj, null
  br i1 %.not.i.i1145, label %_ZN7testing7MessageD2Ev.exit1147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1144
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !15
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8
  call void %i.aam(ptr noundef nonnull align 8 dereferenceable(128) %i.aaj) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1147

_ZN7testing7MessageD2Ev.exit1147:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1144, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1146
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #18
  %i.aan = load ptr, ptr %i.ao, align 8, !tbaa !55 ; 4 uses
  %.not.i.i1148 = icmp eq ptr %i.aan, null
  br i1 %.not.i.i1148, label %_ZN7testing15AssertionResultD2Ev.exit1152, label %bb.la

bb.la:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1147
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !42 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aan, i64 16 ; 2 uses
  %i.aaq = icmp eq ptr %i.aao, %i.aap
  br i1 %i.aaq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1149: ; preds = %bb.la
  %i.aar = load i64, ptr %i.aap, align 8, !tbaa !43
  %i.aas = add i64 %i.aar, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aas) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1150

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1150: ; preds = %bb.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1149
  call void @_ZdlPvm(ptr noundef nonnull %i.aan, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit1152

_ZN7testing15AssertionResultD2Ev.exit1152:        ; preds = %_ZN7testing7MessageD2Ev.exit1147, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1150
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #18
  br label %.critedge697

bb.lb:                                            ; preds = %bb.kv
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1158

bb.lc:                                            ; preds = %bb.kw
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155

bb.ld:                                            ; preds = %bb.kx
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %bb.lf

bb.le:                                            ; preds = %bb.ky
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %91) #18
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  %.pn500 = phi { ptr, i32 } [ %i.aaw, %bb.le ], [ %i.aav, %bb.ld ] ; 2 uses
  %i.aax = load ptr, ptr %92, align 8, !tbaa !42  ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %92, i64 16 ; 2 uses
  %i.aaz = icmp eq ptr %i.aax, %i.aay
  br i1 %i.aaz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1153: ; preds = %bb.lf
  %i.aba = load i64, ptr %i.aay, align 8, !tbaa !43
  %i.abb = add i64 %i.aba, 1
  call void @_ZdlPvm(ptr noundef %i.aax, i64 noundef %i.abb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155: ; preds = %bb.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1153, %bb.lc
  %.pn500.pn = phi { ptr, i32 } [ %i.aau, %bb.lc ], [ %.pn500, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1153 ], [ %.pn500, %bb.lf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #18
  %i.abc = load ptr, ptr %90, align 8, !tbaa !45  ; 3 uses
  %.not.i.i1156 = icmp eq ptr %i.abc, null
  br i1 %.not.i.i1156, label %_ZN7testing7MessageD2Ev.exit1158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !15
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8
  call void %i.abf(ptr noundef nonnull align 8 dereferenceable(128) %i.abc) #18, !call_target !54, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1158

_ZN7testing7MessageD2Ev.exit1158:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155, %bb.lb
  %.pn500.pn.pn = phi { ptr, i32 } [ %i.aat, %bb.lb ], [ %.pn500.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155 ], [ %.pn500.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %89) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #18
  br label %bb.yw

bb.lg:                                            ; preds = %_ZNSt10unique_ptrI15evp_pkey_ctx_stN4bssl8internal7DeleterEE5resetEPS0_.exit1141
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #18
  %i.abg = invoke i32 @EVP_PKEY_derive_init(ptr noundef nonnull %i.zx)
          to label %bb.lh unwind label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.abh = icmp ne i32 %i.abg, 0                  ; 2 uses
  %i.abi = zext i1 %i.abh to i8
  store i8 %i.abi, ptr %93, align 8, !tbaa !37
  store ptr null, ptr %i.ap, align 8, !tbaa !38
  br i1 %i.abh, label %bb.lu, label %bb.lj

bb.li:                                            ; preds = %bb.lg
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %bb.lw

bb.lj:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %94)
          to label %bb.lk unwind label %bb.lp

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %96, ptr noundef nonnull align 8 dereferenceable(16) %93, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13)
          to label %bb.ll unwind label %bb.lq

bb.ll:                                            ; preds = %bb.lk
  %i.abk = load ptr, ptr %96, align 8, !tbaa !42
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %95, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 323, ptr noundef %i.abk)
          to label %bb.lm unwind label %bb.lr

bb.lm:                                            ; preds = %bb.ll
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef nonnull align 8 dereferenceable(8) %94)
          to label %bb.ln unwind label %bb.ls

bb.ln:                                            ; preds = %bb.lm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %95) #18
  %i.abl = load ptr, ptr %96, align 8, !tbaa !42  ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 2 uses
  %i.abn = icmp eq ptr %i.abl, %i.abm
end_hunk_2
