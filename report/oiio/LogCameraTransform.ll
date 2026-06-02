inline.NumInlined: 250
inline.NumDeleted: 128
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.13" = type { %"class.std::__shared_ptr.14" }
%"class.std::__shared_ptr.14" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

@_ZTVN16OpenColorIO_v2_522LogCameraTransformImplE = hidden unnamed_addr constant { [27 x ptr] } { [27 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_522LogCameraTransformImplE, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl18createEditableCopyEv, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl12getDirectionEv, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl12setDirectionENS_18TransformDirectionE, ptr @_ZNK16OpenColorIO_v2_518LogCameraTransform16getTransformTypeEv, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl8validateEv, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImplD2Ev, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImplD0Ev, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl17getFormatMetadataEv, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl17getFormatMetadataEv, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl6equalsERKNS_18LogCameraTransformE, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl7getBaseEv, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl7setBaseEd, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl20getLogSideSlopeValueERA3_d, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl20setLogSideSlopeValueERA3_Kd, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl21getLogSideOffsetValueERA3_d, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl21setLogSideOffsetValueERA3_Kd, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl20getLinSideSlopeValueERA3_d, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl20setLinSideSlopeValueERA3_Kd, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl21getLinSideOffsetValueERA3_d, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl21setLinSideOffsetValueERA3_Kd, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl20getLinSideBreakValueERA3_d, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl20setLinSideBreakValueERA3_Kd, ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl19getLinearSlopeValueERA3_d, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl19setLinearSlopeValueERA3_Kd, ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl21unsetLinearSlopeValueEv] }, align 8
@_ZZNK16OpenColorIO_v2_522LogCameraTransformImpl18createEditableCopyEvE6LIN_SB = internal constant [3 x double] [double 1.000000e-01, double 1.000000e-01, double 1.000000e-01], align 16
@_ZTIN16OpenColorIO_v2_518LogCameraTransformE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_518LogCameraTransformE, ptr @_ZTIN16OpenColorIO_v2_59TransformE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_518LogCameraTransformE = linkonce_odr constant [41 x i8] c"N16OpenColorIO_v2_518LogCameraTransformE\00", align 1
@_ZTIN16OpenColorIO_v2_59TransformE = external constant ptr
@_ZTIN16OpenColorIO_v2_522LogCameraTransformImplE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_522LogCameraTransformImplE, ptr @_ZTIN16OpenColorIO_v2_518LogCameraTransformE }, align 8
@_ZTSN16OpenColorIO_v2_522LogCameraTransformImplE = hidden constant [45 x i8] c"N16OpenColorIO_v2_522LogCameraTransformImplE\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str = private unnamed_addr constant [32 x i8] c"LinSideBreak has to be defined.\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"LogCameraTransform validation failed: \00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"<LogCameraTransform\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" direction=\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c", base=\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c", logSideSlope=[\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c", logSideOffset=[\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c", linSideSlope=[\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c", linSideOffset=[\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c", linSideBreak=[\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c", linearSlope=[\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c">\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [135 x i8] c"St19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSPFvPN16OpenColorIO_v2_518LogCameraTransformEE = linkonce_odr constant [46 x i8] c"PFvPN16OpenColorIO_v2_518LogCameraTransformEE\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN16OpenColorIO_v2_522LogCameraTransformImplC1ERA3_Kd = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImplC2ERA3_Kd

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_518LogCameraTransform6CreateERA3_Kd(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #18 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 200) (i8, ptr @_ZTVN16OpenColorIO_v2_522LogCameraTransformImplE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59LogOpDataC1EdNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(252) %i.b, double noundef 2.000000e+00, i32 noundef 0)
          to label %.noexc unwind label %bb.g, !inline_history !9

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN16OpenColorIO_v2_59LogOpData8setValueENS_18LogAffineParameterERA3_Kd(ptr noundef nonnull align 8 dereferenceable(252) %i.b, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN16OpenColorIO_v2_522LogCameraTransformImplC2ERA3_Kd.exit unwind label %bb.b, !inline_history !9

bb.b:                                             ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN16OpenColorIO_v2_59LogOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(252) %i.b) #19, !inline_history !9
  br label %.body

_ZN16OpenColorIO_v2_522LogCameraTransformImplC2ERA3_Kd.exit: ; preds = %.noexc
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !16
  %i.e = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_518LogCameraTransformEEC2INS0_22LogCameraTransformImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.c ; 6 uses

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_522LogCameraTransformImplC2ERA3_Kd.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #19 ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #19, !inline_history !17
  invoke void @__cxa_rethrow() #20
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.l, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #21
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt10shared_ptrIN16OpenColorIO_v2_518LogCameraTransformEEC2INS0_22LogCameraTransformImplEPFvPS1_EvEEPT_T0_.exit: ; preds = %_ZN16OpenColorIO_v2_522LogCameraTransformImplC2ERA3_Kd.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl7deleterEPNS_18LogCameraTransformE, ptr %i.q, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.a, ptr %i.r, align 8, !tbaa !23
  store ptr %i.e, ptr %i.d, align 8, !tbaa !16
  ret void

bb.g:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.c, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 264) #22
  br label %common.resume
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImpl7deleterEPNS_18LogCameraTransformE(ptr noundef %0) #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(264) %0) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImplC2ERA3_Kd(ptr noundef nonnull align 8 dereferenceable(264) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 200) (i8, ptr @_ZTVN16OpenColorIO_v2_522LogCameraTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN16OpenColorIO_v2_59LogOpDataC1EdNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(252) %i.a, double noundef 2.000000e+00, i32 noundef 0)
  invoke void @_ZN16OpenColorIO_v2_59LogOpData8setValueENS_18LogAffineParameterERA3_Kd(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN16OpenColorIO_v2_59LogOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(252) %i.a) #19
  resume { ptr, i32 } %i.b
}

declare void @_ZN16OpenColorIO_v2_59LogOpDataC1EdNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(252), double noundef, i32 noundef) unnamed_addr #4

declare void @_ZN16OpenColorIO_v2_59LogOpData8setValueENS_18LogAffineParameterERA3_Kd(ptr noundef nonnull align 8 dereferenceable(252), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59LogOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(252)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl18createEditableCopyEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.13") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN16OpenColorIO_v2_518LogCameraTransform6CreateERA3_Kd(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK16OpenColorIO_v2_522LogCameraTransformImpl18createEditableCopyEvE6LIN_SB)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %2, align 16, !tbaa !10, !nonnull !26, !noundef !26
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN16OpenColorIO_v2_518LogCameraTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_522LogCameraTransformImplE, i64 0) #19 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN16OpenColorIO_v2_56OpDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(252) %i.d, ptr noundef nonnull align 8 dereferenceable(252) %i.a)
          to label %.noexc unwind label %bb.b     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc2 unwind label %bb.b    ; 0 uses

.noexc2:                                          ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc3 unwind label %bb.b    ; 0 uses

.noexc3:                                          ; preds = %.noexc2
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.n = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_518LogCameraTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.b ; 0 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_518LogCameraTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc3
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  %3 = load <2 x ptr>, ptr %2, align 16, !tbaa !27
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.b:                                             ; preds = %.noexc3, %.noexc2, %.noexc, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_518LogCameraTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_518LogCameraTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !28
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !28
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
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl12getDirectionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImpl12setDirectionENS_18TransformDirectionE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(264) initializes((256, 260)) %0, i32 noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %1, ptr %i.a, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl8validateEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  invoke void @_ZNK16OpenColorIO_v2_59Transform8validateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(252) %i.a)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 33
  br i1 %i.l, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
          to label %bb.t unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.n = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.o, %bb.g ] ; 3 uses
  %.05 = extractvalue { ptr, i32 } %.pn, 1
  %i.p = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #19
  %i.q = icmp eq i32 %.05, %i.p
  br i1 %i.q, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %.0) #19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #19
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.v)
          to label %bb.k unwind label %bb.n       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.x = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !61
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef %i.y)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
          to label %bb.t unwind label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.x) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn10 = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.ab, %bb.o ] ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !29
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn10.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %.pn10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn10, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

