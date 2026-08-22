Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/LegacyViewingPipeline?download=true
inline.NumInlined: 555
inline.NumDeleted: 199
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.6" = type { %"class.std::__shared_ptr.7" }
%"class.std::__shared_ptr.7" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.0" = type { %"class.std::__shared_ptr.1" }
%"class.std::__shared_ptr.1" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.9" = type { %"class.std::__shared_ptr.10" }
%"class.std::__shared_ptr.10" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::shared_ptr.13" = type { %"class.std::__shared_ptr.14" }
%"class.std::__shared_ptr.14" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.19" = type { %"class.std::__shared_ptr.20" }
%"class.std::__shared_ptr.20" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.16" = type { %"class.std::__shared_ptr.17" }
%"class.std::__shared_ptr.17" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.22" = type { %"class.std::__shared_ptr.23" }
%"class.std::__shared_ptr.23" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.25" = type { %"class.std::__shared_ptr.26" }
%"class.std::__shared_ptr.26" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.28" = type { %"class.std::__shared_ptr.29" }
%"class.std::__shared_ptr.29" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.31" = type { %"class.std::__shared_ptr.32" }
%"class.std::__shared_ptr.32" = type { ptr, %"class.std::__shared_count" }
%"class.std::allocator" = type { i8 }
%"class.std::shared_ptr.34" = type { %"class.std::__shared_ptr.35" }
%"class.std::__shared_ptr.35" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.3" = type { %"class.std::__shared_ptr.4" }
%"class.std::__shared_ptr.4" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.37" = type { %"class.std::__shared_ptr.38" }
%"class.std::__shared_ptr.38" = type { ptr, %"class.std::__shared_count" }

$__clang_call_terminate = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515MatrixTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN16OpenColorIO_v2_519ColorSpaceTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN16OpenColorIO_v2_513LookTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN16OpenColorIO_v2_525LegacyViewingPipelineImplD2Ev = comdat any

$_ZN16OpenColorIO_v2_525LegacyViewingPipelineImplD0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZTIN16OpenColorIO_v2_521LegacyViewingPipelineE = comdat any

$_ZTSN16OpenColorIO_v2_521LegacyViewingPipelineE = comdat any

$_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSPFvPN16OpenColorIO_v2_521LegacyViewingPipelineEE = comdat any

$_ZTIN16OpenColorIO_v2_515MatrixTransformE = comdat any

