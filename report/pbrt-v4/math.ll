Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math?download=true
inline.NumInlined: 930
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0
$_ZN4pbrt6detail21stringPrintfRecursiveIRA2_KcJRA15_S2_RmS4_RiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA15_KcJRmRA2_S2_RiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRmJRA2_KcRiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS3_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA2_KcJRiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRiJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA13_KcJRA9_S2_S4_RmS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA9_KcJRA13_S2_RmS4_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA13_KcJRmRA9_S2_S5_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRmJRA9_KcS2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS3_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA45_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

@.str = private unnamed_addr constant [53 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/math.h\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Check failed: %s == %s with %s = %s, %s = %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"N * N\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"t.size()\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"[ [\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c", [\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"[ CompensatedFloat v: %f err: %f ]\00", align 1
@_ZN4pbrt8Interval2PiE = dso_local local_unnamed_addr constant %"class.pbrt::Interval" { float f0x40490FDA, float f0x40490FDB }, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"[ Interval [%f, %f] ]\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/math.cpp\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Check failed: %s >= %s with %s = %s, %s = %s\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"weights.size()\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"nodes.size()\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"f.size()\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Check failed: %s\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"p.x >= 0 && p.x <= 1 && p.y >= 0 && p.y <= 1\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/print.h\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"Non-integral type provided for %* format.\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Non-integral type passed to %d format.\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Excess values passed to Printf.\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.26 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"MEH\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN4pbrt12SquareMatrixILi2EEC1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN4pbrt12SquareMatrixILi2EEC2Ev
@_ZN4pbrt12SquareMatrixILi2EEC1EPA2_Kf = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4pbrt12SquareMatrixILi2EEC2EPA2_Kf
@_ZN4pbrt12SquareMatrixILi2EEC1EN4pstd4spanIKfEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN4pbrt12SquareMatrixILi2EEC2EN4pstd4spanIKfEE
@_ZN4pbrt12SquareMatrixILi3EEC1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN4pbrt12SquareMatrixILi3EEC2Ev
@_ZN4pbrt12SquareMatrixILi3EEC1EPA3_Kf = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4pbrt12SquareMatrixILi3EEC2EPA3_Kf
@_ZN4pbrt12SquareMatrixILi3EEC1EN4pstd4spanIKfEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN4pbrt12SquareMatrixILi3EEC2EN4pstd4spanIKfEE
@_ZN4pbrt12SquareMatrixILi4EEC1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN4pbrt12SquareMatrixILi4EEC2Ev
@_ZN4pbrt12SquareMatrixILi4EEC1EPA4_Kf = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4pbrt12SquareMatrixILi4EEC2EPA4_Kf
@_ZN4pbrt12SquareMatrixILi4EEC1EN4pstd4spanIKfEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN4pbrt12SquareMatrixILi4EEC2EN4pstd4spanIKfEE

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { <2 x float>, <2 x float> } @_ZN4pbrt12SquareMatrixILi2EE4ZeroEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  %0 = alloca %"class.pbrt::SquareMatrix", align 4
  call void @_ZN4pbrt12SquareMatrixILi2EEC1Ev(ptr noundef nonnull align 4 dereferenceable(16) %0)
  ret { <2 x float>, <2 x float> } zeroinitializer
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4pbrt12SquareMatrixILi2EEC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) unnamed_addr #2 comdat($_ZN4pbrt12SquareMatrixILi2EEC5Ev) align 2 {
.preheader:
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4pbrt12SquareMatrixILi2EEC2EPA2_Kf(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat($_ZN4pbrt12SquareMatrixILi2EEC5EPA2_Kf) align 2 {
.preheader:
  %i.a = load float, ptr %1, align 4, !tbaa !10
  store float %i.a, ptr %0, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.e, align 4, !tbaa !10
  store float %i.g, ptr %i.f, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.i, ptr %i.j, align 4, !tbaa !10
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr dso_local void @_ZN4pbrt12SquareMatrixILi2EEC2EN4pstd4spanIKfEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2) unnamed_addr #3 comdat($_ZN4pbrt12SquareMatrixILi2EEC5EN4pstd4spanIKfEE) align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 4, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %2, ptr %i.b, align 8, !tbaa !13
  %i.c = icmp eq i64 %2, 4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA6_KcRA9_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1512, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.d = load float, ptr %1, align 4, !tbaa !10
  store float %i.d, ptr %0, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.f, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.i, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.l, ptr %i.m, align 4, !tbaa !10
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA6_KcRA9_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(9) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !17, !alias.scope !38
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !38
  store i8 0, ptr %i.a, align 8, !tbaa !20, !alias.scope !38
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA6_KcJRA9_S2_S4_RiS6_RmEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(9) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4pbrt12StringPrintfIJRA6_KcRA9_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !21, !alias.scope !38 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !20, !alias.scope !38
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA6_KcRA9_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !21
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA6_KcRA9_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA6_KcRA9_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !21    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt12SquareMatrixILi2EEplERKS1_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
.preheader:
  %2 = load <4 x float>, ptr %0, align 4
  %i.a = load <4 x float>, ptr %1, align 4, !tbaa !10
  %i.b = fadd <4 x float> %i.a, %2                ; 2 uses
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.d = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.c, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.d, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt12SquareMatrixILi2EEmlEf(ptr noundef nonnull align 4 dereferenceable(16) %0, float noundef %1) local_unnamed_addr #2 comdat align 2 {
.preheader:
  %2 = load <4 x float>, ptr %0, align 4
  %i.a = insertelement <4 x float> poison, float %1, i64 0
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.c = fmul <4 x float> %i.b, %2                ; 2 uses
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.e = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.d, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.e, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt12SquareMatrixILi2EEdvEf(ptr noundef nonnull align 4 dereferenceable(16) %0, float noundef %1) local_unnamed_addr #2 comdat align 2 {
.preheader:
  %2 = load <4 x float>, ptr %0, align 4
  %i.a = insertelement <4 x float> poison, float %1, i64 0
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.c = fdiv <4 x float> %2, %i.b                ; 2 uses
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.e = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.d, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.e, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK4pbrt12SquareMatrixILi2EEeqERKS1_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
.preheader:
  %i.a = load float, ptr %0, align 4, !tbaa !10
  %i.b = load float, ptr %1, align 4, !tbaa !10
  %i.c = fcmp oeq float %i.a, %i.b
  br i1 %i.c, label %bb.a, label %.loopexit.loopexit

bb.a:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  %i.h = fcmp oeq float %i.e, %i.g
  br i1 %i.h, label %.preheader.1, label %.loopexit.loopexit

.preheader.1:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.i, align 4, !tbaa !10
  %i.l = load float, ptr %i.j, align 4, !tbaa !10
  %i.m = fcmp oeq float %i.k, %i.l
  br i1 %i.m, label %bb.b, label %.loopexit.loopexit

bb.b:                                             ; preds = %.preheader.1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = fcmp oeq float %i.o, %i.q
  br i1 %i.r, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.b, %.preheader.1, %bb.a, %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit
  %i.s = phi i1 [ false, %.loopexit.loopexit ], [ true, %bb.b ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK4pbrt12SquareMatrixILi2EEneERKS1_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
.preheader:
  %i.a = load float, ptr %0, align 4, !tbaa !10
  %i.b = load float, ptr %1, align 4, !tbaa !10
  %i.c = fcmp une float %i.a, %i.b
  br i1 %i.c, label %.loopexit.loopexit, label %bb.a

bb.a:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  %i.h = fcmp une float %i.e, %i.g
  br i1 %i.h, label %.loopexit.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.i, align 4, !tbaa !10
  %i.l = load float, ptr %i.j, align 4, !tbaa !10
  %i.m = fcmp une float %i.k, %i.l
  br i1 %i.m, label %.loopexit.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader.1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = fcmp une float %i.o, %i.q
  br i1 %i.r, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b, %.preheader.1, %bb.a, %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit
  %i.s = phi i1 [ true, %.loopexit.loopexit ], [ false, %bb.b ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK4pbrt12SquareMatrixILi2EEltERKS1_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
.preheader:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.c = fcmp olt float %i.a, %i.b
  br i1 %i.c, label %.loopexit, label %bb.e

bb.a:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = fcmp olt float %i.e, %i.g
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp ogt float %i.e, %i.g
  br i1 %i.i, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.j, align 4, !tbaa !10 ; 2 uses
  %i.m = load float, ptr %i.k, align 4, !tbaa !10 ; 2 uses
  %i.n = fcmp olt float %i.l, %i.m
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader.1
  %i.o = fcmp ogt float %i.l, %i.m
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !10
  %i.t = fcmp olt float %i.q, %i.s
  br label %.loopexit

bb.e:                                             ; preds = %.preheader
  %i.u = fcmp ogt float %i.a, %i.b
  br i1 %i.u, label %.loopexit, label %bb.a

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.e, %bb.a, %bb.b, %.preheader.1, %bb.c
  %i.v = phi i1 [ %i.t, %bb.d ], [ false, %bb.e ], [ true, %.preheader ], [ true, %bb.a ], [ false, %bb.b ], [ true, %.preheader.1 ], [ false, %bb.c ]
  ret i1 %i.v
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK4pbrt12SquareMatrixILi2EE10IsIdentityEv(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
.thread:
  %i.a = load <4 x float>, ptr %0, align 4
  %.fr = freeze <4 x float> %i.a
  %i.b = fcmp une <4 x float> %.fr, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.c = bitcast <4 x i1> %i.b to i4
  %i.d = icmp eq i4 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  store i64 3, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.d, ptr %2, align 8, !tbaa !17, !alias.scope !41
  store i64 0, ptr %i.e, align 8, !tbaa !19, !alias.scope !41
  store i8 0, ptr %i.d, align 8, !tbaa !20, !alias.scope !41
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41.1
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41.1
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.i ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37.181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37, %._crit_edge.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !21, !alias.scope !41 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %.body, label %.body.sink.split

_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %._crit_edge.i.i
  %i.j = load i64, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !19
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.1.1, %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.168, %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.1, %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZNK4pbrt12SquareMatrixILi3EE8ToStringB5cxx11Ev:._crit_edge.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.d, ptr %2, align 8, !tbaa !17, !alias.scope !47
  store i64 0, ptr %i.e, align 8, !tbaa !19, !alias.scope !47
  store i8 0, ptr %i.d, align 8, !tbaa !20, !alias.scope !47
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.am)
          to label %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.1 unwind label %bb.c

_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38
  %i.an = load i64, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.an
  br i1 %i.aq, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.1: ; preds = %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.1
  %i.ar = load ptr, ptr %2, align 8, !tbaa !21
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ar, i64 noundef %i.an)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.1 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.1
  %i.at = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.1
  %i.av = load i64, ptr %i.d, align 8, !tbaa !20
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !19  ; 4 uses
  %i.ay = add i64 %i.ax, 1                        ; 3 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.a
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1
  %i.bc = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.bc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.1
  %i.bd = phi i64 [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29.1 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30.1 ]
  %i.be = icmp ugt i64 %i.ay, %i.bd
  br i1 %i.be, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.1

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ax, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc31.1 unwind label %.loopexit46

.noexc31.1:                                       ; preds = %bb.g
  %.pre.i.i.1 = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1, %.noexc31.1
  %i.bf = phi ptr [ %.pre.i.i.1, %.noexc31.1 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  store i8 44, ptr %i.bg, align 1, !tbaa !20
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !19
  %i.bh = load ptr, ptr %0, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ay
  store i8 0, ptr %i.bi, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %2, align 8, !tbaa !17, !alias.scope !47
  store i64 0, ptr %i.e, align 8, !tbaa !19, !alias.scope !47
  store i8 0, ptr %i.d, align 8, !tbaa !20, !alias.scope !47
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.bj)
          to label %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.2 unwind label %bb.c

_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.1
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !19
  %i.bm = sub i64 4611686018427387903, %i.bl
  %i.bn = icmp ult i64 %i.bm, %i.bk
  br i1 %i.bn, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.2: ; preds = %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.2
  %i.bo = load ptr, ptr %2, align 8, !tbaa !21
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bo, i64 noundef %i.bk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.2 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.2
  %i.bq = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.d
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.2
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !20
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !19
  %i.bv = and i64 %i.bu, -2
  %i.bw = icmp eq i64 %i.bv, 4611686018427387902
  br i1 %i.bw, label %split, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.2
  %i.bx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.2 unwind label %.loopexit46 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35.2
  %.not = icmp eq i64 %indvars.iv, 2
  %i.by = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  br i1 %.not, label %bb.a, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38.2
  %i.bz = add i64 %i.by, -4611686018427387901
  %i.ca = icmp ult i64 %i.bz, 3
  br i1 %i.ca, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
          to label %.noexc40 unwind label %.loopexit.split-lp52

.noexc40:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39: ; preds = %bb.h
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.7, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42 unwind label %.loopexit51 ; 0 uses

.loopexit51:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39
  %lpad.loopexit53 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp52:                             ; preds = %bb.i
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %.preheader

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.b
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void

bb.k:                                             ; preds = %.loopexit51, %.loopexit.split-lp52, %.loopexit46, %.loopexit.split-lp47, %.body, %bb.j
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.j ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp47 ], [ %.pn, %.body ], [ %lpad.loopexit48, %.loopexit46 ], [ %lpad.loopexit53, %.loopexit51 ], [ %lpad.loopexit.split-lp54, %.loopexit.split-lp52 ]
  %i.cd = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.a
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.k
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !20
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  resume { ptr, i32 } %.pn20.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZNK4pbrt12SquareMatrixILi3EEixEi(ptr noundef nonnull align 4 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [12 x i8], ptr %0, i64 %i.a
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 3, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN4pbrt12SquareMatrixILi3EEixEi(ptr noundef nonnull align 4 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [12 x i8], ptr %0, i64 %i.a
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 3, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN4pbrt12SquareMatrixILi4EE4ZeroEv(ptr dead_on_unwind noalias writable sret(%"class.pbrt::SquareMatrix.2") align 4 %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4pbrt12SquareMatrixILi4EEC1Ev(ptr noundef nonnull align 4 dereferenceable(64) %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4pbrt12SquareMatrixILi4EEC2Ev(ptr noundef nonnull align 4 dereferenceable(64) %0) unnamed_addr #2 comdat($_ZN4pbrt12SquareMatrixILi4EEC5Ev) align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> <float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float 1.000000e+00>, ptr align 4 %0, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true>), !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4pbrt12SquareMatrixILi4EEC2EPA4_Kf(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #2 comdat($_ZN4pbrt12SquareMatrixILi4EEC5EPA4_Kf) align 2 {
.preheader:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 64
  %i.d = add i64 %i.a, 64
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.preheader.rtscalar, label %.preheader.rtvec, !prof !23

.preheader.rtvec:                                 ; preds = %.preheader
  %i.e = load <8 x float>, ptr %1, align 4, !tbaa !10
  store <8 x float> %i.e, ptr %0, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load <8 x float>, ptr %i.f, align 4, !tbaa !10
  store <8 x float> %i.h, ptr %i.g, align 4, !tbaa !10
  br label %.preheader.rtcont

.preheader.rtscalar:                              ; preds = %.preheader
  %i.i = load float, ptr %1, align 4, !tbaa !10
  store float %i.i, ptr %0, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.k, ptr %i.l, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.n, ptr %i.o, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.q, ptr %i.r, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load float, ptr %i.s, align 4, !tbaa !10
  store float %i.u, ptr %i.t, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.w, ptr %i.x, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.z, ptr %i.aa, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ac, ptr %i.ad, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load float, ptr %i.ae, align 4, !tbaa !10
  store float %i.ag, ptr %i.af, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ai, ptr %i.aj, align 4, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.al, ptr %i.am, align 4, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ao = load float, ptr %i.an, align 4, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.ao, ptr %i.ap, align 4, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load float, ptr %i.aq, align 4, !tbaa !10
  store float %i.as, ptr %i.ar, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.au = load float, ptr %i.at, align 4, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.au, ptr %i.av, align 4, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ax, ptr %i.ay, align 4, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.ba, ptr %i.bb, align 4, !tbaa !10
  br label %.preheader.rtcont

.preheader.rtcont:                                ; preds = %.preheader.rtscalar, %.preheader.rtvec
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr dso_local void @_ZN4pbrt12SquareMatrixILi4EEC2EN4pstd4spanIKfEE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr %1, i64 %2) unnamed_addr #3 comdat($_ZN4pbrt12SquareMatrixILi4EEC5EN4pstd4spanIKfEE) align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 16, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %2, ptr %i.b, align 8, !tbaa !13
  %i.c = icmp eq i64 %2, 16
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA6_KcRA9_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1512, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = add i64 %i.d, 64
  %i.g = add nuw i64 %i.e, 64
  %rt.bound0 = icmp ugt i64 %i.f, %i.e
  %rt.bound1 = icmp ugt i64 %i.g, %i.d
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !23

.rtvec:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.h = load <8 x float>, ptr %1, align 4, !tbaa !10
  store <8 x float> %i.h, ptr %0, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <8 x float>, ptr %i.i, align 4, !tbaa !10
  store <8 x float> %i.k, ptr %i.j, align 4, !tbaa !10
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.l = load float, ptr %1, align 4, !tbaa !10
  store float %i.l, ptr %0, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.n, ptr %i.o, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.q, ptr %i.r, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load float, ptr %i.s, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.t, ptr %i.u, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load float, ptr %i.v, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.w, ptr %i.x, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.z, ptr %i.aa, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ac, ptr %i.ad, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = load float, ptr %i.ae, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.af, ptr %i.ag, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ai, ptr %i.aj, align 4, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.al, ptr %i.am, align 4, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ao, ptr %i.ap, align 4, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.ar, ptr %i.as, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load float, ptr %i.at, align 4, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.au, ptr %i.av, align 4, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.ax, ptr %i.ay, align 4, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ba, ptr %i.bb, align 4, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.bd, ptr %i.be, align 4, !tbaa !10
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
end_hunk_1
begin_hunk_2_@_ZN4pbrt6detail21stringPrintfRecursiveIRA45_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  %.pn19.ph = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.cb, %bb.o ]
  %i.ce = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cf) #25
  br label %.body26

.body26:                                          ; preds = %.body26.sink.split, %bb.o, %bb.k
  %.pn19 = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.cb, %bb.o ], [ %.pn19.ph, %.body26.sink.split ] ; 2 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.j
  br i1 %i.ch, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body26, %bb.h
  %.sink86 = phi ptr [ %i.x, %bb.h ], [ %i.cg, %.body26 ]
  %.pn19.pn.ph = phi { ptr, i32 } [ %i.w, %bb.h ], [ %.pn19, %.body26 ]
  %i.ci = load i64, ptr %i.j, align 8, !tbaa !20
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %.sink86, i64 noundef %i.cj) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body26, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %i.w, %bb.h ], [ %.pn19, %.body26 ], [ %.pn19.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body ], [ %i.ca, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.p ], [ %i.bz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.z

bb.r:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !19
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cn = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(45) %2) #23, !noalias !334
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cr, ptr %7, align 8, !tbaa !17, !alias.scope !334
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !19, !alias.scope !334
  store i8 0, ptr %i.cr, align 8, !tbaa !20, !alias.scope !334
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41 unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41: ; preds = %bb.s
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21, !alias.scope !334
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ct, i64 noundef %i.cq, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(45) %2) #23 ; 0 uses
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !19, !alias.scope !334
  %i.cw = add i64 %i.cv, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cw, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRA45_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #27
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !21, !alias.scope !334 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body42, label %.body42.sink.split