bb.q:                                             ; preds = %bb.c
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.merged = phi { ptr, i32 } [ %.pn, %bb.h ], [ %.pn10.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.merged

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #21
  unreachable

bb.t:                                             ; preds = %bb.l, %bb.e
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_59Transform8validateEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !62
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !63
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !61
  %i.g = load i64, ptr %i.a, align 8, !tbaa !63
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
  %i.j = load i64, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !64
  %i.l = load ptr, ptr %0, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl17getFormatMetadataEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(264) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl17getFormatMetadataEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(264) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl6equalsERKNS_18LogCameraTransformE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN16OpenColorIO_v2_518LogCameraTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_522LogCameraTransformImplE, i64 0) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_9LogOpDataES2_(ptr noundef nonnull align 8 dereferenceable(252) %i.b, ptr noundef nonnull align 8 dereferenceable(252) %i.d)
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

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_9LogOpDataES2_(ptr noundef nonnull align 8 dereferenceable(252), ptr noundef nonnull align 8 dereferenceable(252)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImpl7setBaseEd(ptr noundef nonnull align 8 dereferenceable(264) %0, double noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_59LogOpData7setBaseEd(ptr noundef nonnull align 8 dereferenceable(252) %i.a, double noundef %1) #19
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59LogOpData7setBaseEd(ptr noundef nonnull align 8 dereferenceable(252), double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl7getBaseEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef double @_ZNK16OpenColorIO_v2_59LogOpData7getBaseEv(ptr noundef nonnull align 8 dereferenceable(252) %i.a) #19
  ret double %i.b
}

; Function Attrs: nounwind
declare noundef double @_ZNK16OpenColorIO_v2_59LogOpData7getBaseEv(ptr noundef nonnull align 8 dereferenceable(252)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImpl20setLogSideSlopeValueERA3_Kd(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN16OpenColorIO_v2_59LogOpData8setValueENS_18LogAffineParameterERA3_Kd(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImpl21setLogSideOffsetValueERA3_Kd(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN16OpenColorIO_v2_59LogOpData8setValueENS_18LogAffineParameterERA3_Kd(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImpl20setLinSideSlopeValueERA3_Kd(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN16OpenColorIO_v2_59LogOpData8setValueENS_18LogAffineParameterERA3_Kd(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImpl21setLinSideOffsetValueERA3_Kd(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN16OpenColorIO_v2_59LogOpData8setValueENS_18LogAffineParameterERA3_Kd(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl20getLogSideSlopeValueERA3_d(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData8getValueENS_18LogAffineParameterERA3_d(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData8getValueENS_18LogAffineParameterERA3_d(ptr noundef nonnull align 8 dereferenceable(252), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl21getLogSideOffsetValueERA3_d(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData8getValueENS_18LogAffineParameterERA3_d(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl20getLinSideSlopeValueERA3_d(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData8getValueENS_18LogAffineParameterERA3_d(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %1) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl21getLinSideOffsetValueERA3_d(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData8getValueENS_18LogAffineParameterERA3_d(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %1) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImpl20setLinSideBreakValueERA3_Kd(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN16OpenColorIO_v2_59LogOpData8setValueENS_18LogAffineParameterERA3_Kd(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImpl19setLinearSlopeValueERA3_Kd(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_59LogOpData8setValueENS_18LogAffineParameterERA3_Kd(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImpl21unsetLinearSlopeValueEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_59LogOpData16unsetLinearSlopeEv(ptr noundef nonnull align 8 dereferenceable(252) %i.a)
  ret void
}

declare void @_ZN16OpenColorIO_v2_59LogOpData16unsetLinearSlopeEv(ptr noundef nonnull align 8 dereferenceable(252)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl20getLinSideBreakValueERA3_d(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData8getValueENS_18LogAffineParameterERA3_d(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %1) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_522LogCameraTransformImpl19getLinearSlopeValueERA3_d(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData8getValueENS_18LogAffineParameterERA3_d(ptr noundef nonnull align 8 dereferenceable(252) %i.a, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_18LogCameraTransformE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 16 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 19) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 11) ; 0 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.h = tail call noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef %i.g) ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !7
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !65
  %i.o = or i32 %i.n, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.o)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #19
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.h, i64 noundef %i.p) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 7) ; 0 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef double %i.u(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.v) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.x = load ptr, ptr %1, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #19
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 16) ; 0 uses
  %i.ab = load double, ptr %i.a, align 16, !tbaa !74
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.ab) ; 2 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !74
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, double noundef %i.af) ; 2 uses
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.aj = load double, ptr %i.ai, align 16, !tbaa !74
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.aj)
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #19
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 17) ; 0 uses
  %i.aq = load double, ptr %i.a, align 16, !tbaa !74
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.aq) ; 2 uses
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.at = load double, ptr %i.ae, align 8, !tbaa !74
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, double noundef %i.at) ; 2 uses
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.aw = load double, ptr %i.ai, align 16, !tbaa !74
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, double noundef %i.aw)
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.az = load ptr, ptr %1, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #19
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 16) ; 0 uses
  %i.bd = load double, ptr %i.a, align 16, !tbaa !74
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.bd) ; 2 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.bg = load double, ptr %i.ae, align 8, !tbaa !74
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, double noundef %i.bg) ; 2 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.bj = load double, ptr %i.ai, align 16, !tbaa !74
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, double noundef %i.bj)
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.bm = load ptr, ptr %1, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #19
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 17) ; 0 uses
  %i.bq = load double, ptr %i.a, align 16, !tbaa !74
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.bq) ; 2 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.bt = load double, ptr %i.ae, align 8, !tbaa !74
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.br, double noundef %i.bt) ; 2 uses
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.bw = load double, ptr %i.ai, align 16, !tbaa !74
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, double noundef %i.bw)
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 160
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #19
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.11, i64 noundef 16) ; 0 uses
  %i.cd = load double, ptr %i.a, align 16, !tbaa !74
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.cd) ; 2 uses
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.cg = load double, ptr %i.ae, align 8, !tbaa !74
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, double noundef %i.cg) ; 2 uses
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.cj = load double, ptr %i.ai, align 16, !tbaa !74
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, double noundef %i.cj)
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.cm = load ptr, ptr %1, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 176
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.cp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 15) ; 0 uses
  %i.cr = load double, ptr %i.a, align 16, !tbaa !74
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.cr) ; 2 uses
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.cu = load double, ptr %i.ae, align 8, !tbaa !74
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, double noundef %i.cu) ; 2 uses
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  %i.cx = load double, ptr %i.ai, align 16, !tbaa !74
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, double noundef %i.cx)
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %0
}