$_ZTSN16OpenColorIO_v2_515MatrixTransformE = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"LegacyViewingPipeline: can't create a processor without a display transform.\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str.2 = private unnamed_addr constant [37 x i8] c"LegacyViewingPipeline is not valid: \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"LegacyViewingPipeline error: \00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"InputColorSpaceName is unspecified.\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Cannot find inputColorSpace, named '\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"'.\00", align 1
@_ZN16OpenColorIO_v2_526OCIO_VIEW_USE_DISPLAY_NAMEE = external local_unnamed_addr global ptr, align 8
@_ZN16OpenColorIO_v2_517ROLE_SCENE_LINEARE = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"DisplayViewTransform error:\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" LinearCC requires '\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"' role to be defined.\00", align 1
@_ZN16OpenColorIO_v2_517ROLE_COLOR_TIMINGE = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c" ColorTimingCC requires '\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"DisplayViewTransform: \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"LinearCC: \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ColorTimingCC: \00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"ChannelView: \00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"DisplayCC: \00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"LooksOverrideEnabled\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"LooksOverride: \00", align 1
@_ZTVN16OpenColorIO_v2_525LegacyViewingPipelineImplE = hidden constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_525LegacyViewingPipelineImplE, ptr @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl23getDisplayViewTransformEv, ptr @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl23setDisplayViewTransformERKSt10shared_ptrIKNS_20DisplayViewTransformEE, ptr @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl11getLinearCCEv, ptr @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl11setLinearCCERKSt10shared_ptrIKNS_9TransformEE, ptr @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl16getColorTimingCCEv, ptr @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl16setColorTimingCCERKSt10shared_ptrIKNS_9TransformEE, ptr @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl14getChannelViewEv, ptr @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl14setChannelViewERKSt10shared_ptrIKNS_9TransformEE, ptr @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl12getDisplayCCEv, ptr @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl12setDisplayCCERKSt10shared_ptrIKNS_9TransformEE, ptr @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl23setLooksOverrideEnabledEb, ptr @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl23getLooksOverrideEnabledEv, ptr @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl16setLooksOverrideEPKc, ptr @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl16getLooksOverrideEv, ptr @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl12getProcessorERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEE, ptr @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl12getProcessorERKSt10shared_ptrIKNS_6ConfigEE, ptr @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImplD2Ev, ptr @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImplD0Ev] }, align 8
@_ZTIN16OpenColorIO_v2_525LegacyViewingPipelineImplE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_525LegacyViewingPipelineImplE, ptr @_ZTIN16OpenColorIO_v2_521LegacyViewingPipelineE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_525LegacyViewingPipelineImplE = hidden constant [48 x i8] c"N16OpenColorIO_v2_525LegacyViewingPipelineImplE\00", align 1
@_ZTIN16OpenColorIO_v2_521LegacyViewingPipelineE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_521LegacyViewingPipelineE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_521LegacyViewingPipelineE = linkonce_odr constant [44 x i8] c"N16OpenColorIO_v2_521LegacyViewingPipelineE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [141 x i8] c"St19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSPFvPN16OpenColorIO_v2_521LegacyViewingPipelineEE = linkonce_odr constant [49 x i8] c"PFvPN16OpenColorIO_v2_521LegacyViewingPipelineEE\00", comdat, align 1
@_ZTIN16OpenColorIO_v2_59TransformE = external constant ptr
@_ZTIN16OpenColorIO_v2_520DisplayViewTransformE = external constant ptr
@_ZTIN16OpenColorIO_v2_515MatrixTransformE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_515MatrixTransformE, ptr @_ZTIN16OpenColorIO_v2_59TransformE }, comdat, align 8
@_ZTSN16OpenColorIO_v2_515MatrixTransformE = linkonce_odr constant [38 x i8] c"N16OpenColorIO_v2_515MatrixTransformE\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_521LegacyViewingPipeline6CreateEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #21 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN16OpenColorIO_v2_525LegacyViewingPipelineImplE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(82) %i.c, i8 0, i64 82, i1 false)
  store ptr %i.e, ptr %i.d, align 8, !tbaa !10
  store i8 0, ptr %i.e, align 8, !tbaa !14
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !20
  %i.g = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521LegacyViewingPipelineEEC2INS0_25LegacyViewingPipelineImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #22 ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #22, !inline_history !21
  invoke void @__cxa_rethrow() #23
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #24
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN16OpenColorIO_v2_521LegacyViewingPipelineEEC2INS0_25LegacyViewingPipelineImplEPFvPS1_EvEEPT_T0_.exit: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_525LegacyViewingPipelineImplEPFvPNS0_21LegacyViewingPipelineEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl7DeleterEPNS_21LegacyViewingPipelineE, ptr %i.s, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.a, ptr %i.t, align 8, !tbaa !27
  store ptr %i.g, ptr %i.f, align 8, !tbaa !20
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl7DeleterEPNS_21LegacyViewingPipelineE(ptr noundef %0) #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(128) %0) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl23getDisplayViewTransformEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.6") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !30
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !30
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_520DisplayViewTransformEEC2IS1_vEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !31
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !31
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_520DisplayViewTransformEEC2IS1_vEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_520DisplayViewTransformEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_520DisplayViewTransformEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl23setDisplayViewTransformERKSt10shared_ptrIKNS_20DisplayViewTransformEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.0", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.c unwind label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !35, !noalias !38 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call ptr @__dynamic_cast(ptr nonnull %i.d, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_520DisplayViewTransformE, i64 0) #22, !noalias !38 ; 4 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20, !noalias !38 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !38
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i32, ptr %i.i, align 4, !tbaa !31, !noalias !38
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !31, !noalias !38
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.h:                                             ; preds = %bb.f
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !38 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.h
  %.sroa.020.0 = phi ptr [ %i.f, %bb.g ], [ %i.f, %bb.e ], [ %i.f, %bb.h ], [ null, %bb.d ], [ null, %bb.c ]
  %.sroa.6.0 = phi ptr [ %i.h, %bb.g ], [ null, %bb.e ], [ %i.h, %bb.h ], [ null, %bb.d ], [ null, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %.sroa.020.0, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 8 uses
  store ptr %.sroa.6.0, ptr %i.o, align 8, !tbaa !20
  %.not.i.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i3, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.q, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !24
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #22, !inline_history !42
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #22, !inline_history !42
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !43

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.ag = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_520DisplayViewTransform14getLooksBypassEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %bb.o unwind label %bb.ad

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl23setDisplayViewTransformERKSt10shared_ptrIKNS_20DisplayViewTransformEE:bb.a
  %i.ai = zext i1 %i.ag to i8
  store i8 %i.ai, ptr %i.ah, align 8, !tbaa !46
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !44
  invoke void @_ZN16OpenColorIO_v2_520DisplayViewTransform14setLooksBypassEb(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.al, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.am, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !24
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #22, !inline_history !54
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #22, !inline_history !54
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i6 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i6, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.u:                                             ; preds = %bb.s
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i8 = phi i32 [ %i.ap, %bb.t ], [ %i.az, %bb.u ]
  %i.ba = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.ba, label %bb.v, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !43

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18

bb.w:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.bb, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !20 ; 8 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !20
  %.not.i.i.i.i9 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i9, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.be, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !24
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !42
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !42
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18

bb.z:                                             ; preds = %bb.x
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i10, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i11

bb.ab:                                            ; preds = %bb.z
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i11: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i12 = phi i32 [ %i.bh, %bb.aa ], [ %i.br, %bb.ab ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i.i12, 1
  br i1 %i.bs, label %bb.ac, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18, !prof !43

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i11
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18

_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18: ; preds = %bb.w, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i11, %bb.ac, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.ad:                                            ; preds = %bb.o, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #24
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_520DisplayViewTransform14getLooksBypassEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

declare void @_ZN16OpenColorIO_v2_520DisplayViewTransform14setLooksBypassEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl11getLinearCCEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.9") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !30
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !30
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !31
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !31
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl11setLinearCCERKSt10shared_ptrIKNS_9TransformEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.0", align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x ptr>, ptr %2, align 16, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !20   ; 8 uses
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !30
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !24
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !57
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !57
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, !prof !43

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !20   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.y, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !24
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !54
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !54
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.m ], [ %i.al, %bb.n ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.o, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !43

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.p:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 8 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !20
  %.not.i.i.i.i3 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i3, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.aq, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !24
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22, !inline_history !57
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22, !inline_history !57
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.s:                                             ; preds = %bb.q
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5

bb.u:                                             ; preds = %bb.s
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i6 = phi i32 [ %i.at, %bb.t ], [ %i.bd, %bb.u ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i6, 1
  br i1 %i.be, label %bb.v, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, !prof !43

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5, %bb.v, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.w:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #24
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl16getColorTimingCCEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.9") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !30
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !30
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !31
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !31
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl16setColorTimingCCERKSt10shared_ptrIKNS_9TransformEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.0", align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load <2 x ptr>, ptr %2, align 16, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !20   ; 8 uses
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !30
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !24
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !57
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !57
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, !prof !43

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !20   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.y, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !24
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !54
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !54
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.m ], [ %i.al, %bb.n ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.o, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !43

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.p:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 8 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !20
  %.not.i.i.i.i3 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i3, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.aq, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !24
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22, !inline_history !57
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22, !inline_history !57
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.s:                                             ; preds = %bb.q
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5

bb.u:                                             ; preds = %bb.s
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i6 = phi i32 [ %i.at, %bb.t ], [ %i.bd, %bb.u ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i6, 1
  br i1 %i.be, label %bb.v, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, !prof !43

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5, %bb.v, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.w:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #24
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl14getChannelViewEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.9") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !30
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !30
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !31
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !31
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl14setChannelViewERKSt10shared_ptrIKNS_9TransformEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.0", align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load <2 x ptr>, ptr %2, align 16, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !20   ; 8 uses
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !30
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !24
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !57
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !57
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, !prof !43

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !20   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.y, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !24
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !54
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !54
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.m ], [ %i.al, %bb.n ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.o, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !43

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.p:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 8 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !20
  %.not.i.i.i.i3 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i3, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.aq, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !24
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22, !inline_history !57
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22, !inline_history !57
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.s:                                             ; preds = %bb.q
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5

bb.u:                                             ; preds = %bb.s
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i6 = phi i32 [ %i.at, %bb.t ], [ %i.bd, %bb.u ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i6, 1
  br i1 %i.be, label %bb.v, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, !prof !43

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5, %bb.v, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.w:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #24
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl12getDisplayCCEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.9") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !30
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !30
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !31
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !31
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl12setDisplayCCERKSt10shared_ptrIKNS_9TransformEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.0", align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load <2 x ptr>, ptr %2, align 16, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !20   ; 8 uses
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !30
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !24
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !57
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !57
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, !prof !43

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !20   ; 8 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.y, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !24
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !54
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22, !inline_history !54
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.m ], [ %i.al, %bb.n ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.o, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !43

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSEOS2_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.p:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 8 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !20
  %.not.i.i.i.i3 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i3, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.aq, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !24
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22, !inline_history !57
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22, !inline_history !57
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.s:                                             ; preds = %bb.q
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5

bb.u:                                             ; preds = %bb.s
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i6 = phi i32 [ %i.at, %bb.t ], [ %i.bd, %bb.u ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i6, 1
  br i1 %i.be, label %bb.v, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, !prof !43

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5, %bb.v, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.w:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl23setLooksOverrideEnabledEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) initializes((89, 90)) %0, i1 noundef zeroext %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %i.a, ptr %i.b, align 1, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl23getLooksOverrideEnabledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.b = load i8, ptr %i.a, align 1, !tbaa !59, !range !60, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_525LegacyViewingPipelineImpl16setLooksOverrideEPKc(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = select i1 %.not, ptr @.str, ptr %1       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #22
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl16getLooksOverrideEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl12getProcessorERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.041, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn437 = phi { ptr, i32 } [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.be) #22
  br label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn437, %bb.w ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.av, %bb.r ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.au, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.oy

bb.z:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.bo = invoke noundef ptr @_ZNK16OpenColorIO_v2_520DisplayViewTransform10getDisplayEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %bb.aa unwind label %bb.as     ; 4 uses

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.bp, ptr %9, align 8, !tbaa !10
  %i.bq = icmp eq ptr %i.bo, null
  br i1 %i.bq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.noexc145 unwind label %bb.at

.noexc145:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.br = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i64 %i.br, ptr %i.f, align 8, !tbaa !69
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc.i144, label %._crit_edge.i.i143

.noexc.i144:                                      ; preds = %bb.ac
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc146 unwind label %bb.at ; 2 uses

.noexc146:                                        ; preds = %.noexc.i144
  store ptr %i.bt, ptr %9, align 8, !tbaa !63
  %i.bu = load i64, ptr %i.f, align 8, !tbaa !69
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !14
  br label %._crit_edge.i.i143

._crit_edge.i.i143:                               ; preds = %.noexc146, %bb.ac
  %i.bv = phi ptr [ %i.bt, %.noexc146 ], [ %i.bp, %bb.ac ] ; 2 uses
  switch i64 %i.br, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i143
  %i.bw = load i8, ptr %i.bo, align 1, !tbaa !14
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !14
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i143
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %i.bo, i64 %i.br, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i143
  %i.bx = load i64, ptr %i.f, align 8, !tbaa !69  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !62
  %i.bz = load ptr, ptr %9, align 8, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.cc = invoke noundef ptr @_ZNK16OpenColorIO_v2_520DisplayViewTransform7getViewEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %bb.ag unwind label %bb.au     ; 4 uses

bb.ag:                                            ; preds = %bb.af
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.cd, ptr %10, align 8, !tbaa !10
  %i.ce = icmp eq ptr %i.cc, null
  br i1 %i.ce, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.noexc150 unwind label %bb.av

.noexc150:                                        ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.cf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cc) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 %i.cf, ptr %i.e, align 8, !tbaa !69
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %.noexc.i149, label %._crit_edge.i.i148

.noexc.i149:                                      ; preds = %bb.ai
  %i.ch = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc151 unwind label %bb.av ; 2 uses

.noexc151:                                        ; preds = %.noexc.i149
  store ptr %i.ch, ptr %10, align 8, !tbaa !63
  %i.ci = load i64, ptr %i.e, align 8, !tbaa !69
  store i64 %i.ci, ptr %i.cd, align 8, !tbaa !14
  br label %._crit_edge.i.i148

._crit_edge.i.i148:                               ; preds = %.noexc151, %bb.ai
  %i.cj = phi ptr [ %i.ch, %.noexc151 ], [ %i.cd, %bb.ai ] ; 2 uses
  switch i64 %i.cf, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i148
  %i.ck = load i8, ptr %i.cc, align 1, !tbaa !14
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !14
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i148
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr nonnull align 1 %i.cc, i64 %i.cf, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i148
  %i.cl = load i64, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !62
  %i.cn = load ptr, ptr %10, align 8, !tbaa !63
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.cp = load ptr, ptr %9, align 8, !tbaa !63
  %i.cq = load ptr, ptr %10, align 8, !tbaa !63
  %i.cr = invoke noundef ptr @_ZNK16OpenColorIO_v2_56Config27getDisplayViewTransformNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.cp, ptr noundef %i.cq)
          to label %bb.am unwind label %bb.aw     ; 4 uses

bb.am:                                            ; preds = %bb.al
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.cs, ptr %11, align 8, !tbaa !10
  %i.ct = icmp eq ptr %i.cr, null
  br i1 %i.ct, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.noexc155 unwind label %bb.ax

.noexc155:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.cu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cr) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 %i.cu, ptr %i.d, align 8, !tbaa !69
  %i.cv = icmp ugt i64 %i.cu, 15
  br i1 %i.cv, label %.noexc.i154, label %._crit_edge.i.i153

.noexc.i154:                                      ; preds = %bb.ao
  %i.cw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc156 unwind label %bb.ax ; 2 uses

.noexc156:                                        ; preds = %.noexc.i154
  store ptr %i.cw, ptr %11, align 8, !tbaa !63
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !69
  store i64 %i.cx, ptr %i.cs, align 8, !tbaa !14
  br label %._crit_edge.i.i153

._crit_edge.i.i153:                               ; preds = %.noexc156, %bb.ao
  %i.cy = phi ptr [ %i.cw, %.noexc156 ], [ %i.cs, %bb.ao ] ; 2 uses
  switch i64 %i.cu, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i153
  %i.cz = load i8, ptr %i.cr, align 1, !tbaa !14
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !14
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i153
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr nonnull align 1 %i.cr, i64 %i.cu, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i153
  %i.da = load i64, ptr %i.d, align 8, !tbaa !69  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 %i.da, ptr %i.db, align 8, !tbaa !62
  %i.dc = load ptr, ptr %11, align 8, !tbaa !63
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da
  store i8 0, ptr %i.dd, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.de = load i64, ptr %i.db, align 8, !tbaa !62
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.ay, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.dg = load ptr, ptr %11, align 8, !tbaa !63
  call void @_ZNK16OpenColorIO_v2_56Config16getViewTransformEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.dg) #22
  %i.dh = load <2 x ptr>, ptr %13, align 16, !tbaa !30
  store <2 x ptr> %i.dh, ptr %12, align 16, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ay

bb.as:                                            ; preds = %bb.z
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

bb.at:                                            ; preds = %.noexc.i144, %bb.ab
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

bb.au:                                            ; preds = %bb.af
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

bb.av:                                            ; preds = %.noexc.i149, %bb.ah
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

bb.aw:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

bb.ax:                                            ; preds = %.noexc.i154, %bb.an
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.do = load ptr, ptr %9, align 8, !tbaa !63
  %i.dp = load ptr, ptr %10, align 8, !tbaa !63
  %i.dq = invoke noundef ptr @_ZNK16OpenColorIO_v2_56Config28getDisplayViewColorSpaceNameEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.do, ptr noundef %i.dp)
          to label %bb.az unwind label %bb.br     ; 4 uses

bb.az:                                            ; preds = %bb.ay
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.dr, ptr %14, align 8, !tbaa !10
  %i.ds = icmp eq ptr %i.dq, null
  br i1 %i.ds, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.noexc162 unwind label %bb.bs

.noexc162:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.dt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dq) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 %i.dt, ptr %i.c, align 8, !tbaa !69
  %i.du = icmp ugt i64 %i.dt, 15
  br i1 %i.du, label %.noexc.i161, label %._crit_edge.i.i160

.noexc.i161:                                      ; preds = %bb.bb
  %i.dv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc163 unwind label %bb.bs ; 2 uses

.noexc163:                                        ; preds = %.noexc.i161
  store ptr %i.dv, ptr %14, align 8, !tbaa !63
  %i.dw = load i64, ptr %i.c, align 8, !tbaa !69
  store i64 %i.dw, ptr %i.dr, align 8, !tbaa !14
  br label %._crit_edge.i.i160

._crit_edge.i.i160:                               ; preds = %.noexc163, %bb.bb
  %i.dx = phi ptr [ %i.dv, %.noexc163 ], [ %i.dr, %bb.bb ] ; 2 uses
  switch i64 %i.dt, label %bb.bd [
    i64 1, label %bb.bc
    i64 0, label %bb.be
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i160
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !14
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !14
  br label %bb.be

bb.bd:                                            ; preds = %._crit_edge.i.i160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr nonnull align 1 %i.dq, i64 %i.dt, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %._crit_edge.i.i160
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !69  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !62
  %i.eb = load ptr, ptr %14, align 8, !tbaa !63
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dz
  store i8 0, ptr %i.ec, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.ed = load ptr, ptr %14, align 8, !tbaa !63   ; 2 uses
  %i.ee = load ptr, ptr @_ZN16OpenColorIO_v2_526OCIO_VIEW_USE_DISPLAY_NAMEE, align 8, !tbaa !73
  %i.ef = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ed, ptr noundef nonnull dereferenceable(1) %i.ee) #26
  %i.eg = icmp eq i32 %i.ef, 0                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.eh, ptr %15, align 8, !tbaa !10
  %.val = load ptr, ptr %9, align 8
  %i.ei = select i1 %i.eg, ptr %.val, ptr %i.ed   ; 2 uses
  %.val450 = load i64, ptr %i.by, align 8
  %.val451 = load i64, ptr %i.ea, align 8
  %i.ej = select i1 %i.eg, i64 %.val450, i64 %.val451 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.ej, ptr %i.b, align 8, !tbaa !69
  %i.ek = icmp ugt i64 %i.ej, 15
  br i1 %i.ek, label %.noexc.i166, label %._crit_edge.i.i165

.noexc.i166:                                      ; preds = %bb.be
  %i.el = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc167 unwind label %bb.bt ; 2 uses

.noexc167:                                        ; preds = %.noexc.i166
  store ptr %i.el, ptr %15, align 8, !tbaa !63
  %i.em = load i64, ptr %i.b, align 8, !tbaa !69
  store i64 %i.em, ptr %i.eh, align 8, !tbaa !14
  br label %._crit_edge.i.i165

._crit_edge.i.i165:                               ; preds = %.noexc167, %bb.be
  %i.en = phi ptr [ %i.el, %.noexc167 ], [ %i.eh, %bb.be ] ; 2 uses
  switch i64 %i.ej, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %bb.bh
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i165
  %i.eo = load i8, ptr %i.ei, align 1, !tbaa !14
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !14
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i.i165
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.ei, i64 %i.ej, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i165
  %i.ep = load i64, ptr %i.b, align 8, !tbaa !69  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !62
  %i.er = load ptr, ptr %15, align 8, !tbaa !63
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep
  store i8 0, ptr %i.es, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.et = load ptr, ptr %15, align 8, !tbaa !63
  invoke void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.22") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.et)
          to label %bb.bi unwind label %bb.bu

bb.bi:                                            ; preds = %bb.bh
  %i.eu = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ev = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_520DisplayViewTransform13getDataBypassEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #22
  %i.ew = load ptr, ptr %16, align 8, !tbaa !70   ; 2 uses
  %.not452 = icmp eq ptr %i.ew, null
  br i1 %.not452, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ex = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace6isDataEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ey = phi i1 [ true, %bb.bi ], [ %i.ex, %bb.bj ]
  br i1 %i.ev, label %bb.bl, label %bb.cd

bb.bl:                                            ; preds = %bb.bk
  %i.ez = load ptr, ptr %6, align 16, !tbaa !70
  %i.fa = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace6isDataEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ez) #22
  %i.fb = or i1 %i.ey, %i.fa                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !35, !noalias !80 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_15MatrixTransformENS_9TransformEEESt10shared_ptrIT_ERKS4_IT0_E.exit.thread571, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ff = call ptr @__dynamic_cast(ptr nonnull %i.fd, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_515MatrixTransformE, i64 0) #22, !noalias !80 ; 4 uses
  %.not.not.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.not.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_15MatrixTransformENS_9TransformEEESt10shared_ptrIT_ERKS4_IT0_E.exit.thread571, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.ff, ptr %17, align 8, !tbaa !81, !alias.scope !80
  %i.fg = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !20, !noalias !80 ; 3 uses
  store ptr %i.fi, ptr %i.fg, align 8, !tbaa !20, !alias.scope !80
  %.not.i.i.i.i.i168 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i168, label %_ZN16OpenColorIO_v2_514DynamicPtrCastIKNS_15MatrixTransformENS_9TransformEEESt10shared_ptrIT_ERKS4_IT0_E.exit.thread, label %bb.bo
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_525LegacyViewingPipelineImpl12getProcessorERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEE:bb.a
  call void %i.wh(ptr noundef nonnull align 8 dereferenceable(16) %i.vw) #22, !inline_history !54
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit288

