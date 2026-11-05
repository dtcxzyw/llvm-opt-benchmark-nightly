Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ppf_match_3d?download=true
inline.NumInlined: 998
inline.NumDeleted: 359
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0
$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFiRKS6_SF_EEEEvT_T0_ = comdat any

$_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE17_M_default_appendEm = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVN2cv12ppf_match_3d13PoseCluster3DE = comdat any

$_ZTIN2cv12ppf_match_3d13PoseCluster3DE = comdat any

$_ZTSN2cv12ppf_match_3d13PoseCluster3DE = comdat any

$_ZTVN2cv12ppf_match_3d6Pose3DE = comdat any

$_ZTIN2cv12ppf_match_3d6Pose3DE = comdat any

$_ZTSN2cv12ppf_match_3d6Pose3DE = comdat any

$_ZTVSt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZTVN2cv12ppf_match_3d13PPF3DDetectorE = constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN2cv12ppf_match_3d13PPF3DDetectorE, ptr @_ZN2cv12ppf_match_3d13PPF3DDetectorD1Ev, ptr @_ZN2cv12ppf_match_3d13PPF3DDetectorD0Ev] }, align 8
@.str = private unnamed_addr constant [45 x i8] c"PC.type() == CV_32F || PC.type() == CV_32FC1\00", align 1
@__func__._ZN2cv12ppf_match_3d13PPF3DDetector10trainModelERKNS_3MatE = private unnamed_addr constant [11 x i8] c"trainModel\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"/opt-bench/work/opencv/opencv_contrib/modules/surface_matching/src/ppf_match_3d.cpp\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"The model is not trained. Cannot match without training\00", align 1
@__FUNCTION__._ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd = private unnamed_addr constant [6 x i8] c"match\00", align 1
@_ZTIN2cv9ExceptionE = external constant ptr
@.str.3 = private unnamed_addr constant [45 x i8] c"pc.type() == CV_32F || pc.type() == CV_32FC1\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"relativeSceneSampleStep<=1 && relativeSceneSampleStep>0\00", align 1
@_ZTIN2cv12ppf_match_3d13PPF3DDetectorE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2cv12ppf_match_3d13PPF3DDetectorE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN2cv12ppf_match_3d13PPF3DDetectorE = constant [35 x i8] c"N2cv12ppf_match_3d13PPF3DDetectorE\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"!a.empty() && !b.empty()\00", align 1
@__func__._ZN2cv12ppf_match_3dL16pose3DPtrCompareERKNS_3PtrINS0_6Pose3DEEES5_ = private unnamed_addr constant [17 x i8] c"pose3DPtrCompare\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN2cv12ppf_match_3d13PoseCluster3DE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN2cv12ppf_match_3d13PoseCluster3DE, ptr @_ZN2cv12ppf_match_3d13PoseCluster3DD2Ev, ptr @_ZN2cv12ppf_match_3d13PoseCluster3DD0Ev] }, comdat, align 8
@_ZTIN2cv12ppf_match_3d13PoseCluster3DE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2cv12ppf_match_3d13PoseCluster3DE }, comdat, align 8
@_ZTSN2cv12ppf_match_3d13PoseCluster3DE = linkonce_odr constant [35 x i8] c"N2cv12ppf_match_3d13PoseCluster3DE\00", comdat, align 1
@__func__._ZN2cv12ppf_match_3dL16sortPoseClustersERKNS_3PtrINS0_13PoseCluster3DEEES5_ = private unnamed_addr constant [17 x i8] c"sortPoseClusters\00", align 1
@_ZTVN2cv12ppf_match_3d6Pose3DE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN2cv12ppf_match_3d6Pose3DE, ptr @_ZN2cv12ppf_match_3d6Pose3DD2Ev, ptr @_ZN2cv12ppf_match_3d6Pose3DD0Ev] }, comdat, align 8
@_ZTIN2cv12ppf_match_3d6Pose3DE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2cv12ppf_match_3d6Pose3DE }, comdat, align 8
@_ZTSN2cv12ppf_match_3d6Pose3DE = linkonce_odr constant [27 x i8] c"N2cv12ppf_match_3d6Pose3DE\00", comdat, align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [86 x i8] c"St15_Sp_counted_ptrIPN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [78 x i8] c"St15_Sp_counted_ptrIPN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1

@_ZN2cv12ppf_match_3d13PPF3DDetectorC1Ev = unnamed_addr alias void (ptr), ptr @_ZN2cv12ppf_match_3d13PPF3DDetectorC2Ev
@_ZN2cv12ppf_match_3d13PPF3DDetectorC1Eddd = unnamed_addr alias void (ptr, double, double, double), ptr @_ZN2cv12ppf_match_3d13PPF3DDetectorC2Eddd
@_ZN2cv12ppf_match_3d13PPF3DDetectorD1Ev = unnamed_addr alias void (ptr), ptr @_ZN2cv12ppf_match_3d13PPF3DDetectorD2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv12ppf_match_3d13PPF3DDetectorC2Ev(ptr noundef nonnull align 8 dereferenceable(521) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv12ppf_match_3d13PPF3DDetectorE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double 5.000000e-02, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 25, ptr %i.e, align 4, !tbaa !35
  store <2 x double> <double 5.000000e-02, double 3.000000e+01>, ptr %i.c, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> splat (double f0x3FCACEE9F37BEBD5), ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 0, ptr %i.g, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store <2 x double> <double 5.000000e-02, double 3.000000e+01>, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 0, ptr %i.j, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN2cv12ppf_match_3d13PPF3DDetector15setSearchParamsEddb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(521) initializes((496, 513)) %0, double noundef %1, double noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load double, ptr %i.b, align 8
  %.sink = select i1 %i.a, double %i.c, double %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 496
  store double %.sink, ptr %i.d, align 8, !tbaa !39
  %i.e = fcmp olt double %2, 0.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8
  %i.h = fdiv double 3.600000e+02, %i.g
  %i.i = fdiv double %i.h, 1.800000e+02
  %i.j = fmul double %i.i, f0x400921FB54442D18
  %.sink6 = select i1 %i.e, double %i.j, double %2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 504
  store double %.sink6, ptr %i.k, align 8, !tbaa !40
  %i.l = zext i1 %3 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 %i.l, ptr %i.m, align 8, !tbaa !38
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv12ppf_match_3d13PPF3DDetectorC2Eddd(ptr noundef nonnull align 8 dereferenceable(521) initializes((0, 8)) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv12ppf_match_3d13PPF3DDetectorE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %1, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %2, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %3, ptr %i.e, align 8, !tbaa !117
  %i.f = fdiv double 3.600000e+02, %3
  %i.g = fmul double %i.f, f0x400921FB54442D18
  %i.h = fdiv double %i.g, 1.800000e+02           ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.h, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 0, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store double %1, ptr %i.m, align 8, !tbaa !39
  %i.n = fdiv double 3.600000e+02, %i.h
  %i.o = fdiv double %i.n, 1.800000e+02
  %i.p = fmul double %i.o, f0x400921FB54442D18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  store double %i.p, ptr %i.q, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 0, ptr %i.r, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN2cv12ppf_match_3d13PPF3DDetector18computePPFFeaturesERKNS_3VecIdLi3EEES5_S5_S5_RNS2_IdLi4EEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(521) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((24, 32)) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load double, ptr %3, align 8, !tbaa !36, !noalias !120
  %i.b = load double, ptr %1, align 8, !tbaa !36, !noalias !120
  %i.c = fsub double %i.a, %i.b                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !36, !noalias !120
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !36, !noalias !120
  %i.h = fsub double %i.e, %i.g                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !36, !noalias !120
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !36, !noalias !120
  %i.m = fsub double %i.j, %i.l                   ; 3 uses
  %6 = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double 0.000000e+00)
  %i.n = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %6)
  %i.o = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.n)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.o) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %sqrt, ptr %i.p, align 8, !tbaa !36
  %i.q = fcmp ugt double %sqrt, f0x3E80000000000000
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = fdiv double 1.000000e+00, %sqrt          ; 3 uses
  %i.s = fmul double %i.c, %i.r                   ; 2 uses
  %i.t = fmul double %i.h, %i.r                   ; 2 uses
  %i.u = fmul double %i.m, %i.r                   ; 2 uses
  %i.v = load double, ptr %2, align 8, !tbaa !36
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.s, double 0.000000e+00)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !36
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.t, double %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !36
  %i.ac = tail call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.u, double %i.z)
  %i.ad = tail call noundef double @acos(double noundef %i.ac) #26
  store double %i.ad, ptr %5, align 8, !tbaa !36
  %i.ae = load double, ptr %4, align 8, !tbaa !36
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.s, double 0.000000e+00)
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !36
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.t, double %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !36
  %i.al = tail call noundef double @llvm.fmuladd.f64(double %i.ak, double %i.u, double %i.ai)
  %i.am = tail call noundef double @acos(double noundef %i.al) #26
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.am, ptr %i.an, align 8, !tbaa !36
  %i.ao = load double, ptr %2, align 8, !tbaa !36
  %i.ap = load double, ptr %4, align 8, !tbaa !36
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ap, double 0.000000e+00)
  %i.ar = load double, ptr %i.x, align 8, !tbaa !36
  %i.as = load double, ptr %i.ag, align 8, !tbaa !36
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.as, double %i.aq)
  %i.au = load double, ptr %i.aa, align 8, !tbaa !36
  %i.av = load double, ptr %i.aj, align 8, !tbaa !36
  %i.aw = tail call noundef double @llvm.fmuladd.f64(double %i.au, double %i.av, double %i.at)
  %i.ax = tail call noundef double @acos(double noundef %i.aw) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.ax, ptr %i.ay, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZN2cv12ppf_match_3d13PPF3DDetector19clearTrainingModelsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(521) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #26
  store ptr null, ptr %i.a, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv12ppf_match_3d16hashtableDestroyEPNS0_8HSHTBL_iE(ptr noundef nonnull %i.d)
  store ptr null, ptr %i.c, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare void @_ZN2cv12ppf_match_3d16hashtableDestroyEPNS0_8HSHTBL_iE(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv12ppf_match_3d13PPF3DDetectorD2Ev(ptr noundef nonnull align 8 dead_on_return(521) dereferenceable(521) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv12ppf_match_3d13PPF3DDetectorE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #26
  store ptr null, ptr %i.a, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %.not2.i = icmp eq ptr %i.d, null
  br i1 %.not2.i, label %_ZN2cv12ppf_match_3d13PPF3DDetector19clearTrainingModelsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv12ppf_match_3d16hashtableDestroyEPNS0_8HSHTBL_iE(ptr noundef nonnull %i.d)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !45
  br label %_ZN2cv12ppf_match_3d13PPF3DDetector19clearTrainingModelsEv.exit

_ZN2cv12ppf_match_3d13PPF3DDetector19clearTrainingModelsEv.exit: ; preds = %.noexc, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.e) #26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #26
  ret void

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #27
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv12ppf_match_3d13PPF3DDetectorD0Ev(ptr noundef nonnull align 8 dereferenceable(521) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2cv12ppf_match_3d13PPF3DDetectorD1Ev(ptr noundef nonnull align 8 dead_on_return(521) dereferenceable(521) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 528) #28
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN2cv12ppf_match_3d13PPF3DDetector10trainModelERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(521) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 8         ; 4 uses
  %3 = alloca %"class.cv::Range", align 4         ; 5 uses
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::Vec", align 8           ; 6 uses
  %9 = alloca %"class.cv::Matx.20", align 8       ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.cv::Vec.2", align 8        ; 8 uses
  %13 = alloca %"class.cv::Vec.2", align 8        ; 8 uses
  %14 = alloca %"class.cv::Vec.2", align 8        ; 8 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::Vec.0", align 8        ; 9 uses
  %20 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %21 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %23 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !46
  %i.b = and i32 %i.a, 4095
  %i.c = icmp eq i32 %i.b, 5
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv12ppf_match_3d13PPF3DDetector10trainModelERKNS_3MatE, ptr noundef nonnull @.str.1, i32 noundef 205) #29
          to label %bb.d unwind label %bb.f
end_hunk_0
begin_hunk_1_@_ZN2cv12ppf_match_3d13PPF3DDetector10trainModelERKNS_3MatE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store i64 0, ptr %14, align 8
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %1)
  invoke void @_ZN2cv12ppf_match_3d14computeBboxStdENS_3MatERNS_3VecIfLi2EEES4_S4_(ptr noundef nonnull align 8 %15, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #26
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !53
  %i.m = load float, ptr %12, align 8, !tbaa !53
  %i.n = fsub float %i.l, %i.m                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !53
  %i.q = load float, ptr %13, align 8, !tbaa !53
  %i.r = fsub float %i.p, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !53
  %i.u = load float, ptr %14, align 8, !tbaa !53
  %i.v = fsub float %i.t, %i.u                    ; 2 uses
  %i.w = fmul float %i.r, %i.r
  %i.x = call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.w)
  %i.y = call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.x)
  %sqrt = call float @llvm.sqrt.f32(float %i.y)
  %i.z = fpext float %sqrt to double
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !41
  %i.ac = fmul double %i.ab, %i.z
  %i.ad = fptrunc double %i.ac to float           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.ae = load double, ptr %i.aa, align 8, !tbaa !41
  %i.af = fptrunc double %i.ae to float
  invoke void @_ZN2cv12ppf_match_3d22samplePCByQuantizationENS_3MatERNS_3VecIfLi2EEES4_S4_fi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, float noundef %i.af, i32 noundef 0)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !54 ; 2 uses
  %i.ai = mul nsw i32 %i.ah, %i.ah
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = invoke noundef ptr @_ZN2cv12ppf_match_3d15hashtableCreateEmPFmjE(i64 noundef %i.aj, ptr noundef null)
          to label %bb.j unwind label %bb.ar      ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.ag, align 8, !tbaa !54 ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef %i.am, i32 noundef 5, i32 noundef 5)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ao = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.an, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.l unwind label %bb.p       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.ap = load i32, ptr %i.ag, align 8, !tbaa !54 ; 5 uses
  %i.aq = mul nsw i32 %i.ap, %i.ap
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = call noalias ptr @calloc(i64 noundef %i.ar, i64 noundef 12) #30
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !44
  %i.au = icmp sgt i32 %i.ap, 0
  br i1 %i.au, label %.lr.ph155, label %.._crit_edge156.split_crit_edge

.._crit_edge156.split_crit_edge:                  ; preds = %bb.l
  %.pre = fpext float %i.ad to double
  br label %._crit_edge156.split

.lr.ph155:                                        ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = fpext float %i.ad to double             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bx = zext nneg i32 %i.ap to i64              ; 3 uses
  br label %.lr.ph

