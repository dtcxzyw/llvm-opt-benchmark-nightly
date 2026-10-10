Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/splines_test?download=true
inline.NumInlined: 351
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu", target_cpu: "icelake-server")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.pbrt::Bounds3" = type { %"class.pbrt::Point3", %"class.pbrt::Point3" }
%"class.pbrt::Point3" = type { %"class.pbrt::Tuple3" }
%"class.pbrt::Tuple3" = type { float, float, float }
%"class.testing::AssertionResult" = type { i8, %"class.testing::internal::scoped_ptr" }
%"class.testing::internal::scoped_ptr" = type { ptr }
%"class.testing::Message" = type { %"class.testing::internal::scoped_ptr.1" }
%"class.testing::internal::scoped_ptr.1" = type { ptr }
%"class.testing::internal::AssertHelper" = type { ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZN7testing4Test13SetUpTestCaseEv = comdat any

$_ZN7testing4Test16TearDownTestCaseEv = comdat any

$_ZN7testing7MessageD2Ev = comdat any

$_ZN7testing15AssertionResultD2Ev = comdat any

$_ZN24Spline_BezierBounds_TestD0Ev = comdat any

$_ZN7testing4Test5SetupEv = comdat any

$_ZN7testing8internal15TestFactoryBaseD2Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestE10CreateTestEv = comdat any

$__clang_call_terminate = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6Point3IfEEJS5_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6Point3IfEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIPKcJRS3_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRPKcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_OT_DpOT0_ = comdat any

$_ZTVN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryBaseE = comdat any

$_ZTSN7testing8internal15TestFactoryBaseE = comdat any

$_ZTSN4pbrt6Point3IfEE = comdat any

@_ZN24Spline_BezierBounds_Test10test_info_E = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [7 x i8] c"Spline\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"BezierBounds\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" @ u = \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" not in \00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/splines_test.cpp\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Inside(p, b)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@_ZTV24Spline_BezierBounds_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI24Spline_BezierBounds_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN24Spline_BezierBounds_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN24Spline_BezierBounds_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI24Spline_BezierBounds_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS24Spline_BezierBounds_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS24Spline_BezierBounds_Test = dso_local constant [27 x i8] c"24Spline_BezierBounds_Test\00", align 1
@_ZTIN7testing4TestE = external constant ptr
@_ZTVN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestEE = linkonce_odr dso_local constant [65 x i8] c"N7testing8internal15TestFactoryImplI24Spline_BezierBounds_TestEE\00", comdat, align 1
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00", comdat, align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"[ %s - %s ]\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/print.h\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Non-integral type provided for %* format.\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Non-integral type passed to %d format.\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Excess values passed to Printf.\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"Printf: Non-basic type %s passed for format string %s\00", align 1
@_ZTSN4pbrt6Point3IfEE = linkonce_odr dso_local constant [18 x i8] c"N4pbrt6Point3IfEE\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_splines_test.cpp, ptr null }]

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing4Test13SetUpTestCaseEv() #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing4Test16TearDownTestCaseEv() #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24Spline_BezierBounds_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.pbrt::Bounds3", align 4     ; 11 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 13 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.pbrt::Bounds3", align 8    ; 11 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 13 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %bb.b

.preheader235:                                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.2.3

bb.b:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %storemerge279 = phi float [ 0.000000e+00, %bb.a ], [ %i.dr, %_ZN7testing15AssertionResultD2Ev.exit ] ; 6 uses
  %i.w = fsub float 1.000000e+00, %storemerge279  ; 3 uses
  %i.x = fmul float %i.w, 0.000000e+00
  %i.y = fmul float %storemerge279, 0.000000e+00
  %i.z = fadd float %i.x, %i.y                    ; 2 uses
  %i.aa = fmul float %i.w, %i.z
  %i.ab = fmul float %storemerge279, %i.z
  %i.ac = fadd float %i.aa, %i.ab                 ; 2 uses
  %i.ad = fmul float %i.w, %i.ac
  %i.ae = fmul float %storemerge279, %i.ac
  %i.af = fadd float %i.ad, %i.ae                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ag = load float, ptr %5, align 4, !tbaa !11
  %i.ah = fcmp ult float %i.af, %i.ag
  %i.ai = load float, ptr %i.b, align 4
  %i.aj = fcmp ugt float %i.af, %i.ai
  %or.cond.i = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load float, ptr %i.e, align 4, !tbaa !12
  %i.al = fcmp ult float %i.af, %i.ak
  %i.am = load float, ptr %i.d, align 4
  %i.an = fcmp ugt float %i.af, %i.am
  %or.cond16.i = select i1 %i.al, i1 true, i1 %i.an
  %i.ao = load float, ptr %i.a, align 4
  %i.ap = fcmp ult float %i.af, %i.ao
  %or.cond19.i = select i1 %or.cond16.i, i1 true, i1 %i.ap
  br i1 %or.cond19.i, label %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit.thread, label %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit

_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit.thread: ; preds = %bb.b, %bb.c
  store i8 0, ptr %6, align 8, !tbaa !60
  store ptr null, ptr %i.f, align 8, !tbaa !16
  br label %bb.d

_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit: ; preds = %bb.c
  %i.aq = load float, ptr %i.c, align 4, !tbaa !17
  %i.ar = fcmp ole float %i.af, %i.aq             ; 2 uses
  %i.as = zext i1 %i.ar to i8
  store i8 %i.as, ptr %6, align 8, !tbaa !60
  store ptr null, ptr %i.f, align 8, !tbaa !16
  br i1 %i.ar, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit.thread, %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %7, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN4pbrt8internal9ToString3IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, float noundef %i.af, float noundef %i.af, float noundef %i.af)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %4, align 8, !tbaa !25
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !26
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef %i.av, i64 noundef %i.aw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc
  %i.ay = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.h
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !27
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.h
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.f
  %i.bf = load i64, ptr %i.h, align 8, !tbaa !27
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bh = load ptr, ptr %7, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.2, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bk = load ptr, ptr %7, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = fpext float %storemerge279 to double
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, double noundef %i.bm)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit
  %i.bo = load ptr, ptr %7, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.3, i64 noundef 8)
          to label %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.br = load ptr, ptr %7, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.i, ptr %3, align 8, !tbaa !28, !alias.scope !61
  store i64 0, ptr %i.j, align 8, !tbaa !26, !alias.scope !61
  store i8 0, ptr %i.i, align 8, !tbaa !27, !alias.scope !61
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6Point3IfEEJS5_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
          to label %_ZNK4pbrt7Bounds3IfE8ToStringB5cxx11Ev.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %3, align 8, !tbaa !25, !alias.scope !61 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.i
  br i1 %i.bu, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !27, !alias.scope !61
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #21
  br label %.body