bb.ir:                                            ; preds = %bb.ip
  %i.wi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i285 = icmp eq i8 %i.wi, 0
  br i1 %.not.i.i.i285, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.wj = add nsw i32 %i.wa, -1
  store i32 %i.wj, ptr %i.vx, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i286

bb.it:                                            ; preds = %bb.ir
  %i.wk = atomicrmw volatile add ptr %i.vx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i286

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i286: ; preds = %bb.it, %bb.is
  %.0.i.i.i.i287 = phi i32 [ %i.wa, %bb.is ], [ %i.wk, %bb.it ]
  %i.wl = icmp eq i32 %.0.i.i.i.i287, 1
  br i1 %i.wl, label %bb.iu, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit288, !prof !43

bb.iu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i286
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vw) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit288

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit288: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2ERKS2_.exit283, %bb.iq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i286, %bb.iu
  %i.wm = load ptr, ptr %i.ra, align 8, !tbaa !20 ; 8 uses
  %.not.i.i289 = icmp eq ptr %i.wm, null
  br i1 %.not.i.i289, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit293, label %bb.iv

bb.iv:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit288
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8 ; 4 uses
  %i.wo = load atomic i64, ptr %i.wn acquire, align 8 ; 2 uses
  %i.wp = icmp eq i64 %i.wo, 4294967297
  %i.wq = trunc i64 %i.wo to i32                  ; 2 uses
  br i1 %i.wp, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  store i32 0, ptr %i.wn, align 8, !tbaa !22
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wm, i64 12
  store i32 0, ptr %i.wr, align 4, !tbaa !24
  %i.ws = load ptr, ptr %i.wm, align 8, !tbaa !8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #22, !inline_history !99
  %i.wv = load ptr, ptr %i.wm, align 8, !tbaa !8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load ptr, ptr %i.ww, align 8
  call void %i.wx(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #22, !inline_history !99
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit293

bb.ix:                                            ; preds = %bb.iv
  %i.wy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i290 = icmp eq i8 %i.wy, 0
  br i1 %.not.i.i.i290, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.wz = add nsw i32 %i.wq, -1
  store i32 %i.wz, ptr %i.wn, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i291

bb.iz:                                            ; preds = %bb.ix
  %i.xa = atomicrmw volatile add ptr %i.wn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i291

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i291: ; preds = %bb.iz, %bb.iy
  %.0.i.i.i.i292 = phi i32 [ %i.wq, %bb.iy ], [ %i.xa, %bb.iz ]
  %i.xb = icmp eq i32 %.0.i.i.i.i292, 1
  br i1 %i.xb, label %bb.ja, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit293, !prof !43

bb.ja:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i291
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit293

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit293: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit288, %bb.iw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i291, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %bb.jd

bb.jb:                                            ; preds = %bb.ik, %bb.hn
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %bb.ik ], [ %.pn103.pn.pn, %bb.hn ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #22
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.hf
  %.pn107.pn.pn = phi { ptr, i32 } [ %.pn107.pn, %bb.jb ], [ %i.sq, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %bb.jk

bb.jd:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit293, %bb.gl
  %i.xc = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !20 ; 8 uses
  %.not.i.i294 = icmp eq ptr %i.xd, null
  br i1 %.not.i.i294, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit298, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8 ; 4 uses
  %i.xf = load atomic i64, ptr %i.xe acquire, align 8 ; 2 uses
  %i.xg = icmp eq i64 %i.xf, 4294967297
  %i.xh = trunc i64 %i.xf to i32                  ; 2 uses
  br i1 %i.xg, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  store i32 0, ptr %i.xe, align 8, !tbaa !22
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xd, i64 12
  store i32 0, ptr %i.xi, align 4, !tbaa !24
  %i.xj = load ptr, ptr %i.xd, align 8, !tbaa !8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8
  call void %i.xl(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #22, !inline_history !100
  %i.xm = load ptr, ptr %i.xd, align 8, !tbaa !8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8
  call void %i.xo(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #22, !inline_history !100
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit298

bb.jg:                                            ; preds = %bb.je
  %i.xp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i295 = icmp eq i8 %i.xp, 0
  br i1 %.not.i.i.i295, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.xq = add nsw i32 %i.xh, -1
  store i32 %i.xq, ptr %i.xe, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i296

bb.ji:                                            ; preds = %bb.jg
  %i.xr = atomicrmw volatile add ptr %i.xe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i296

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i296: ; preds = %bb.ji, %bb.jh
  %.0.i.i.i.i297 = phi i32 [ %i.xh, %bb.jh ], [ %i.xr, %bb.ji ]
  %i.xs = icmp eq i32 %.0.i.i.i.i297, 1
  br i1 %i.xs, label %bb.jj, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit298, !prof !43

bb.jj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i296
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit298

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit298: ; preds = %bb.jd, %bb.jf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i296, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.jm

bb.jk:                                            ; preds = %bb.jc, %bb.he
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn, %bb.jc ], [ %i.sp, %bb.he ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #22
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.hd
  %.pn107.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn, %bb.jk ], [ %i.so, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.ou

bb.jm:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit298, %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  %i.xt = load ptr, ptr %i.i, align 8, !tbaa !44  ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !8
  %i.xv = load ptr, ptr %i.xu, align 8
  invoke void %i.xv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %41, ptr noundef nonnull align 8 dereferenceable(16) %i.xt)
          to label %bb.jn unwind label %bb.jv

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.xw = load ptr, ptr %41, align 8, !tbaa !35, !noalias !101 ; 2 uses
  %i.xx = icmp eq ptr %i.xw, null
  br i1 %i.xx, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.xy = call ptr @__dynamic_cast(ptr nonnull %i.xw, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_520DisplayViewTransformE, i64 0) #22, !noalias !101 ; 4 uses
  %.not.not.i = icmp eq ptr %i.xy, null
  br i1 %.not.not.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  store ptr %i.xy, ptr %42, align 16, !tbaa !44, !alias.scope !101
  %i.xz = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ya = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !20, !noalias !101 ; 3 uses
  store ptr %i.yb, ptr %i.xz, align 8, !tbaa !20, !alias.scope !101
  %.not.i.i.i.i299 = icmp eq ptr %i.yb, null
  br i1 %.not.i.i.i.i299, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 8 ; 3 uses
  %i.yd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !101
  %.not.i.i.i.i.i300 = icmp eq i8 %i.yd, 0
  br i1 %.not.i.i.i.i.i300, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.ye = load i32, ptr %i.yc, align 4, !tbaa !31, !noalias !101
  %i.yf = add nsw i32 %i.ye, 1
  store i32 %i.yf, ptr %i.yc, align 4, !tbaa !31, !noalias !101
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.js:                                            ; preds = %bb.jq
  %i.yg = atomicrmw volatile add ptr %i.yc, i32 1 acq_rel, align 4, !noalias !101 ; 0 uses
  %.pre = load ptr, ptr %42, align 16, !tbaa !44
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i: ; preds = %bb.jo, %bb.jn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false), !alias.scope !101
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.jp, %bb.jr, %bb.js, %_ZNSt10shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i
  %i.yh = phi ptr [ %i.xy, %bb.jp ], [ %i.xy, %bb.jr ], [ %.pre, %bb.js ], [ null, %_ZNSt10shared_ptrIN16OpenColorIO_v2_520DisplayViewTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i ] ; 3 uses
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !8
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.yk = load ptr, ptr %i.yj, align 8
  call void %i.yk(ptr noundef nonnull align 8 dereferenceable(16) %i.yh, i32 noundef 0) #22
  %i.yl = load ptr, ptr %18, align 8, !tbaa !63
  invoke void @_ZN16OpenColorIO_v2_520DisplayViewTransform6setSrcEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.yh, ptr noundef %i.yl)
          to label %bb.jt unwind label %bb.jw

bb.jt:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  %i.ym = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 6 uses
  store ptr %i.ym, ptr %43, align 8, !tbaa !10
  %i.yn = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  store i64 0, ptr %i.yn, align 8, !tbaa !62
  store i8 0, ptr %i.ym, align 8, !tbaa !14
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !59, !range !60, !noundef !61
  %i.yq = trunc nuw i8 %i.yp to i1
  br i1 %i.yq, label %bb.ju, label %bb.jy

bb.ju:                                            ; preds = %bb.jt
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(32) %i.yr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.jx

bb.jv:                                            ; preds = %bb.jm
  %i.ys = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.jw:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_520DisplayViewTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %bb.os

bb.jx:                                            ; preds = %bb.ka, %bb.ju, %bb.jz
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %bb.or

bb.jy:                                            ; preds = %bb.jt
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.yw = load i8, ptr %i.yv, align 8, !tbaa !46, !range !60, !noundef !61
  %i.yx = trunc nuw i8 %i.yw to i1
  %or.cond7 = select i1 %i.yx, i1 true, i1 %.2
  br i1 %or.cond7, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.yy = load ptr, ptr %4, align 16, !tbaa !64
  %i.yz = load ptr, ptr %9, align 8, !tbaa !63
  %i.za = load ptr, ptr %10, align 8, !tbaa !63
  %i.zb = invoke noundef ptr @_ZNK16OpenColorIO_v2_56Config19getDisplayViewLooksEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.yy, ptr noundef %i.yz, ptr noundef %i.za)
          to label %bb.ka unwind label %bb.jx     ; 2 uses

