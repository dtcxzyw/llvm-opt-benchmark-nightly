inline.NumInlined: 345
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<OpenColorIO_v2_5::GradingControlPoint, std::allocator<OpenColorIO_v2_5::GradingControlPoint>>::_Vector_impl" }
%"struct.std::_Vector_base<OpenColorIO_v2_5::GradingControlPoint, std::allocator<OpenColorIO_v2_5::GradingControlPoint>>::_Vector_impl" = type { %"struct.std::_Vector_base<OpenColorIO_v2_5::GradingControlPoint, std::allocator<OpenColorIO_v2_5::GradingControlPoint>>::_Vector_impl_data" }
%"struct.std::_Vector_base<OpenColorIO_v2_5::GradingControlPoint, std::allocator<OpenColorIO_v2_5::GradingControlPoint>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.OpenColorIO_v2_5::GradingBSplineCurveImpl" = type <{ %"class.OpenColorIO_v2_5::GradingBSplineCurve", %"class.std::vector", %"class.std::vector.0", i32, [4 x i8] }>
%"class.OpenColorIO_v2_5::GradingBSplineCurve" = type { ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.11" = type { %"class.std::__shared_ptr.12" }
%"class.std::__shared_ptr.12" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.20 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.20 = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::shared_ptr.5" = type { %"class.std::__shared_ptr.6" }
%"class.std::__shared_ptr.6" = type { ptr, %"class.std::__shared_count" }

$_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev = comdat any

$_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN16OpenColorIO_v2_519GradingRGBCurveImplD2Ev = comdat any

$_ZN16OpenColorIO_v2_519GradingRGBCurveImplD0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZSt10_ConstructIN16OpenColorIO_v2_519GradingRGBCurveImplEJRKSt10shared_ptrINS0_19GradingBSplineCurveEES6_S6_S6_EEvPT_DpOT0_ = comdat any

$_ZTIN16OpenColorIO_v2_515GradingRGBCurveE = comdat any

$_ZTSN16OpenColorIO_v2_515GradingRGBCurveE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZN16OpenColorIO_v2_512_GLOBAL__N_111DefaultCtrlE = internal global %"class.std::vector" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN16OpenColorIO_v2_512_GLOBAL__N_114DefaultCtrlLinE = internal global %"class.std::vector" zeroinitializer, align 8
@_ZN16OpenColorIO_v2_519GradingRGBCurveImpl7DefaultE = hidden global %"class.OpenColorIO_v2_5::GradingBSplineCurveImpl" zeroinitializer, align 8
@_ZN16OpenColorIO_v2_519GradingRGBCurveImpl10DefaultLinE = hidden global %"class.OpenColorIO_v2_5::GradingBSplineCurveImpl" zeroinitializer, align 8
@_ZTVN16OpenColorIO_v2_519GradingRGBCurveImplE = hidden constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_519GradingRGBCurveImplE, ptr @_ZNK16OpenColorIO_v2_519GradingRGBCurveImpl18createEditableCopyEv, ptr @_ZNK16OpenColorIO_v2_519GradingRGBCurveImpl8validateEv, ptr @_ZNK16OpenColorIO_v2_519GradingRGBCurveImpl10isIdentityEv, ptr @_ZNK16OpenColorIO_v2_519GradingRGBCurveImpl8getCurveENS_12RGBCurveTypeE, ptr @_ZN16OpenColorIO_v2_519GradingRGBCurveImpl8getCurveENS_12RGBCurveTypeE, ptr @_ZN16OpenColorIO_v2_519GradingRGBCurveImplD2Ev, ptr @_ZN16OpenColorIO_v2_519GradingRGBCurveImplD0Ev] }, align 8
@.str = private unnamed_addr constant [30 x i8] c"All curves have to be defined\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@_ZTIN16OpenColorIO_v2_515GradingRGBCurveE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_515GradingRGBCurveE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_515GradingRGBCurveE = linkonce_odr constant [38 x i8] c"N16OpenColorIO_v2_515GradingRGBCurveE\00", comdat, align 1
@_ZTIN16OpenColorIO_v2_519GradingRGBCurveImplE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_519GradingRGBCurveImplE, ptr @_ZTIN16OpenColorIO_v2_515GradingRGBCurveE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_519GradingRGBCurveImplE = hidden constant [42 x i8] c"N16OpenColorIO_v2_519GradingRGBCurveImplE\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"GradingRGBCurve validation failed for '\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"' curve \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"with: \00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"GradingRGBCurve validation failed: '\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"is of the wrong BSplineType.\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Invalid curve.\00", align 1
@_ZTVN16OpenColorIO_v2_523GradingBSplineCurveImplE = external constant { [15 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [105 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_GradingRGBCurve.cpp, ptr null }]
@switch.table._ZNK16OpenColorIO_v2_519GradingRGBCurveImpl8validateEv.1 = private unnamed_addr constant [4 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], align 8

@_ZN16OpenColorIO_v2_519GradingRGBCurveImplC1ENS_12GradingStyleE = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN16OpenColorIO_v2_519GradingRGBCurveImplC2ENS_12GradingStyleE
@_ZN16OpenColorIO_v2_519GradingRGBCurveImplC1ERKSt10shared_ptrIKNS_19GradingBSplineCurveEES6_S6_S6_ = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN16OpenColorIO_v2_519GradingRGBCurveImplC2ERKSt10shared_ptrIKNS_19GradingBSplineCurveEES6_S6_S6_
@_ZN16OpenColorIO_v2_519GradingRGBCurveImplC1ERKSt10shared_ptrIKNS_15GradingRGBCurveEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN16OpenColorIO_v2_519GradingRGBCurveImplC2ERKSt10shared_ptrIKNS_15GradingRGBCurveEE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #19
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC1ERKSt6vectorINS_19GradingControlPointESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_523GradingBSplineCurveImplE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_519GradingRGBCurveImplC2ENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 72)) %0, i32 noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.invoke:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %3 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_519GradingRGBCurveImplE, i64 16), ptr %0, align 8, !tbaa !13
  %.ptr6 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.ptr6, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = icmp eq i32 %1, 1
  %_ZN16OpenColorIO_v2_519GradingRGBCurveImpl10DefaultLinE._ZN16OpenColorIO_v2_519GradingRGBCurveImpl7DefaultE = select i1 %i.a, ptr @_ZN16OpenColorIO_v2_519GradingRGBCurveImpl10DefaultLinE, ptr @_ZN16OpenColorIO_v2_519GradingRGBCurveImpl7DefaultE
  invoke void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl18createEditableCopyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(60) %_ZN16OpenColorIO_v2_519GradingRGBCurveImpl10DefaultLinE._ZN16OpenColorIO_v2_519GradingRGBCurveImpl7DefaultE)
          to label %bb.a unwind label %bb.ba