_ZNK4pbrt7Bounds3IfE8ToStringB5cxx11Ev.exit.i.i:  ; preds = %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.by = load ptr, ptr %3, align 8, !tbaa !25
  %i.bz = load i64, ptr %i.j, align 8, !tbaa !26
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %i.by, i64 noundef %i.bz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i80 unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i80: ; preds = %_ZNK4pbrt7Bounds3IfE8ToStringB5cxx11Ev.exit.i.i
  %i.cb = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.i
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i81: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i80
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !27
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i82

bb.h:                                             ; preds = %_ZNK4pbrt7Bounds3IfE8ToStringB5cxx11Ev.exit.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.i
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i77: ; preds = %bb.h
  %i.ci = load i64, ptr %i.i, align 8, !tbaa !27
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i78: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i82: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i82
  %i.ck = load ptr, ptr %9, align 8, !tbaa !25
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 23, ptr noundef %i.ck)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  %i.cl = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.k
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.cn = load i64, ptr %i.k, align 8, !tbaa !27
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.cp = load ptr, ptr %7, align 8, !tbaa !20
  %.not.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.o

.noexc.i.i:                                       ; preds = %bb.l
  br i1 %i.cq, label %bb.m, label %bb.w

bb.m:                                             ; preds = %.noexc.i.i
  %i.cr = load ptr, ptr %7, align 8, !tbaa !20    ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cr) #20, !inline_history !50
  br label %bb.w

bb.o:                                             ; preds = %bb.l
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #22
  unreachable