bb.ka:                                            ; preds = %bb.jz
  %i.zc = load i64, ptr %i.yn, align 8, !tbaa !62
  %i.zd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.zb) #22
  %i.ze = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %43, i64 noundef 0, i64 noundef %i.zc, ptr noundef nonnull %i.zb, i64 noundef %i.zd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.jx ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ka, %bb.ju, %bb.jy
  %i.zf = load i64, ptr %i.yn, align 8, !tbaa !62
  %i.zg = icmp eq i64 %i.zf, 0
  br i1 %i.zg, label %bb.lf, label %bb.kb

bb.kb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.zh = load ptr, ptr %19, align 16, !tbaa !70
  %i.zi = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.zh) #22 ; 2 uses
  br i1 %.2, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.zj = load ptr, ptr %43, align 8, !tbaa !63
  %i.zk = invoke noundef ptr @_ZN16OpenColorIO_v2_513LookTransform24GetLooksResultColorSpaceERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.zj)
          to label %bb.kd unwind label %bb.lb

bb.kd:                                            ; preds = %bb.kb, %bb.kc
  %i.zl = phi ptr [ %i.zk, %bb.kc ], [ %i.zi, %bb.kb ] ; 4 uses
  %.not = icmp eq ptr %i.zl, null
  br i1 %.not, label %bb.lf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !14
  %.not113 = icmp eq i8 %i.zm, 0
  br i1 %.not113, label %bb.lf, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  invoke void @_ZN16OpenColorIO_v2_513LookTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.37") align 8 %44)
          to label %bb.kg unwind label %bb.lc