_ZN4pbrt6detail9formatOneIRA45_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !19 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !19
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44

bb.v:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA45_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
          to label %.noexc45 unwind label %bb.w

.noexc45:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44: ; preds = %_ZN4pbrt6detail9formatOneIRA45_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !21
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47 unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44
  %i.dj = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !20
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44, %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body42, label %.body42.sink.split

.body42.sink.split:                               ; preds = %bb.w, %bb.u
  %.sink89 = phi ptr [ %i.da, %bb.u ], [ %i.do, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !20
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink89, i64 noundef %i.dr) #25
  br label %.body42

.body42:                                          ; preds = %.body42.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ], [ %.pn.ph, %.body42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.z

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.24, %bb.c ], [ @.str.25, %bb.r ], [ @.str.21, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #24
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !26
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.y
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !20
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !20
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn24
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr captures(none), <16 x i1>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !12, i64 8, !5, i64 16}
!19 = !{!18, !12, i64 8}
!20 = !{!5, !5, i64 0}
!21 = !{!18, !15, i64 0}
!22 = !{i64 0, i64 36, !20}
!23 = !{!"branch_weights", i32 1, i32 1048575}
!24 = !{i64 0, i64 64, !20}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!15, !15, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!28 = !{!"_ZTSSt6locale", !27, i64 0}
!29 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !28, i64 56}
!30 = !{!29, !15, i64 40}
!31 = !{!29, !15, i64 32}
!32 = !{!"vtable pointer", !4, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"_ZTSSi", !12, i64 8}
!35 = !{!34, !12, i64 8}
!36 = distinct !{!36, i1 false, !"_ZN4pbrt12StringPrintfIJRA6_KcRA9_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!37 = distinct !{!37, !36, !"_ZN4pbrt12StringPrintfIJRA6_KcRA9_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!38 = !{!37}
!39 = distinct !{!39, i1 false, !"_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!40 = distinct !{!40, !39, !"_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!41 = !{!40}
!42 = !{!"bool", !5, i64 0}
!43 = !{!"_ZTSN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEE", !5, i64 0, !42, i64 16}
!44 = !{!43, !42, i64 16}
!45 = distinct !{!45, i1 false, !"_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!46 = distinct !{!46, !45, !"_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!47 = !{!46}
!48 = distinct !{!48, i1 false, !"_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!49 = distinct !{!49, !48, !"_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!50 = !{!49}
!51 = distinct !{!51, i1 false, !"_ZN4pbrt12StringPrintfIJRKfS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!52 = distinct !{!52, !51, !"_ZN4pbrt12StringPrintfIJRKfS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!53 = !{!52}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, i1 false, !"_ZN4pbrt12StringPrintfIJRKfS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!56 = distinct !{!56, !55, !"_ZN4pbrt12StringPrintfIJRKfS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!57 = !{!56}
!58 = distinct !{!58, !25}
!59 = distinct !{!59, i1 false, !"_ZN4pbrt12StringPrintfIJRA15_KcRA2_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!60 = distinct !{!60, !59, !"_ZN4pbrt12StringPrintfIJRA15_KcRA2_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!61 = !{!60}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, i1 false, !"_ZN4pbrt12StringPrintfIJRA13_KcRA9_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!64 = distinct !{!64, !63, !"_ZN4pbrt12StringPrintfIJRA13_KcRA9_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!65 = !{!64}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25, !69}
!69 = !{!"llvm.loop.peeled.count", i32 1}
!70 = distinct !{!70, i1 false, !"_ZN4pbrt12StringPrintfIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!71 = distinct !{!71, !70, !"_ZN4pbrt12StringPrintfIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!72 = !{!71}
!73 = distinct !{!73, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!74 = distinct !{!74, !73, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!75 = distinct !{!75, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!76 = distinct !{!76, !75, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!77 = distinct !{!77, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!78 = distinct !{!78, !77, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!79 = distinct !{!79, i1 false, !"_ZN4pbrt6detail9formatOneIRKfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_"}
!80 = distinct !{!80, !79, !"_ZN4pbrt6detail9formatOneIRKfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_: argument 0"}
!81 = !{!74}
!82 = !{!76}
!83 = !{!76, !74}
!84 = !{!78}
!85 = !{!80}
!86 = distinct !{!86, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!87 = distinct !{!87, !86, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!88 = distinct !{!88, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!89 = distinct !{!89, !88, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!90 = distinct !{!90, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!91 = distinct !{!91, !90, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!92 = distinct !{!92, i1 false, !"_ZN4pbrt6detail9formatOneIRKfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_"}
!93 = distinct !{!93, !92, !"_ZN4pbrt6detail9formatOneIRKfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_: argument 0"}
!94 = !{!87}
!95 = !{!89}
!96 = !{!89, !87}
!97 = !{!91}
!98 = !{!93}
!99 = distinct !{!99, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!100 = distinct !{!100, !99, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!101 = distinct !{!101, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!102 = distinct !{!102, !101, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!103 = distinct !{!103, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!104 = distinct !{!104, !103, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!105 = distinct !{!105, i1 false, !"_ZN4pbrt6detail9formatOneIRA6_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!106 = distinct !{!106, !105, !"_ZN4pbrt6detail9formatOneIRA6_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!107 = !{!100}
!108 = !{!102}
!109 = !{!102, !100}
!110 = !{!104}
!111 = !{!106}
!112 = distinct !{!112, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!113 = distinct !{!113, !112, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!114 = distinct !{!114, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!115 = distinct !{!115, !114, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!116 = distinct !{!116, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!117 = distinct !{!117, !116, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!118 = distinct !{!118, i1 false, !"_ZN4pbrt6detail9formatOneIRA9_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!119 = distinct !{!119, !118, !"_ZN4pbrt6detail9formatOneIRA9_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!120 = !{!113}
!121 = !{!115}
!122 = !{!115, !113}
!123 = !{!117}
!124 = !{!119}
!125 = distinct !{!125, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!126 = distinct !{!126, !125, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!127 = distinct !{!127, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!128 = distinct !{!128, !127, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!129 = distinct !{!129, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!130 = distinct !{!130, !129, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!131 = distinct !{!131, i1 false, !"_ZN4pbrt6detail9formatOneIRA6_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
!132 = distinct !{!132, !131, !"_ZN4pbrt6detail9formatOneIRA6_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_: argument 0"}
!133 = !{!126}
!134 = !{!128}
!135 = !{!128, !126}
!136 = !{!130}
!137 = !{!132}
!138 = distinct !{!138, i1 false, !"_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_"}
!139 = distinct !{!139, !138, !"_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_: argument 0"}
!140 = distinct !{!140, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!141 = distinct !{!141, !140, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!142 = distinct !{!142, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!143 = distinct !{!143, !142, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!144 = distinct !{!144, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!145 = distinct !{!145, !144, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!146 = distinct !{!146, i1 false, !"_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_"}
!147 = distinct !{!147, !146, !"_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_: argument 0"}
!148 = !{!139}
!149 = !{!141}
!150 = !{!143}
!151 = !{!143, !141}
!152 = !{!145}
!153 = !{!147}
!154 = distinct !{!154, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!155 = distinct !{!155, !154, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!156 = distinct !{!156, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!157 = distinct !{!157, !156, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!158 = distinct !{!158, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!159 = distinct !{!159, !158, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!160 = distinct !{!160, i1 false, !"_ZN4pbrt6detail9formatOneIRA9_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_"}
end_hunk_2
