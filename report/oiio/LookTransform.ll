inline.NumInlined: 452
inline.NumDeleted: 201
begin_hunk_0
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<OpenColorIO_v2_5::FormatMetadataImpl, std::allocator<OpenColorIO_v2_5::FormatMetadataImpl>>::_Vector_impl" }
%"struct.std::_Vector_base<OpenColorIO_v2_5::FormatMetadataImpl, std::allocator<OpenColorIO_v2_5::FormatMetadataImpl>>::_Vector_impl" = type { %"struct.std::_Vector_base<OpenColorIO_v2_5::FormatMetadataImpl, std::allocator<OpenColorIO_v2_5::FormatMetadataImpl>>::_Vector_impl_data" }
%"struct.std::_Vector_base<OpenColorIO_v2_5::FormatMetadataImpl, std::allocator<OpenColorIO_v2_5::FormatMetadataImpl>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.OpenColorIO_v2_5::LookParseResult" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::vector<OpenColorIO_v2_5::LookParseResult::Token>, std::allocator<std::vector<OpenColorIO_v2_5::LookParseResult::Token>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<OpenColorIO_v2_5::LookParseResult::Token>, std::allocator<std::vector<OpenColorIO_v2_5::LookParseResult::Token>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<OpenColorIO_v2_5::LookParseResult::Token>, std::allocator<std::vector<OpenColorIO_v2_5::LookParseResult::Token>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<OpenColorIO_v2_5::LookParseResult::Token>, std::allocator<std::vector<OpenColorIO_v2_5::LookParseResult::Token>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr.40" = type { %"class.std::__shared_ptr.41" }
%"class.std::__shared_ptr.41" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.46" = type { %"class.std::__shared_ptr.47" }
%"class.std::__shared_ptr.47" = type { ptr, %"class.std::__shared_count" }