._crit_edge156.split:                             ; preds = %._crit_edge, %.._crit_edge156.split_crit_edge
  %.pre-phi = phi double [ %.pre, %.._crit_edge156.split_crit_edge ], [ %i.bb, %._crit_edge ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bz, ptr %i.ca, align 8, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.pre-phi, ptr %i.cb, align 8, !tbaa !55
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.ak, ptr %i.cc, align 8, !tbaa !45
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %i.ap, ptr %i.cd, align 8, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ce, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.aq unwind label %bb.ar     ; 0 uses

bb.m:                                             ; preds = %bb.g
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #26
  br label %bb.at

bb.n:                                             ; preds = %bb.h
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.o:                                             ; preds = %bb.j
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn82 = phi { ptr, i32 } [ %i.cj, %bb.p ], [ %i.ci, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.as

.lr.ph:                                           ; preds = %.lr.ph155, %._crit_edge
  %indvars.iv158 = phi i64 [ 0, %.lr.ph155 ], [ %indvars.iv.next159, %._crit_edge ] ; 5 uses
  %i.ck = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.cl = load i64, ptr %i.aw, align 8, !tbaa !58
  %i.cm = mul i64 %i.cl, %indvars.iv158
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm ; 4 uses
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !53
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !53
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cs = load <2 x float>, ptr %i.cr, align 4, !tbaa !53
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !53
  %i.cv = fpext <2 x float> %i.co to <2 x double> ; 2 uses
  %i.cw = fpext float %i.cq to double             ; 2 uses
  %i.cx = fpext <2 x float> %i.cs to <2 x double> ; 5 uses
  %i.cy = fpext float %i.cu to double             ; 3 uses
  %i.cz = mul nuw nsw i64 %indvars.iv158, %i.bx
  %i.da = trunc nuw nsw i64 %indvars.iv158 to i32
  %i.db = extractelement <2 x double> %i.cx, i64 0
  %i.dc = extractelement <2 x double> %i.cx, i64 1
  %i.dd = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.de = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.r

._crit_edge:                                      ; preds = %bb.ap
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %i.bx
  br i1 %exitcond162.not, label %._crit_edge156.split, label %.lr.ph, !llvm.loop !121

bb.r:                                             ; preds = %.lr.ph, %bb.ap
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ap ] ; 4 uses
  %.not = icmp eq i64 %indvars.iv158, %indvars.iv
  br i1 %.not, label %bb.ap, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.dg = load i64, ptr %i.aw, align 8, !tbaa !58
  %i.dh = mul i64 %i.dg, %indvars.iv
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !53
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dp = load float, ptr %i.do, align 4, !tbaa !53
  %i.dq = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dr = fpext float %i.dq to double             ; 3 uses
  %i.ds = load <2 x float>, ptr %i.di, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.dt = fpext <2 x float> %i.ds to <2 x double> ; 4 uses
  %i.du = fsub <2 x double> %i.dt, %i.cv          ; 3 uses
  %i.dv = fsub double %i.dr, %i.cw                ; 3 uses
  %27 = extractelement <2 x double> %i.du, i64 0  ; 2 uses
  %28 = call double @llvm.fmuladd.f64(double %27, double %27, double 0.000000e+00)
  %i.dw = extractelement <2 x double> %i.du, i64 1 ; 2 uses
  %i.dx = call double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %28)
  %i.dy = call double @llvm.fmuladd.f64(double %i.dv, double %i.dv, double %i.dx)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.dy) ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  store double %sqrt.i, ptr %i.az, align 8, !tbaa !36
  %i.dz = fcmp ugt double %sqrt.i, f0x3E80000000000000
  br i1 %i.dz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ea = fpext float %i.dp to double             ; 2 uses
  %i.eb = fpext float %i.dn to double             ; 2 uses
  %i.ec = fpext float %i.dl to double             ; 2 uses
  %i.ed = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.ee = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x double> %i.du, %i.ef          ; 2 uses
  %i.eh = fmul double %i.dv, %i.ed
  %i.ei = insertelement <2 x double> %i.cx, double %i.ec, i64 1
  %i.ej = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ej, <2 x double> zeroinitializer)
  %i.el = insertelement <2 x double> %i.de, double %i.eb, i64 1
  %i.em = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.en = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.em, <2 x double> %i.ek)
  %i.eo = insertelement <2 x double> %i.dd, double %i.ea, i64 1
  %i.ep = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.eq, <2 x double> %i.en) ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0
  %i.et = call noundef double @acos(double noundef %i.es) #26 ; 2 uses
  store double %i.et, ptr %19, align 8, !tbaa !36
  %i.eu = extractelement <2 x double> %i.er, i64 1
  %i.ev = call noundef double @acos(double noundef %i.eu) #26 ; 2 uses
  store double %i.ev, ptr %i.ax, align 8, !tbaa !36
  %i.ew = call double @llvm.fmuladd.f64(double %i.db, double %i.ec, double 0.000000e+00)
  %i.ex = call double @llvm.fmuladd.f64(double %i.dc, double %i.eb, double %i.ew)
  %i.ey = call noundef double @llvm.fmuladd.f64(double %i.cy, double %i.ea, double %i.ex)
  %i.ez = call noundef double @acos(double noundef %i.ey) #26 ; 2 uses
  store double %i.ez, ptr %i.ay, align 8, !tbaa !36
  %i.fa = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ev, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fc = phi double [ %i.ez, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.fd = phi <2 x double> [ %i.fb, %bb.t ], [ zeroinitializer, %bb.s ]
  %i.fe = load double, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.ff = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fdiv <2 x double> %i.fd, %i.fg          ; 2 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 0
  %i.fj = fptosi double %i.fi to i32
  %i.fk = extractelement <2 x double> %i.fh, i64 1
  %i.fl = fptosi double %i.fk to i32
  %i.fm = fdiv double %i.fc, %i.fe
  %i.fn = fptosi double %i.fm to i32
  %i.fo = fdiv double %sqrt.i, %i.bb
  %i.fp = fptosi double %i.fo to i32
  %i.fq = mul i32 %i.fj, -1789642873              ; 2 uses
  %i.fr = call i32 @llvm.fshl.i32(i32 %i.fq, i32 %i.fq, i32 11)
  %i.fs = mul i32 %i.fr, 718793509
  %i.ft = xor i32 %i.fs, -1914584186
  %i.fu = add i32 %i.ft, -1162247668              ; 2 uses
  %i.fv = mul i32 %i.fl, 718793509                ; 2 uses
  %i.fw = call i32 @llvm.fshl.i32(i32 %i.fv, i32 %i.fv, i32 11)
  %i.fx = mul i32 %i.fw, -1789642873
  %i.fy = xor i32 %i.fx, 68777331
  %i.fz = add i32 %i.fu, %i.fy
  %i.ga = mul i32 %i.fu, 3
  %i.gb = add i32 %i.ga, 1390208809
  %i.gc = mul i32 %i.fz, 3
  %i.gd = add i32 %i.gc, 944331445                ; 3 uses
  %i.ge = mul i32 %i.fn, 1713515327               ; 2 uses
  %i.gf = call i32 @llvm.fshl.i32(i32 %i.ge, i32 %i.ge, i32 11)
  %i.gg = mul i32 %i.gf, 1107688271
  %i.gh = xor i32 %i.gb, %i.gg
  %i.gi = add i32 %i.gh, %i.gd                    ; 2 uses
  %i.gj = call i32 @llvm.fshl.i32(i32 %i.gd, i32 %i.gd, i32 17)
  %i.gk = mul i32 %i.fp, 1107688271               ; 2 uses
  %i.gl = call i32 @llvm.fshl.i32(i32 %i.gk, i32 %i.gk, i32 11)
  %i.gm = mul i32 %i.gl, 1713515327
  %i.gn = xor i32 %i.gj, %i.gm
  %i.go = add i32 %i.gn, %i.gi
  %i.gp = mul i32 %i.gi, 3
  %i.gq = add i32 %i.gp, 1390208809
  %i.gr = mul i32 %i.go, 3
  %i.gs = add i32 %i.gr, 944331445
  %i.gt = xor i32 %i.gs, 16                       ; 2 uses
  %i.gu = add i32 %i.gq, %i.gt                    ; 3 uses
  %i.gv = add i32 %i.gu, %i.gt                    ; 2 uses
  %i.gw = lshr i32 %i.gu, 16
  %i.gx = xor i32 %i.gw, %i.gu
  %i.gy = mul i32 %i.gx, -2048144789              ; 2 uses
  %i.gz = lshr i32 %i.gy, 13
  %i.ha = xor i32 %i.gz, %i.gy
  %i.hb = mul i32 %i.ha, -1028477387              ; 2 uses
  %i.hc = lshr i32 %i.hb, 16
  %i.hd = xor i32 %i.hc, %i.hb
  %i.he = lshr i32 %i.gv, 16
  %i.hf = xor i32 %i.he, %i.gv
  %i.hg = mul i32 %i.hf, -2048144789              ; 2 uses
  %i.hh = lshr i32 %i.hg, 13
  %i.hi = xor i32 %i.hh, %i.hg
  %i.hj = mul i32 %i.hi, -1028477387              ; 2 uses
  %i.hk = lshr i32 %i.hj, 16
  %i.hl = xor i32 %i.hk, %i.hj
  %i.hm = add i32 %i.hl, %i.hd                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store <2 x double> %i.cv, ptr %20, align 16, !tbaa !36, !alias.scope !135
  store double %i.cw, ptr %i.bc, align 16, !tbaa !36, !alias.scope !135
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store <2 x double> %i.cx, ptr %21, align 16, !tbaa !36, !alias.scope !136
  store double %i.cy, ptr %i.bd, align 16, !tbaa !36, !alias.scope !136
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 72, i1 false), !tbaa !36
  invoke fastcc void @_ZN2cv12ppf_match_3dL18computeTransformRTERKNS_3VecIdLi3EEES4_RNS_4MatxIdLi3ELi3EEERS2_(ptr noundef nonnull readonly align 8 dereferenceable(24) %20, ptr noundef nonnull readonly align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.u
  %i.hn = load double, ptr %i.be, align 8, !tbaa !36, !noalias !137
  %i.ho = extractelement <2 x double> %i.dt, i64 0
  %i.hp = call double @llvm.fmuladd.f64(double %i.hn, double %i.ho, double 0.000000e+00)
  %i.hq = load double, ptr %i.bf, align 8, !tbaa !36, !noalias !137
  %i.hr = extractelement <2 x double> %i.dt, i64 1 ; 2 uses
  %i.hs = call double @llvm.fmuladd.f64(double %i.hq, double %i.hr, double %i.hp)
  %i.ht = load <2 x double>, ptr %i.bg, align 8, !tbaa !36, !noalias !137
  %i.hu = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.hw = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hs, i64 0
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hv, <2 x double> %i.hw) ; 2 uses
  %i.hy = load double, ptr %i.bh, align 8, !tbaa !36, !noalias !137
  %i.hz = extractelement <2 x double> %i.hx, i64 1
  %i.ia = call double @llvm.fmuladd.f64(double %i.hy, double %i.hr, double %i.hz)
  %i.ib = load double, ptr %i.bi, align 8, !tbaa !36, !noalias !137
  %i.ic = call double @llvm.fmuladd.f64(double %i.ib, double %i.dr, double %i.ia)
  %i.id = load double, ptr %i.bj, align 8, !tbaa !36, !noalias !138
  %i.ie = extractelement <2 x double> %i.hx, i64 0
  %i.if = fadd double %i.ie, %i.id
  %i.ig = load double, ptr %i.bk, align 8, !tbaa !36, !noalias !138
  %i.ih = fadd double %i.ic, %i.ig                ; 2 uses
  %i.ii = fneg double %i.ih
  %i.ij = call double @atan2(double noundef %i.ii, double noundef %i.if) #26 ; 4 uses
  %i.ik = fcmp uno double %i.ij, 0.000000e+00
  br i1 %i.ik, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc
  %i.il = call double @sin(double noundef %i.ij) #26
  %i.im = fmul double %i.ih, %i.il
  %i.in = fcmp olt double %i.im, 0.000000e+00
  %.neg.i = fneg double %i.ij
  %i.io = select i1 %i.in, double %i.ij, double %.neg.i
  %i.ip = fptrunc double %i.io to float
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.noexc
  %.09.i = phi float [ %i.ip, %bb.v ], [ 0.000000e+00, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.iq = add nuw nsw i64 %indvars.iv, %i.cz      ; 4 uses
  %i.ir = load ptr, ptr %i.at, align 8, !tbaa !44
  %i.is = getelementptr inbounds nuw [12 x i8], ptr %i.ir, i64 %i.iq ; 4 uses
  store i32 %i.hm, ptr %i.is, align 4, !tbaa !139
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  store i32 %i.da, ptr %i.it, align 4, !tbaa !61
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iv = trunc nuw i64 %i.iq to i32              ; 2 uses
  store i32 %i.iv, ptr %i.iu, align 4, !tbaa !62
  %i.iw = invoke noundef i32 @_ZN2cv12ppf_match_3d21hashtableInsertHashedEPNS0_8HSHTBL_iEjPv(ptr noundef %i.ak, i32 noundef %i.hm, ptr noundef nonnull %i.is)
          to label %bb.x unwind label %bb.af      ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store <4 x i32> <i32 1124024326, i32 1, i32 1, i32 4>, ptr %23, align 16, !tbaa !63
  store i32 153, ptr %i.bl, align 16, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.bn, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc111 unwind label %bb.ag

.noexc111:                                        ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bo, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 4, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0)
          to label %.noexc112 unwind label %bb.ag

.noexc112:                                        ; preds = %.noexc111
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 0, ptr %i.bq, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !67
  store ptr %23, ptr %i.bp, align 8, !tbaa !68
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %.noexc112
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #26
end_hunk_1
begin_hunk_2_@_ZN2cv12ppf_match_3d13PPF3DDetector10trainModelERKNS_3MatE:bb.a
bb.af:                                            ; preds = %bb.w
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ag:                                            ; preds = %.noexc111, %bb.x
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.z
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ai:                                            ; preds = %bb.aa
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.ab
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ac
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn91.pn = phi { ptr, i32 } [ %i.jl, %bb.ak ], [ %i.jk, %bb.aj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91.pn, %bb.al ], [ %i.jj, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ah
  %.pn91.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn, %bb.am ], [ %i.ji, %bb.ah ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #26
  br label %.body

.body:                                            ; preds = %bb.ag, %bb.y, %bb.an
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn, %bb.an ], [ %i.jh, %bb.ag ], [ %i.ix, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.ao

bb.ao:                                            ; preds = %bb.af, %.body, %bb.ae
  %.pn91.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jg, %bb.af ], [ %i.jf, %bb.ae ], [ %.pn91.pn.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.as

bb.ap:                                            ; preds = %bb.r, %bb.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bx
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !134

bb.aq:                                            ; preds = %._crit_edge156.split
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 1, ptr %i.jm, align 8, !tbaa !37
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  ret void

bb.ar:                                            ; preds = %bb.i, %._crit_edge156.split
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.q, %bb.ao, %bb.n
  %.sink = phi ptr [ %17, %bb.n ], [ %16, %bb.ao ], [ %16, %bb.q ], [ %16, %bb.ar ]
  %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.n ], [ %.pn91.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ao ], [ %.pn82, %bb.q ], [ %i.jn, %bb.ar ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.sink) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.m
  %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.as ], [ %i.cg, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.at ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn91.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !145
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.d, ptr %i.a, align 8, !tbaa !58
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !50
  %i.g = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.g, ptr %i.b, align 8, !tbaa !51
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !51
  store i8 %i.i, ptr %i.h, align 1, !tbaa !51
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !69
  %i.l = load ptr, ptr %0, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare void @_ZN2cv12ppf_match_3d14computeBboxStdENS_3MatERNS_3VecIfLi2EEES4_S4_(ptr noundef align 8, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #7

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

declare void @_ZN2cv12ppf_match_3d22samplePCByQuantizationENS_3MatERNS_3VecIfLi2EEES4_S4_fi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef align 8, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN2cv12ppf_match_3d15hashtableCreateEmPFmjE(i64 noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

declare noundef i32 @_ZN2cv12ppf_match_3d21hashtableInsertHashedEPNS0_8HSHTBL_iEjPv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN2cv12ppf_match_3d13PPF3DDetector9matchPoseERKNS0_6Pose3DES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(521) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.c = load double, ptr %i.a, align 8, !tbaa !36, !noalias !148
  %i.d = load double, ptr %i.b, align 8, !tbaa !36, !noalias !148
  %i.e = fsub double %i.c, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.g = load double, ptr %i.f, align 8, !tbaa !36, !noalias !148
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !36, !noalias !148
  %i.j = fsub double %i.g, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.l = load double, ptr %i.k, align 8, !tbaa !36, !noalias !148
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.n = load double, ptr %i.m, align 8, !tbaa !36, !noalias !148
  %i.o = fsub double %i.l, %i.n                   ; 2 uses
  %3 = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double 0.000000e+00)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %3)
  %i.q = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.p)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.s = load double, ptr %i.r, align 8, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.u = load double, ptr %i.t, align 8, !tbaa !76
  %i.v = fsub double %i.s, %i.u
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.y = load double, ptr %i.x, align 8, !tbaa !40
  %i.z = fcmp olt double %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ab = load double, ptr %i.aa, align 8
  %i.ac = fcmp olt double %sqrt, %i.ab
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  ret i1 %i.ad
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: mustprogress uwtable
define void @_ZN2cv12ppf_match_3d13PPF3DDetector12clusterPosesERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS5_EEiS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(521) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 20 uses
  %5 = alloca %"struct.cv::Ptr", align 16         ; 8 uses
  %6 = alloca %"struct.cv::Ptr", align 8          ; 7 uses
  %7 = alloca %"struct.cv::Ptr", align 8          ; 4 uses
  %8 = alloca %"struct.cv::Ptr.15", align 16      ; 9 uses
  %9 = alloca %"struct.cv::Ptr", align 16         ; 6 uses
  %10 = alloca %"class.cv::Vec.0", align 16       ; 12 uses
  %11 = alloca %"class.cv::Vec", align 16         ; 9 uses
  %12 = alloca %"struct.cv::Ptr.15", align 8      ; 8 uses
  %13 = alloca %"class.std::vector.10", align 8   ; 10 uses
  %14 = alloca %"struct.cv::Ptr", align 8         ; 6 uses
  %15 = alloca %"class.cv::Vec.0", align 16       ; 11 uses
  %16 = alloca %"class.cv::Vec", align 16         ; 8 uses
  %17 = alloca %"struct.cv::Ptr.15", align 8      ; 8 uses
  %18 = alloca %"class.std::vector.10", align 8   ; 10 uses
  %19 = alloca %"struct.cv::Ptr", align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %3, align 8, !tbaa !79     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !86
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !149
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !149
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !80
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE5clearEv.exit

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.v = load ptr, ptr %1, align 8, !tbaa !171    ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !171  ; 6 uses
  %.not.i.i114 = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i114, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d6Pose3DEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE5clearEv.exit
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = xor i64 %i.ad, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d6Pose3DEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_T1_(ptr %i.v, ptr %i.x, i64 noundef %i.ae, ptr nonnull @_ZN2cv12ppf_match_3dL16pose3DPtrCompareERKNS_3PtrINS0_6Pose3DEEES5_)
          to label %.noexc unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %i.af = icmp sgt i64 %i.aa, 256
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 256 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d6Pose3DEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_(ptr %i.v, ptr nonnull %i.ag, ptr nonnull @_ZN2cv12ppf_match_3dL16pose3DPtrCompareERKNS_3PtrINS0_6Pose3DEEES5_)
          to label %.noexc117 unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc117:                                        ; preds = %bb.i
  %.not7.i.i.i.i = icmp eq ptr %i.ag, %i.x
  br i1 %.not7.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d6Pose3DEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i.i.i.i115