bb.p:                                             ; preds = %bb.d
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.q:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit, %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i82
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.s:                                             ; preds = %bb.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.j
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn62 = phi { ptr, i32 } [ %i.dc, %bb.t ], [ %i.db, %bb.s ] ; 2 uses
  %i.dd = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.k
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.u
  %i.df = load i64, ptr %i.k, align 8, !tbaa !27
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.r
  %.pn62.pn = phi { ptr, i32 } [ %i.da, %bb.r ], [ %.pn62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn62, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i78, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ], [ %i.cz, %bb.q ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i78 ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.bs, %bb.g ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #20
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.p
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn, %.body ], [ %i.cy, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.bd

bb.w:                                             ; preds = %bb.n, %bb.m, %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !16
  %.not.i.i.i88 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i88, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i89 unwind label %bb.aa

.noexc.i.i89:                                     ; preds = %bb.x
  br i1 %i.dh, label %bb.y, label %_ZN7testing15AssertionResultD2Ev.exit

bb.y:                                             ; preds = %.noexc.i.i89
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !16  ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !25 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !27
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.aa:                                            ; preds = %bb.x
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #22
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit, %bb.w, %.noexc.i.i89, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.dr = fadd float %storemerge279, f0x3A800000  ; 2 uses
  %i.ds = fcmp ugt float %i.dr, 1.000000e+00
  br i1 %i.ds, label %.preheader235, label %bb.b, !llvm.loop !51

bb.ab:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.2.3:       ; preds = %.preheader235, %bb.ac
  %.054286 = phi i32 [ 0, %.preheader235 ], [ %i.jo, %bb.ac ]
  %.sroa.0219.0285 = phi i64 [ -8846114313915602277, %.preheader235 ], [ %i.hn, %bb.ac ] ; 2 uses
  %i.dt = mul i64 %.sroa.0219.0285, 6364136223846793005
  %i.du = add i64 %i.dt, -2720673578348880933     ; 2 uses
  %i.dv = mul i64 %i.du, 6364136223846793005
  %i.dw = insertelement <2 x i64> poison, i64 %.sroa.0219.0285, i64 0
  %i.dx = insertelement <2 x i64> %i.dw, i64 %i.du, i64 1 ; 3 uses
  %i.dy = lshr <2 x i64> %i.dx, splat (i64 45)
  %i.dz = lshr <2 x i64> %i.dx, splat (i64 27)
  %i.ea = xor <2 x i64> %i.dy, %i.dz
  %i.eb = trunc <2 x i64> %i.ea to <2 x i32>      ; 2 uses
  %i.ec = lshr <2 x i64> %i.dx, splat (i64 59)
  %i.ed = trunc nuw nsw <2 x i64> %i.ec to <2 x i32>
  %i.ee = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.eb, <2 x i32> %i.eb, <2 x i32> %i.ed)
  %i.ef = uitofp <2 x i32> %i.ee to <2 x float>
  %i.eg = fmul nnan <2 x float> %i.ef, splat (float f0x2F800000) ; 2 uses
  %i.eh = fcmp olt <2 x float> %i.eg, splat (float f0x3F7FFFFF)
  %i.ei = select <2 x i1> %i.eh, <2 x float> %i.eg, <2 x float> splat (float f0x3F7FFFFF)
  %i.ej = fmul nnan <2 x float> %i.ei, splat (float 1.000000e+01)
  %i.ek = fadd <2 x float> %i.ej, splat (float -5.000000e+00) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.el = add i64 %i.dv, -2720673578348880933     ; 2 uses
  %i.em = mul i64 %i.el, 6364136223846793005
  %i.en = add i64 %i.em, -2720673578348880933     ; 2 uses
  %i.eo = mul i64 %i.en, 6364136223846793005
  %i.ep = add i64 %i.eo, -2720673578348880933     ; 2 uses
  %i.eq = mul i64 %i.ep, 6364136223846793005
  %i.er = add i64 %i.eq, -2720673578348880933     ; 2 uses
  %i.es = insertelement <2 x i64> poison, i64 %i.en, i64 0
  %i.et = insertelement <2 x i64> %i.es, i64 %i.ep, i64 1 ; 3 uses
  %i.eu = lshr <2 x i64> %i.et, splat (i64 45)
  %i.ev = lshr <2 x i64> %i.et, splat (i64 27)
  %i.ew = xor <2 x i64> %i.eu, %i.ev
  %i.ex = trunc <2 x i64> %i.ew to <2 x i32>      ; 2 uses
  %i.ey = lshr <2 x i64> %i.et, splat (i64 59)
  %i.ez = trunc nuw nsw <2 x i64> %i.ey to <2 x i32>
  %i.fa = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ex, <2 x i32> %i.ex, <2 x i32> %i.ez)
  %i.fb = uitofp <2 x i32> %i.fa to <2 x float>
  %i.fc = fmul nnan <2 x float> %i.fb, splat (float f0x2F800000) ; 2 uses
  %i.fd = fcmp olt <2 x float> %i.fc, splat (float f0x3F7FFFFF)
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.fc, <2 x float> splat (float f0x3F7FFFFF)
  %i.ff = fmul nnan <2 x float> %i.fe, splat (float 1.000000e+01)
  %i.fg = fadd <2 x float> %i.ff, splat (float -5.000000e+00) ; 6 uses
  %i.fh = mul i64 %i.er, 6364136223846793005
  %i.fi = add i64 %i.fh, -2720673578348880933     ; 2 uses
  %i.fj = mul i64 %i.fi, 6364136223846793005
  %i.fk = add i64 %i.fj, -2720673578348880933     ; 2 uses
  %i.fl = mul i64 %i.fk, 6364136223846793005
  %i.fm = add i64 %i.fl, -2720673578348880933     ; 2 uses
  %i.fn = insertelement <2 x i64> poison, i64 %i.fi, i64 0
  %i.fo = insertelement <2 x i64> %i.fn, i64 %i.fk, i64 1 ; 3 uses
  %i.fp = lshr <2 x i64> %i.fo, splat (i64 45)
  %i.fq = lshr <2 x i64> %i.fo, splat (i64 27)
  %i.fr = xor <2 x i64> %i.fp, %i.fq
  %i.fs = trunc <2 x i64> %i.fr to <2 x i32>      ; 2 uses
  %i.ft = lshr <2 x i64> %i.fo, splat (i64 59)
  %i.fu = trunc nuw nsw <2 x i64> %i.ft to <2 x i32>
  %i.fv = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.fs, <2 x i32> %i.fs, <2 x i32> %i.fu)
  %i.fw = uitofp <2 x i32> %i.fv to <2 x float>
  %i.fx = fmul nnan <2 x float> %i.fw, splat (float f0x2F800000) ; 2 uses
  %i.fy = fcmp olt <2 x float> %i.fx, splat (float f0x3F7FFFFF)
  %i.fz = select <2 x i1> %i.fy, <2 x float> %i.fx, <2 x float> splat (float f0x3F7FFFFF)
  %i.ga = fmul nnan <2 x float> %i.fz, splat (float 1.000000e+01)
  %i.gb = fadd <2 x float> %i.ga, splat (float -5.000000e+00) ; 6 uses
  %i.gc = mul i64 %i.fm, 6364136223846793005
  %i.gd = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %i.ge = insertelement <2 x i64> %i.gd, i64 %i.fm, i64 1 ; 3 uses
  %i.gf = lshr <2 x i64> %i.ge, splat (i64 45)
  %i.gg = lshr <2 x i64> %i.ge, splat (i64 27)
  %i.gh = xor <2 x i64> %i.gf, %i.gg
  %i.gi = trunc <2 x i64> %i.gh to <2 x i32>      ; 2 uses
  %i.gj = lshr <2 x i64> %i.ge, splat (i64 59)
  %i.gk = trunc nuw nsw <2 x i64> %i.gj to <2 x i32>
  %i.gl = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.gi, <2 x i32> %i.gi, <2 x i32> %i.gk)
  %i.gm = uitofp <2 x i32> %i.gl to <2 x float>
  %i.gn = fmul nnan <2 x float> %i.gm, splat (float f0x2F800000) ; 2 uses
  %i.go = fcmp olt <2 x float> %i.gn, splat (float f0x3F7FFFFF)
  %i.gp = select <2 x i1> %i.go, <2 x float> %i.gn, <2 x float> splat (float f0x3F7FFFFF)
  %i.gq = fmul nnan <2 x float> %i.gp, splat (float 1.000000e+01)
  %i.gr = fadd <2 x float> %i.gq, splat (float -5.000000e+00) ; 6 uses
  %i.gs = add i64 %i.gc, -2720673578348880933     ; 2 uses
  %i.gt = mul i64 %i.gs, 6364136223846793005
  %i.gu = add i64 %i.gt, -2720673578348880933     ; 2 uses
  %i.gv = mul i64 %i.gu, 6364136223846793005
  %i.gw = add i64 %i.gv, -2720673578348880933     ; 2 uses
  %i.gx = insertelement <2 x i64> poison, i64 %i.gs, i64 0
  %i.gy = insertelement <2 x i64> %i.gx, i64 %i.gu, i64 1 ; 3 uses
  %i.gz = lshr <2 x i64> %i.gy, splat (i64 45)
  %i.ha = lshr <2 x i64> %i.gy, splat (i64 27)
  %i.hb = xor <2 x i64> %i.gz, %i.ha
  %i.hc = trunc <2 x i64> %i.hb to <2 x i32>      ; 2 uses
  %i.hd = lshr <2 x i64> %i.gy, splat (i64 59)
  %i.he = trunc nuw nsw <2 x i64> %i.hd to <2 x i32>
  %i.hf = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.hc, <2 x i32> %i.hc, <2 x i32> %i.he)
  %i.hg = uitofp <2 x i32> %i.hf to <2 x float>
  %i.hh = fmul nnan <2 x float> %i.hg, splat (float f0x2F800000) ; 2 uses
  %i.hi = fcmp olt <2 x float> %i.hh, splat (float f0x3F7FFFFF)
  %i.hj = select <2 x i1> %i.hi, <2 x float> %i.hh, <2 x float> splat (float f0x3F7FFFFF)
  %i.hk = fmul nnan <2 x float> %i.hj, splat (float 1.000000e+01)
  %i.hl = fadd <2 x float> %i.hk, splat (float -5.000000e+00) ; 6 uses
  %i.hm = mul i64 %i.gw, 6364136223846793005
  %i.hn = add i64 %i.hm, -2720673578348880933
  %i.ho = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %i.hp = insertelement <2 x i64> %i.ho, i64 %i.gw, i64 1 ; 3 uses
  %i.hq = lshr <2 x i64> %i.hp, splat (i64 45)
  %i.hr = lshr <2 x i64> %i.hp, splat (i64 27)
  %i.hs = xor <2 x i64> %i.hq, %i.hr
  %i.ht = trunc <2 x i64> %i.hs to <2 x i32>      ; 2 uses
  %i.hu = lshr <2 x i64> %i.hp, splat (i64 59)
  %i.hv = trunc nuw nsw <2 x i64> %i.hu to <2 x i32>
  %i.hw = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ht, <2 x i32> %i.ht, <2 x i32> %i.hv)
  %i.hx = uitofp <2 x i32> %i.hw to <2 x float>
  %i.hy = fmul nnan <2 x float> %i.hx, splat (float f0x2F800000) ; 2 uses
  %i.hz = fcmp olt <2 x float> %i.hy, splat (float f0x3F7FFFFF)
  %i.ia = select <2 x i1> %i.hz, <2 x float> %i.hy, <2 x float> splat (float f0x3F7FFFFF)
  %i.ib = fmul nnan <2 x float> %i.ia, splat (float 1.000000e+01)
  %i.ic = fadd <2 x float> %i.ib, splat (float -5.000000e+00) ; 6 uses
  %.sroa.0.0.vec.extract.i.i15.i.i110 = extractelement <2 x float> %i.hl, i64 0
  %.sroa.010.0.vec.extract.i.i16.i.i111 = extractelement <2 x float> %i.gb, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i.i17.i.i112 = extractelement <2 x float> %i.hl, i64 1
  %.sroa.010.4.vec.extract.i.i18.i.i113 = extractelement <2 x float> %i.gb, i64 1 ; 2 uses
  %i.id = fcmp olt <2 x float> %i.ic, %i.gr
  %i.ie = select <2 x i1> %i.id, <2 x float> %i.ic, <2 x float> %i.gr ; 2 uses
  %i.if = fcmp olt <2 x float> %i.gr, %i.ic
  %i.ig = select <2 x i1> %i.if, <2 x float> %i.ic, <2 x float> %i.gr ; 2 uses
  %i.ih = extractelement <2 x float> %i.ie, i64 0 ; 2 uses
  %i.ii = extractelement <2 x float> %i.ie, i64 1 ; 2 uses
  %i.ij = fcmp olt float %i.ii, %i.ih
  %.sroa.speculated.i.i31.i.i116 = select i1 %i.ij, float %i.ii, float %i.ih ; 2 uses
  %i.ik = extractelement <2 x float> %i.ig, i64 0 ; 2 uses
  %i.il = extractelement <2 x float> %i.ig, i64 1 ; 2 uses
  %i.im = fcmp olt float %i.ik, %i.il
  %.sroa.speculated.i31.i.i.i119 = select i1 %i.im, float %i.il, float %i.ik ; 2 uses
  %i.in = fsub float %.sroa.speculated.i31.i.i.i119, %.sroa.speculated.i.i31.i.i116 ; 2 uses
  %i.io = fmul float %i.in, %i.in
  %i.ip = fcmp olt <2 x float> %i.ek, %i.fg
  %i.iq = select <2 x i1> %i.ip, <2 x float> %i.fg, <2 x float> %i.ek ; 2 uses
  %i.ir = fcmp olt <2 x float> %i.gb, %i.hl
  %i.is = select <2 x i1> %i.ir, <2 x float> %i.hl, <2 x float> %i.gb ; 2 uses
  %i.it = fcmp olt <2 x float> %i.iq, %i.is
  %i.iu = select <2 x i1> %i.it, <2 x float> %i.is, <2 x float> %i.iq ; 2 uses
  %i.iv = fcmp olt <2 x float> %i.fg, %i.ek
  %i.iw = select <2 x i1> %i.iv, <2 x float> %i.fg, <2 x float> %i.ek ; 2 uses
  %i.ix = fcmp olt <2 x float> %i.hl, %i.gb
  %i.iy = select <2 x i1> %i.ix, <2 x float> %i.hl, <2 x float> %i.gb ; 2 uses
  %i.iz = fcmp olt <2 x float> %i.iy, %i.iw
  %i.ja = select <2 x i1> %i.iz, <2 x float> %i.iy, <2 x float> %i.iw ; 2 uses
  %i.jb = fsub <2 x float> %i.iu, %i.ja           ; 2 uses
  %i.jc = fmul <2 x float> %i.jb, %i.jb           ; 2 uses
  %shift = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.jc, %shift
  %i.jd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.je = fadd float %i.io, %i.jd
  %sqrt.i133 = call noundef float @llvm.sqrt.f32(float %i.je)
  %i.jf = fpext float %sqrt.i133 to double
  %i.jg = fmul double %i.jf, 1.000000e-03
  %i.jh = fptrunc double %i.jg to float           ; 3 uses
  %i.ji = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jk = fsub <2 x float> %i.ja, %i.jj
  %i.jl = fsub float %.sroa.speculated.i.i31.i.i116, %i.jh
  %i.jm = fadd <2 x float> %i.iu, %i.jj
  %i.jn = fadd float %.sroa.speculated.i31.i.i.i119, %i.jh
  store <2 x float> %i.jk, ptr %10, align 8
  store float %i.jl, ptr %i.l, align 8
  store <2 x float> %i.jm, ptr %i.m, align 4
  store float %i.jn, ptr %i.n, align 4
  %.sroa.0.0.vec.extract.i.i.i.i146 = extractelement <2 x float> %i.ek, i64 0
  %.sroa.0.4.vec.extract.i.i.i.i147 = extractelement <2 x float> %i.ek, i64 1
  %.sroa.0.0.vec.extract.i34.i.i.i148 = extractelement <2 x float> %i.fg, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i35.i.i.i149 = extractelement <2 x float> %i.fg, i64 1 ; 2 uses
  %15 = extractelement <2 x float> %i.gr, i64 0
  %16 = extractelement <2 x float> %i.gr, i64 1   ; 2 uses
  %17 = extractelement <2 x float> %i.ic, i64 0   ; 2 uses
  %18 = extractelement <2 x float> %i.ic, i64 1
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit214
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.jo = add nuw nsw i32 %.054286, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jo, 1000
  br i1 %exitcond.not, label %bb.ab, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.2.3, !llvm.loop !52