bb.a:                                             ; preds = %.invoke
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x ptr>, ptr %2, align 16, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20   ; 8 uses
  store <2 x ptr> %i.d, ptr %.ptr6, align 8, !tbaa !19
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !25
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20, !inline_history !26
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20, !inline_history !26
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !20   ; 8 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !25
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !30
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ak = load ptr, ptr %.ptr6, align 8, !tbaa !31 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.n unwind label %bb.bb

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load <2 x ptr>, ptr %3, align 16, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 8 uses
  store <2 x ptr> %i.aq, ptr %i.an, align 8, !tbaa !19
  %.not.i.i.i.i13 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i13, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit17, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.as, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !25
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #20, !inline_history !26
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #20, !inline_history !26
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit17

bb.q:                                             ; preds = %bb.o
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i14 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i14, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15

bb.s:                                             ; preds = %bb.q
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i16 = phi i32 [ %i.av, %bb.r ], [ %i.bf, %bb.s ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i16, 1
  br i1 %i.bg, label %bb.t, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit17, !prof !29

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit17

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit17: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15, %bb.t
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22, label %bb.u

bb.u:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bi, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !25
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #20, !inline_history !30
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #20, !inline_history !30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_519GradingRGBCurveImplC2ENS_12GradingStyleE:.invoke
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit27

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit27: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i25, %bb.ag
  %i.cu = load ptr, ptr %i.cb, align 8, !tbaa !20 ; 8 uses
  %.not.i.i28 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i28, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.cv, align 8, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !25
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #20, !inline_history !30
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #20, !inline_history !30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32

bb.aj:                                            ; preds = %bb.ah
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i29 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i29, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

bb.al:                                            ; preds = %bb.aj
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i31 = phi i32 [ %i.cy, %bb.ak ], [ %i.di, %bb.al ]
  %i.dj = icmp eq i32 %.0.i.i.i.i31, 1
  br i1 %i.dj, label %bb.am, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32, !prof !29

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit27, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.dk = load ptr, ptr %.ptr6, align 8, !tbaa !31 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !13
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %bb.an unwind label %bb.bd

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dq = load <2 x ptr>, ptr %5, align 16, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !20 ; 8 uses
  store <2 x ptr> %i.dq, ptr %i.dn, align 8, !tbaa !19
  %.not.i.i.i.i33 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i33, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ds, align 8, !tbaa !23
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !25
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !13
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #20, !inline_history !26
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #20, !inline_history !26
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37

bb.aq:                                            ; preds = %bb.ao
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i34 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i.i34, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35

bb.as:                                            ; preds = %bb.aq
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i36 = phi i32 [ %i.dv, %bb.ar ], [ %i.ef, %bb.as ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i.i36, 1
  br i1 %i.eg, label %bb.at, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37, !prof !29

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37: ; preds = %bb.an, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i35, %bb.at
  %i.eh = load ptr, ptr %i.do, align 8, !tbaa !20 ; 8 uses
  %.not.i.i38 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i38, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42, label %bb.au

bb.au:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.ei, align 8, !tbaa !23
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !25
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !13
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #20, !inline_history !30
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #20, !inline_history !30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42

bb.aw:                                            ; preds = %bb.au
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i39 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i39, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40

bb.ay:                                            ; preds = %bb.aw
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i41 = phi i32 [ %i.el, %bb.ax ], [ %i.ev, %bb.ay ]
  %i.ew = icmp eq i32 %.0.i.i.i.i41, 1
  br i1 %i.ew, label %bb.az, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42, !prof !29

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit42: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit37, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i40, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.ba:                                            ; preds = %.invoke
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.be

bb.bb:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.be

bb.bc:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.be

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit32
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.fa, %bb.bd ], [ %i.ez, %bb.bc ], [ %i.ey, %bb.bb ], [ %i.ex, %bb.ba ]
  %.ptr11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr11) #20
  %.ptr11.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr11.1) #20
  %.ptr11.2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr11.2) #20
  %.ptr11.3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr11.3) #20
  resume { ptr, i32 } %.pn
}