.lr.ph.i.i.i.i115:                                ; preds = %.noexc117, %.noexc118
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.ah, %.noexc118 ], [ %i.ag, %.noexc117 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d6Pose3DEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_(ptr nonnull %.sroa.0.08.i.i.i.i, ptr nonnull @_ZN2cv12ppf_match_3dL16pose3DPtrCompareERKNS_3PtrINS0_6Pose3DEEES5_)
          to label %.noexc118 unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc118:                                        ; preds = %.lr.ph.i.i.i.i115
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.ah, %i.x
  br i1 %.not.i.i.i.i116, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d6Pose3DEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i.i.i.i115, !llvm.loop !150

bb.j:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d6Pose3DEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_(ptr %i.v, ptr %i.x, ptr nonnull @_ZN2cv12ppf_match_3dL16pose3DPtrCompareERKNS_3PtrINS0_6Pose3DEEES5_)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d6Pose3DEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d6Pose3DEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit: ; preds = %.noexc118, %bb.j, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE5clearEv.exit, %.noexc117
  %i.ai = icmp sgt i32 %2, 0
  br i1 %i.ai, label %.lr.ph304, label %._crit_edge305

.lr.ph304:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d6Pose3DEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.n

._crit_edge305:                                   ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit162, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d6Pose3DEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit
  %i.as = load ptr, ptr %4, align 8, !tbaa !172   ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !172 ; 6 uses
  %.not.i.i120 = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i120, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEEPFiRKS6_SD_EEvT_SG_T0_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge305
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = ashr exact i64 %i.ax, 4
  %i.az = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = xor i64 %i.ba, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFiRKS6_SF_EEEEvT_SJ_T0_T1_(ptr %i.as, ptr %i.au, i64 noundef %i.bb, ptr nonnull @_ZN2cv12ppf_match_3dL16sortPoseClustersERKNS_3PtrINS0_13PoseCluster3DEEES5_)
          to label %.noexc125 unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125:                                        ; preds = %bb.k
  %i.bc = icmp sgt i64 %i.ax, 256
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc125
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 256 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFiRKS6_SF_EEEEvT_SJ_T0_(ptr %i.as, ptr nonnull %i.bd, ptr nonnull @_ZN2cv12ppf_match_3dL16sortPoseClustersERKNS_3PtrINS0_13PoseCluster3DEEES5_)
          to label %.noexc126 unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc126:                                        ; preds = %bb.l
  %.not7.i.i.i.i121 = icmp eq ptr %i.bd, %i.au
  br i1 %.not7.i.i.i.i121, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEEPFiRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i.i.i.i122

.lr.ph.i.i.i.i122:                                ; preds = %.noexc126, %.noexc127
  %.sroa.0.08.i.i.i.i123 = phi ptr [ %i.be, %.noexc127 ], [ %i.bd, %.noexc126 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFiRKS6_SF_EEEEvT_T0_(ptr nonnull %.sroa.0.08.i.i.i.i123, ptr nonnull @_ZN2cv12ppf_match_3dL16sortPoseClustersERKNS_3PtrINS0_13PoseCluster3DEEES5_)
          to label %.noexc127 unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %.lr.ph.i.i.i.i122
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i123, i64 16 ; 2 uses
  %.not.i.i.i.i124 = icmp eq ptr %i.be, %i.au
  br i1 %.not.i.i.i.i124, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEEPFiRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i.i.i.i122, !llvm.loop !151

bb.m:                                             ; preds = %.noexc125
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFiRKS6_SF_EEEEvT_SJ_T0_(ptr %i.as, ptr %i.au, ptr nonnull @_ZN2cv12ppf_match_3dL16sortPoseClustersERKNS_3PtrINS0_13PoseCluster3DEEES5_)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEEPFiRKS6_SD_EEvT_SG_T0_.exit unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i122, %.lr.ph.i.i.i.i115, %bb.bx, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %lpad.loopexit.split-lp613 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp285.loopexit.split-lp

bb.n:                                             ; preds = %.lr.ph304, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit162
  %indvars.iv = phi i64 [ 0, %.lr.ph304 ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit162 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bf = load ptr, ptr %1, align 8, !tbaa !79
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !83 ; 2 uses
  %i.bj = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !89
  store <2 x ptr> %i.bj, ptr %5, align 16, !tbaa !89
  %.not.i.i.i.i129 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i129, label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !63
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !63
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit

bb.q:                                             ; preds = %bb.o
  %i.bo = atomicrmw volatile add ptr %i.bk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit

_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit: ; preds = %bb.n, %bb.p, %bb.q
  %i.bp = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.bq = load ptr, ptr %4, align 8, !tbaa !92    ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141
  br i1 %i.di, label %bb.bp, label %.critedge

.lr.ph:                                           ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141
  %i.bs = phi ptr [ %i.fb, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141 ], [ %i.bq, %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit ]
  %.085302 = phi i64 [ %i.ez, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141 ], [ 0, %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.085302
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !95
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !79 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !98 ; 3 uses
  store ptr %i.bx, ptr %6, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !83 ; 3 uses
  store ptr %i.bz, ptr %i.al, align 8, !tbaa !83
  %.not.i.i.i.i130 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i130, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i131 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i131, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !63
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !63
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ce = atomicrmw volatile add ptr %i.ca, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !98
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.lr.ph
  %i.cf = phi ptr [ %.pre, %bb.t ], [ %i.bx, %bb.s ], [ %i.bx, %.lr.ph ] ; 4 uses
  %i.cg = load ptr, ptr %5, align 16, !tbaa !98   ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 176
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 176
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !36, !noalias !173
  %i.ck = load double, ptr %i.ci, align 8, !tbaa !36, !noalias !173
  %i.cl = fsub double %i.cj, %i.ck                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 184
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !36, !noalias !173
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 184
  %i.cp = load double, ptr %i.co, align 8, !tbaa !36, !noalias !173
  %i.cq = fsub double %i.cn, %i.cp                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 192
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !36, !noalias !173
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 192
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !36, !noalias !173
  %i.cv = fsub double %i.cs, %i.cu                ; 2 uses
  %20 = call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double 0.000000e+00)
  %i.cw = call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %20)
  %i.cx = call double @llvm.fmuladd.f64(double %i.cv, double %i.cv, double %i.cw)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.cx)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 168
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !76
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 168
  %i.db = load double, ptr %i.da, align 8, !tbaa !76
  %i.dc = fsub double %i.cz, %i.db
  %i.dd = call double @llvm.fabs.f64(double %i.dc)
  %i.de = load double, ptr %i.am, align 8, !tbaa !40
  %i.df = fcmp olt double %i.dd, %i.de
  %i.dg = load double, ptr %i.an, align 8
  %i.dh = fcmp olt double %sqrt.i, %i.dg
  %i.di = select i1 %i.df, i1 %i.dh, i1 false     ; 3 uses
  br i1 %i.di, label %bb.v, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.dj = load ptr, ptr %4, align 8, !tbaa !92
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %.085302
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !95
  store ptr %i.cg, ptr %7, align 8, !tbaa !98
  %i.dm = load ptr, ptr %i.aj, align 8, !tbaa !83 ; 3 uses
  store ptr %i.dm, ptr %i.ao, align 8, !tbaa !83
  %.not.i.i.i.i133 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i133, label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit135, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i134 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i134, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !63
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !63
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit135

bb.y:                                             ; preds = %bb.w
  %i.dr = atomicrmw volatile add ptr %i.dn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit135

_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit135: ; preds = %bb.v, %bb.x, %bb.y
  invoke void @_ZN2cv12ppf_match_3d13PoseCluster3D7addPoseENS_3PtrINS0_6Pose3DEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.dl, ptr noundef nonnull align 8 %7)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit135
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !83 ; 8 uses
  %.not.i.i136 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i136, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.dt, align 8, !tbaa !85
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !86
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #26, !inline_history !1
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #26, !inline_history !1
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.dw, %bb.ad ], [ %i.eg, %bb.ae ]
  %i.eh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.eh, label %bb.af, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #26
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit135
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bw

_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab, %bb.z, %bb.u
  %i.ej = load ptr, ptr %i.al, align 8, !tbaa !83 ; 8 uses
  %.not.i.i137 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i137, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %i.el = load atomic i64, ptr %i.ek acquire, align 8 ; 2 uses
  %i.em = icmp eq i64 %i.el, 4294967297
  %i.en = trunc i64 %i.el to i32                  ; 2 uses
  br i1 %i.em, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ek, align 8, !tbaa !85
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 0, ptr %i.eo, align 4, !tbaa !86
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #26, !inline_history !1
  %i.es = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #26, !inline_history !1
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141

bb.aj:                                            ; preds = %bb.ah
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i138 = icmp eq i8 %i.ev, 0
  br i1 %.not.i.i.i138, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = add nsw i32 %i.en, -1
  store i32 %i.ew, ptr %i.ek, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139

bb.al:                                            ; preds = %bb.aj
  %i.ex = atomicrmw volatile add ptr %i.ek, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i140 = phi i32 [ %i.en, %bb.ak ], [ %i.ex, %bb.al ]
  %i.ey = icmp eq i32 %.0.i.i.i.i140, 1
  br i1 %i.ey, label %bb.am, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141, !prof !87

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #26
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141

_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141: ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ez = add nuw i64 %.085302, 1                 ; 2 uses
  %i.fa = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.fb = load ptr, ptr %4, align 8, !tbaa !92    ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 4
  %i.fg = icmp uge i64 %i.ez, %i.ff
  %.not106 = or i1 %i.di, %i.fg
  br i1 %.not106, label %._crit_edge, label %.lr.ph, !llvm.loop !154

.critedge:                                        ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.fh = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31
          to label %bb.an unwind label %bb.bl     ; 9 uses

bb.an:                                            ; preds = %.critedge
  %i.fi = load ptr, ptr %i.aj, align 8, !tbaa !83 ; 2 uses
  %i.fj = load <2 x ptr>, ptr %5, align 16, !tbaa !89
  store <2 x ptr> %i.fj, ptr %9, align 16, !tbaa !89
  %.not.i.i.i.i142 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i142, label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit144, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 3 uses
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i143 = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i143, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !63
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fk, align 4, !tbaa !63
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit144

bb.aq:                                            ; preds = %bb.ao
  %i.fo = atomicrmw volatile add ptr %i.fk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit144

_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit144: ; preds = %bb.an, %bb.ap, %bb.aq
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2cv12ppf_match_3d13PoseCluster3DE, i64 16), ptr %i.fh, align 8, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr null, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ar unwind label %bb.bn

end_hunk_2
begin_hunk_3_@_ZN2cv12ppf_match_3d13PPF3DDetector12clusterPosesERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS5_EEiS8_:bb.a
  br label %bb.bp

bb.bl:                                            ; preds = %.critedge
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bm:                                            ; preds = %bb.ay
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %.body.thread

.body.thread:                                     ; preds = %bb.bm, %bb.at
  %.pn107.ph = phi { ptr, i32 } [ %i.gc, %bb.at ], [ %i.hu, %bb.bm ]
  call void @_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %bb.bo

bb.bn:                                            ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEC2ERKS3_.exit144
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fp) #26
  call void @_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 48) #28
  br label %bb.bo

bb.bo:                                            ; preds = %.body.thread, %bb.bn, %bb.bl
  %.pn107.pn = phi { ptr, i32 } [ %i.hv, %bb.bn ], [ %.pn107.ph, %.body.thread ], [ %i.ht, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bw

bb.bp:                                            ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit157, %._crit_edge
  %i.hw = load ptr, ptr %i.aj, align 8, !tbaa !83 ; 8 uses
  %.not.i.i158 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i158, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit162, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 4 uses
  %i.hy = load atomic i64, ptr %i.hx acquire, align 8 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 4294967297
  %i.ia = trunc i64 %i.hy to i32                  ; 2 uses
  br i1 %i.hz, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.hx, align 8, !tbaa !85
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  store i32 0, ptr %i.ib, align 4, !tbaa !86
  %i.ic = load ptr, ptr %i.hw, align 8, !tbaa !20
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #26, !inline_history !1
  %i.if = load ptr, ptr %i.hw, align 8, !tbaa !20
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #26, !inline_history !1
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit162

bb.bs:                                            ; preds = %bb.bq
  %i.ii = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i159 = icmp eq i8 %i.ii, 0
  br i1 %.not.i.i.i159, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ij = add nsw i32 %i.ia, -1
  store i32 %i.ij, ptr %i.hx, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160

bb.bu:                                            ; preds = %bb.bs
  %i.ik = atomicrmw volatile add ptr %i.hx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i161 = phi i32 [ %i.ia, %bb.bt ], [ %i.ik, %bb.bu ]
  %i.il = icmp eq i32 %.0.i.i.i.i161, 1
  br i1 %i.il, label %bb.bv, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit162, !prof !87

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #26
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit162

_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit162: ; preds = %bb.bp, %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i160, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge305, label %bb.n, !llvm.loop !156

bb.bw:                                            ; preds = %bb.bo, %bb.ag
  %.pn110.pn = phi { ptr, i32 } [ %i.ei, %bb.ag ], [ %.pn107.pn, %bb.bo ]
  call void @_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit.split-lp285.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEEPFiRKS6_SD_EEvT_SG_T0_.exit: ; preds = %.noexc127, %.noexc126, %._crit_edge305, %bb.m
  %i.im = load ptr, ptr %i.at, align 8, !tbaa !91
  %i.in = load ptr, ptr %4, align 8, !tbaa !92
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip                    ; 2 uses
  %i.ir = ashr exact i64 %i.iq, 4                 ; 3 uses
  %i.is = load ptr, ptr %i.b, align 8, !tbaa !80  ; 3 uses
  %i.it = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = ashr exact i64 %i.iw, 4                 ; 3 uses
  %i.iy = icmp ugt i64 %i.ir, %i.ix
  br i1 %i.iy, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEEPFiRKS6_SD_EEvT_SG_T0_.exit
  %i.iz = sub nuw nsw i64 %i.ir, %i.ix
  invoke void @_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.iz)
          to label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE6resizeEm.exit unwind label %.loopexit.split-lp285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.by:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv3PtrINS2_12ppf_match_3d13PoseCluster3DEEESt6vectorIS6_SaIS6_EEEEPFiRKS6_SD_EEvT_SG_T0_.exit
  %i.ja = icmp ult i64 %i.ir, %i.ix
  br i1 %i.ja, label %bb.bz, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE6resizeEm.exit