bb.ad:                                            ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.2.3, %_ZN7testing15AssertionResultD2Ev.exit214
  %storemerge57284 = phi float [ 0.000000e+00, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.2.3 ], [ %i.mw, %_ZN7testing15AssertionResultD2Ev.exit214 ] ; 21 uses
  %i.jp = fsub float 1.000000e+00, %storemerge57284 ; 18 uses
  %19 = fmul float %i.jp, %.sroa.0.0.vec.extract.i.i.i.i146
  %20 = fmul float %i.jp, %.sroa.0.4.vec.extract.i.i.i.i147
  %21 = fmul float %i.jp, %15
  %22 = fmul float %storemerge57284, %.sroa.0.0.vec.extract.i34.i.i.i148
  %23 = fmul float %storemerge57284, %.sroa.0.4.vec.extract.i35.i.i.i149
  %24 = fmul float %storemerge57284, %17
  %25 = fadd float %19, %22
  %26 = fadd float %20, %23
  %27 = fadd float %21, %24
  %28 = fmul float %i.jp, %.sroa.0.0.vec.extract.i34.i.i.i148
  %29 = fmul float %i.jp, %.sroa.0.4.vec.extract.i35.i.i.i149
  %30 = fmul float %i.jp, %17
  %31 = fmul float %storemerge57284, %.sroa.010.0.vec.extract.i.i16.i.i111
  %32 = fmul float %storemerge57284, %.sroa.010.4.vec.extract.i.i18.i.i113
  %33 = fmul float %storemerge57284, %16
  %34 = fadd float %28, %31                       ; 2 uses
  %35 = fadd float %29, %32                       ; 2 uses
  %36 = fadd float %30, %33                       ; 2 uses
  %37 = fmul float %i.jp, %.sroa.010.0.vec.extract.i.i16.i.i111
  %38 = fmul float %i.jp, %.sroa.010.4.vec.extract.i.i18.i.i113
  %39 = fmul float %i.jp, %16
  %40 = fmul float %storemerge57284, %.sroa.0.0.vec.extract.i.i15.i.i110
  %41 = fmul float %storemerge57284, %.sroa.0.4.vec.extract.i.i17.i.i112
  %42 = fmul float %storemerge57284, %18
  %43 = fadd float %37, %40
  %44 = fadd float %38, %41
  %45 = fadd float %39, %42
  %46 = fmul float %i.jp, %25
  %47 = fmul float %i.jp, %26
  %48 = fmul float %i.jp, %27
  %49 = fmul float %storemerge57284, %34
  %50 = fmul float %storemerge57284, %35
  %51 = fmul float %storemerge57284, %36
  %52 = fadd float %46, %49
  %53 = fadd float %47, %50
  %54 = fadd float %48, %51
  %55 = fmul float %i.jp, %34
  %56 = fmul float %i.jp, %35
  %57 = fmul float %i.jp, %36
  %58 = fmul float %storemerge57284, %43
  %59 = fmul float %storemerge57284, %44
  %60 = fmul float %storemerge57284, %45
  %61 = fadd float %55, %58
  %62 = fadd float %56, %59
  %63 = fadd float %57, %60
  %64 = fmul float %i.jp, %52
  %65 = fmul float %i.jp, %53
  %66 = fmul float %i.jp, %54
  %67 = fmul float %storemerge57284, %61
  %68 = fmul float %storemerge57284, %62
  %69 = fmul float %storemerge57284, %63
  %70 = fadd float %64, %67                       ; 3 uses
  %71 = fadd float %65, %68                       ; 3 uses
  %72 = fadd float %66, %69                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.jq = load float, ptr %10, align 8, !tbaa !11
  %i.jr = fcmp ult float %70, %i.jq
  %i.js = load float, ptr %i.m, align 4
  %i.jt = fcmp ugt float %70, %i.js
  %or.cond.i165 = select i1 %i.jr, i1 true, i1 %i.jt
  br i1 %or.cond.i165, label %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit169.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ju = load float, ptr %i.p, align 4, !tbaa !12
  %73 = fcmp ult float %71, %i.ju
  %74 = load float, ptr %i.o, align 8
  %75 = fcmp ugt float %71, %74
  %or.cond16.i167 = select i1 %73, i1 true, i1 %75
  %76 = load float, ptr %i.l, align 8
  %77 = fcmp ult float %72, %76
  %or.cond19.i168 = select i1 %or.cond16.i167, i1 true, i1 %77
  br i1 %or.cond19.i168, label %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit169.thread, label %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit169

