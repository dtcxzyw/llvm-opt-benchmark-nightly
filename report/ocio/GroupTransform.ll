Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GroupTransform?download=true
inline.NumInlined: 415
inline.NumDeleted: 222
begin_hunk_0
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
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN16OpenColorIO_v2_518GroupTransformImplE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.b unwind label %bb.g, !inline_history !10

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 0, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !43
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_514GroupTransformEEC2INS0_18GroupTransformImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.c ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #23 ; 0 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(160) %i.a) #23, !inline_history !44
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
  store i32 1, ptr %i.p, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 1, ptr %i.q, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518GroupTransformImplEPFvPNS0_14GroupTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.f, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @_ZN16OpenColorIO_v2_518GroupTransformImpl7DeleterEPNS_14GroupTransformE, ptr %i.r, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.a, ptr %i.s, align 8, !tbaa !50
  store ptr %i.f, ptr %i.e, align 8, !tbaa !43
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
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
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN16OpenColorIO_v2_518GroupTransformImplE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.b, align 8, !tbaa !11
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
  %i.a = load ptr, ptr %2, align 8, !tbaa !38, !nonnull !53, !noundef !53 ; 2 uses
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_514GroupTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_518GroupTransformImplE, i64 0) #23 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i32 %i.d, ptr %i.e, align 8, !tbaa !11
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  store ptr %i.n, ptr %i.l, align 8, !tbaa !43
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !58     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.j = load ptr, ptr %0, align 8, !tbaa !58     ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE11_M_allocateEm.exit.i, !prof !60

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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !61
  store <2 x ptr> %i.s, ptr %.09.i.i.i.i.i, align 8, !tbaa !61
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !63
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !63
  br label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !64

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_59TransformEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !58
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE11_M_allocateEm.exit.i
  %2 = phi ptr [ %.pre61, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit ], [ %i.j, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i = icmp eq ptr %2, %i.ab
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i ], [ %2, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 8 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ae, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !47
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23, !inline_history !66
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23, !inline_history !66
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.k ], [ %i.ar, %bb.l ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i, !prof !60

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.at, %i.ab
  br i1 %.not.i.i26, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !67

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.au = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exitthread-pre-split ], [ %2, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exit
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_59TransformEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEEEvT_S5_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !58
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.az, ptr %i.h, align 8, !tbaa !59
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.o:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57 ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bd, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = icmp sgt i64 %i.g, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i27:                               ; preds = %bb.p, %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ch, %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cg, %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cf, %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bf = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !54
  store ptr %i.bf, ptr %.0811.i.i.i.i.i, align 8, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43 ; 4 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i27
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !63
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !63
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bo = atomicrmw volatile add ptr %i.bk, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !43
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bp = phi ptr [ %i.bj, %bb.q ], [ %i.bj, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bq, align 8, !tbaa !45
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !47
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #23, !inline_history !68
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #23, !inline_history !68
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.x ], [ %i.cd, %bb.y ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ce, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !60

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !43
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i27
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.ch = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ci = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !69

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !70
  %.pre67 = ptrtoint ptr %i.cg to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.p
  %.pre-phi68 = phi i64 [ %.pre67, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.cj = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.bb, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.cg, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_59TransformEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.p ]
  %.not4.i.i29 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.cj
end_hunk_0
