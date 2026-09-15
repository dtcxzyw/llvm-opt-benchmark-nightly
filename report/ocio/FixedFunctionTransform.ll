Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FixedFunctionTransform?download=true
inline.NumInlined: 313
inline.NumDeleted: 173
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr.14" = type { %"class.std::__shared_ptr.15" }
%"class.std::__shared_ptr.15" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZNK16OpenColorIO_v2_522FixedFunctionTransform16getTransformTypeEv = comdat any

$_ZN16OpenColorIO_v2_526FixedFunctionTransformImplD2Ev = comdat any

$_ZN16OpenColorIO_v2_526FixedFunctionTransformImplD0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt6vectorIdSaIdEEaSERKS1_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZTIN16OpenColorIO_v2_522FixedFunctionTransformE = comdat any

$_ZTSN16OpenColorIO_v2_522FixedFunctionTransformE = comdat any

$_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSPFvPN16OpenColorIO_v2_522FixedFunctionTransformEE = comdat any

@.str = private unnamed_addr constant [65 x i8] c"FixedFunctionTransform::Create: params pointer must not be null.\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@_ZTVN16OpenColorIO_v2_526FixedFunctionTransformImplE = hidden constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_526FixedFunctionTransformImplE, ptr @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl18createEditableCopyEv, ptr @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl12getDirectionEv, ptr @_ZN16OpenColorIO_v2_526FixedFunctionTransformImpl12setDirectionENS_18TransformDirectionE, ptr @_ZNK16OpenColorIO_v2_522FixedFunctionTransform16getTransformTypeEv, ptr @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl8validateEv, ptr @_ZN16OpenColorIO_v2_526FixedFunctionTransformImplD2Ev, ptr @_ZN16OpenColorIO_v2_526FixedFunctionTransformImplD0Ev, ptr @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl17getFormatMetadataEv, ptr @_ZN16OpenColorIO_v2_526FixedFunctionTransformImpl17getFormatMetadataEv, ptr @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl6equalsERKNS_22FixedFunctionTransformE, ptr @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl8getStyleEv, ptr @_ZN16OpenColorIO_v2_526FixedFunctionTransformImpl8setStyleENS_18FixedFunctionStyleE, ptr @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl12getNumParamsEv, ptr @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl9getParamsEPd, ptr @_ZN16OpenColorIO_v2_526FixedFunctionTransformImpl9setParamsEPKdm] }, align 8
@_ZTIN16OpenColorIO_v2_59TransformE = external constant ptr
@_ZTIN16OpenColorIO_v2_526FixedFunctionTransformImplE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_526FixedFunctionTransformImplE, ptr @_ZTIN16OpenColorIO_v2_522FixedFunctionTransformE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_526FixedFunctionTransformImplE = hidden constant [49 x i8] c"N16OpenColorIO_v2_526FixedFunctionTransformImplE\00", align 1
@_ZTIN16OpenColorIO_v2_522FixedFunctionTransformE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_522FixedFunctionTransformE, ptr @_ZTIN16OpenColorIO_v2_59TransformE }, comdat, align 8
@_ZTSN16OpenColorIO_v2_522FixedFunctionTransformE = linkonce_odr constant [45 x i8] c"N16OpenColorIO_v2_522FixedFunctionTransformE\00", comdat, align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"FixedFunctionTransform validation failed: \00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"FixedFunctionTransform::setParams: params pointer must not be null.\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"<FixedFunction \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"direction=\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c", style=\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c", params=[\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c">\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [143 x i8] c"St19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSPFvPN16OpenColorIO_v2_522FixedFunctionTransformEE = linkonce_odr constant [50 x i8] c"PFvPN16OpenColorIO_v2_522FixedFunctionTransformEE\00", comdat, align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC1ENS_18FixedFunctionStyleE = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleE
@_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC1ENS_18FixedFunctionStyleERKSt6vectorIdSaIdEE = hidden unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleERKSt6vectorIdSaIdEE

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_522FixedFunctionTransform6CreateENS_18FixedFunctionStyleE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #18 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN16OpenColorIO_v2_526FixedFunctionTransformImplE, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = invoke noundef i32 @_ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS_18FixedFunctionStyleENS_18TransformDirectionE(i32 noundef %1, i32 noundef 0)
          to label %.noexc unwind label %bb.f, !inline_history !65

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC1ENS0_5StyleE(ptr noundef nonnull align 8 dereferenceable(200) %i.c, i32 noundef %i.b)
          to label %_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleE.exit unwind label %bb.f, !inline_history !65

_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleE.exit: ; preds = %.noexc
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !16
  %i.e = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_522FixedFunctionTransformEEC2INS0_26FixedFunctionTransformImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleE.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #19 ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #19, !inline_history !17
  invoke void @__cxa_rethrow() #20
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.l, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #21
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN16OpenColorIO_v2_522FixedFunctionTransformEEC2INS0_26FixedFunctionTransformImplEPFvPS1_EvEEPT_T0_.exit: ; preds = %_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @_ZN16OpenColorIO_v2_526FixedFunctionTransformImpl7deleterEPNS_22FixedFunctionTransformE, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.a, ptr %i.r, align 8, !tbaa !25
  store ptr %i.e, ptr %i.d, align 8, !tbaa !16
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 208) #22
  br label %common.resume
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_526FixedFunctionTransformImpl7deleterEPNS_22FixedFunctionTransformE(ptr noundef %0) #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(208) %0) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_522FixedFunctionTransform6CreateENS_18FixedFunctionStyleEPKdm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.8", align 8     ; 14 uses
  %i.a = icmp eq ptr %2, null
  %i.b = icmp ne i64 %3, 0                        ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #19
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.e = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.e, label %bb.f, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.f, align 8
  br i1 %i.b, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.g = shl nuw nsw i64 %3, 3                    ; 2 uses
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18
          to label %.noexc19 unwind label %bb.k   ; 6 uses