bb.bz:                                            ; preds = %bb.by
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iq ; 3 uses
  %.not.i.i163 = icmp eq ptr %i.is, %i.jb
  br i1 %.not.i.i163, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE6resizeEm.exit, label %.lr.ph.i.i.i.i164

.lr.ph.i.i.i.i164:                                ; preds = %bb.bz, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i170
  %.05.i.i.i.i165 = phi ptr [ %i.jt, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i170 ], [ %i.jb, %bb.bz ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i165, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !83 ; 8 uses
  %.not.i.i.i.i.i.i.i166 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i.i.i.i.i166, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i170, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i164
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 4 uses
  %i.jf = load atomic i64, ptr %i.je acquire, align 8 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 4294967297
  %i.jh = trunc i64 %i.jf to i32                  ; 2 uses
  br i1 %i.jg, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.je, align 8, !tbaa !85
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  store i32 0, ptr %i.ji, align 4, !tbaa !86
  %i.jj = load ptr, ptr %i.jd, align 8, !tbaa !20
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #26, !inline_history !157
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !20
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #26, !inline_history !157
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i170

bb.cc:                                            ; preds = %bb.ca
  %i.jp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i167 = icmp eq i8 %i.jp, 0
  br i1 %.not.i.i.i.i.i.i.i.i167, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jq = add nsw i32 %i.jh, -1
  store i32 %i.jq, ptr %i.je, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i168

bb.ce:                                            ; preds = %bb.cc
  %i.jr = atomicrmw volatile add ptr %i.je, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i168

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i168: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i.i.i.i.i.i169 = phi i32 [ %i.jh, %bb.cd ], [ %i.jr, %bb.ce ]
  %i.js = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i169, 1
  br i1 %i.js, label %bb.cf, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i170, !prof !87

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i168
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #26
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i170

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i170: ; preds = %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i168, %bb.cb, %.lr.ph.i.i.i.i164
  %i.jt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i165, i64 16 ; 2 uses
  %.not.i.i.i.i171 = icmp eq ptr %i.jt, %i.is
  br i1 %.not.i.i.i.i171, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i.i172, label %.lr.ph.i.i.i.i164, !llvm.loop !0

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i.i172: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i.i170
  store ptr %i.jb, ptr %i.b, align 8, !tbaa !80
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE6resizeEm.exit

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i.i172, %bb.bz, %bb.by, %bb.bx
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.jv = load i8, ptr %i.ju, align 8, !tbaa !38, !range !108, !noundef !109
  %i.jw = trunc nuw i8 %i.jv to i1
  %i.jx = load ptr, ptr %i.at, align 8, !tbaa !91 ; 3 uses
  %i.jy = load ptr, ptr %4, align 8, !tbaa !92    ; 5 uses
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = lshr exact i64 %i.kb, 4
  %i.kd = trunc i64 %i.kc to i32
  %i.ke = icmp sgt i32 %i.kd, 0                   ; 2 uses
  br i1 %i.jw, label %.preheader273, label %.preheader277

.preheader277:                                    ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE6resizeEm.exit
  br i1 %i.ke, label %.lr.ph324, label %.loopexit274

.lr.ph324:                                        ; preds = %.preheader277
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.kh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  br label %bb.dz

.preheader273:                                    ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE6resizeEm.exit
  br i1 %i.ke, label %.lr.ph350, label %.loopexit274

.lr.ph350:                                        ; preds = %.preheader273
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ko = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph350, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit194
  %indvars.iv405 = phi i64 [ 0, %.lr.ph350 ], [ %indvars.iv.next406, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit194 ] ; 3 uses
  %i.kt = phi ptr [ %i.jy, %.lr.ph350 ], [ %i.ti, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d13PoseCluster3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit194 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %indvars.iv405 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !95 ; 3 uses
  store ptr %i.kv, ptr %12, align 8, !tbaa !95
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !83 ; 3 uses
  store ptr %i.kx, ptr %i.kp, align 8, !tbaa !83
  %.not.i.i.i.i174 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i174, label %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 3 uses
  %i.kz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i175 = icmp eq i8 %i.kz, 0
  br i1 %.not.i.i.i.i.i175, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.la = load i32, ptr %i.ky, align 4, !tbaa !63
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.ky, align 4, !tbaa !63
  br label %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit

bb.cj:                                            ; preds = %bb.ch
  %i.lc = atomicrmw volatile add ptr %i.ky, i32 1 acq_rel, align 4 ; 0 uses
  %.pre412 = load ptr, ptr %12, align 8, !tbaa !95
  br label %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit

_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit: ; preds = %bb.cg, %bb.ci, %bb.cj
  %i.ld = phi ptr [ %i.kv, %bb.cg ], [ %i.kv, %bb.ci ], [ %.pre412, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 16 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !80 ; 3 uses
  %i.lh = load ptr, ptr %i.le, align 8, !tbaa !79 ; 3 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj                    ; 3 uses
  %.not.i.i.i.i176 = icmp eq ptr %i.lg, %i.lh
  br i1 %.not.i.i.i.i176, label %.noexc179, label %bb.ck

bb.ck:                                            ; preds = %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit
  %i.ll = icmp ugt i64 %i.lk, 9223372036854775792
  br i1 %i.ll, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i, !prof !87

.noexc.i.i:                                       ; preds = %bb.ck
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc178:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ck
  %i.lm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #31
          to label %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i..noexc179_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i..noexc179_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre413 = load ptr, ptr %i.le, align 8, !tbaa !171
  %.pre414 = load ptr, ptr %i.lf, align 8, !tbaa !171
  br label %.noexc179

.noexc179:                                        ; preds = %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i..noexc179_crit_edge, %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit
  %i.ln = phi ptr [ %i.lg, %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit ], [ %.pre414, %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i..noexc179_crit_edge ] ; 2 uses
  %i.lo = phi ptr [ %i.lh, %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit ], [ %.pre413, %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i..noexc179_crit_edge ] ; 2 uses
  %i.lp = phi ptr [ null, %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit ], [ %i.lm, %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i..noexc179_crit_edge ] ; 6 uses
  store ptr %i.lp, ptr %13, align 8, !tbaa !79
  store ptr %i.lp, ptr %i.kq, align 8, !tbaa !80
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lk
  store ptr %i.lq, ptr %i.kr, align 8, !tbaa !110
  %.not7.i.i.i.i.i = icmp eq ptr %i.lo, %i.ln
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc179, %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ma, %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.lp, %.noexc179 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.lz, %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.lo, %.noexc179 ] ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !83 ; 2 uses
  %i.lt = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !89
  store <2 x ptr> %i.lt, ptr %.09.i.i.i.i.i, align 8, !tbaa !89
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 3 uses
  %i.lv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lw = load i32, ptr %i.lu, align 4, !tbaa !63
  %i.lx = add nsw i32 %i.lw, 1
  store i32 %i.lx, ptr %i.lu, align 4, !tbaa !63
  br label %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.ly = atomicrmw volatile add ptr %i.lu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.cn, %bb.cm, %.lr.ph.i.i.i.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i177 = icmp eq ptr %i.lz, %i.ln
  br i1 %.not.i.i.i.i.i177, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !158

.loopexit.loopexit:                               ; preds = %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre415 = load ptr, ptr %13, align 8, !tbaa !79
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.noexc179
  %i.mb = phi ptr [ %i.lp, %.noexc179 ], [ %.pre415, %.loopexit.loopexit ] ; 10 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.lp, %.noexc179 ], [ %i.ma, %.loopexit.loopexit ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.kq, align 8, !tbaa !80
  %i.mc = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = lshr exact i64 %i.me, 4                 ; 5 uses
  %i.mg = trunc i64 %i.mf to i32
  %i.mh = icmp sgt i32 %i.mg, 0
  br i1 %i.mh, label %.lr.ph328.preheader, label %.preheader._crit_edge

.lr.ph328.preheader:                              ; preds = %.loopexit
  %wide.trip.count398 = and i64 %i.mf, 2147483647
  %i.mi = add nsw i64 %wide.trip.count398, -1
  %xtraiter626 = and i64 %i.mf, 3                 ; 3 uses
  %i.mj = icmp ult i64 %i.mi, 3
  br i1 %i.mj, label %.lr.ph328.epil.preheader, label %.lr.ph328.preheader.new

.lr.ph328.preheader.new:                          ; preds = %.lr.ph328.preheader
  %unroll_iter630 = and i64 %i.mf, 2147483644
  br label %.lr.ph328

.preheader._crit_edge:                            ; preds = %.loopexit
  %i.mk = load <2 x double>, ptr %11, align 16, !tbaa !36
  %.pre418 = load double, ptr %i.ko, align 16, !tbaa !36
  %i.ml = load <2 x double>, ptr %10, align 16, !tbaa !36
  %i.mm = load <2 x double>, ptr %i.km, align 16, !tbaa !36
  br label %._crit_edge340

.lr.ph339.unr-lcssa:                              ; preds = %.lr.ph328
  %lcmp.mod627.not = icmp eq i64 %xtraiter626, 0
  br i1 %lcmp.mod627.not, label %.lr.ph339, label %.lr.ph328.epil.preheader

.lr.ph328.epil.preheader:                         ; preds = %.lr.ph339.unr-lcssa, %.lr.ph328.preheader
  %indvars.iv395.epil.init = phi i64 [ 0, %.lr.ph328.preheader ], [ %indvars.iv.next396.3, %.lr.ph339.unr-lcssa ]
  %.064325.epil.init = phi i64 [ 0, %.lr.ph328.preheader ], [ %i.ns, %.lr.ph339.unr-lcssa ]
  %lcmp.mod629 = icmp ne i64 %xtraiter626, 0
  call void @llvm.assume(i1 %lcmp.mod629)
  br label %.lr.ph328.epil

.lr.ph328.epil:                                   ; preds = %.lr.ph328.epil, %.lr.ph328.epil.preheader
  %indvars.iv395.epil = phi i64 [ %indvars.iv395.epil.init, %.lr.ph328.epil.preheader ], [ %indvars.iv.next396.epil, %.lr.ph328.epil ] ; 2 uses
  %.064325.epil = phi i64 [ %.064325.epil.init, %.lr.ph328.epil.preheader ], [ %i.mr, %.lr.ph328.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph328.epil.preheader ], [ %epil.iter.next, %.lr.ph328.epil ]
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %indvars.iv395.epil
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !98
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !99
  %i.mr = add i64 %i.mq, %.064325.epil            ; 2 uses
  %indvars.iv.next396.epil = add nuw nsw i64 %indvars.iv395.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter626
  br i1 %epil.iter.cmp.not, label %.lr.ph339, label %.lr.ph328.epil, !llvm.loop !159

.lr.ph339:                                        ; preds = %.lr.ph328.epil, %.lr.ph339.unr-lcssa
  %.lcssa582 = phi i64 [ %i.ns, %.lr.ph339.unr-lcssa ], [ %i.mr, %.lr.ph328.epil ]
  %i.ms = uitofp i64 %.lcssa582 to double
  %.promoted336 = load double, ptr %i.ko, align 16
  %i.mt = load <2 x double>, ptr %11, align 16
  %i.mu = load <2 x double>, ptr %i.km, align 16
  %i.mv = load <2 x double>, ptr %10, align 16
  %wide.trip.count403 = and i64 %i.mf, 2147483647
  br label %bb.co

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph328:                                        ; preds = %.lr.ph328, %.lr.ph328.preheader.new
  %indvars.iv395 = phi i64 [ 0, %.lr.ph328.preheader.new ], [ %indvars.iv.next396.3, %.lr.ph328 ] ; 5 uses
  %.064325 = phi i64 [ 0, %.lr.ph328.preheader.new ], [ %i.ns, %.lr.ph328 ]
  %niter631 = phi i64 [ 0, %.lr.ph328.preheader.new ], [ %niter631.next.3, %.lr.ph328 ]
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %indvars.iv395
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !98
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !99
  %i.na = add i64 %i.mz, %.064325
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %indvars.iv395
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !98
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !99
  %i.ng = add i64 %i.nf, %i.na
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %indvars.iv395
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 32
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !98
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !99
  %i.nm = add i64 %i.nl, %i.ng
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %indvars.iv395
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !98
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 32
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !99
  %i.ns = add i64 %i.nr, %i.nm                    ; 3 uses
  %indvars.iv.next396.3 = add nuw nsw i64 %indvars.iv395, 4 ; 2 uses
  %niter631.next.3 = add i64 %niter631, 4         ; 2 uses
  %niter631.ncmp.3 = icmp eq i64 %niter631.next.3, %unroll_iter630
  br i1 %niter631.ncmp.3, label %.lr.ph339.unr-lcssa, label %.lr.ph328, !llvm.loop !160

bb.co:                                            ; preds = %.lr.ph339, %bb.co
  %indvars.iv400 = phi i64 [ 0, %.lr.ph339 ], [ %indvars.iv.next401, %bb.co ] ; 2 uses
  %.062337 = phi double [ 0.000000e+00, %.lr.ph339 ], [ %i.ov, %bb.co ]
  %i.nt = phi double [ %.promoted336, %.lr.ph339 ], [ %i.ou, %bb.co ]
  %i.nu = phi <2 x double> [ %i.mv, %.lr.ph339 ], [ %i.ol, %bb.co ]
  %i.nv = phi <2 x double> [ %i.mu, %.lr.ph339 ], [ %i.om, %bb.co ]
  %i.nw = phi <2 x double> [ %i.mt, %.lr.ph339 ], [ %i.ot, %bb.co ]
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %indvars.iv400
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !98 ; 5 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !99
  %i.ob = uitofp i64 %i.oa to double
  %i.oc = fdiv double %i.ob, %i.ms                ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 200
  %i.oe = load <2 x double>, ptr %i.od, align 8, !tbaa !36, !noalias !176
  %i.of = insertelement <2 x double> poison, double %i.oc, i64 0
  %i.og = shufflevector <2 x double> %i.of, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.oh = fmul <2 x double> %i.oe, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ny, i64 216
  %i.oj = load <2 x double>, ptr %i.oi, align 8, !tbaa !36, !noalias !176
  %i.ok = fmul <2 x double> %i.og, %i.oj
  %i.ol = fadd <2 x double> %i.oh, %i.nu          ; 2 uses
  %i.om = fadd <2 x double> %i.ok, %i.nv          ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ny, i64 176
  %i.oo = load <2 x double>, ptr %i.on, align 8, !tbaa !36, !noalias !177
  %i.op = fmul <2 x double> %i.og, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ny, i64 192
  %i.or = load double, ptr %i.oq, align 8, !tbaa !36, !noalias !177
  %i.os = fmul double %i.oc, %i.or
  %i.ot = fadd <2 x double> %i.op, %i.nw          ; 2 uses
  %i.ou = fadd double %i.os, %i.nt                ; 2 uses
  %i.ov = fadd double %.062337, %i.oc             ; 2 uses
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 1 ; 2 uses
  %exitcond404.not = icmp eq i64 %indvars.iv.next401, %wide.trip.count403
  br i1 %exitcond404.not, label %._crit_edge340, label %bb.co, !llvm.loop !165

._crit_edge340:                                   ; preds = %bb.co, %.preheader._crit_edge
  %i.ow = phi double [ %.pre418, %.preheader._crit_edge ], [ %i.ou, %bb.co ]
  %.062.lcssa = phi double [ 0.000000e+00, %.preheader._crit_edge ], [ %i.ov, %bb.co ]
  %i.ox = phi <2 x double> [ %i.ml, %.preheader._crit_edge ], [ %i.ol, %bb.co ]
  %i.oy = phi <2 x double> [ %i.mm, %.preheader._crit_edge ], [ %i.om, %bb.co ]
  %i.oz = phi <2 x double> [ %i.mk, %.preheader._crit_edge ], [ %i.ot, %bb.co ]
  %i.pa = fdiv double 1.000000e+00, %.062.lcssa   ; 2 uses
  %i.pb = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pc = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.pd = fmul <2 x double> %i.pc, %i.oz
  store <2 x double> %i.pd, ptr %11, align 16, !tbaa !36
  %i.pe = fmul double %i.pa, %i.ow
  store double %i.pe, ptr %i.ko, align 16, !tbaa !36
  %i.pf = fmul <2 x double> %i.pc, %i.ox          ; 3 uses
  %23 = extractelement <2 x double> %i.pf, i64 0  ; 3 uses
  store double %23, ptr %10, align 16, !tbaa !36
  %i.pg = extractelement <2 x double> %i.pf, i64 1 ; 3 uses
  store double %i.pg, ptr %22, align 8, !tbaa !36
  %i.ph = fmul <2 x double> %i.pc, %i.oy          ; 3 uses
  %i.pi = extractelement <2 x double> %i.ph, i64 0 ; 3 uses
  store double %i.pi, ptr %i.km, align 16, !tbaa !36
  %i.pj = extractelement <2 x double> %i.ph, i64 1 ; 3 uses
  store double %i.pj, ptr %i.kn, align 8, !tbaa !36
  %24 = call double @llvm.fmuladd.f64(double %23, double %23, double 0.000000e+00)
  %i.pk = call double @llvm.fmuladd.f64(double %i.pg, double %i.pg, double %24)
  %i.pl = call double @llvm.fmuladd.f64(double %i.pi, double %i.pi, double %i.pk)
  %i.pm = call double @llvm.fmuladd.f64(double %i.pj, double %i.pj, double %i.pl)
  %sqrt = call double @llvm.sqrt.f64(double %i.pm) ; 2 uses
  %i.pn = fcmp ogt double %sqrt, f0x3E80000000000000
  br i1 %i.pn, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %._crit_edge340
  %i.po = fdiv double 1.000000e+00, %sqrt
  %i.pp = insertelement <2 x double> poison, double %i.po, i64 0
  %i.pq = shufflevector <2 x double> %i.pp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pr = fmul <2 x double> %i.pf, %i.pq
  store <2 x double> %i.pr, ptr %10, align 16, !tbaa !36
  %i.ps = fmul <2 x double> %i.ph, %i.pq
  store <2 x double> %i.ps, ptr %i.km, align 16, !tbaa !36
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cr
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cr:                                            ; preds = %bb.cp, %._crit_edge340
  %i.pu = load ptr, ptr %i.mb, align 8, !tbaa !98
  invoke void @_ZN2cv12ppf_match_3d6Pose3D14updatePoseQuatERNS_3VecIdLi4EEERNS2_IdLi3EEE(ptr noundef nonnull align 8 dereferenceable(232) %i.pu, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.cs unwind label %bb.cq

bb.cs:                                            ; preds = %bb.cr
  %i.pv = load ptr, ptr %12, align 8, !tbaa !95
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !104
  %i.py = load ptr, ptr %i.mb, align 8, !tbaa !98
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 32
  store i64 %i.px, ptr %i.pz, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.qa = load ptr, ptr %i.mb, align 8, !tbaa !98
  invoke void @_ZN2cv12ppf_match_3d6Pose3D5cloneEv(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(232) %i.qa)
          to label %bb.ct unwind label %bb.dx

bb.ct:                                            ; preds = %bb.cs
  %i.qb = load ptr, ptr %3, align 8, !tbaa !79
  %i.qc = getelementptr inbounds nuw [16 x i8], ptr %i.qb, i64 %indvars.iv405 ; 2 uses
  %i.qd = load ptr, ptr %14, align 8, !tbaa !98
  store ptr %i.qd, ptr %i.qc, align 8, !tbaa !98
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 8 ; 3 uses
  %i.qf = load ptr, ptr %i.ks, align 8, !tbaa !83 ; 5 uses
  %i.qg = load ptr, ptr %i.qe, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i.i180 = icmp eq ptr %i.qf, %i.qg
  br i1 %.not.i.i.i.i180, label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEaSERKS3_.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.not7.i.i.i.i181 = icmp eq ptr %i.qf, null
  br i1 %.not7.i.i.i.i181, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 3 uses
  %i.qi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i182 = icmp eq i8 %i.qi, 0
  br i1 %.not.i.i.i.i.i182, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qj = load i32, ptr %i.qh, align 4, !tbaa !63
  %i.qk = add nsw i32 %i.qj, 1
  store i32 %i.qk, ptr %i.qh, align 4, !tbaa !63
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.ql = atomicrmw volatile add ptr %i.qh, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.qe, align 8, !tbaa !83
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.cx, %bb.cw, %bb.cu
  %i.qm = phi ptr [ %i.qg, %bb.cu ], [ %i.qg, %bb.cw ], [ %.pr.pre.i.i.i.i, %bb.cx ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.qm, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8 ; 4 uses
  %i.qo = load atomic i64, ptr %i.qn acquire, align 8 ; 2 uses
  %i.qp = icmp eq i64 %i.qo, 4294967297
  %i.qq = trunc i64 %i.qo to i32                  ; 2 uses
  br i1 %i.qp, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.qn, align 8, !tbaa !85
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  store i32 0, ptr %i.qr, align 4, !tbaa !86
  %i.qs = load ptr, ptr %i.qm, align 8, !tbaa !20
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(16) %i.qm) #26, !inline_history !3
  %i.qv = load ptr, ptr %i.qm, align 8, !tbaa !20
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(16) %i.qm) #26, !inline_history !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.qy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i9.i.i.i.i = icmp eq i8 %i.qy, 0
  br i1 %.not.i9.i.i.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qz = add nsw i32 %i.qq, -1
  store i32 %i.qz, ptr %i.qn, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.dc:                                            ; preds = %bb.da
  %i.ra = atomicrmw volatile add ptr %i.qn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i.i.i = phi i32 [ %i.qq, %bb.db ], [ %i.ra, %bb.dc ]
  %i.rb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.rb, label %bb.dd, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !87

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qm) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cz, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.qf, ptr %i.qe, align 8, !tbaa !83
  %.pr = load ptr, ptr %i.ks, align 8, !tbaa !83
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEaSERKS3_.exit

_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEaSERKS3_.exit: ; preds = %bb.ct, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %i.rc = phi ptr [ %i.qf, %bb.ct ], [ %.pr, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ] ; 8 uses
  %.not.i.i183 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i183, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit187, label %bb.de

bb.de:                                            ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEaSERKS3_.exit
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 4 uses
  %i.re = load atomic i64, ptr %i.rd acquire, align 8 ; 2 uses
  %i.rf = icmp eq i64 %i.re, 4294967297
  %i.rg = trunc i64 %i.re to i32                  ; 2 uses
  br i1 %i.rf, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.rd, align 8, !tbaa !85
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store i32 0, ptr %i.rh, align 4, !tbaa !86
  %i.ri = load ptr, ptr %i.rc, align 8, !tbaa !20
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #26, !inline_history !1
  %i.rl = load ptr, ptr %i.rc, align 8, !tbaa !20
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #26, !inline_history !1
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit187

bb.dg:                                            ; preds = %bb.de
  %i.ro = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i184 = icmp eq i8 %i.ro, 0
  br i1 %.not.i.i.i184, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rp = add nsw i32 %i.rg, -1
  store i32 %i.rp, ptr %i.rd, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i185

bb.di:                                            ; preds = %bb.dg
  %i.rq = atomicrmw volatile add ptr %i.rd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i185

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i185: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i186 = phi i32 [ %i.rg, %bb.dh ], [ %i.rq, %bb.di ]
  %i.rr = icmp eq i32 %.0.i.i.i.i186, 1
  br i1 %i.rr, label %bb.dj, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit187, !prof !87

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i185
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #26
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit187

_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit187: ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEaSERKS3_.exit, %bb.df, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i185, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.rs = load ptr, ptr %13, align 8, !tbaa !79   ; 3 uses
  %i.rt = load ptr, ptr %i.kq, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.rs, %i.rt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit187, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.sl, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i ], [ %i.rs, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit187 ] ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !83 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.i.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 4 uses
  %i.rx = load atomic i64, ptr %i.rw acquire, align 8 ; 2 uses
  %i.ry = icmp eq i64 %i.rx, 4294967297
  %i.rz = trunc i64 %i.rx to i32                  ; 2 uses
  br i1 %i.ry, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 0, ptr %i.rw, align 8, !tbaa !85
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  store i32 0, ptr %i.sa, align 4, !tbaa !86
  %i.sb = load ptr, ptr %i.rv, align 8, !tbaa !20
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
end_hunk_3
begin_hunk_4_@_ZN2cv12ppf_match_3d13PPF3DDetector12clusterPosesERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS5_EEiS8_:bb.a
  br label %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit197

