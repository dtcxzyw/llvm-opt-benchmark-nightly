Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/media_test?download=true
inline.NumInlined: 424
inline.NumDeleted: 203
begin_hunk_0
@.str.19 = private unnamed_addr constant [10 x i8] c"nBackward\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"10 * nForward\00", align 1
@_ZN32HenyeyGreenstein_Normalized_Test10test_info_E = dso_local global ptr null, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"Normalized\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"sum / nSamples\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"1. / (4. * Pi)\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"1e-3f\00", align 1
@_ZN23HenyeyGreenstein_g_Test10test_info_E = dso_local global ptr null, align 8
@.str.27 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"gEst\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c".01\00", align 1
@_ZTV35HenyeyGreenstein_SamplingMatch_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI35HenyeyGreenstein_SamplingMatch_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN35HenyeyGreenstein_SamplingMatch_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN35HenyeyGreenstein_SamplingMatch_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI35HenyeyGreenstein_SamplingMatch_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS35HenyeyGreenstein_SamplingMatch_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS35HenyeyGreenstein_SamplingMatch_Test = dso_local constant [38 x i8] c"35HenyeyGreenstein_SamplingMatch_Test\00", align 1
@_ZTIN7testing4TestE = external constant ptr
@_ZTV48HenyeyGreenstein_SamplingOrientationForward_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI48HenyeyGreenstein_SamplingOrientationForward_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN48HenyeyGreenstein_SamplingOrientationForward_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN48HenyeyGreenstein_SamplingOrientationForward_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI48HenyeyGreenstein_SamplingOrientationForward_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS48HenyeyGreenstein_SamplingOrientationForward_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTS48HenyeyGreenstein_SamplingOrientationForward_Test = dso_local constant [51 x i8] c"48HenyeyGreenstein_SamplingOrientationForward_Test\00", align 1
@_ZTV49HenyeyGreenstein_SamplingOrientationBackward_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI49HenyeyGreenstein_SamplingOrientationBackward_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN49HenyeyGreenstein_SamplingOrientationBackward_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN49HenyeyGreenstein_SamplingOrientationBackward_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI49HenyeyGreenstein_SamplingOrientationBackward_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS49HenyeyGreenstein_SamplingOrientationBackward_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTS49HenyeyGreenstein_SamplingOrientationBackward_Test = dso_local constant [52 x i8] c"49HenyeyGreenstein_SamplingOrientationBackward_Test\00", align 1
@_ZTV32HenyeyGreenstein_Normalized_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI32HenyeyGreenstein_Normalized_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN32HenyeyGreenstein_Normalized_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN32HenyeyGreenstein_Normalized_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI32HenyeyGreenstein_Normalized_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS32HenyeyGreenstein_Normalized_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTS32HenyeyGreenstein_Normalized_Test = dso_local constant [35 x i8] c"32HenyeyGreenstein_Normalized_Test\00", align 1
@_ZTV23HenyeyGreenstein_g_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI23HenyeyGreenstein_g_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN23HenyeyGreenstein_g_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN23HenyeyGreenstein_g_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI23HenyeyGreenstein_g_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23HenyeyGreenstein_g_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTS23HenyeyGreenstein_g_Test = dso_local constant [26 x i8] c"23HenyeyGreenstein_g_Test\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI35HenyeyGreenstein_SamplingMatch_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI35HenyeyGreenstein_SamplingMatch_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI35HenyeyGreenstein_SamplingMatch_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI35HenyeyGreenstein_SamplingMatch_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI35HenyeyGreenstein_SamplingMatch_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI35HenyeyGreenstein_SamplingMatch_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI35HenyeyGreenstein_SamplingMatch_TestEE = linkonce_odr dso_local constant [76 x i8] c"N7testing8internal15TestFactoryImplI35HenyeyGreenstein_SamplingMatch_TestEE\00", comdat, align 1
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00", comdat, align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN7testing8internal15TestFactoryImplI48HenyeyGreenstein_SamplingOrientationForward_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI48HenyeyGreenstein_SamplingOrientationForward_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI48HenyeyGreenstein_SamplingOrientationForward_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI48HenyeyGreenstein_SamplingOrientationForward_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI48HenyeyGreenstein_SamplingOrientationForward_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI48HenyeyGreenstein_SamplingOrientationForward_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI48HenyeyGreenstein_SamplingOrientationForward_TestEE = linkonce_odr dso_local constant [89 x i8] c"N7testing8internal15TestFactoryImplI48HenyeyGreenstein_SamplingOrientationForward_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI49HenyeyGreenstein_SamplingOrientationBackward_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI49HenyeyGreenstein_SamplingOrientationBackward_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI49HenyeyGreenstein_SamplingOrientationBackward_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI49HenyeyGreenstein_SamplingOrientationBackward_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI49HenyeyGreenstein_SamplingOrientationBackward_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI49HenyeyGreenstein_SamplingOrientationBackward_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI49HenyeyGreenstein_SamplingOrientationBackward_TestEE = linkonce_odr dso_local constant [90 x i8] c"N7testing8internal15TestFactoryImplI49HenyeyGreenstein_SamplingOrientationBackward_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI32HenyeyGreenstein_Normalized_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI32HenyeyGreenstein_Normalized_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI32HenyeyGreenstein_Normalized_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI32HenyeyGreenstein_Normalized_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI32HenyeyGreenstein_Normalized_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI32HenyeyGreenstein_Normalized_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI32HenyeyGreenstein_Normalized_TestEE = linkonce_odr dso_local constant [73 x i8] c"N7testing8internal15TestFactoryImplI32HenyeyGreenstein_Normalized_TestEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplI23HenyeyGreenstein_g_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI23HenyeyGreenstein_g_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI23HenyeyGreenstein_g_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI23HenyeyGreenstein_g_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI23HenyeyGreenstein_g_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI23HenyeyGreenstein_g_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI23HenyeyGreenstein_g_TestEE = linkonce_odr dso_local constant [64 x i8] c"N7testing8internal15TestFactoryImplI23HenyeyGreenstein_g_TestEE\00", comdat, align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/pstd.h\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Check failed: %s\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/print.h\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"Non-integral type provided for %* format.\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"Non-integral type passed to %d format.\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Excess values passed to Printf.\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.40 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"Expected: (\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c") >= (\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"), actual: \00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c" vs \00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_media_test.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing4Test13SetUpTestCaseEv() #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing4Test16TearDownTestCaseEv() #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35HenyeyGreenstein_SamplingMatch_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.pstd::optional", align 4    ; 10 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %8 = alloca %"class.testing::Message", align 8  ; 10 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %.sroa.4.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %storemerge123 = phi float [ -7.500000e-01, %bb.a ], [ %i.o, %bb.c ] ; 4 uses
  %.sroa.091.0122 = phi i64 [ -8846114313915602277, %bb.a ], [ %i.az, %bb.c ]
  %i.g = fpext float %storemerge123 to double     ; 3 uses
  %i.h = fcmp olt double %i.g, f0xBFEFAE147AE147AE
  %i.i = fcmp ogt double %i.g, f0x3FEFAE147AE147AE
  %spec.select.i.i.i = select i1 %i.i, float 9.900000e-01, float %storemerge123
  %.0.i.i.i = select i1 %i.h, float -9.900000e-01, float %spec.select.i.i.i ; 3 uses
  %i.j = fmul float %.0.i.i.i, %.0.i.i.i          ; 2 uses
  %i.k = fadd float %i.j, 1.000000e+00
  %i.l = fmul nnan float %.0.i.i.i, 2.000000e+00
  %i.m = fsub nnan float 1.000000e+00, %i.j
  %i.n = fmul nnan float %i.m, f0x3DA2F983
  br label %_ZN4pstd8optionalIN4pbrt19PhaseFunctionSampleEEptEv.exit54

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit81
  %i.o = fadd float %storemerge123, 2.500000e-01  ; 2 uses
  %i.p = fcmp ugt float %i.o, 7.500000e-01
  br i1 %i.p, label %bb.b, label %.preheader, !llvm.loop !9

_ZN4pstd8optionalIN4pbrt19PhaseFunctionSampleEEptEv.exit54: ; preds = %_ZN7testing15AssertionResultD2Ev.exit81, %.preheader
  %.0121 = phi i32 [ 0, %.preheader ], [ %i.fh, %_ZN7testing15AssertionResultD2Ev.exit81 ]
  %.sroa.091.1120 = phi i64 [ %.sroa.091.0122, %.preheader ], [ %i.az, %_ZN7testing15AssertionResultD2Ev.exit81 ] ; 2 uses
  %i.q = mul i64 %.sroa.091.1120, 6364136223846793005
  %i.r = add i64 %i.q, -2720673578348880933       ; 2 uses
  %i.s = mul i64 %i.r, 6364136223846793005
  %i.t = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.u = insertelement <2 x i64> %i.t, i64 %.sroa.091.1120, i64 1 ; 3 uses
  %i.v = lshr <2 x i64> %i.u, splat (i64 45)
  %i.w = lshr <2 x i64> %i.u, splat (i64 27)
  %i.x = xor <2 x i64> %i.v, %i.w
  %i.y = trunc <2 x i64> %i.x to <2 x i32>        ; 2 uses
  %i.z = lshr <2 x i64> %i.u, splat (i64 59)
  %i.aa = trunc nuw nsw <2 x i64> %i.z to <2 x i32>
  %i.ab = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.y, <2 x i32> %i.y, <2 x i32> %i.aa)
  %i.ac = uitofp <2 x i32> %i.ab to <2 x float>
  %i.ad = fmul nnan <2 x float> %i.ac, splat (float f0x2F800000) ; 3 uses
  %i.ae = fcmp olt <2 x float> %i.ad, splat (float f0x3F7FFFFF) ; 2 uses
  %i.af = extractelement <2 x i1> %i.ae, i64 1
  %i.ag = extractelement <2 x float> %i.ad, i64 1
  %i.ah = extractelement <2 x i1> %i.ae, i64 0
  %i.ai = extractelement <2 x float> %i.ad, i64 0
  %i.aj = fmul nnan float %i.ag, 2.000000e+00
  %i.ak = fsub float 1.000000e+00, %i.aj
  %i.al = select i1 %i.af, float %i.ak, float f0xBF7FFFFE ; 4 uses
  %i.am = fmul float %i.al, %i.al
  %i.an = fsub float 1.000000e+00, %i.am          ; 2 uses
  %i.ao = fcmp ogt float %i.an, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ao, float %i.an, float 0.000000e+00
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %i.ap = fmul nnan float %i.ai, f0x40C90FDB
  %i.aq = select i1 %i.ah, float %i.ap, float f0x40C90FDA ; 2 uses
  %i.ar = call noundef float @cosf(float noundef %i.aq) #20
  %i.as = fmul float %sqrt.i.i, %i.ar             ; 2 uses
  %i.at = call noundef float @sinf(float noundef %i.aq) #20
  %i.au = fmul float %sqrt.i.i, %i.at             ; 2 uses
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.as, i64 0
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.au, i64 1
  %i.av = add i64 %i.s, -2720673578348880933      ; 2 uses
  %i.aw = mul i64 %i.av, 6364136223846793005
  %i.ax = add i64 %i.aw, -2720673578348880933     ; 2 uses
  %i.ay = mul i64 %i.ax, 6364136223846793005
  %i.az = add i64 %i.ay, -2720673578348880933     ; 2 uses
  %i.ba = insertelement <2 x i64> poison, i64 %i.av, i64 0
  %i.bb = insertelement <2 x i64> %i.ba, i64 %i.ax, i64 1 ; 3 uses
  %i.bc = lshr <2 x i64> %i.bb, splat (i64 45)
  %i.bd = lshr <2 x i64> %i.bb, splat (i64 27)
  %i.be = xor <2 x i64> %i.bc, %i.bd
  %i.bf = trunc <2 x i64> %i.be to <2 x i32>      ; 2 uses
  %i.bg = lshr <2 x i64> %i.bb, splat (i64 59)
  %i.bh = trunc nuw nsw <2 x i64> %i.bg to <2 x i32>
  %i.bi = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bf, <2 x i32> %i.bf, <2 x i32> %i.bh)
  %i.bj = uitofp <2 x i32> %i.bi to <2 x float>
  %i.bk = fmul nnan <2 x float> %i.bj, splat (float f0x2F800000) ; 2 uses
  %i.bl = fcmp olt <2 x float> %i.bk, splat (float f0x3F7FFFFF)
  %i.bm = select <2 x i1> %i.bl, <2 x float> %i.bk, <2 x float> splat (float f0x3F7FFFFF)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !11
  %i.bn = call { <2 x float>, float } @_ZN4pbrt22SampleHenyeyGreensteinENS_7Vector3IfEEfNS_6Point2IfEEPf(<2 x float> %.sroa.06.4.vec.insert.i, float %i.al, float noundef %storemerge123, <2 x float> %i.bm, ptr noundef nonnull %i.a), !noalias !11 ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.bn, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.bn, 1
  %10 = load float, ptr %i.a, align 4, !tbaa !14, !noalias !11 ; 3 uses
  store i8 1, ptr %i.b, align 4, !tbaa !16, !alias.scope !11
  store float %10, ptr %3, align 4, !alias.scope !11
  store <2 x float> %.fca.0.extract.i, ptr %.sroa.4.0..sroa_idx12.i, align 4, !alias.scope !11
  store float %.fca.1.extract.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !11
  store float %10, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bo = fcmp ord float %10, 0.000000e+00
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4pstd8optionalIN4pbrt19PhaseFunctionSampleEEptEv.exit54
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit unwind label %.loopexit