.noexc19:                                         ; preds = %bb.g
  store ptr %i.h, ptr %4, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %3
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !29
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !31
  %i.k = getelementptr i8, ptr %i.h, i64 8        ; 3 uses
  %i.l = add nsw i64 %3, -1                       ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

bb.i:                                             ; preds = %.noexc19
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 8 %2, i64 %i.g, i1 false)
  br label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

bb.j:                                             ; preds = %.noexc19
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.k, ptr %i.p, align 8, !tbaa !32
  %i.q = load double, ptr %2, align 8, !tbaa !31
  store double %i.q, ptr %i.h, align 8, !tbaa !31
  br label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit23

bb.l:                                             ; preds = %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit: ; preds = %bb.j, %bb.i, %bb.h
  %i.t = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #18
          to label %bb.m unwind label %bb.l       ; 7 uses

bb.m:                                             ; preds = %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN16OpenColorIO_v2_526FixedFunctionTransformImplE, i64 16), ptr %i.t, align 8, !tbaa !9
  %i.u = invoke noundef i32 @_ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS_18FixedFunctionStyleENS_18TransformDirectionE(i32 noundef %1, i32 noundef 0)
          to label %.noexc20 unwind label %bb.t, !inline_history !66

.noexc20:                                         ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  invoke void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC1ENS0_5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(200) %i.v, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleERKSt6vectorIdSaIdEE.exit unwind label %bb.t, !inline_history !66

_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleERKSt6vectorIdSaIdEE.exit: ; preds = %.noexc20
  store ptr %i.t, ptr %0, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !16
  %i.x = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.r unwind label %bb.n       ; 6 uses

bb.n:                                             ; preds = %_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleERKSt6vectorIdSaIdEE.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = call ptr @__cxa_begin_catch(ptr %i.z) #19 ; 0 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(208) %i.t) #19, !inline_history !17
  invoke void @__cxa_rethrow() #20
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #21
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable

bb.r:                                             ; preds = %_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleERKSt6vectorIdSaIdEE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 1, ptr %i.ah, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 1, ptr %i.ai, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_526FixedFunctionTransformImplEPFvPNS0_22FixedFunctionTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.x, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr @_ZN16OpenColorIO_v2_526FixedFunctionTransformImpl7deleterEPNS_22FixedFunctionTransformE, ptr %i.aj, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.t, ptr %i.ak, align 8, !tbaa !25
  store ptr %i.x, ptr %i.w, align 8, !tbaa !16
  %i.al = load ptr, ptr %4, align 8, !tbaa !28    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.t:                                             ; preds = %.noexc20, %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 208) #22
  br label %.body

.body:                                            ; preds = %bb.o, %bb.l, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %i.s, %bb.l ], [ %i.ae, %bb.o ] ; 2 uses
  %i.as = load ptr, ptr %4, align 8, !tbaa !28    ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIdSaIdEED2Ev.exit23, label %bb.u

bb.u:                                             ; preds = %.body
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !29
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit23

_ZNSt6vectorIdSaIdEED2Ev.exit23:                  ; preds = %bb.u, %.body, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.r, %bb.k ], [ %.pn, %.body ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit23, %bb.d
  %.pn17 = phi { ptr, i32 } [ %i.d, %bb.d ], [ %.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit23 ]
  resume { ptr, i32 } %.pn17
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 8)) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN16OpenColorIO_v2_526FixedFunctionTransformImplE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = tail call noundef i32 @_ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS_18FixedFunctionStyleENS_18TransformDirectionE(i32 noundef %1, i32 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC1ENS0_5StyleE(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %i.a)
  ret void
}