bb.ec:                                            ; preds = %bb.ea
  %i.tz = atomicrmw volatile add ptr %i.tv, i32 1 acq_rel, align 4 ; 0 uses
  %.pre408 = load ptr, ptr %17, align 8, !tbaa !95
  br label %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit197

_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit197: ; preds = %bb.dz, %bb.eb, %bb.ec
  %i.ua = phi ptr [ %i.ts, %bb.dz ], [ %i.ts, %bb.eb ], [ %.pre408, %bb.ec ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 16 ; 2 uses
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !80 ; 3 uses
  %i.ue = load ptr, ptr %i.ub, align 8, !tbaa !79 ; 3 uses
  %i.uf = ptrtoint ptr %i.ud to i64
  %i.ug = ptrtoint ptr %i.ue to i64
  %i.uh = sub i64 %i.uf, %i.ug                    ; 3 uses
  %.not.i.i.i.i198 = icmp eq ptr %i.ud, %i.ue
  br i1 %.not.i.i.i.i198, label %.noexc211, label %bb.ed

bb.ed:                                            ; preds = %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit197
  %i.ui = icmp ugt i64 %i.uh, 9223372036854775792
  br i1 %i.ui, label %.noexc.i.i209, label %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i199, !prof !87

.noexc.i.i209:                                    ; preds = %bb.ed
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc210 unwind label %.loopexit.split-lp280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc210:                                        ; preds = %.noexc.i.i209
  unreachable

_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i199: ; preds = %bb.ed
  %i.uj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uh) #31
          to label %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i199..noexc211_crit_edge unwind label %.loopexit.split-lp280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i199..noexc211_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i199
  %.pre409 = load ptr, ptr %i.ub, align 8, !tbaa !171
  %.pre410 = load ptr, ptr %i.uc, align 8, !tbaa !171
  br label %.noexc211

.noexc211:                                        ; preds = %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i199..noexc211_crit_edge, %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit197
  %i.uk = phi ptr [ %i.ud, %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit197 ], [ %.pre410, %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i199..noexc211_crit_edge ] ; 2 uses
  %i.ul = phi ptr [ %i.ue, %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit197 ], [ %.pre409, %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i199..noexc211_crit_edge ] ; 2 uses
  %i.um = phi ptr [ null, %_ZN2cv3PtrINS_12ppf_match_3d13PoseCluster3DEEC2ERKS3_.exit197 ], [ %i.uj, %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i199..noexc211_crit_edge ] ; 6 uses
  store ptr %i.um, ptr %18, align 8, !tbaa !79
  store ptr %i.um, ptr %i.kj, align 8, !tbaa !80
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.uh
  store ptr %i.un, ptr %i.kk, align 8, !tbaa !110
  %.not7.i.i.i.i.i200 = icmp eq ptr %i.ul, %i.uk
  br i1 %.not7.i.i.i.i.i200, label %.loopexit276, label %.lr.ph.i.i.i.i.i201

