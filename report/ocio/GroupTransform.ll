Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GroupTransform?download=true
inline.NumInlined: 415
inline.NumDeleted: 222
begin_hunk_0
@_ZTSN16OpenColorIO_v2_514GroupTransformE = linkonce_odr constant [37 x i8] c"N16OpenColorIO_v2_514GroupTransformE\00", comdat, align 1
@_ZTIN16OpenColorIO_v2_59TransformE = external constant ptr
@_ZTIN16OpenColorIO_v2_518GroupTransformImplE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_518GroupTransformImplE, ptr @_ZTIN16OpenColorIO_v2_514GroupTransformE }, align 8
@_ZTSN16OpenColorIO_v2_518GroupTransformImplE = hidden constant [41 x i8] c"N16OpenColorIO_v2_518GroupTransformImplE\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str = private unnamed_addr constant [35 x i8] c"GroupTransform validation failed: \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid transform index \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"The format named '\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"' could not be found. \00", align 1
@_ZTISt9exception = external constant ptr
@.str.5 = private unnamed_addr constant [23 x i8] c"Error writing format '\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"': \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"<GroupTransform \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"direction=\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"transforms=\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\0A        \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c">\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [127 x i8] c"St19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSPFvPN16OpenColorIO_v2_514GroupTransformEE = linkonce_odr constant [42 x i8] c"PFvPN16OpenColorIO_v2_514GroupTransformEE\00", comdat, align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN16OpenColorIO_v2_518GroupTransformImplC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_518GroupTransformImplC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_514GroupTransform6CreateEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #22 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN16OpenColorIO_v2_518GroupTransformImplE, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.b unwind label %bb.g, !inline_history !68

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 0, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !45
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_514GroupTransformEEC2INS0_18GroupTransformImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.c ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #23 ; 0 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(160) %i.a) #23, !inline_history !69
  invoke void @__cxa_rethrow() #24
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.m, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt10shared_ptrIN16OpenColorIO_v2_514GroupTransformEEC2INS0_18GroupTransformImplEPFvPS1_EvEEPT_T0_.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 1, ptr %i.p, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 1, ptr %i.q, align 4, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.f, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @_ZN16OpenColorIO_v2_518GroupTransformImpl7DeleterEPNS_14GroupTransformE, ptr %i.r, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.a, ptr %i.s, align 8, !tbaa !71
  store ptr %i.f, ptr %i.e, align 8, !tbaa !45
  ret void

bb.g:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #26
  br label %common.resume
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_518GroupTransformImpl7DeleterEPNS_14GroupTransformE(ptr noundef %0) #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(160) %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518GroupTransformImplC2Ev(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN16OpenColorIO_v2_518GroupTransformImplE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_518GroupTransformImpl18createEditableCopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.13") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN16OpenColorIO_v2_514GroupTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !44, !nonnull !72, !noundef !72 ; 2 uses
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_514GroupTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_518GroupTransformImplE, i64 0) #23 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i32 %i.d, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.j, ptr noundef nonnull align 8 dereferenceable(120) %i.i)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.c ; 0 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b
  store ptr %i.a, ptr %0, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  store ptr %i.n, ptr %i.l, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !56     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE11_M_allocateEm.exit.i, !prof !58

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45   ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !59
  store <2 x ptr> %i.s, ptr %.09.i.i.i.i.i, align 8, !tbaa !59
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !61
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !61
  br label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !73

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE11_M_allocateEm.exit.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !56    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i ], [ %i.aa, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 8 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.af, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !48
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #23, !inline_history !74
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #23, !inline_history !74
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.k ], [ %i.as, %bb.l ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i, !prof !58

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #23
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.au, %i.ac
  br i1 %.not.i.i26, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.av = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exitthread-pre-split ], [ %i.aa, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !57
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.o:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !55 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.be, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp sgt i64 %i.g, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i27:                               ; preds = %bb.p, %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ci, %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ch, %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cg, %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bg = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !54
  store ptr %i.bg, ptr %.0811.i.i.i.i.i, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !45 ; 4 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i27
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !61
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !61
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !45
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bq = phi ptr [ %i.bk, %bb.q ], [ %i.bk, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.br, align 8, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !48
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23, !inline_history !75
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23, !inline_history !75
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.x ], [ %i.ce, %bb.y ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !58

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !45
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i27
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.ci = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cj = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !76

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !63
  %.pre66 = ptrtoint ptr %i.ch to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.p
  %.pre-phi67 = phi i64 [ %.pre66, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.ck = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.bc, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.p ]
end_hunk_0