bb.e:                                             ; preds = %_ZN4pstd8optionalIN4pbrt19PhaseFunctionSampleEEptEv.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20, !noalias !19
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %.noexc83 unwind label %.loopexit

.noexc83:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !19
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.6.0..sroa_idx.i)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.g, !noalias !19

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc83
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.bp = load ptr, ptr %2, align 8, !tbaa !22, !noalias !19 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.c
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.br = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !19
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !19
  %i.bt = load ptr, ptr %1, align 8, !tbaa !22, !noalias !19 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.d
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bv = load i64, ptr %i.d, align 8, !tbaa !28, !noalias !19
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !19
  br label %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit

bb.g:                                             ; preds = %.noexc83
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

bb.h:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %2, align 8, !tbaa !22, !noalias !19 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.c
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %bb.h
  %i.cb = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !19
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.bx, %bb.g ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i ], [ %i.by, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !19
  %i.cd = load ptr, ptr %1, align 8, !tbaa !22, !noalias !19 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.d
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !28, !noalias !19
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !19
  br label %.body

_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i
  %i.ch = load i8, ptr %4, align 8, !tbaa !29, !range !33, !noundef !34
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.w, label %bb.i

.loopexit:                                        ; preds = %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !22
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.k, %bb.j
  %i.cl = phi ptr [ %i.ck, %bb.k ], [ @.str.30, %bb.j ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 27, ptr noundef %i.cl)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.cm = load ptr, ptr %5, align 8, !tbaa !36
  %.not.i.i.i56 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i56, label %_ZN7testing7MessageD2Ev.exit58, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i57 unwind label %bb.q

.noexc.i.i57:                                     ; preds = %bb.n
  br i1 %i.cn, label %bb.o, label %_ZN7testing7MessageD2Ev.exit58

bb.o:                                             ; preds = %.noexc.i.i57
  %i.co = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN7testing7MessageD2Ev.exit58, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !39
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.co) #20, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit58

bb.q:                                             ; preds = %bb.n
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #22
  unreachable

_ZN7testing7MessageD2Ev.exit58:                   ; preds = %bb.m, %.noexc.i.i57, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.w

bb.r:                                             ; preds = %bb.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.l
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn35 = phi { ptr, i32 } [ %i.cx, %bb.t ], [ %i.cw, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.u ], [ %i.cv, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  br label %.body

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit58
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !35
  %.not.i.i.i59 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i59, label %_ZN7testing15AssertionResultD2Ev.exit64, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i60 unwind label %bb.aa

.noexc.i.i60:                                     ; preds = %bb.x
  br i1 %i.cz, label %bb.y, label %_ZN7testing15AssertionResultD2Ev.exit64

bb.y:                                             ; preds = %.noexc.i.i60
  %i.da = load ptr, ptr %i.e, align 8, !tbaa !35  ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN7testing15AssertionResultD2Ev.exit64, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !22 ; 2 uses
end_hunk_0
