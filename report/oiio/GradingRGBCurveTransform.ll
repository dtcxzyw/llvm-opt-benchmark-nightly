inline.NumInlined: 188
inline.NumDeleted: 101
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.11" = type { %"class.std::__shared_ptr.12" }
%"class.std::__shared_ptr.12" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::shared_ptr.15" = type { %"class.std::__shared_ptr.16" }
%"class.std::__shared_ptr.16" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.28" = type { %"class.std::__shared_ptr.29" }
%"class.std::__shared_ptr.29" = type { ptr, %"class.std::__shared_count" }

@_ZTVN16OpenColorIO_v2_528GradingRGBCurveTransformImplE = hidden unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_528GradingRGBCurveTransformImplE, ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl18createEditableCopyEv, ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl12getDirectionEv, ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl12setDirectionENS_18TransformDirectionE, ptr @_ZNK16OpenColorIO_v2_524GradingRGBCurveTransform16getTransformTypeEv, ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl8validateEv, ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplD2Ev, ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplD0Ev, ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl17getFormatMetadataEv, ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl17getFormatMetadataEv, ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl6equalsERKNS_24GradingRGBCurveTransformE, ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl8getStyleEv, ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl8setStyleENS_12GradingStyleE, ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl8getValueEv, ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl8setValueERKSt10shared_ptrIKNS_15GradingRGBCurveEE, ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl8getSlopeENS_12RGBCurveTypeEm, ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl8setSlopeENS_12RGBCurveTypeEmf, ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl16slopesAreDefaultENS_12RGBCurveTypeE, ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl17getBypassLinToLogEv, ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl17setBypassLinToLogEb, ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl9isDynamicEv, ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl11makeDynamicEv, ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl14makeNonDynamicEv] }, align 8
@_ZTIN16OpenColorIO_v2_524GradingRGBCurveTransformE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_524GradingRGBCurveTransformE, ptr @_ZTIN16OpenColorIO_v2_59TransformE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_524GradingRGBCurveTransformE = linkonce_odr constant [47 x i8] c"N16OpenColorIO_v2_524GradingRGBCurveTransformE\00", align 1
@_ZTIN16OpenColorIO_v2_59TransformE = external constant ptr
@_ZTIN16OpenColorIO_v2_528GradingRGBCurveTransformImplE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_528GradingRGBCurveTransformImplE, ptr @_ZTIN16OpenColorIO_v2_524GradingRGBCurveTransformE }, align 8
@_ZTSN16OpenColorIO_v2_528GradingRGBCurveTransformImplE = hidden constant [51 x i8] c"N16OpenColorIO_v2_528GradingRGBCurveTransformImplE\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str = private unnamed_addr constant [45 x i8] c"GradingRGBCurveTransform validation failed: \00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"<GradingRGBCurveTransform \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"direction=\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c", style=\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c", values=\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c", bypass_lintolog\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c", dynamic\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"<x=\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c", y=\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"<control_points=[\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c", slp=\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"<red=\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c", green=\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c", blue=\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c", master=\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [147 x i8] c"St19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSPFvPN16OpenColorIO_v2_524GradingRGBCurveTransformEE = linkonce_odr constant [52 x i8] c"PFvPN16OpenColorIO_v2_524GradingRGBCurveTransformEE\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplC1ENS_12GradingStyleE = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplC2ENS_12GradingStyleE

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_524GradingRGBCurveTransform6CreateENS_12GradingStyleE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #19 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN16OpenColorIO_v2_528GradingRGBCurveTransformImplE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpDataC1ENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %1)
          to label %_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplC2ENS_12GradingStyleE.exit unwind label %bb.f, !inline_history !9

_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplC2ENS_12GradingStyleE.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !16
  %i.d = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_524GradingRGBCurveTransformEEC2INS0_28GradingRGBCurveTransformImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplC2ENS_12GradingStyleE.exit
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #20 ; 0 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #20, !inline_history !17
  invoke void @__cxa_rethrow() #21
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN16OpenColorIO_v2_524GradingRGBCurveTransformEEC2INS0_28GradingRGBCurveTransformImplEPFvPS1_EvEEPT_T0_.exit: ; preds = %_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplC2ENS_12GradingStyleE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl7deleterEPNS_24GradingRGBCurveTransformE, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.a, ptr %i.q, align 8, !tbaa !23
  store ptr %i.d, ptr %i.c, align 8, !tbaa !16
  ret void