bb.kg:                                            ; preds = %bb.kf
  %i.zn = load ptr, ptr %44, align 16, !tbaa !104
  invoke void @_ZN16OpenColorIO_v2_513LookTransform6setSrcEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.zn, ptr noundef %i.zi)
          to label %bb.kh unwind label %bb.ld

bb.kh:                                            ; preds = %bb.kg
  %i.zo = load ptr, ptr %44, align 16, !tbaa !104
  invoke void @_ZN16OpenColorIO_v2_513LookTransform6setDstEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.zo, ptr noundef nonnull %i.zl)
          to label %bb.ki unwind label %bb.ld

bb.ki:                                            ; preds = %bb.kh
  %i.zp = load ptr, ptr %44, align 16, !tbaa !104
  %i.zq = load ptr, ptr %43, align 8, !tbaa !63
  invoke void @_ZN16OpenColorIO_v2_513LookTransform8setLooksEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.zp, ptr noundef %i.zq)
          to label %bb.kj unwind label %bb.ld

bb.kj:                                            ; preds = %bb.ki
  %i.zr = load ptr, ptr %44, align 16, !tbaa !104
  invoke void @_ZN16OpenColorIO_v2_513LookTransform27setSkipColorSpaceConversionEb(ptr noundef nonnull align 8 dereferenceable(16) %i.zr, i1 noundef zeroext %.2)
          to label %bb.kk unwind label %bb.ld