.lr.ph.i.i.i.i.i201:                              ; preds = %.noexc211, %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i206
  %.09.i.i.i.i.i202 = phi ptr [ %i.ux, %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i206 ], [ %i.um, %.noexc211 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i203 = phi ptr [ %i.uw, %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i206 ], [ %i.ul, %.noexc211 ] ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i203, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !83 ; 2 uses
  %i.uq = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i203, align 8, !tbaa !89
  store <2 x ptr> %i.uq, ptr %.09.i.i.i.i.i202, align 8, !tbaa !89
  %.not.i.i.i.i.i.i.i.i.i.i204 = icmp eq ptr %i.up, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i204, label %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i206, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i.i201
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 8 ; 3 uses
  %i.us = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i.i.i.i205 = icmp eq i8 %i.us, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i205, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ut = load i32, ptr %i.ur, align 4, !tbaa !63
  %i.uu = add nsw i32 %i.ut, 1
  store i32 %i.uu, ptr %i.ur, align 4, !tbaa !63
  br label %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i206

bb.eg:                                            ; preds = %bb.ee
  %i.uv = atomicrmw volatile add ptr %i.ur, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i206

_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i206: ; preds = %bb.eg, %bb.ef, %.lr.ph.i.i.i.i.i201
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i203, i64 16 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i202, i64 16 ; 2 uses
  %.not.i.i.i.i.i207 = icmp eq ptr %i.uw, %i.uk
  br i1 %.not.i.i.i.i.i207, label %.loopexit276.loopexit, label %.lr.ph.i.i.i.i.i201, !llvm.loop !158

.loopexit276.loopexit:                            ; preds = %_ZSt10_ConstructIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i206
  %.pre411 = load ptr, ptr %18, align 8, !tbaa !79
  br label %.loopexit276

.loopexit276:                                     ; preds = %.loopexit276.loopexit, %.noexc211
  %i.uy = phi ptr [ %i.um, %.noexc211 ], [ %.pre411, %.loopexit276.loopexit ] ; 7 uses
  %.0.lcssa.i.i.i.i.i208 = phi ptr [ %i.um, %.noexc211 ], [ %i.ux, %.loopexit276.loopexit ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i208, ptr %i.kj, align 8, !tbaa !80
  %i.uz = ptrtoint ptr %.0.lcssa.i.i.i.i.i208 to i64
  %i.va = ptrtoint ptr %i.uy to i64
  %i.vb = sub i64 %i.uz, %i.va                    ; 3 uses
  %i.vc = lshr exact i64 %i.vb, 4                 ; 3 uses
  %i.vd = trunc i64 %i.vc to i32                  ; 2 uses
  %i.ve = load <2 x double>, ptr %15, align 16    ; 3 uses
  %i.vf = load <2 x double>, ptr %i.kf, align 16  ; 3 uses
  %i.vg = load <2 x double>, ptr %16, align 16    ; 3 uses
  %.promoted311 = load double, ptr %i.kh, align 16 ; 3 uses
  %i.vh = icmp sgt i32 %i.vd, 0
  br i1 %i.vh, label %.lr.ph314.preheader, label %._crit_edge315

.lr.ph314.preheader:                              ; preds = %.loopexit276
  %i.vi = and i64 %i.vb, 34359738352
  %i.vj = icmp eq i64 %i.vi, 16
  br i1 %i.vj, label %.lr.ph314.epil.preheader, label %.lr.ph314.preheader.new

.lr.ph314.preheader.new:                          ; preds = %.lr.ph314.preheader
  %unroll_iter = and i64 %i.vc, 2147483646
  br label %.lr.ph314

.loopexit.split-lp280.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEE8allocateEmPKv.exit.i.i.i.i199, %.noexc.i.i209
  %lpad.loopexit.split-lp591 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp280

.lr.ph314:                                        ; preds = %.lr.ph314, %.lr.ph314.preheader.new
  %indvars.iv387 = phi i64 [ 0, %.lr.ph314.preheader.new ], [ %indvars.iv.next388.1, %.lr.ph314 ] ; 3 uses
  %i.vk = phi double [ %.promoted311, %.lr.ph314.preheader.new ], [ %i.wq, %.lr.ph314 ]
  %i.vl = phi <2 x double> [ %i.ve, %.lr.ph314.preheader.new ], [ %i.wh, %.lr.ph314 ]
  %i.vm = phi <2 x double> [ %i.vf, %.lr.ph314.preheader.new ], [ %i.wk, %.lr.ph314 ]
  %i.vn = phi <2 x double> [ %i.vg, %.lr.ph314.preheader.new ], [ %i.wn, %.lr.ph314 ]
  %niter = phi i64 [ 0, %.lr.ph314.preheader.new ], [ %niter.next.1, %.lr.ph314 ]
  %i.vo = getelementptr inbounds nuw [16 x i8], ptr %i.uy, i64 %indvars.iv387
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !98 ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 200
  %i.vr = load <2 x double>, ptr %i.vq, align 8, !tbaa !36
  %i.vs = fadd <2 x double> %i.vl, %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 216
  %i.vu = load <2 x double>, ptr %i.vt, align 8, !tbaa !36
  %i.vv = fadd <2 x double> %i.vm, %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vp, i64 176
  %i.vx = load <2 x double>, ptr %i.vw, align 8, !tbaa !36
  %i.vy = fadd <2 x double> %i.vn, %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vp, i64 192
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !36
  %i.wb = fadd double %i.vk, %i.wa
  %i.wc = getelementptr inbounds nuw [16 x i8], ptr %i.uy, i64 %indvars.iv387
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !98 ; 4 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 200
  %i.wg = load <2 x double>, ptr %i.wf, align 8, !tbaa !36
  %i.wh = fadd <2 x double> %i.vs, %i.wg          ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.we, i64 216
  %i.wj = load <2 x double>, ptr %i.wi, align 8, !tbaa !36
  %i.wk = fadd <2 x double> %i.vv, %i.wj          ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.we, i64 176
  %i.wm = load <2 x double>, ptr %i.wl, align 8, !tbaa !36
  %i.wn = fadd <2 x double> %i.vy, %i.wm          ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.we, i64 192
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !36
  %i.wq = fadd double %i.wb, %i.wp                ; 3 uses
  %indvars.iv.next388.1 = add nuw nsw i64 %indvars.iv387, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge315.loopexit.unr-lcssa, label %.lr.ph314, !llvm.loop !167

._crit_edge315.loopexit.unr-lcssa:                ; preds = %.lr.ph314
  %i.wr = and i64 %i.vb, 16
  %lcmp.mod.not = icmp eq i64 %i.wr, 0
  br i1 %lcmp.mod.not, label %._crit_edge315, label %.lr.ph314.epil.preheader

.lr.ph314.epil.preheader:                         ; preds = %._crit_edge315.loopexit.unr-lcssa, %.lr.ph314.preheader
  %indvars.iv387.epil.init = phi i64 [ 0, %.lr.ph314.preheader ], [ %indvars.iv.next388.1, %._crit_edge315.loopexit.unr-lcssa ]
  %.epil.init = phi double [ %.promoted311, %.lr.ph314.preheader ], [ %i.wq, %._crit_edge315.loopexit.unr-lcssa ]
  %.epil.init616 = phi <2 x double> [ %i.ve, %.lr.ph314.preheader ], [ %i.wh, %._crit_edge315.loopexit.unr-lcssa ]
  %.epil.init618 = phi <2 x double> [ %i.vf, %.lr.ph314.preheader ], [ %i.wk, %._crit_edge315.loopexit.unr-lcssa ]
  %.epil.init620 = phi <2 x double> [ %i.vg, %.lr.ph314.preheader ], [ %i.wn, %._crit_edge315.loopexit.unr-lcssa ]
  %lcmp.mod625 = trunc i64 %i.vc to i1
  call void @llvm.assume(i1 %lcmp.mod625)
  %i.ws = getelementptr inbounds nuw [16 x i8], ptr %i.uy, i64 %indvars.iv387.epil.init
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !98 ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 200
  %i.wv = load <2 x double>, ptr %i.wu, align 8, !tbaa !36
  %i.ww = fadd <2 x double> %.epil.init616, %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 216
  %i.wy = load <2 x double>, ptr %i.wx, align 8, !tbaa !36
  %i.wz = fadd <2 x double> %.epil.init618, %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wt, i64 176
  %i.xb = load <2 x double>, ptr %i.xa, align 8, !tbaa !36
  %i.xc = fadd <2 x double> %.epil.init620, %i.xb
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wt, i64 192
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !36
  %i.xf = fadd double %.epil.init, %i.xe
  br label %._crit_edge315

._crit_edge315:                                   ; preds = %.lr.ph314.epil.preheader, %._crit_edge315.loopexit.unr-lcssa, %.loopexit276
  %i.xg = phi double [ %.promoted311, %.loopexit276 ], [ %i.wq, %._crit_edge315.loopexit.unr-lcssa ], [ %i.xf, %.lr.ph314.epil.preheader ]
  %i.xh = phi <2 x double> [ %i.ve, %.loopexit276 ], [ %i.wh, %._crit_edge315.loopexit.unr-lcssa ], [ %i.ww, %.lr.ph314.epil.preheader ]
  %i.xi = phi <2 x double> [ %i.vf, %.loopexit276 ], [ %i.wk, %._crit_edge315.loopexit.unr-lcssa ], [ %i.wz, %.lr.ph314.epil.preheader ]
  %i.xj = phi <2 x double> [ %i.vg, %.loopexit276 ], [ %i.wn, %._crit_edge315.loopexit.unr-lcssa ], [ %i.xc, %.lr.ph314.epil.preheader ]
  %i.xk = sitofp i32 %i.vd to double
  %i.xl = fdiv double 1.000000e+00, %i.xk         ; 2 uses
  %i.xm = insertelement <2 x double> poison, double %i.xl, i64 0
  %i.xn = shufflevector <2 x double> %i.xm, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.xo = fmul <2 x double> %i.xn, %i.xj
  store <2 x double> %i.xo, ptr %16, align 16, !tbaa !36
  %i.xp = fmul double %i.xl, %i.xg
  store double %i.xp, ptr %i.kh, align 16, !tbaa !36
  %i.xq = fmul <2 x double> %i.xn, %i.xh          ; 3 uses
  %25 = extractelement <2 x double> %i.xq, i64 0  ; 3 uses
  store double %25, ptr %15, align 16, !tbaa !36
  %i.xr = extractelement <2 x double> %i.xq, i64 1 ; 3 uses
  store double %i.xr, ptr %21, align 8, !tbaa !36
  %i.xs = fmul <2 x double> %i.xn, %i.xi          ; 3 uses
  %i.xt = extractelement <2 x double> %i.xs, i64 0 ; 3 uses
  store double %i.xt, ptr %i.kf, align 16, !tbaa !36
  %i.xu = extractelement <2 x double> %i.xs, i64 1 ; 3 uses
  store double %i.xu, ptr %i.kg, align 8, !tbaa !36
  %26 = call double @llvm.fmuladd.f64(double %25, double %25, double 0.000000e+00)
  %i.xv = call double @llvm.fmuladd.f64(double %i.xr, double %i.xr, double %26)
  %i.xw = call double @llvm.fmuladd.f64(double %i.xt, double %i.xt, double %i.xv)
  %i.xx = call double @llvm.fmuladd.f64(double %i.xu, double %i.xu, double %i.xw)
  %sqrt272 = call double @llvm.sqrt.f64(double %i.xx) ; 2 uses
  %i.xy = fcmp ogt double %sqrt272, f0x3E80000000000000
  br i1 %i.xy, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %._crit_edge315
  %i.xz = fdiv double 1.000000e+00, %sqrt272
  %i.ya = insertelement <2 x double> poison, double %i.xz, i64 0
  %i.yb = shufflevector <2 x double> %i.ya, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yc = fmul <2 x double> %i.xq, %i.yb
  store <2 x double> %i.yc, ptr %15, align 16, !tbaa !36
  %i.yd = fmul <2 x double> %i.xs, %i.yb
  store <2 x double> %i.yd, ptr %i.kf, align 16, !tbaa !36
  br label %bb.ej

bb.ei:                                            ; preds = %bb.ej
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.ej:                                            ; preds = %bb.eh, %._crit_edge315
  %i.yf = load ptr, ptr %i.uy, align 8, !tbaa !98
  invoke void @_ZN2cv12ppf_match_3d6Pose3D14updatePoseQuatERNS_3VecIdLi4EEERNS2_IdLi3EEE(ptr noundef nonnull align 8 dereferenceable(232) %i.yf, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ek unwind label %bb.ei

bb.ek:                                            ; preds = %bb.ej
  %i.yg = load ptr, ptr %17, align 8, !tbaa !95
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 32
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !104
  %i.yj = load ptr, ptr %i.uy, align 8, !tbaa !98
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 32
  store i64 %i.yi, ptr %i.yk, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.yl = load ptr, ptr %i.uy, align 8, !tbaa !98
  invoke void @_ZN2cv12ppf_match_3d6Pose3D5cloneEv(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(232) %i.yl)
          to label %bb.el unwind label %bb.fp

bb.el:                                            ; preds = %bb.ek
  %i.ym = load ptr, ptr %3, align 8, !tbaa !79
  %i.yn = getelementptr inbounds nuw [16 x i8], ptr %i.ym, i64 %indvars.iv392 ; 2 uses
  %i.yo = load ptr, ptr %19, align 8, !tbaa !98
  store ptr %i.yo, ptr %i.yn, align 8, !tbaa !98
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 8 ; 3 uses
  %i.yq = load ptr, ptr %i.kl, align 8, !tbaa !83 ; 5 uses
  %i.yr = load ptr, ptr %i.yp, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i.i213 = icmp eq ptr %i.yq, %i.yr
  br i1 %.not.i.i.i.i213, label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEaSERKS3_.exit223, label %bb.em

bb.em:                                            ; preds = %bb.el
  %.not7.i.i.i.i214 = icmp eq ptr %i.yq, null
  br i1 %.not7.i.i.i.i214, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i216, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 8 ; 3 uses
  %i.yt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i215 = icmp eq i8 %i.yt, 0
  br i1 %.not.i.i.i.i.i215, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.yu = load i32, ptr %i.ys, align 4, !tbaa !63
  %i.yv = add nsw i32 %i.yu, 1
  store i32 %i.yv, ptr %i.ys, align 4, !tbaa !63
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i216

bb.ep:                                            ; preds = %bb.en
  %i.yw = atomicrmw volatile add ptr %i.ys, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i222 = load ptr, ptr %i.yp, align 8, !tbaa !83
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i216

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i216: ; preds = %bb.ep, %bb.eo, %bb.em
  %i.yx = phi ptr [ %i.yr, %bb.em ], [ %i.yr, %bb.eo ], [ %.pr.pre.i.i.i.i222, %bb.ep ] ; 8 uses
  %.not8.i.i.i.i217 = icmp eq ptr %i.yx, null
  br i1 %.not8.i.i.i.i217, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i221, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i216
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 8 ; 4 uses
  %i.yz = load atomic i64, ptr %i.yy acquire, align 8 ; 2 uses
  %i.za = icmp eq i64 %i.yz, 4294967297
  %i.zb = trunc i64 %i.yz to i32                  ; 2 uses
  br i1 %i.za, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 0, ptr %i.yy, align 8, !tbaa !85
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yx, i64 12
  store i32 0, ptr %i.zc, align 4, !tbaa !86
  %i.zd = load ptr, ptr %i.yx, align 8, !tbaa !20
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  %i.zf = load ptr, ptr %i.ze, align 8
  call void %i.zf(ptr noundef nonnull align 8 dereferenceable(16) %i.yx) #26, !inline_history !3
  %i.zg = load ptr, ptr %i.yx, align 8, !tbaa !20
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 24
  %i.zi = load ptr, ptr %i.zh, align 8
  call void %i.zi(ptr noundef nonnull align 8 dereferenceable(16) %i.yx) #26, !inline_history !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i221

bb.es:                                            ; preds = %bb.eq
  %i.zj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i9.i.i.i.i218 = icmp eq i8 %i.zj, 0
  br i1 %.not.i9.i.i.i.i218, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.zk = add nsw i32 %i.zb, -1
  store i32 %i.zk, ptr %i.yy, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i219

bb.eu:                                            ; preds = %bb.es
  %i.zl = atomicrmw volatile add ptr %i.yy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i219

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i219: ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i.i.i220 = phi i32 [ %i.zb, %bb.et ], [ %i.zl, %bb.eu ]
  %i.zm = icmp eq i32 %.0.i.i.i.i.i.i220, 1
  br i1 %i.zm, label %bb.ev, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i221, !prof !87

bb.ev:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i219
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yx) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i221

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i221: ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i219, %bb.er, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i216
  store ptr %i.yq, ptr %i.yp, align 8, !tbaa !83
  %.pr271 = load ptr, ptr %i.kl, align 8, !tbaa !83
  br label %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEaSERKS3_.exit223

_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEaSERKS3_.exit223: ; preds = %bb.el, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i221
  %i.zn = phi ptr [ %i.yq, %bb.el ], [ %.pr271, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i221 ] ; 8 uses
  %.not.i.i224 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i224, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit228, label %bb.ew

bb.ew:                                            ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEaSERKS3_.exit223
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 8 ; 4 uses
  %i.zp = load atomic i64, ptr %i.zo acquire, align 8 ; 2 uses
  %i.zq = icmp eq i64 %i.zp, 4294967297
  %i.zr = trunc i64 %i.zp to i32                  ; 2 uses
  br i1 %i.zq, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 0, ptr %i.zo, align 8, !tbaa !85
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zn, i64 12
  store i32 0, ptr %i.zs, align 4, !tbaa !86
  %i.zt = load ptr, ptr %i.zn, align 8, !tbaa !20
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %i.zv = load ptr, ptr %i.zu, align 8
  call void %i.zv(ptr noundef nonnull align 8 dereferenceable(16) %i.zn) #26, !inline_history !1
  %i.zw = load ptr, ptr %i.zn, align 8, !tbaa !20
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 24
  %i.zy = load ptr, ptr %i.zx, align 8
  call void %i.zy(ptr noundef nonnull align 8 dereferenceable(16) %i.zn) #26, !inline_history !1
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit228

bb.ey:                                            ; preds = %bb.ew
  %i.zz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i225 = icmp eq i8 %i.zz, 0
  br i1 %.not.i.i.i225, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aaa = add nsw i32 %i.zr, -1
  store i32 %i.aaa, ptr %i.zo, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i226

bb.fa:                                            ; preds = %bb.ey
  %i.aab = atomicrmw volatile add ptr %i.zo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i226

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i226: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i227 = phi i32 [ %i.zr, %bb.ez ], [ %i.aab, %bb.fa ]
  %i.aac = icmp eq i32 %.0.i.i.i.i227, 1
  br i1 %i.aac, label %bb.fb, label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit228, !prof !87

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i226
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zn) #26
  br label %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit228

_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit228: ; preds = %_ZN2cv3PtrINS_12ppf_match_3d6Pose3DEEaSERKS3_.exit223, %bb.ex, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i226, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.aad = load ptr, ptr %18, align 8, !tbaa !79  ; 3 uses
  %i.aae = load ptr, ptr %i.kj, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i229 = icmp eq ptr %i.aad, %i.aae
  br i1 %.not4.i.i.i229, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i240, label %.lr.ph.i.i.i230

.lr.ph.i.i.i230:                                  ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit228, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i236
  %.05.i.i.i231 = phi ptr [ %i.aaw, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i236 ], [ %i.aad, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit228 ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.05.i.i.i231, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !83 ; 8 uses
  %.not.i.i.i.i.i.i232 = icmp eq ptr %i.aag, null
  br i1 %.not.i.i.i.i.i.i232, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i236, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph.i.i.i230
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8 ; 4 uses
  %i.aai = load atomic i64, ptr %i.aah acquire, align 8 ; 2 uses
  %i.aaj = icmp eq i64 %i.aai, 4294967297
  %i.aak = trunc i64 %i.aai to i32                ; 2 uses
  br i1 %i.aaj, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store i32 0, ptr %i.aah, align 8, !tbaa !85
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aag, i64 12
  store i32 0, ptr %i.aal, align 4, !tbaa !86
  %i.aam = load ptr, ptr %i.aag, align 8, !tbaa !20
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
end_hunk_4
begin_hunk_5_@_ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd:bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %59, i64 40
  %i.hj = getelementptr inbounds nuw i8, ptr %59, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %59, i64 56
  %i.hl = getelementptr inbounds nuw i8, ptr %66, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %66, i64 48
  %i.hn = getelementptr inbounds nuw i8, ptr %59, i64 64
  %i.ho = getelementptr inbounds nuw i8, ptr %59, i64 72
  %i.hp = getelementptr inbounds nuw i8, ptr %59, i64 80
  %i.hq = getelementptr inbounds nuw i8, ptr %59, i64 88
  %i.hr = getelementptr inbounds nuw i8, ptr %66, i64 64
  %i.hs = getelementptr inbounds nuw i8, ptr %66, i64 80
  %i.ht = getelementptr inbounds nuw i8, ptr %59, i64 96
  %i.hu = getelementptr inbounds nuw i8, ptr %59, i64 104
  %i.hv = getelementptr inbounds nuw i8, ptr %59, i64 112
  %i.hw = getelementptr inbounds nuw i8, ptr %59, i64 120
  %i.hx = getelementptr inbounds nuw i8, ptr %66, i64 96
  %i.hy = getelementptr inbounds nuw i8, ptr %66, i64 112
  %i.hz = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.ib = zext nneg i32 %i.bf to i64
  %wide.trip.count = zext i32 %i.bi to i64        ; 2 uses
  %brmerge = select i1 %.not391, i1 true, i1 %i.ea
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ic = icmp eq i32 %i.bi, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod453 = trunc i32 %i.bi to i1
  br label %bb.ah

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit
  %.lcssa = phi i32 [ %i.cv, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit ], [ %i.aag, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.id = sdiv i32 %.lcssa, %i.bf
  invoke void @_ZN2cv12ppf_match_3d13PPF3DDetector12clusterPosesERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS5_EEiS8_(ptr noundef nonnull align 8 dereferenceable(521) %0, ptr noundef nonnull align 8 dereferenceable(24) %44, i32 noundef %i.id, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ca unwind label %bb.ci

bb.ad:                                            ; preds = %bb.v
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ae:                                            ; preds = %bb.w
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #26
  br label %bb.cl

bb.af:                                            ; preds = %bb.x
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ag:                                            ; preds = %bb.y
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #26
  br label %bb.ck

bb.ah:                                            ; preds = %.lr.ph390, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv402 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next403, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.ii = load ptr, ptr %i.cx, align 8, !tbaa !57
  %i.ij = load i64, ptr %i.cy, align 8, !tbaa !58
  %i.ik = mul i64 %i.ij, %indvars.iv402
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ik ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 20
  %i.ip = load float, ptr %i.io, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %i.iq = load float, ptr %i.im, align 4, !tbaa !53
  %i.ir = load <2 x float>, ptr %i.il, align 4, !tbaa !53
  %i.is = fpext <2 x float> %i.ir to <2 x double> ; 2 uses
  %i.it = fpext float %i.iq to double             ; 2 uses
  %i.iu = load <2 x float>, ptr %i.in, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %52, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %53, i8 0, i64 72, i1 false)
  %i.iv = call noalias ptr @calloc(i64 noundef %i.ds, i64 noundef 4) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  store <2 x double> %i.is, ptr %54, align 16, !tbaa !36, !alias.scope !207
  store double %i.it, ptr %i.dt, align 16, !tbaa !36, !alias.scope !207
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  %i.iw = fpext <2 x float> %i.iu to <2 x double> ; 5 uses
  store <2 x double> %i.iw, ptr %55, align 16, !tbaa !36, !alias.scope !208
  %i.ix = fpext float %i.ip to double             ; 3 uses
  store double %i.ix, ptr %i.du, align 16, !tbaa !36, !alias.scope !208
  invoke fastcc void @_ZN2cv12ppf_match_3dL18computeTransformRTERKNS_3VecIdLi3EEES4_RNS_4MatxIdLi3ELi3EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(72) %52, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  %i.iy = load i32, ptr %i.bp, align 8, !tbaa !54
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %.lr.ph371, label %.preheader354

.lr.ph371:                                        ; preds = %bb.ai
  %i.ja = load double, ptr %i.cz, align 8
  %i.jb = load double, ptr %i.da, align 16
  %i.jc = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.jd = extractelement <2 x double> %i.iw, i64 0
  %i.je = extractelement <2 x double> %i.iw, i64 1
  %i.jf = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.ak

.preheader354:                                    ; preds = %.loopexit, %bb.ai
  br i1 %brmerge, label %._crit_edge383, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader354, %._crit_edge.us
  %.080382.us = phi i32 [ %i.kb, %._crit_edge.us ], [ 0, %.preheader354 ] ; 4 uses
  %.0127381.us = phi i32 [ %.2129.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %.0130380.us = phi i32 [ %.2132.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %.0133379.us = phi i32 [ %.2135.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %i.jg = mul i32 %.080382.us, %i.bi              ; 3 uses
  br i1 %i.ic, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv398 = phi i64 [ %indvars.iv.next399.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.1128374.us = phi i32 [ %.2129.us.1, %.preheader.us.new ], [ %.0127381.us, %.preheader.us ] ; 2 uses
  %.1131373.us = phi i32 [ %.2132.us.1, %.preheader.us.new ], [ %.0130380.us, %.preheader.us ]
  %.1134372.us = phi i32 [ %.2135.us.1, %.preheader.us.new ], [ %.0133379.us, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.jh = trunc nuw nsw i64 %indvars.iv398 to i32 ; 2 uses
  %i.ji = add i32 %i.jg, %i.jh
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jj ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !63 ; 2 uses
  %i.jm = icmp ugt i32 %i.jl, %.1128374.us        ; 2 uses
  %.2132.us = select i1 %i.jm, i32 %i.jh, i32 %.1131373.us
  %.2129.us = call i32 @llvm.umax.i32(i32 %i.jl, i32 %.1128374.us) ; 2 uses
  store i32 0, ptr %i.jk, align 4, !tbaa !63
  %i.jn = trunc i64 %indvars.iv398 to i32
  %i.jo = or disjoint i32 %i.jn, 1                ; 2 uses
  %i.jp = add i32 %i.jg, %i.jo
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jq ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !63 ; 2 uses
  %i.jt = icmp ugt i32 %i.js, %.2129.us           ; 2 uses
  %i.ju = or i1 %i.jt, %i.jm
  %.2135.us.1 = select i1 %i.ju, i32 %.080382.us, i32 %.1134372.us ; 3 uses
  %.2132.us.1 = select i1 %i.jt, i32 %i.jo, i32 %.2132.us ; 3 uses
  %.2129.us.1 = call i32 @llvm.umax.i32(i32 %i.js, i32 %.2129.us) ; 3 uses
  store i32 0, ptr %i.jr, align 4, !tbaa !63
  %indvars.iv.next399.1 = add nuw nsw i64 %indvars.iv398, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !187

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv398.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next399.1, %._crit_edge.us.unr-lcssa ]
  %.1128374.us.epil.init = phi i32 [ %.0127381.us, %.preheader.us ], [ %.2129.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.1131373.us.epil.init = phi i32 [ %.0130380.us, %.preheader.us ], [ %.2132.us.1, %._crit_edge.us.unr-lcssa ]
  %.1134372.us.epil.init = phi i32 [ %.0133379.us, %.preheader.us ], [ %.2135.us.1, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod453)
  %i.jv = trunc nuw nsw i64 %indvars.iv398.epil.init to i32 ; 2 uses
  %i.jw = add i32 %i.jg, %i.jv
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jx ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !63 ; 2 uses
  %i.ka = icmp ugt i32 %i.jz, %.1128374.us.epil.init ; 2 uses
  %.2135.us.epil = select i1 %i.ka, i32 %.080382.us, i32 %.1134372.us.epil.init
  %.2132.us.epil = select i1 %i.ka, i32 %i.jv, i32 %.1131373.us.epil.init
  %.2129.us.epil = call i32 @llvm.umax.i32(i32 %i.jz, i32 %.1128374.us.epil.init)
  store i32 0, ptr %i.jy, align 4, !tbaa !63
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.2135.us.lcssa = phi i32 [ %.2135.us.1, %._crit_edge.us.unr-lcssa ], [ %.2135.us.epil, %.epil.preheader ] ; 2 uses
  %.2132.us.lcssa = phi i32 [ %.2132.us.1, %._crit_edge.us.unr-lcssa ], [ %.2132.us.epil, %.epil.preheader ] ; 2 uses
  %.2129.us.lcssa = phi i32 [ %.2129.us.1, %._crit_edge.us.unr-lcssa ], [ %.2129.us.epil, %.epil.preheader ] ; 2 uses
  %i.kb = add nuw i32 %.080382.us, 1              ; 2 uses
  %exitcond401.not = icmp eq i32 %i.kb, %i.bn
  br i1 %exitcond401.not, label %._crit_edge383.loopexit, label %.preheader.us, !llvm.loop !188

bb.aj:                                            ; preds = %bb.ah
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  br label %bb.bz

bb.ak:                                            ; preds = %.lr.ph371, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.not = icmp eq i64 %indvars.iv402, %indvars.iv
  br i1 %.not, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kd = load ptr, ptr %i.cx, align 8, !tbaa !57
  %i.ke = load i64, ptr %i.cy, align 8, !tbaa !58
  %i.kf = mul i64 %i.ke, %indvars.iv
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kf ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !53
  %i.kj = fpext float %i.ki to double             ; 3 uses
  %i.kk = load <2 x float>, ptr %i.kg, align 4, !tbaa !53
  %i.kl = fpext <2 x float> %i.kk to <2 x double> ; 4 uses
  %i.km = fsub <2 x double> %i.kl, %i.is          ; 3 uses
  %i.kn = fsub double %i.kj, %i.it                ; 3 uses
  %68 = extractelement <2 x double> %i.km, i64 0  ; 2 uses
  %69 = call double @llvm.fmuladd.f64(double %68, double %68, double 0.000000e+00)
  %i.ko = extractelement <2 x double> %i.km, i64 1 ; 2 uses
  %i.kp = call double @llvm.fmuladd.f64(double %i.ko, double %i.ko, double %69)
  %i.kq = call double @llvm.fmuladd.f64(double %i.kn, double %i.kn, double %i.kp)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.kq) ; 3 uses
  %i.kr = fcmp ugt double %sqrt.i, f0x3E80000000000000
  br i1 %i.kr, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !53
  %i.ku = fpext float %i.kt to double             ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !53
  %i.kx = fpext float %i.kw to double             ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !53
  %i.la = fpext float %i.kz to double             ; 2 uses
  %i.lb = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.lc = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.ld = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.le = fmul <2 x double> %i.km, %i.ld          ; 2 uses
  %i.lf = fmul double %i.kn, %i.lb
  %i.lg = insertelement <2 x double> %i.iw, double %i.la, i64 1
  %i.lh = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lg, <2 x double> %i.lh, <2 x double> zeroinitializer)
  %i.lj = insertelement <2 x double> %i.jf, double %i.kx, i64 1
  %i.lk = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ll = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> %i.lk, <2 x double> %i.li)
  %i.lm = insertelement <2 x double> %i.jc, double %i.ku, i64 1
  %i.ln = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.lo = shufflevector <2 x double> %i.ln, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> %i.lo, <2 x double> %i.ll) ; 2 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0
  %i.lr = call noundef double @acos(double noundef %i.lq) #26
  %i.ls = extractelement <2 x double> %i.lp, i64 1
  %i.lt = call noundef double @acos(double noundef %i.ls) #26
  %i.lu = call double @llvm.fmuladd.f64(double %i.jd, double %i.la, double 0.000000e+00)
  %i.lv = call double @llvm.fmuladd.f64(double %i.je, double %i.kx, double %i.lu)
  %i.lw = call noundef double @llvm.fmuladd.f64(double %i.ix, double %i.ku, double %i.lv)
  %i.lx = call noundef double @acos(double noundef %i.lw) #26
  %i.ly = insertelement <2 x double> poison, double %i.lr, i64 0
  %i.lz = insertelement <2 x double> %i.ly, double %i.lx, i64 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.6309.0 = phi double [ %i.lt, %bb.am ], [ 0.000000e+00, %bb.al ]
  %i.ma = phi <2 x double> [ %i.lz, %bb.am ], [ zeroinitializer, %bb.al ]
  %i.mb = load double, ptr %i.az, align 8, !tbaa !43 ; 2 uses
  %i.mc = load double, ptr %i.dd, align 8, !tbaa !36, !noalias !209
  %i.md = extractelement <2 x double> %i.kl, i64 0
  %i.me = call double @llvm.fmuladd.f64(double %i.mc, double %i.md, double 0.000000e+00)
  %i.mf = load double, ptr %i.de, align 8, !tbaa !36, !noalias !209
  %i.mg = extractelement <2 x double> %i.kl, i64 1 ; 2 uses
  %i.mh = call double @llvm.fmuladd.f64(double %i.mf, double %i.mg, double %i.me)
  %i.mi = load <2 x double>, ptr %i.df, align 8, !tbaa !36, !noalias !209
  %i.mj = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> %i.kl, <2 x i32> <i32 0, i32 2>
  %i.ml = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.mh, i64 0
  %i.mm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> %i.mk, <2 x double> %i.ml) ; 2 uses
  %i.mn = load double, ptr %i.dh, align 8, !tbaa !36, !noalias !209
  %i.mo = extractelement <2 x double> %i.mm, i64 1
  %i.mp = call double @llvm.fmuladd.f64(double %i.mn, double %i.mg, double %i.mo)
  %i.mq = load double, ptr %i.di, align 8, !tbaa !36, !noalias !209
  %i.mr = call double @llvm.fmuladd.f64(double %i.mq, double %i.kj, double %i.mp)
  %i.ms = extractelement <2 x double> %i.mm, i64 0
  %i.mt = fadd double %i.ms, %i.ja
  %i.mu = fadd double %i.mr, %i.jb                ; 2 uses
  %i.mv = fneg double %i.mu
  %i.mw = call double @atan2(double noundef %i.mv, double noundef %i.mt) #26 ; 4 uses
  %i.mx = fcmp uno double %i.mw, 0.000000e+00
  br i1 %i.mx, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.my = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer
  %i.na = fdiv <2 x double> %i.ma, %i.mz          ; 2 uses
  %i.nb = extractelement <2 x double> %i.na, i64 0
  %i.nc = fptosi double %i.nb to i32
  %i.nd = mul i32 %i.nc, -1789642873              ; 2 uses
  %i.ne = call i32 @llvm.fshl.i32(i32 %i.nd, i32 %i.nd, i32 11)
  %i.nf = mul i32 %i.ne, 718793509
  %i.ng = xor i32 %i.nf, -1914584186
  %i.nh = add i32 %i.ng, -1162247668              ; 2 uses
  %i.ni = mul i32 %i.nh, 3
  %i.nj = add i32 %i.ni, 1390208809
  %i.nk = extractelement <2 x double> %i.na, i64 1
  %i.nl = fptosi double %i.nk to i32
  %i.nm = mul i32 %i.nl, 1713515327               ; 2 uses
  %i.nn = call i32 @llvm.fshl.i32(i32 %i.nm, i32 %i.nm, i32 11)
  %i.no = mul i32 %i.nn, 1107688271
  %i.np = xor i32 %i.nj, %i.no
  %i.nq = fdiv double %.sroa.6309.0, %i.mb
  %i.nr = fptosi double %i.nq to i32
  %i.ns = mul i32 %i.nr, 718793509                ; 2 uses
  %i.nt = call i32 @llvm.fshl.i32(i32 %i.ns, i32 %i.ns, i32 11)
  %i.nu = mul i32 %i.nt, -1789642873
  %i.nv = xor i32 %i.nu, 68777331
  %i.nw = add i32 %i.nh, %i.nv
  %i.nx = mul i32 %i.nw, 3
  %i.ny = add i32 %i.nx, 944331445                ; 3 uses
  %i.nz = add i32 %i.np, %i.ny                    ; 2 uses
  %i.oa = mul i32 %i.nz, 3
  %i.ob = add i32 %i.oa, 1390208809
  %i.oc = call i32 @llvm.fshl.i32(i32 %i.ny, i32 %i.ny, i32 17)
  %i.od = fdiv double %sqrt.i, %i.dv
  %i.oe = fptosi double %i.od to i32
  %i.of = mul i32 %i.oe, 1107688271               ; 2 uses
  %i.og = call i32 @llvm.fshl.i32(i32 %i.of, i32 %i.of, i32 11)
  %i.oh = mul i32 %i.og, 1713515327
  %i.oi = xor i32 %i.oc, %i.oh
  %i.oj = add i32 %i.oi, %i.nz
  %i.ok = mul i32 %i.oj, 3
  %i.ol = add i32 %i.ok, 944331445
  %i.om = xor i32 %i.ol, 16                       ; 2 uses
  %i.on = add i32 %i.ob, %i.om                    ; 3 uses
  %i.oo = add i32 %i.on, %i.om                    ; 2 uses
  %i.op = lshr i32 %i.oo, 16
  %i.oq = xor i32 %i.op, %i.oo
  %i.or = mul i32 %i.oq, -2048144789              ; 2 uses
  %i.os = lshr i32 %i.or, 13
  %i.ot = xor i32 %i.os, %i.or
  %i.ou = mul i32 %i.ot, -1028477387              ; 2 uses
  %i.ov = lshr i32 %i.ou, 16
  %i.ow = xor i32 %i.ov, %i.ou
  %i.ox = lshr i32 %i.on, 16
  %i.oy = xor i32 %i.ox, %i.on
  %i.oz = mul i32 %i.oy, -2048144789              ; 2 uses
  %i.pa = lshr i32 %i.oz, 13
  %i.pb = xor i32 %i.pa, %i.oz
  %i.pc = mul i32 %i.pb, -1028477387              ; 2 uses
  %i.pd = lshr i32 %i.pc, 16
  %i.pe = xor i32 %i.pd, %i.pc
  %i.pf = add i32 %i.ow, %i.pe
  %i.pg = call double @sin(double noundef %i.mw) #26
  %i.ph = fmul double %i.mu, %i.pg
  %i.pi = fcmp olt double %i.ph, 0.000000e+00
  %i.pj = fneg double %i.mw
  %.0125 = select i1 %i.pi, double %i.pj, double %i.mw
  %i.pk = load ptr, ptr %i.dw, align 8, !tbaa !45
  %i.pl = invoke noundef ptr @_ZN2cv12ppf_match_3d24hashtableGetBucketHashedEPNS0_8HSHTBL_iEj(ptr noundef %i.pk, i32 noundef %i.pf)
          to label %.preheader353 unwind label %bb.aq ; 2 uses

.preheader353:                                    ; preds = %bb.ao
  %.not184368 = icmp eq ptr %i.pl, null
  br i1 %.not184368, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader353
  %i.pm = load ptr, ptr %i.dx, align 8, !tbaa !57
  %i.pn = load i64, ptr %i.dy, align 8, !tbaa !58
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %bb.ap
  %.0124369 = phi ptr [ %i.pl, %.lr.ph ], [ %i.qm, %bb.ap ] ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.0124369, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !212 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !61
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !62
  %i.pu = sext i32 %i.pt to i64
  %i.pv = mul i64 %i.pn, %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.py = load float, ptr %i.px, align 4, !tbaa !53
  %i.pz = fpext float %i.py to double
  %i.qa = fadd double %.0125, %i.pz
  %i.qb = fadd double %i.qa, f0x401921FB54442D18
  %i.qc = fmul double %i.qb, %i.dz
  %i.qd = fdiv double %i.qc, f0x402921FB54442D18
  %i.qe = fptosi double %i.qd to i32
  %i.qf = mul nsw i32 %i.pr, %i.bi
  %i.qg = add nsw i32 %i.qf, %i.qe
  %i.qh = zext i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.qh ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !63
  %i.qk = add i32 %i.qj, 1
  store i32 %i.qk, ptr %i.qi, align 4, !tbaa !63
  %i.ql = getelementptr inbounds nuw i8, ptr %.0124369, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !213 ; 2 uses
  %.not184 = icmp eq ptr %i.qm, null
  br i1 %.not184, label %.loopexit, label %bb.ap, !llvm.loop !191

bb.aq:                                            ; preds = %bb.ao
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit:                                        ; preds = %bb.ap, %.preheader353, %bb.an, %bb.ak
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qo = load i32, ptr %i.bp, align 8, !tbaa !54
  %i.qp = sext i32 %i.qo to i64
  %i.qq = icmp slt i64 %indvars.iv.next, %i.qp
  br i1 %i.qq, label %bb.ak, label %.preheader354, !llvm.loop !192

._crit_edge383.loopexit:                          ; preds = %._crit_edge.us
  %i.qr = sitofp i32 %.2132.us.lcssa to double
  %i.qs = fmul nnan double %i.qr, f0x402921FB54442D18
  %i.qt = zext i32 %.2129.us.lcssa to i64
  br label %._crit_edge383

._crit_edge383:                                   ; preds = %.preheader354, %._crit_edge383.loopexit
  %.0133.lcssa = phi i32 [ 0, %.preheader354 ], [ %.2135.us.lcssa, %._crit_edge383.loopexit ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd:bb.a
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %.body211

bb.bw:                                            ; preds = %bb.bk, %bb.be
  %i.aao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %67) #26
  br label %.body211

.body211:                                         ; preds = %bb.bv, %bb.bb, %bb.bw
  %.pn151 = phi { ptr, i32 } [ %i.aao, %bb.bw ], [ %i.yy, %bb.bb ], [ %i.aan, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  br label %.body

.body:                                            ; preds = %bb.bu, %bb.aw, %bb.au, %.body211
  %.pn151.pn.pn = phi { ptr, i32 } [ %.pn151, %.body211 ], [ %i.aam, %bb.bu ], [ %i.sy, %bb.au ], [ %i.sz, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  br label %bb.bx

bb.bx:                                            ; preds = %.body, %bb.bt
  %.pn151.pn.pn.pn = phi { ptr, i32 } [ %.pn151.pn.pn, %.body ], [ %i.aal, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #26
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bs, %bb.br
  %.pn151.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aaj, %bb.br ], [ %i.aak, %bb.bs ], [ %.pn151.pn.pn.pn, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  br label %bb.bz

bb.bz:                                            ; preds = %bb.aq, %bb.aj, %bb.by
  %.pn166.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qn, %bb.aq ], [ %i.kc, %bb.aj ], [ %.pn151.pn.pn.pn.pn.pn.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  br label %bb.cj

bb.ca:                                            ; preds = %._crit_edge
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  %i.aap = load ptr, ptr %44, align 8, !tbaa !79  ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aap, %i.aar
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ca, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.abj, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i ], [ %i.aap, %bb.ca ] ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !83 ; 8 uses
  %.not.i.i.i.i.i.i214 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i.i.i.i.i214, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 8 ; 4 uses
  %i.aav = load atomic i64, ptr %i.aau acquire, align 8 ; 2 uses
  %i.aaw = icmp eq i64 %i.aav, 4294967297
  %i.aax = trunc i64 %i.aav to i32                ; 2 uses
  br i1 %i.aaw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.aau, align 8, !tbaa !85
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aat, i64 12
  store i32 0, ptr %i.aay, align 4, !tbaa !86
  %i.aaz = load ptr, ptr %i.aat, align 8, !tbaa !20
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  %i.abb = load ptr, ptr %i.aba, align 8
  call void %i.abb(ptr noundef nonnull align 8 dereferenceable(16) %i.aat) #26, !inline_history !4
  %i.abc = load ptr, ptr %i.aat, align 8, !tbaa !20
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 24
  %i.abe = load ptr, ptr %i.abd, align 8
  call void %i.abe(ptr noundef nonnull align 8 dereferenceable(16) %i.aat) #26, !inline_history !4
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.abf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.abf, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.abg = add nsw i32 %i.aax, -1
  store i32 %i.abg, ptr %i.aau, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.abh = atomicrmw volatile add ptr %i.aau, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.aax, %bb.ce ], [ %i.abh, %bb.cf ]
  %i.abi = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.abi, label %bb.cg, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i, !prof !87

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aat) #26
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i: ; preds = %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.cc, %.lr.ph.i.i.i
  %i.abj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i215 = icmp eq ptr %i.abj, %i.aar
  br i1 %.not.i.i.i215, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %44, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.ca
  %i.abk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.aap, %bb.ca ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.abk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.abl = load ptr, ptr %i.bv, align 8, !tbaa !110
  %i.abm = ptrtoint ptr %i.abl to i64
  %i.abn = ptrtoint ptr %i.abk to i64
  %i.abo = sub i64 %i.abm, %i.abn
  call void @_ZdlPvm(ptr noundef nonnull %i.abk, i64 noundef %i.abo) #28
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  ret void

bb.ci:                                            ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i, %bb.aa, %._crit_edge
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cj:                                            ; preds = %bb.bz, %bb.ci
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abp, %bb.ci ], [ %.pn166.pn.pn.pn.pn.pn.pn, %bb.bz ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #26
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ag, %bb.af
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cj ], [ %i.ih, %bb.ag ], [ %i.ig, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ae, %bb.ad
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ck ], [ %i.if, %bb.ae ], [ %i.ie, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  call void @_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %44) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %bb.i, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cl ], [ %.pn145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %.pn143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.pn.pn.pn341, %bb.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ]
  resume { ptr, i32 } %.pn166.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.cn:                                            ; preds = %bb.f
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN2cv9ExceptionC1ENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_i(ptr noundef nonnull align 8 dereferenceable(148), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN2cv9ExceptionD1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #16

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #12

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN2cv12ppf_match_3dL18computeTransformRTERKNS_3VecIdLi3EEES4_RNS_4MatxIdLi3ELi3EEERS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %6 = alloca %"class.cv::Mat", align 16          ; 12 uses
  %7 = alloca %"class.cv::Matx.20", align 8       ; 13 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = load double, ptr %1, align 8, !tbaa !36
  %i.b = tail call double @acos(double noundef %i.a) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !36 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !36 ; 4 uses
  %i.g = fneg double %i.f                         ; 2 uses
  %i.h = fcmp oeq double %i.f, 0.000000e+00
  %i.i = fcmp oeq double %i.d, 0.000000e+00
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %_ZN2cv12ppf_match_3dL11TNormalize3ERNS_3VecIdLi3EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %9 = tail call double @llvm.fmuladd.f64(double %i.d, double %i.d, double 0.000000e+00)
  %i.j = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %9)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.j) ; 2 uses
  %i.k = fcmp ogt double %sqrt.i, f0x3E80000000000000
  %i.l = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.d, i64 1 ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN2cv12ppf_match_3dL11TNormalize3ERNS_3VecIdLi3EEE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = fdiv double 1.000000e+00, %sqrt.i        ; 2 uses
  %i.n = insertelement <2 x double> poison, double %i.m, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %i.l, %i.o
  %i.q = fmul double %i.m, %i.g
  br label %_ZN2cv12ppf_match_3dL11TNormalize3ERNS_3VecIdLi3EEE.exit