declare void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl18createEditableCopyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_519GradingRGBCurveImplC2ERKSt10shared_ptrIKNS_19GradingBSplineCurveEES6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_519GradingRGBCurveImplE, i64 16), ptr %0, align 8, !tbaa !13
  %.ptr13 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.ptr13, i8 0, i64 64, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !34     ; 3 uses
  %i.b = load ptr, ptr %2, align 8
  %i.c = load ptr, ptr %3, align 8
  %i.d = load ptr, ptr %4, align 8
  %i.e = insertelement <4 x ptr> poison, ptr %i.a, i64 0
  %i.f = insertelement <4 x ptr> %i.e, ptr %i.b, i64 1
  %i.g = insertelement <4 x ptr> %i.f, ptr %i.c, i64 2
  %i.h = insertelement <4 x ptr> %i.g, ptr %i.d, i64 3
  %.fr = freeze <4 x ptr> %i.h
  %i.i = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.j = bitcast <4 x i1> %i.i to i4
  %.not = icmp eq i4 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #21
          to label %bb.bl unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #20
  br label %bb.bk

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.bg

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load <2 x ptr>, ptr %5, align 16, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !20   ; 8 uses
  store <2 x ptr> %i.r, ptr %.ptr13, align 8, !tbaa !19
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !25
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !26
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !26
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, !prof !29

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !20  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.aj, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !25
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #20, !inline_history !30
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #20, !inline_history !30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.am, %bb.q ], [ %i.aw, %bb.r ]
  %i.ax = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ax, label %bb.s, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ay = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %bb.t unwind label %bb.bh

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load <2 x ptr>, ptr %6, align 16, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 8 uses
  store <2 x ptr> %i.be, ptr %i.bb, align 8, !tbaa !19
  %.not.i.i.i.i20 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i20, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit24, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bg, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !25
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #20, !inline_history !26
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #20, !inline_history !26
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit24