bb.kk:                                            ; preds = %bb.kj
  %i.zs = load ptr, ptr %20, align 16, !tbaa !95  ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.zu = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !20 ; 2 uses
  %i.zw = load <2 x ptr>, ptr %44, align 16, !tbaa !30
  store <2 x ptr> %i.zw, ptr %45, align 16, !tbaa !30
  %.not.i.i.i304 = icmp eq ptr %i.zv, null
  br i1 %.not.i.i.i304, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_13LookTransformEvEERKS_IT_E.exit, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 8 ; 3 uses
  %i.zy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i305 = icmp eq i8 %i.zy, 0
  br i1 %.not.i.i.i.i305, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.zz = load i32, ptr %i.zx, align 4, !tbaa !31
  %i.aaa = add nsw i32 %i.zz, 1
  store i32 %i.aaa, ptr %i.zx, align 4, !tbaa !31
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_13LookTransformEvEERKS_IT_E.exit

bb.kn:                                            ; preds = %bb.kl
  %i.aab = atomicrmw volatile add ptr %i.zx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_13LookTransformEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_13LookTransformEvEERKS_IT_E.exit: ; preds = %bb.kk, %bb.km, %bb.kn
  %i.aac = load ptr, ptr %i.zs, align 8, !tbaa !8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 96
  %i.aae = load ptr, ptr %i.aad, align 8
  call void %i.aae(ptr noundef nonnull align 8 dereferenceable(8) %i.zs, ptr noundef nonnull align 8 %45) #22
  %i.aaf = load ptr, ptr %i.zt, align 8, !tbaa !20 ; 8 uses
  %.not.i.i306 = icmp eq ptr %i.aaf, null
  br i1 %.not.i.i306, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310, label %bb.ko