_ZN2cv12ppf_match_3dL11TNormalize3ERNS_3VecIdLi3EEE.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.23.0 = phi double [ 0.000000e+00, %bb.a ], [ %i.q, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %i.r = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %bb.a ], [ %i.p, %bb.c ], [ %i.l, %bb.b ] ; 7 uses
  %i.s = tail call double @sin(double noundef %i.b) #26 ; 3 uses
  %i.t = tail call double @cos(double noundef %i.b) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store double %i.t, ptr %7, align 8, !tbaa !36, !alias.scope !226
  %i.u = fmul double %i.t, 0.000000e+00           ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.u, ptr %i.v, align 8, !tbaa !36, !alias.scope !226
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.u, ptr %i.w, align 8, !tbaa !36, !alias.scope !226
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %i.u, ptr %i.x, align 8, !tbaa !36, !alias.scope !226
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 32
  store double %i.t, ptr %i.y, align 8, !tbaa !36, !alias.scope !226
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 40
  store double %i.u, ptr %i.z, align 8, !tbaa !36, !alias.scope !226
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 48
  store double %i.u, ptr %i.aa, align 8, !tbaa !36, !alias.scope !226
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 56
  store double %i.u, ptr %i.ab, align 8, !tbaa !36, !alias.scope !226
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 64
  store double %i.t, ptr %i.ac, align 8, !tbaa !36, !alias.scope !226
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %6, align 16, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 153, ptr %i.ad, align 16, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.af, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ag, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %7, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.ai, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !67
  store ptr %6, ptr %i.ah, align 8, !tbaa !68
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.e unwind label %bb.d