bb.w:                                             ; preds = %bb.u
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i21 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i21, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

bb.y:                                             ; preds = %bb.w
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i22

end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_519GradingRGBCurveImplC2ERKSt10shared_ptrIKNS_19GradingBSplineCurveEES6_S6_S6_:bb.a
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit34

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit34: ; preds = %bb.ag, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i32, %bb.am
  %i.di = load ptr, ptr %i.cp, align 8, !tbaa !20 ; 8 uses
  %.not.i.i35 = icmp eq ptr %i.di, null
  br i1 %.not.i.i35, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39, label %bb.an

bb.an:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit34
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.dj, align 8, !tbaa !23
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !25
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !13
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #20, !inline_history !30
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #20, !inline_history !30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39

bb.ap:                                            ; preds = %bb.an
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i36 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i36, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

bb.ar:                                            ; preds = %bb.ap
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i38 = phi i32 [ %i.dm, %bb.aq ], [ %i.dw, %bb.ar ]
  %i.dx = icmp eq i32 %.0.i.i.i.i38, 1
  br i1 %i.dx, label %bb.as, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39, !prof !29

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit34, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.dy = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !13
  %i.ea = load ptr, ptr %i.dz, align 8
  invoke void %i.ea(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.dy)
          to label %bb.at unwind label %bb.bj

bb.at:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ee = load <2 x ptr>, ptr %8, align 16, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !20 ; 8 uses
  store <2 x ptr> %i.ee, ptr %i.eb, align 8, !tbaa !19
  %.not.i.i.i.i40 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i40, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit44, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.eg, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !25
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !13
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #20, !inline_history !26
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #20, !inline_history !26
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit44

bb.aw:                                            ; preds = %bb.au
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i41 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i.i41, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i42

bb.ay:                                            ; preds = %bb.aw
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i42

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i42: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i43 = phi i32 [ %i.ej, %bb.ax ], [ %i.et, %bb.ay ]
  %i.eu = icmp eq i32 %.0.i.i.i.i.i.i43, 1
  br i1 %i.eu, label %bb.az, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit44, !prof !29

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i42
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit44

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit44: ; preds = %bb.at, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i42, %bb.az
  %i.ev = load ptr, ptr %i.ec, align 8, !tbaa !20 ; 8 uses
  %.not.i.i45 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i45, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit44
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  %i.ex = load atomic i64, ptr %i.ew acquire, align 8 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 4294967297
  %i.ez = trunc i64 %i.ex to i32                  ; 2 uses
  br i1 %i.ey, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.ew, align 8, !tbaa !23
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 0, ptr %i.fa, align 4, !tbaa !25
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #20, !inline_history !30
  %i.fe = load ptr, ptr %i.ev, align 8, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #20, !inline_history !30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49

bb.bc:                                            ; preds = %bb.ba
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i46 = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i46, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fi = add nsw i32 %i.ez, -1
  store i32 %i.fi, ptr %i.ew, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47

bb.be:                                            ; preds = %bb.bc
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i48 = phi i32 [ %i.ez, %bb.bd ], [ %i.fj, %bb.be ]
  %i.fk = icmp eq i32 %.0.i.i.i.i48, 1
  br i1 %i.fk, label %bb.bf, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49, !prof !29

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit49: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit44, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret void

bb.bg:                                            ; preds = %bb.f
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.bk

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.bk

bb.bi:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit29
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.fo, %bb.bj ], [ %i.fn, %bb.bi ], [ %i.fm, %bb.bh ], [ %i.fl, %bb.bg ], [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  %.ptr18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr18) #20
  %.ptr18.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr18.1) #20
  %.ptr18.2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr18.2) #20
  %.ptr18.3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr18.3) #20
  resume { ptr, i32 } %.pn