@_ZTVN16OpenColorIO_v2_513LookTransformE = unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_513LookTransformE, ptr @_ZNK16OpenColorIO_v2_513LookTransform18createEditableCopyEv, ptr @_ZNK16OpenColorIO_v2_513LookTransform12getDirectionEv, ptr @_ZN16OpenColorIO_v2_513LookTransform12setDirectionENS_18TransformDirectionE, ptr @_ZNK16OpenColorIO_v2_513LookTransform16getTransformTypeEv, ptr @_ZNK16OpenColorIO_v2_513LookTransform8validateEv, ptr @_ZN16OpenColorIO_v2_513LookTransformD1Ev, ptr @_ZN16OpenColorIO_v2_513LookTransformD0Ev] }, align 8
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str = private unnamed_addr constant [34 x i8] c"LookTransform validation failed: \00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"LookTransform: empty source color space name.\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"LookTransform: empty destination color space name.\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"<LookTransform\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" direction=\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c", src=\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c", dst=\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c", looks=\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c", skipCSConversion\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"BuildLookOps error.\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"The specified lookTransform specifies a src colorspace, '\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"', which is not defined.\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"The specified lookTransform specifies a dst colorspace, '\00", align 1
@_ZTIN16OpenColorIO_v2_520ExceptionMissingFileE = external constant ptr
@.str.15 = private unnamed_addr constant [8 x i8] c"  ...  \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c") \00", align 1
@_ZTIN16OpenColorIO_v2_513LookTransformE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_513LookTransformE, ptr @_ZTIN16OpenColorIO_v2_59TransformE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_513LookTransformE = constant [36 x i8] c"N16OpenColorIO_v2_513LookTransformE\00", align 1
@_ZTIN16OpenColorIO_v2_59TransformE = external constant ptr
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"RunLookTokens error. \00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"The specified look, '\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"', cannot be found. \00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c" (No looks defined in config).\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c" (looks: \00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c").\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"', requires processing in the ColorSpace, '\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"' which is not defined.\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_513LookTransformEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_513LookTransformEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_513LookTransformEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_513LookTransformEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_513LookTransformEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_513LookTransformEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_513LookTransformEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_513LookTransformEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_513LookTransformEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [103 x i8] c"St19_Sp_counted_deleterIPN16OpenColorIO_v2_513LookTransformEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSPFvPN16OpenColorIO_v2_513LookTransformEE = linkonce_odr constant [41 x i8] c"PFvPN16OpenColorIO_v2_513LookTransformEE\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8

@_ZN16OpenColorIO_v2_513LookTransformC1Ev = unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_513LookTransformC2Ev
@_ZN16OpenColorIO_v2_513LookTransformD1Ev = unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_513LookTransformD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_513LookTransform6CreateEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 6 uses
  invoke void @_ZN16OpenColorIO_v2_513LookTransformC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !13
  %i.c = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_513LookTransformEEC2IS1_PFvPS1_EvEEPT_T0_.exit unwind label %bb.c ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #22 ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #22, !inline_history !16
  invoke void @__cxa_rethrow() #23
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #24
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt10shared_ptrIN16OpenColorIO_v2_513LookTransformEEC2IS1_PFvPS1_EvEEPT_T0_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_513LookTransformEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @_ZN16OpenColorIO_v2_513LookTransform7deleterEPS0_, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.a, ptr %i.p, align 8, !tbaa !22
  store ptr %i.c, ptr %i.b, align 8, !tbaa !13
  ret void

bb.g:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #25
  br label %common.resume
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16OpenColorIO_v2_513LookTransform7deleterEPS0_(ptr noundef %0) #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(16) %0) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_513LookTransformC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_513LookTransformE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #21 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.c, align 4, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !34
  store i8 0, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.i, align 8, !tbaa !34
  store i8 0, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.l, align 8, !tbaa !34
  store i8 0, ptr %i.k, align 8, !tbaa !35
  store ptr %i.a, ptr %i.b, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_513LookTransform18createEditableCopyEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.0") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN16OpenColorIO_v2_513LookTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 6 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 6 uses
  %.not.i = icmp eq ptr %i.e, %i.b
  br i1 %.not.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513LookTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8, !tbaa !24
  store i32 %i.f, ptr %i.e, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.noexc2 unwind label %bb.c

.noexc2:                                          ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.noexc3 unwind label %bb.c

.noexc3:                                          ; preds = %.noexc2
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = load i8, ptr %i.m, align 4, !tbaa !32, !range !40, !noundef !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i8 %i.n, ptr %i.o, align 4, !tbaa !32
  %.pre = load ptr, ptr %2, align 8, !tbaa !7
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513LookTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_513LookTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %.noexc3
  %3 = phi ptr [ %i.c, %bb.a ], [ %.pre, %.noexc3 ]
  store ptr %3, ptr %0, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  store ptr %i.r, ptr %i.p, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.c:                                             ; preds = %.noexc2, %.noexc, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513LookTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513LookTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !19
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !45
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !45
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16OpenColorIO_v2_513LookTransformD2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_513LookTransformE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !35
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !35
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN16OpenColorIO_v2_513LookTransform4ImplD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !35
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #25
  br label %_ZN16OpenColorIO_v2_513LookTransform4ImplD2Ev.exit

_ZN16OpenColorIO_v2_513LookTransform4ImplD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 104) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_513LookTransform4ImplD2Ev.exit, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16OpenColorIO_v2_513LookTransformD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_513LookTransformD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK16OpenColorIO_v2_513LookTransform12getDirectionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  ret i32 %i.c
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN16OpenColorIO_v2_513LookTransform12setDirectionENS_18TransformDirectionE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  store i32 %1, ptr %i.b, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_513LookTransform8validateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  invoke void @_ZNK16OpenColorIO_v2_59Transform8validateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.k unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 3 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 1
  %i.c = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #22
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { ptr, i32 } %i.a, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
end_hunk_0