declare noundef i32 @_ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS_18FixedFunctionStyleENS_18TransformDirectionE(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC1ENS0_5StyleE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_526FixedFunctionTransformImplC2ENS_18FixedFunctionStyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 8)) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN16OpenColorIO_v2_526FixedFunctionTransformImplE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = tail call noundef i32 @_ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS_18FixedFunctionStyleENS_18TransformDirectionE(i32 noundef %1, i32 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC1ENS0_5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

declare void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC1ENS0_5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl8validateEv:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.t, %bb.j ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !60     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.x = load i64, ptr %i.v, align 8, !tbaa !61
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.l:                                             ; preds = %bb.b
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.merged = phi { ptr, i32 } [ %i.e, %bb.c ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.merged

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #21
  unreachable

bb.o:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_59Transform8validateEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #9

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !67
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !68
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !60
  %i.g = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.g, ptr %i.b, align 8, !tbaa !61
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !61
  store i8 %i.i, ptr %i.h, align 1, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !69
  %i.l = load ptr, ptr %0, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_526FixedFunctionTransformImpl17getFormatMetadataEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(208) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl17getFormatMetadataEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(208) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl6equalsERKNS_22FixedFunctionTransformE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN16OpenColorIO_v2_522FixedFunctionTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_526FixedFunctionTransformImplE, i64 0) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_19FixedFunctionOpDataES2_(ptr noundef nonnull align 8 dereferenceable(200) %i.b, ptr noundef nonnull align 8 dereferenceable(200) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %.0

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_19FixedFunctionOpDataES2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl8getStyleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59
  %i.c = tail call noundef i32 @_ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS0_5StyleE(i32 noundef %i.b)
  ret i32 %i.c
}

declare noundef i32 @_ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS0_5StyleE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_526FixedFunctionTransformImpl8setStyleENS_18FixedFunctionStyleE(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(208) %0) #19
  %i.e = tail call noundef i32 @_ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS_18FixedFunctionStyleENS_18TransformDirectionE(i32 noundef %1, i32 noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.e, ptr %i.f, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl12getNumParamsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_526FixedFunctionTransformImpl9setParamsEPKdm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.8", align 8     ; 14 uses
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #19
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.e, label %bb.f, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.f, align 8
  br i1 %i.b, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.g = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18
          to label %.noexc17 unwind label %bb.k   ; 6 uses

.noexc17:                                         ; preds = %bb.g
  store ptr %i.h, ptr %3, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %2
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !29
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !31
  %i.k = getelementptr i8, ptr %i.h, i64 8        ; 3 uses
  %i.l = add nsw i64 %2, -1                       ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

bb.i:                                             ; preds = %.noexc17
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 8 %1, i64 %i.g, i1 false)
  br label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

bb.j:                                             ; preds = %.noexc17
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.k, ptr %i.p, align 8, !tbaa !32
  %i.q = load double, ptr %1, align 8, !tbaa !31
  store double %i.q, ptr %i.h, align 8, !tbaa !31
  br label %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.l:                                             ; preds = %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !28     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit: ; preds = %bb.j, %bb.i, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN16OpenColorIO_v2_519FixedFunctionOpData9setParamsERKSt6vectorIdSaIdEE.exit unwind label %bb.l ; 0 uses

_ZN16OpenColorIO_v2_519FixedFunctionOpData9setParamsERKSt6vectorIdSaIdEE.exit: ; preds = %_ZSt4copyIPKdN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET0_T_SA_S9_.exit
  %i.ab = load ptr, ptr %3, align 8, !tbaa !28    ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIdSaIdEED2Ev.exit20, label %bb.n

bb.n:                                             ; preds = %_ZN16OpenColorIO_v2_519FixedFunctionOpData9setParamsERKSt6vectorIdSaIdEE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit20

_ZNSt6vectorIdSaIdEED2Ev.exit20:                  ; preds = %_ZN16OpenColorIO_v2_519FixedFunctionOpData9setParamsERKSt6vectorIdSaIdEE.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.m, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.s, %bb.l ], [ %i.s, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.d
  %.pn15 = phi { ptr, i32 } [ %i.d, %bb.d ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_526FixedFunctionTransformImpl9getParamsEPd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !33
  %.pre11 = ptrtoint ptr %.pre10 to i64
  %.pre12 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi13 = phi i64 [ %.pre12, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.pre-phi = phi i64 [ %.pre11, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.i, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi13           ; 4 uses
  %i.m = icmp sgt i64 %i.l, 8
  br i1 %i.m, label %bb.e, label %bb.d, !prof !63

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 8
  br i1 %i.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_.exit.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.j, i64 %i.l, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %i.k, i64 %i.l, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_.exit.thread: ; preds = %bb.d
  %i.o = load double, ptr %i.j, align 8, !tbaa !31 ; 2 uses
  store double %i.o, ptr %i.k, align 8, !tbaa !31
  store double %i.o, ptr %1, align 8, !tbaa !31
  br label %bb.f

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_.exit: ; preds = %bb.d, %bb.e
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_.exit.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_22FixedFunctionTransformE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 15) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 10) ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.g = tail call noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef %i.f) ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !9
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !79
  %i.n = or i32 %i.m, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i32 noundef %i.n)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #19
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.g, i64 noundef %i.o) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 8) ; 0 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.v = tail call noundef ptr @_ZN16OpenColorIO_v2_526FixedFunctionStyleToStringENS_18FixedFunctionStyleE(i32 noundef %i.u) ; 3 uses
  %.not.i25 = icmp eq ptr %i.v, null
  br i1 %.not.i25, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !9
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y ; 2 uses
end_hunk_1