_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit169.thread: ; preds = %bb.ad, %bb.ae
  store i8 0, ptr %11, align 8, !tbaa !60
  store ptr null, ptr %i.q, align 8, !tbaa !16
  br label %bb.af

_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit169: ; preds = %bb.ae
  %i.jv = load float, ptr %i.n, align 4, !tbaa !17
  %i.jw = fcmp ole float %72, %i.jv               ; 2 uses
  %i.jx = zext i1 %i.jw to i8
  store i8 %i.jx, ptr %11, align 8, !tbaa !60
  store ptr null, ptr %i.q, align 8, !tbaa !16
  br i1 %i.jw, label %_ZN7testing15AssertionResultD2Ev.exit214, label %bb.af

bb.af:                                            ; preds = %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit169.thread, %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit169
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ag unwind label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.jy = load ptr, ptr %12, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN4pbrt8internal9ToString3IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, float noundef %70, float noundef %71, float noundef %72)
          to label %.noexc176 unwind label %bb.as

.noexc176:                                        ; preds = %bb.ag
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load ptr, ptr %2, align 8, !tbaa !25
  %i.kb = load i64, ptr %i.r, align 8, !tbaa !26
  %i.kc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef %i.ka, i64 noundef %i.kb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i173 unwind label %bb.ah ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i173: ; preds = %.noexc176
  %i.kd = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.s
  br i1 %i.ke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i174: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i173
  %i.kf = load i64, ptr %i.s, align 8, !tbaa !27
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i175