bb.ko:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_13LookTransformEvEERKS_IT_E.exit
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8 ; 4 uses
  %i.aah = load atomic i64, ptr %i.aag acquire, align 8 ; 2 uses
  %i.aai = icmp eq i64 %i.aah, 4294967297
  %i.aaj = trunc i64 %i.aah to i32                ; 2 uses
  br i1 %i.aai, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  store i32 0, ptr %i.aag, align 8, !tbaa !22
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  store i32 0, ptr %i.aak, align 4, !tbaa !24
  %i.aal = load ptr, ptr %i.aaf, align 8, !tbaa !8
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.aan = load ptr, ptr %i.aam, align 8
  call void %i.aan(ptr noundef nonnull align 8 dereferenceable(16) %i.aaf) #22, !inline_history !54
  %i.aao = load ptr, ptr %i.aaf, align 8, !tbaa !8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  %i.aaq = load ptr, ptr %i.aap, align 8
  call void %i.aaq(ptr noundef nonnull align 8 dereferenceable(16) %i.aaf) #22, !inline_history !54
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310

bb.kq:                                            ; preds = %bb.ko
  %i.aar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i307 = icmp eq i8 %i.aar, 0
  br i1 %.not.i.i.i307, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aas = add nsw i32 %i.aaj, -1
  store i32 %i.aas, ptr %i.aag, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i308

bb.ks:                                            ; preds = %bb.kq
  %i.aat = atomicrmw volatile add ptr %i.aag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i308

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i308: ; preds = %bb.ks, %bb.kr
  %.0.i.i.i.i309 = phi i32 [ %i.aaj, %bb.kr ], [ %i.aat, %bb.ks ]
  %i.aau = icmp eq i32 %.0.i.i.i.i309, 1
  br i1 %i.aau, label %bb.kt, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310, !prof !43

bb.kt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i308
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aaf) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_13LookTransformEvEERKS_IT_E.exit, %bb.kp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i308, %bb.kt
  %i.aav = load ptr, ptr %42, align 16, !tbaa !44
  invoke void @_ZN16OpenColorIO_v2_520DisplayViewTransform6setSrcEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aav, ptr noundef nonnull %i.zl)
          to label %bb.ku unwind label %bb.ld

bb.ku:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit310
end_hunk_3
