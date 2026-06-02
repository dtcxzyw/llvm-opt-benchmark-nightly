inline.NumInlined: 159
inline.NumDeleted: 89
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.8" = type { %"class.std::__shared_ptr.9" }
%"class.std::__shared_ptr.9" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

@_ZTIN16OpenColorIO_v2_514RangeTransformE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_514RangeTransformE, ptr @_ZTIN16OpenColorIO_v2_59TransformE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_514RangeTransformE = linkonce_odr constant [37 x i8] c"N16OpenColorIO_v2_514RangeTransformE\00", align 1
@_ZTIN16OpenColorIO_v2_59TransformE = external constant ptr
@_ZTIN16OpenColorIO_v2_518RangeTransformImplE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_518RangeTransformImplE, ptr @_ZTIN16OpenColorIO_v2_514RangeTransformE }, align 8
@_ZTSN16OpenColorIO_v2_518RangeTransformImplE = hidden constant [41 x i8] c"N16OpenColorIO_v2_518RangeTransformImplE\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str = private unnamed_addr constant [91 x i8] c"RangeTransform validation failed: non clamping range must have min and max values defined.\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RangeTransform validation failed: \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"<RangeTransform \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"direction=\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c", fileindepth=\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c", fileoutdepth=\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c", style=\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c", minInValue=\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c", maxInValue=\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c", minOutValue=\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c", maxOutValue=\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c">\00", align 1
@_ZTVN16OpenColorIO_v2_518RangeTransformImplE = hidden unnamed_addr constant { [34 x ptr] } { [34 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_518RangeTransformImplE, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl18createEditableCopyEv, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl12getDirectionEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl12setDirectionENS_18TransformDirectionE, ptr @_ZNK16OpenColorIO_v2_514RangeTransform16getTransformTypeEv, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl8validateEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImplD2Ev, ptr @_ZN16OpenColorIO_v2_518RangeTransformImplD0Ev, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl8getStyleEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl8setStyleENS_10RangeStyleE, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl17getFormatMetadataEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl17getFormatMetadataEv, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl6equalsERKNS_14RangeTransformE, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl20getFileInputBitDepthEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl20setFileInputBitDepthENS_8BitDepthE, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl21getFileOutputBitDepthEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl21setFileOutputBitDepthENS_8BitDepthE, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl13getMinInValueEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl13setMinInValueEd, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl13hasMinInValueEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl15unsetMinInValueEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl13setMaxInValueEd, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl13getMaxInValueEv, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl13hasMaxInValueEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl15unsetMaxInValueEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl14setMinOutValueEd, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl14getMinOutValueEv, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl14hasMinOutValueEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl16unsetMinOutValueEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl14setMaxOutValueEd, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl14getMaxOutValueEv, ptr @_ZNK16OpenColorIO_v2_518RangeTransformImpl14hasMaxOutValueEv, ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl16unsetMaxOutValueEv] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518RangeTransformImplEPFvPNS0_14RangeTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_518RangeTransformImplEPFvPNS0_14RangeTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518RangeTransformImplEPFvPNS0_14RangeTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518RangeTransformImplEPFvPNS0_14RangeTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518RangeTransformImplEPFvPNS0_14RangeTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518RangeTransformImplEPFvPNS0_14RangeTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_518RangeTransformImplEPFvPNS0_14RangeTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518RangeTransformImplEPFvPNS0_14RangeTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518RangeTransformImplEPFvPNS0_14RangeTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [127 x i8] c"St19_Sp_counted_deleterIPN16OpenColorIO_v2_518RangeTransformImplEPFvPNS0_14RangeTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSPFvPN16OpenColorIO_v2_514RangeTransformEE = linkonce_odr constant [42 x i8] c"PFvPN16OpenColorIO_v2_514RangeTransformEE\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_514RangeTransform6CreateEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #19 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(248) %i.a, i8 0, i64 248, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN16OpenColorIO_v2_518RangeTransformImplE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_ZN16OpenColorIO_v2_511RangeOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(228) %i.c)
          to label %_ZN16OpenColorIO_v2_518RangeTransformImplC2Ev.exit unwind label %bb.f, !inline_history !38

_ZN16OpenColorIO_v2_518RangeTransformImplC2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !44
  %i.e = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_514RangeTransformEEC2INS0_18RangeTransformImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518RangeTransformImplC2Ev.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #20 ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(248) %i.a) #20, !inline_history !45
  invoke void @__cxa_rethrow() #21
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
  tail call void @__clang_call_terminate(ptr %i.n) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt10shared_ptrIN16OpenColorIO_v2_514RangeTransformEEC2INS0_18RangeTransformImplEPFvPS1_EvEEPT_T0_.exit: ; preds = %_ZN16OpenColorIO_v2_518RangeTransformImplC2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518RangeTransformImplEPFvPNS0_14RangeTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @_ZN16OpenColorIO_v2_518RangeTransformImpl7deleterEPNS_14RangeTransformE, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.a, ptr %i.r, align 8, !tbaa !51
  store ptr %i.e, ptr %i.d, align 8, !tbaa !44
  ret void

bb.f:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 248) #23
  br label %common.resume
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_518RangeTransformImpl7deleterEPNS_14RangeTransformE(ptr noundef %0) #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(248) %0) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_518RangeTransformImpl18createEditableCopyEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.8") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN16OpenColorIO_v2_514RangeTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %2, align 8, !tbaa !39, !nonnull !54, !noundef !54 ; 4 uses
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN16OpenColorIO_v2_514RangeTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_518RangeTransformImplE, i64 0) #20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN16OpenColorIO_v2_56OpDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(228) %i.d, ptr noundef nonnull align 8 dereferenceable(228) %i.a)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514RangeTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.b ; 0 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_514RangeTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.f, ptr noundef nonnull align 8 dereferenceable(60) %i.g, i64 60, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !9
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.i) #20
  store ptr %i.b, ptr %0, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  store ptr %i.o, ptr %i.m, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514RangeTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514RangeTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !48
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !58
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !58
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_518RangeTransformImpl12getDirectionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_518RangeTransformImpl12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN16OpenColorIO_v2_511RangeOpData12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(228) %i.a, i32 noundef %1) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_511RangeOpData12setDirectionENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(228), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_518RangeTransformImpl8getStyleEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_518RangeTransformImpl8setStyleENS_10RangeStyleE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(248) initializes((8, 12)) %0, i32 noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_518RangeTransformImpl8validateEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  invoke void @_ZNK16OpenColorIO_v2_59Transform8validateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(228) %i.a)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData10minIsEmptyEv(ptr noundef nonnull align 8 dereferenceable(228) %i.a)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData10maxIsEmptyEv(ptr noundef nonnull align 8 dereferenceable(228) %i.a)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %i.i, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #21
          to label %bb.x unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.d, %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.k, %bb.j ], [ %i.l, %bb.k ] ; 3 uses
  %.05 = extractvalue { ptr, i32 } %.pn, 1
  %i.m = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #20
  %i.n = icmp eq i32 %.05, %i.m
  br i1 %i.n, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %.0) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #20
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.s)
          to label %bb.o unwind label %bb.r       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !62
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef %i.v)
end_hunk_0