bb.bl:                                            ; preds = %bb.c
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_519GradingRGBCurveImplC2ERKSt10shared_ptrIKNS_15GradingRGBCurveEE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 22 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_519GradingRGBCurveImplE, i64 16), ptr %0, align 8, !tbaa !13
  %.ptr13 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.ptr13, i8 0, i64 64, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_515GradingRGBCurveE, ptr nonnull @_ZTIN16OpenColorIO_v2_519GradingRGBCurveImplE, i64 0) #20 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %bb.bc

bb.c:                                             ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load <2 x ptr>, ptr %2, align 16, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20   ; 8 uses
  store <2 x ptr> %i.j, ptr %.ptr13, align 8, !tbaa !19
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !25
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20, !inline_history !26
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20, !inline_history !26
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, !prof !29

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !20  ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ab, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !25
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #20, !inline_history !30
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #20, !inline_history !30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !13
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %bb.p unwind label %bb.bc

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load <2 x ptr>, ptr %2, align 16, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !20 ; 8 uses
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !19
  %.not.i.i.i.i.1 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.1, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.1 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = add nsw i32 %i.bb, -1
  store i32 %i.bd, ptr %i.ay, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.1

bb.t:                                             ; preds = %bb.r
  %i.be = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.1

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.1: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.1 = phi i32 [ %i.bb, %bb.s ], [ %i.be, %bb.t ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.1, 1
  br i1 %i.bf, label %bb.u, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.1, !prof !29

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.1
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.1

bb.v:                                             ; preds = %bb.q
  store i32 0, ptr %i.ay, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !25
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #20, !inline_history !26
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #20, !inline_history !26
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.1

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.1: ; preds = %bb.v, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.1, %bb.p
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !20  ; 8 uses
  %.not.i.i.1 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.1, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, label %bb.w

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_519GradingRGBCurveImplC2ERKSt10shared_ptrIKNS_15GradingRGBCurveEE:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.2: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.2 = phi i32 [ %i.co, %bb.af ], [ %i.cr, %bb.ag ]
  %i.cs = icmp eq i32 %.0.i.i.i.i.i.i.2, 1
  br i1 %i.cs, label %bb.ah, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.2, !prof !29

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.2
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.2

bb.ai:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cl, align 8, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !25
  %i.cu = load ptr, ptr %i.ck, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #20, !inline_history !26
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #20, !inline_history !26
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.2

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.2: ; preds = %bb.ai, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.2, %bb.ac
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !20  ; 8 uses
  %.not.i.i.2 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.2, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.2
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.2 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.2, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dg = add nsw i32 %i.de, -1
  store i32 %i.dg, ptr %i.db, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2

bb.am:                                            ; preds = %bb.ak
  %i.dh = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.2 = phi i32 [ %i.de, %bb.al ], [ %i.dh, %bb.am ]
  %i.di = icmp eq i32 %.0.i.i.i.i.2, 1
  br i1 %i.di, label %bb.an, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, !prof !29

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2

bb.ao:                                            ; preds = %bb.aj
  store i32 0, ptr %i.db, align 8, !tbaa !23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !25
  %i.dk = load ptr, ptr %i.da, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #20, !inline_history !30
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #20, !inline_history !30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2: ; preds = %bb.ao, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2, %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !31 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !13
  %i.dt = load ptr, ptr %i.ds, align 8
  invoke void %i.dt(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
          to label %bb.ap unwind label %bb.bc

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dw = load <2 x ptr>, ptr %2, align 16, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !20 ; 8 uses
  store <2 x ptr> %i.dw, ptr %i.du, align 8, !tbaa !19
  %.not.i.i.i.i.3 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.3, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.3, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 4294967297
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  br i1 %i.ea, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.3 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i.3, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ed = add nsw i32 %i.eb, -1
  store i32 %i.ed, ptr %i.dy, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.3

bb.at:                                            ; preds = %bb.ar
  %i.ee = atomicrmw volatile add ptr %i.dy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.3: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.3 = phi i32 [ %i.eb, %bb.as ], [ %i.ee, %bb.at ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i.3, 1
  br i1 %i.ef, label %bb.au, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.3, !prof !29

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.3
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #20
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.3

bb.av:                                            ; preds = %bb.aq
  store i32 0, ptr %i.dy, align 8, !tbaa !23
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.eg, align 4, !tbaa !25
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #20, !inline_history !26
  %i.ek = load ptr, ptr %i.dx, align 8, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #20, !inline_history !26
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.3

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.3: ; preds = %bb.av, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.3, %bb.ap
  %i.en = load ptr, ptr %i.d, align 8, !tbaa !20  ; 8 uses
  %.not.i.i.3 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.3, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.3 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.3, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.et = add nsw i32 %i.er, -1
  store i32 %i.et, ptr %i.eo, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3

bb.az:                                            ; preds = %bb.ax
  %i.eu = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.3 = phi i32 [ %i.er, %bb.ay ], [ %i.eu, %bb.az ]
  %i.ev = icmp eq i32 %.0.i.i.i.i.3, 1
  br i1 %i.ev, label %bb.ba, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3, !prof !29

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3

bb.bb:                                            ; preds = %bb.aw
  store i32 0, ptr %i.eo, align 8, !tbaa !23
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !25
  %i.ex = load ptr, ptr %i.en, align 8, !tbaa !13
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #20, !inline_history !30
  %i.fa = load ptr, ptr %i.en, align 8, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #20, !inline_history !30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3: ; preds = %bb.bb, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3, %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_.exit.3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.thread

bb.bc:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.preheader
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.ptr17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr17) #20
  %.ptr17.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr17.1) #20
  %.ptr17.2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr17.2) #20
  %.ptr17.3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.ptr17.3) #20
  resume { ptr, i32 } %i.fd

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_519GradingRGBCurveImpl18createEditableCopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.11") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22, !noalias !39, !inline_history !42 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 8 uses
  store i32 1, ptr %i.f, align 8, !tbaa !23, !noalias !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  store i32 1, ptr %i.g, align 4, !tbaa !25, !noalias !39
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8, !tbaa !13, !noalias !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN16OpenColorIO_v2_519GradingRGBCurveImplEJRKSt10shared_ptrINS0_19GradingBSplineCurveEES6_S6_S6_EEvPT_DpOT0_(ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !39, !inline_history !43

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519GradingRGBCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 88) #19, !noalias !39, !inline_history !42
  resume { ptr, i32 } %i.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.j, align 8, !tbaa !20
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.f, align 8, !tbaa !28
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.f, align 8, !tbaa !28
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_515GradingRGBCurveEEC2INS0_19GradingRGBCurveImplEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_515GradingRGBCurveEEC2INS0_19GradingRGBCurveImplEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_515GradingRGBCurveEEC2INS0_19GradingRGBCurveImplEvEERKS_IT_E.exit: ; preds = %bb.d, %bb.c
  %i.o = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_515GradingRGBCurveEEC2INS0_19GradingRGBCurveImplEvEERKS_IT_E.exit
  store i32 0, ptr %i.f, align 8, !tbaa !23
  store i32 0, ptr %i.g, align 4, !tbaa !25
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20, !inline_history !46
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20, !inline_history !46
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_515GradingRGBCurveEEC2INS0_19GradingRGBCurveImplEvEERKS_IT_E.exit
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i2 = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %i.q, -1
  store i32 %i.y, ptr %i.f, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.g ], [ %i.z, %bb.h ]
  %i.aa = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aa, label %bb.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_519GradingRGBCurveImpl8validateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.o unwind label %bb.b

bb.b:                                             ; preds = %bb.ab, %bb.z, %bb.x, %bb.a
  %.01550.lcssa.wide = phi i64 [ 0, %bb.a ], [ 1, %bb.x ], [ 2, %bb.z ], [ 3, %bb.ab ]
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 3 uses
  %i.g = extractvalue { ptr, i32 } %i.f, 1
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #20
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.ae

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { ptr, i32 } %i.f, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 39)
          to label %switch.lookup unwind label %bb.j ; 0 uses

switch.lookup:                                    ; preds = %bb.d
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_519GradingRGBCurveImpl8validateEv.1, i64 %.01550.lcssa.wide
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %switch.load)
          to label %bb.e unwind label %bb.j       ; 3 uses

bb.e:                                             ; preds = %switch.lookup
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.5, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %bb.e
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.s)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %2, align 8, !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef %i.v)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #21
          to label %bb.ag unwind label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %switch.lookup
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.g
  %.013 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !27
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.013, label %bb.l, label %bb.m
end_hunk_3