bb.ah:                                            ; preds = %.noexc176
  %i.kh = landingpad { ptr, i32 }
          cleanup
  %i.ki = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.s
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i170: ; preds = %bb.ah
  %i.kk = load i64, ptr %i.s, align 8, !tbaa !27
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i171: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i175: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.km = load ptr, ptr %12, align 8, !tbaa !20
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kn, ptr noundef nonnull @.str.2, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit181 unwind label %bb.as ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit181:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i175
  %i.kp = load ptr, ptr %12, align 8, !tbaa !20
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = fpext float %storemerge57284 to double
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, double noundef %i.kr)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit183 unwind label %bb.as ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit183:        ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit181
  %i.kt = load ptr, ptr %12, align 8, !tbaa !20
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef nonnull @.str.3, i64 noundef 8)
          to label %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit185 unwind label %bb.as ; 0 uses

_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit185:     ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit183
  %i.kw = load ptr, ptr %12, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %i.t, ptr %1, align 8, !tbaa !28, !alias.scope !63
  store i64 0, ptr %i.u, align 8, !tbaa !26, !alias.scope !63
  store i8 0, ptr %i.t, align 8, !tbaa !27, !alias.scope !63
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6Point3IfEEJS5_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(12) %i.m)
          to label %_ZNK4pbrt7Bounds3IfE8ToStringB5cxx11Ev.exit.i.i190 unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit185
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ky = load ptr, ptr %1, align 8, !tbaa !25, !alias.scope !63 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.t
  br i1 %i.kz, label %.body177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i186: ; preds = %bb.ai
  %i.la = load i64, ptr %i.t, align 8, !tbaa !27, !alias.scope !63
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #21
  br label %.body177