bb.f:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 208) #23
  br label %common.resume
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl7deleterEPNS_24GradingRGBCurveTransformE(ptr noundef %0) #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(208) %0) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplC2ENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 8)) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN16OpenColorIO_v2_528GradingRGBCurveTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpDataC1ENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i32 noundef %1)
  ret void
}

declare void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpDataC1ENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl18createEditableCopyEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.11") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(208) %1) #20
  call void @_ZN16OpenColorIO_v2_524GradingRGBCurveTransform6CreateENS_12GradingStyleE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %2, align 16, !tbaa !10, !nonnull !26, !noundef !26
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.f, ptr nonnull @_ZTIN16OpenColorIO_v2_524GradingRGBCurveTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_528GradingRGBCurveTransformImplE, i64 0) #20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN16OpenColorIO_v2_521GradingRGBCurveOpDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %i.h, ptr noundef nonnull align 8 dereferenceable(200) %i.e)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_524GradingRGBCurveTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.b ; 0 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_524GradingRGBCurveTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  %3 = load <2 x ptr>, ptr %2, align 16, !tbaa !27
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_524GradingRGBCurveTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN16OpenColorIO_v2_521GradingRGBCurveOpDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_524GradingRGBCurveTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !20
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !28
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl12getDirectionEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef i32 @_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData12getDirectionEv(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #20
  ret i32 %i.b
}

; Function Attrs: nounwind
declare noundef i32 @_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData12getDirectionEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpData12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i32 noundef %1) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpData12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl8validateEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  invoke void @_ZNK16OpenColorIO_v2_59Transform8validateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(200) %i.a)
          to label %bb.l unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 3 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 1
  %i.g = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #20
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i32 } %i.e, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #20
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.n)
          to label %bb.f unwind label %bb.i       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !31
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef %i.q)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #21
          to label %bb.o unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.p) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.t, %bb.j ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.x = load i64, ptr %i.v, align 8, !tbaa !29
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
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
  call void @__clang_call_terminate(ptr %i.aa) #22
  unreachable

bb.o:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_59Transform8validateEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !36
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.17) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !37
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !31
  %i.g = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.g, ptr %i.b, align 8, !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.i, ptr %i.h, align 1, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !38
  %i.l = load ptr, ptr %0, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl17getFormatMetadataEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(208) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl17getFormatMetadataEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(208) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl6equalsERKNS_24GradingRGBCurveTransformE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN16OpenColorIO_v2_524GradingRGBCurveTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_528GradingRGBCurveTransformImplE, i64 0) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_21GradingRGBCurveOpDataES2_(ptr noundef nonnull align 8 dereferenceable(200) %i.b, ptr noundef nonnull align 8 dereferenceable(200) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %.0

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #22
  unreachable
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_21GradingRGBCurveOpDataES2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl8getStyleEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl8setStyleENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpData8setStyleENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i32 noundef %1) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpData8setStyleENS_12GradingStyleE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl8getValueEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.15") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65, !noalias !62 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7, !noalias !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !62
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(152) %i.b), !noalias !62, !inline_history !66 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16, !noalias !62 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !27, !noalias !62
  store <2 x ptr> %i.i, ptr %0, align 8, !tbaa !27, !alias.scope !62
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData8getValueEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !62
  %.not.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3, !noalias !62
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3, !noalias !62
  br label %_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData8getValueEv.exit

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !62 ; 0 uses
  br label %_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData8getValueEv.exit

_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData8getValueEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl8setValueERKSt10shared_ptrIKNS_15GradingRGBCurveEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !67
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl8getSlopeENS_12RGBCurveTypeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef float @_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData8getSlopeENS_12RGBCurveTypeEm(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i32 noundef %1, i64 noundef %2)
  ret float %i.b
}