common.resume.i:                                  ; preds = %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.aj, %bb.d ], [ %i.am, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

bb.d:                                             ; preds = %_ZN2cv12ppf_match_3dL11TNormalize3ERNS_3VecIdLi3EEE.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume.i

bb.e:                                             ; preds = %_ZN2cv12ppf_match_3dL11TNormalize3ERNS_3VecIdLi3EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 -1040056314, ptr %8, align 8, !tbaa !67
  store ptr %2, ptr %i.ak, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 12884901891, ptr %i.al, align 8, !tbaa !63
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN2cv12ppf_match_3dL5aaToRERKNS_3VecIdLi3EEEdRNS_4MatxIdLi3ELi3EEE.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %common.resume.i

_ZN2cv12ppf_match_3dL5aaToRERKNS_3VecIdLi3EEEdRNS_4MatxIdLi3ELi3EEE.exit: ; preds = %bb.e
  %i.an = fsub double 1.000000e+00, %i.t          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ao = extractelement <2 x double> %i.r, i64 0
  %i.ap = fneg double %i.s                        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load <2 x double>, ptr %2, align 8
  %i.as = load double, ptr %i.aq, align 8, !tbaa !36
  %i.at = call double @llvm.fmuladd.f64(double %i.ap, double %.sroa.23.0, double %i.as)
  %i.au = insertelement <2 x double> %i.ar, double %i.at, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aw = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x double> %i.r, %i.ax           ; 3 uses
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.r, <2 x double> %i.au) ; 3 uses
  store <2 x double> %i.ba, ptr %2, align 8, !tbaa !36
  %i.bb = load <2 x double>, ptr %i.av, align 8, !tbaa !36
  %i.bc = insertelement <2 x double> poison, double %i.s, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bf = insertelement <2 x double> %i.be, double %.sroa.23.0, i64 1
  %i.bg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bf, <2 x double> %i.bb)
  %i.bh = insertelement <2 x double> %i.be, double %.sroa.23.0, i64 0
  %i.bi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.bh, <2 x double> %i.bg) ; 3 uses
  store <2 x double> %i.bi, ptr %i.av, align 8, !tbaa !36
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bk = fmul double %.sroa.23.0, %i.an          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bm = load <2 x double>, ptr %.phi.trans.insert47.i, align 8
  %i.bn = load <2 x double>, ptr %i.bj, align 8, !tbaa !36
  %i.bo = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.r, <2 x double> %i.bn)
  %i.br = load double, ptr %i.bl, align 8, !tbaa !36
  %i.bs = call double @llvm.fmuladd.f64(double %i.s, double %i.ao, double %i.br)
  %i.bt = shufflevector <2 x double> %i.ay, <2 x double> %i.r, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.bu = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bv = insertelement <4 x double> %i.bu, double %.sroa.23.0, i64 1
  %i.bw = insertelement <4 x double> %i.bv, double %i.bk, i64 2
  %i.bx = shufflevector <4 x double> %i.bw, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.by = shufflevector <2 x double> %i.bm, <2 x double> %i.bq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bz = insertelement <4 x double> %i.by, double %i.bs, i64 3
  %i.ca = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bt, <4 x double> %i.bx, <4 x double> %i.bz) ; 4 uses
  store <4 x double> %i.ca, ptr %.phi.trans.insert47.i, align 8, !tbaa !36
  %.phi.trans.insert58.i = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %.pre59.i = load double, ptr %.phi.trans.insert58.i, align 8, !tbaa !36
  %i.cb = call double @llvm.fmuladd.f64(double %i.bk, double %.sroa.23.0, double %.pre59.i) ; 2 uses
  store double %i.cb, ptr %.phi.trans.insert58.i, align 8, !tbaa !36
  %i.cc = fneg <4 x double> %i.ca                 ; 2 uses
  %i.cd = fneg double %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = shufflevector <2 x double> %i.ba, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.ch = fneg <2 x double> %i.cg
  %i.ci = shufflevector <2 x double> %i.ba, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x double> %i.ci, <4 x double> %i.ca, <2 x i32> <i32 1, i32 4>
  %i.ck = fneg <2 x double> %i.cj
  %i.cl = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x double> %i.cl, <4 x double> %i.ca, <2 x i32> <i32 0, i32 5>
  %i.cn = fneg <2 x double> %i.cm
  %i.co = load double, ptr %0, align 8, !tbaa !36, !noalias !227 ; 2 uses
  %i.cp = load double, ptr %i.ce, align 8, !tbaa !36, !noalias !227 ; 2 uses
  %i.cq = load double, ptr %i.cf, align 8, !tbaa !36, !noalias !227 ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cs, <2 x double> zeroinitializer)
  %i.cu = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cv, <2 x double> %i.ct)
  %i.cx = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cy, <2 x double> %i.cw)
  %i.da = extractelement <4 x double> %i.cc, i64 2
  %i.db = call double @llvm.fmuladd.f64(double %i.da, double %i.co, double 0.000000e+00)
  %i.dc = extractelement <4 x double> %i.cc, i64 3
  %i.dd = call double @llvm.fmuladd.f64(double %i.dc, double %i.cp, double %i.db)
  %i.de = call double @llvm.fmuladd.f64(double %i.cd, double %i.cq, double %i.dd)
  store <2 x double> %i.cz, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.de, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #18

declare noundef ptr @_ZN2cv12ppf_match_3d24hashtableGetBucketHashedEPNS0_8HSHTBL_iEj(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN2cv12ppf_match_3d6Pose3D10updatePoseERNS_4MatxIdLi4ELi4EEE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

end_hunk_6