_ZNK4pbrt7Bounds3IfE8ToStringB5cxx11Ev.exit.i.i190: ; preds = %_ZN7testing7MessagelsIA9_cEERS0_RKT_.exit185
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ld = load ptr, ptr %1, align 8, !tbaa !25
  %i.le = load i64, ptr %i.u, align 8, !tbaa !26
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, ptr noundef %i.ld, i64 noundef %i.le)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i194 unwind label %bb.aj ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i194: ; preds = %_ZNK4pbrt7Bounds3IfE8ToStringB5cxx11Ev.exit.i.i190
  %i.lg = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.t
  br i1 %i.lh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i194
  %i.li = load i64, ptr %i.t, align 8, !tbaa !27
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lj) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i196

bb.aj:                                            ; preds = %_ZNK4pbrt7Bounds3IfE8ToStringB5cxx11Ev.exit.i.i190
  %i.lk = landingpad { ptr, i32 }
          cleanup
  %i.ll = load ptr, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.t
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i191: ; preds = %bb.aj
  %i.ln = load i64, ptr %i.t, align 8, !tbaa !27
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i192: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.body177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i196: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
          to label %bb.ak unwind label %bb.at

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i196
  %i.lp = load ptr, ptr %14, align 8, !tbaa !25
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 37, ptr noundef %i.lp)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.am unwind label %bb.av

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #20
  %i.lq = load ptr, ptr %14, align 8, !tbaa !25   ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.v
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.am
  %i.ls = load i64, ptr %i.v, align 8, !tbaa !27
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.lu = load ptr, ptr %12, align 8, !tbaa !20
  %.not.i.i.i203 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i203, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  %i.lv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i204 unwind label %bb.aq

.noexc.i.i204:                                    ; preds = %bb.an
  br i1 %i.lv, label %bb.ao, label %bb.ay

bb.ao:                                            ; preds = %.noexc.i.i204
  %i.lw = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ly = load ptr, ptr %i.lw, align 8, !tbaa !30
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(128) %i.lw) #20, !inline_history !50
  br label %bb.ay

bb.aq:                                            ; preds = %bb.an
  %i.mb = landingpad { ptr, i32 }
          catch ptr null
  %i.mc = extractvalue { ptr, i32 } %i.mb, 0
  call void @__clang_call_terminate(ptr %i.mc) #22
  unreachable

bb.ar:                                            ; preds = %bb.af
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.as:                                            ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit183, %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i175, %bb.ag
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body177

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i196
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

bb.au:                                            ; preds = %bb.ak
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.al
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #20
  br label %bb.aw
end_hunk_0