declare noundef float @_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData8getSlopeENS_12RGBCurveTypeEm(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl8setSlopeENS_12RGBCurveTypeEmf(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, i64 noundef %2, float noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpData8setSlopeENS_12RGBCurveTypeEmf(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i32 noundef %1, i64 noundef %2, float noundef %3)
  ret void
}

declare void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpData8setSlopeENS_12RGBCurveTypeEmf(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i64 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl16slopesAreDefaultENS_12RGBCurveTypeE(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData16slopesAreDefaultENS_12RGBCurveTypeE(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i32 noundef %1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData16slopesAreDefaultENS_12RGBCurveTypeE(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl17getBypassLinToLogEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68, !range !69, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl17setBypassLinToLogEb(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(208) initializes((200, 201)) %0, i1 noundef zeroext %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 %i.a, ptr %i.b, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_528GradingRGBCurveTransformImpl9isDynamicEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData9isDynamicEv(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #20
  ret i1 %i.b
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData9isDynamicEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl11makeDynamicEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65, !noalias !70 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16, !noalias !70 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !70
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !70
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3, !noalias !70
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !70 ; 0 uses
  br label %bb.e

_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 1, ptr %i.j, align 4, !tbaa !73
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 1, ptr %i.k, align 4, !tbaa !73
  %i.l = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.e, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !20
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !77
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !77
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl14makeNonDynamicEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65, !noalias !78 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16, !noalias !78 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !78
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !78
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3, !noalias !78
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !78 ; 0 uses
  br label %bb.e

_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 0, ptr %i.j, align 4, !tbaa !73
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 0, ptr %i.k, align 4, !tbaa !73
  %i.l = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.e, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !20
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !77
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !77
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_24GradingRGBCurveTransformE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.15", align 8 ; 5 uses
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.c = load ptr, ptr %1, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %i.g = invoke noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef %i.f)
          to label %bb.b unwind label %bb.s       ; 3 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !7
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !81
  %i.n = or i32 %i.m, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i32 noundef %i.n)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #20
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.g, i64 noundef %i.o)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.c, %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.r = load ptr, ptr %1, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %i.v = invoke noundef ptr @_ZN16OpenColorIO_v2_520GradingStyleToStringENS_12GradingStyleE(i32 noundef %i.u)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %.not.i18 = icmp eq ptr %i.v, null
  br i1 %.not.i18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !7
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !81
  %i.ac = or i32 %i.ab, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.z, i32 noundef %i.ac)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.ad = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #20
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.v, i64 noundef %i.ad)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %bb.f, %bb.g
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ag = load ptr, ptr %1, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.aj = load ptr, ptr %2, align 8, !tbaa !90
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_15GradingRGBCurveE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.i unwind label %bb.s       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16 ; 8 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.an, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !20
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #20, !inline_history !93
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #20, !inline_history !93
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.aq, %bb.m ], [ %i.ba, %bb.n ]
  %i.bb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bb, label %bb.o, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.bc = load ptr, ptr %1, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %i.bf, label %bb.q, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25

bb.q:                                             ; preds = %bb.p
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %bb.q, %bb.p
  %i.bh = load ptr, ptr %1, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  br i1 %i.bk, label %bb.r, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  ret ptr %0

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %bb.r, %bb.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %bb.g, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #22
  unreachable
}

declare noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN16OpenColorIO_v2_520GradingStyleToStringENS_12GradingStyleE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_15GradingRGBCurveE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.28", align 8 ; 7 uses
  %3 = alloca %"class.std::shared_ptr.28", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.28", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.28", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.b = load ptr, ptr %1, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0)
  %i.e = load ptr, ptr %2, align 8, !tbaa !94
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_19GradingBSplineCurveE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.ad      ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !20
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20, !inline_history !97
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20, !inline_history !97
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 8) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.y = load ptr, ptr %1, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !94
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_19GradingBSplineCurveE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.i unwind label %bb.ae      ; 0 uses

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16 ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.af, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !20
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #20, !inline_history !97
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #20, !inline_history !97
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.l:                                             ; preds = %bb.j
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i14 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.n:                                             ; preds = %bb.l
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i16 = phi i32 [ %i.ai, %bb.m ], [ %i.as, %bb.n ]
  %i.at = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.at, label %bb.o, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, !prof !30

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.15, i64 noundef 7) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.av = load ptr, ptr %1, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 2)
  %i.ay = load ptr, ptr %4, align 8, !tbaa !94
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_19GradingBSplineCurveE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %bb.p unwind label %bb.af      ; 0 uses

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !16 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bc, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !20
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #20, !inline_history !97
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #20, !inline_history !97
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22