declare noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK16OpenColorIO_v2_518LogCameraTransform16getTransformTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 {
bb.a:
  ret i32 16
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImplD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 200) (i8, ptr @_ZTVN16OpenColorIO_v2_522LogCameraTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_59LogOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(252) %i.a) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_522LogCameraTransformImplD0Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 200) (i8, ptr @_ZTVN16OpenColorIO_v2_522LogCameraTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_59LogOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(252) %i.a) #19, !inline_history !75
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #22
  ret void
}

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN16OpenColorIO_v2_56OpDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = load ptr, ptr %1, align 8, !tbaa !60     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.i = load ptr, ptr %0, align 8, !tbaa !60     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, !prof !30

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !77

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load double, ptr %i.c, align 8, !tbaa !74
  store double %i.r, ptr %i.o, align 8, !tbaa !74
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #22
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !76
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !77

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load double, ptr %i.c, align 8, !tbaa !74
  store double %i.z, ptr %i.i, align 8, !tbaa !74
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !77

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !60
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !59 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !60
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !59
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load double, ptr %i.c, align 8, !tbaa !74
  store double %i.ac, ptr %i.i, align 8, !tbaa !74
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 8, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !77

bb.r:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load double, ptr %i.af, align 8, !tbaa !74
  store double %i.ak, ptr %i.ad, align 8, !tbaa !74
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !59
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !78
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
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !78
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  invoke void %i.b(ptr noundef %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS1_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSPFvPN16OpenColorIO_v2_518LogCameraTransformEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSPFvPN16OpenColorIO_v2_518LogCameraTransformEE) #19
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
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { nounwind memory(none) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }

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
!9 = !{ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImplC2ERA3_Kd}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_518LogCameraTransformELN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0, !14, i64 8}
!12 = !{!"p1 _ZTSN16OpenColorIO_v2_518LogCameraTransformE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!15 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImpl7deleterEPNS_18LogCameraTransformE}
!18 = !{!19, !4, i64 8}
!19 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!20 = !{!19, !4, i64 12}
!21 = !{!22, !13, i64 0}
!22 = !{!"_ZTSSt14_Sp_ebo_helperILi0EPFvPN16OpenColorIO_v2_518LogCameraTransformEELb0EE", !13, i64 0}
!23 = !{!24, !25, i64 8}
!24 = !{!"_ZTSNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !22, i64 0, !25, i64 8}
!25 = !{!"p1 _ZTSN16OpenColorIO_v2_522LogCameraTransformImplE", !13, i64 0}
!26 = !{}
!27 = !{!13, !13, i64 0}
!28 = distinct !{null, null}
!29 = !{!5, !5, i64 0}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!32, !58, i64 248}
!32 = !{!"_ZTSN16OpenColorIO_v2_59LogOpDataE", !33, i64 0, !52, i64 168, !52, i64 192, !52, i64 216, !57, i64 240, !58, i64 248}
!33 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !34, i64 8, !36, i64 48}
!34 = !{!"_ZTSSt5mutex", !35, i64 0}
!35 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!36 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !37, i64 0, !38, i64 8, !38, i64 40, !42, i64 72, !47, i64 96}
!37 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !41, i64 8, !5, i64 16}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!40 = !{!"p1 omnipotent char", !13, i64 0}
!41 = !{!"long", !5, i64 0}
!42 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!46 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !13, i64 0}
!47 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !48, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !13, i64 0}
!52 = !{!"_ZTSSt6vectorIdSaIdEE", !53, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!56 = !{!"p1 double", !13, i64 0}
!57 = !{!"double", !5, i64 0}
!58 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !5, i64 0}
!59 = !{!55, !56, i64 8}
!60 = !{!55, !56, i64 0}
!61 = !{!38, !40, i64 0}
!62 = !{!39, !40, i64 0}
!63 = !{!41, !41, i64 0}
!64 = !{!38, !41, i64 8}
!65 = !{!66, !68, i64 32}
!66 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !67, i64 24, !68, i64 28, !68, i64 32, !69, i64 40, !70, i64 48, !5, i64 64, !4, i64 192, !71, i64 200, !72, i64 208}
!67 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!68 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!69 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!70 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !41, i64 8}
!71 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!72 = !{!"_ZTSSt6locale", !73, i64 0}
!73 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!74 = !{!57, !57, i64 0}
!75 = !{ptr @_ZN16OpenColorIO_v2_522LogCameraTransformImplD2Ev}
!76 = !{!55, !56, i64 16}
!77 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!78 = distinct !{null}
!79 = !{!80, !25, i64 24}
!80 = !{!"_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_522LogCameraTransformImplEPFvPNS0_18LogCameraTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0, !24, i64 16}
!81 = !{!82, !40, i64 8}
!82 = !{!"_ZTSSt9type_info", !40, i64 8}
end_hunk_0