bb.s:                                             ; preds = %bb.q
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i19 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i19, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.u:                                             ; preds = %bb.s
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i21 = phi i32 [ %i.bf, %bb.t ], [ %i.bp, %bb.u ]
  %i.bq = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.bq, label %bb.v, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22, !prof !30

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.16, i64 noundef 9) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bs = load ptr, ptr %1, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 3)
  %i.bv = load ptr, ptr %5, align 8, !tbaa !94
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_19GradingBSplineCurveE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %bb.w unwind label %bb.ag      ; 0 uses

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16 ; 8 uses
  %.not.i.i23 = icmp eq ptr %i.by, null
  br i1 %.not.i.i23, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bz, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !20
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #20, !inline_history !97
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #20, !inline_history !97
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27

bb.z:                                             ; preds = %bb.x
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i24 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i24, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25

bb.ab:                                            ; preds = %bb.z
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i26 = phi i32 [ %i.cc, %bb.aa ], [ %i.cm, %bb.ab ]
  %i.cn = icmp eq i32 %.0.i.i.i.i26, 1
  br i1 %i.cn, label %bb.ac, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27, !prof !30

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27: ; preds = %bb.w, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  ret ptr %0

bb.ad:                                            ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ah

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.ag ], [ %i.cr, %bb.af ], [ %i.cq, %bb.ae ], [ %i.cp, %bb.ad ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_19GradingControlPointE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 3) ; 0 uses
  %i.b = load float, ptr %1, align 4, !tbaa !98
  %i.c = fpext float %i.b to double
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.c) ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.9, i64 noundef 4) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !101
  %i.h = fpext float %i.g to double
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_19GradingBSplineCurveE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 17) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1) #20 ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 2) ; 0 uses
  ret ptr %0

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.015 = phi i64 [ %i.aj, %bb.d ], [ 0, %bb.a ]  ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.k = load ptr, ptr %1, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.015) ; 4 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 3) ; 0 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !98
  %i.q = fpext float %i.p to double
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.q) ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.9, i64 noundef 4) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !101
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload = load float, ptr %i.n, align 4, !tbaa !102
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !102
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 3) ; 0 uses
  %i.w = fpext float %.sroa.0.0.copyload to double
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.w) ; 2 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.9, i64 noundef 4) ; 0 uses
  %i.z = fpext float %.sroa.4.0.copyload to double
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, double noundef %i.z) ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.11, i64 noundef 6) ; 0 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef float %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.015)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi float [ %i.u, %bb.b ], [ %i.af, %bb.c ]
  %.sink17 = phi ptr [ %i.r, %bb.b ], [ %i.aa, %bb.c ]
  %i.ag = fpext float %.sink to double
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.sink17, double noundef %i.ag)
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.aj = add nuw i64 %.015, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !103
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !20
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !28
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK16OpenColorIO_v2_524GradingRGBCurveTransform16getTransformTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 {
bb.a:
  ret i32 12
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN16OpenColorIO_v2_528GradingRGBCurveTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN16OpenColorIO_v2_528GradingRGBCurveTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #20, !inline_history !105
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !106
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !106
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107
  invoke void %i.b(ptr noundef %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS1_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSPFvPN16OpenColorIO_v2_524GradingRGBCurveTransformEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(52) @_ZTSPFvPN16OpenColorIO_v2_524GradingRGBCurveTransformEE) #20
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(none) }
attributes #9 = { cold noreturn }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplC2ENS_12GradingStyleE}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_524GradingRGBCurveTransformELN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0, !14, i64 8}
!12 = !{!"p1 _ZTSN16OpenColorIO_v2_524GradingRGBCurveTransformE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!15 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImpl7deleterEPNS_24GradingRGBCurveTransformE}
!18 = !{!19, !4, i64 8}
!19 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!20 = !{!19, !4, i64 12}
!21 = !{!22, !13, i64 0}
!22 = !{!"_ZTSSt14_Sp_ebo_helperILi0EPFvPN16OpenColorIO_v2_524GradingRGBCurveTransformEELb0EE", !13, i64 0}
!23 = !{!24, !25, i64 8}
!24 = !{!"_ZTSNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !22, i64 0, !25, i64 8}
!25 = !{!"p1 _ZTSN16OpenColorIO_v2_528GradingRGBCurveTransformImplE", !13, i64 0}
!26 = !{}
!27 = !{!13, !13, i64 0}
!28 = distinct !{null, null}
!29 = !{!5, !5, i64 0}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!32, !34, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !35, i64 8, !5, i64 16}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!34 = !{!"p1 omnipotent char", !13, i64 0}
!35 = !{!"long", !5, i64 0}
!36 = !{!33, !34, i64 0}
!37 = !{!35, !35, i64 0}
!38 = !{!32, !35, i64 8}
!39 = !{!40, !56, i64 168}
!40 = !{!"_ZTSN16OpenColorIO_v2_521GradingRGBCurveOpDataE", !41, i64 0, !56, i64 168, !57, i64 176, !60, i64 192, !61, i64 196}
!41 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !42, i64 8, !44, i64 48}
!42 = !{!"_ZTSSt5mutex", !43, i64 0}
!43 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!44 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !45, i64 0, !32, i64 8, !32, i64 40, !46, i64 72, !51, i64 96}
!45 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!46 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !13, i64 0}
!51 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !52, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !13, i64 0}
!56 = !{!"_ZTSN16OpenColorIO_v2_512GradingStyleE", !5, i64 0}
!57 = !{!"_ZTSSt10shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEE", !58, i64 0}
!58 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EE", !59, i64 0, !14, i64 8}
!59 = !{!"p1 _ZTSN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplE", !13, i64 0}
!60 = !{!"bool", !5, i64 0}
!61 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !5, i64 0}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData8getValueEv: argument 0"}
!64 = distinct !{!64, !"_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData8getValueEv"}
!65 = !{!58, !59, i64 0}
!66 = distinct !{null}
!67 = distinct !{null}
!68 = !{!40, !60, i64 192}
!69 = !{i8 0, i8 2}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv: argument 0"}
!72 = distinct !{!72, !"_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv"}
!73 = !{!74, !60, i64 12}
!74 = !{!"_ZTSN16OpenColorIO_v2_519DynamicPropertyImplE", !75, i64 0, !76, i64 8, !60, i64 12}
!75 = !{!"_ZTSN16OpenColorIO_v2_515DynamicPropertyE"}
!76 = !{!"_ZTSN16OpenColorIO_v2_519DynamicPropertyTypeE", !5, i64 0}
!77 = distinct !{null, null, null}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv: argument 0"}
!80 = distinct !{!80, !"_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv"}
!81 = !{!82, !84, i64 32}
!82 = !{!"_ZTSSt8ios_base", !35, i64 8, !35, i64 16, !83, i64 24, !84, i64 28, !84, i64 32, !85, i64 40, !86, i64 48, !5, i64 64, !4, i64 192, !87, i64 200, !88, i64 208}
!83 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!84 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!85 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!86 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !35, i64 8}
!87 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!88 = !{!"_ZTSSt6locale", !89, i64 0}
!89 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!90 = !{!91, !92, i64 0}
!91 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EE", !92, i64 0, !14, i64 8}
!92 = !{!"p1 _ZTSN16OpenColorIO_v2_515GradingRGBCurveE", !13, i64 0}
!93 = distinct !{null, null, null}
!94 = !{!95, !96, i64 0}
!95 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EE", !96, i64 0, !14, i64 8}
!96 = !{!"p1 _ZTSN16OpenColorIO_v2_519GradingBSplineCurveE", !13, i64 0}
!97 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!98 = !{!99, !100, i64 0}
!99 = !{!"_ZTSN16OpenColorIO_v2_519GradingControlPointE", !100, i64 0, !100, i64 4}
!100 = !{!"float", !5, i64 0}
!101 = !{!99, !100, i64 4}
!102 = !{!100, !100, i64 0}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{ptr @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplD2Ev}
!106 = distinct !{null}
!107 = !{!108, !25, i64 24}
!108 = !{!"_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0, !24, i64 16}
!109 = !{!110, !34, i64 8}
!110 = !{!"_ZTSSt9type_info", !34, i64 8}
end_hunk_0
