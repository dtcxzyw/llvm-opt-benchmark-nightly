inline.NumInlined: 314
inline.NumDeleted: 172
begin_hunk_0
@.str.17 = private unnamed_addr constant [38 x i8] c") should be less than the grid size (\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c").\00", align 1
@_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [127 x i8] c"St19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSPFvPN16OpenColorIO_v2_514Lut3DTransformEE = linkonce_odr constant [42 x i8] c"PFvPN16OpenColorIO_v2_514Lut3DTransformEE\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN16OpenColorIO_v2_518Lut3DTransformImplC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Ev
@_ZN16OpenColorIO_v2_518Lut3DTransformImplC1Em = hidden unnamed_addr alias void (ptr, i64), ptr @_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Em

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_514Lut3DTransform6CreateEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #19 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut3DTransformImplE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 noundef 2)
          to label %_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Ev.exit unwind label %bb.f, !inline_history !9

_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !16
  %i.d = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_514Lut3DTransformEEC2INS0_18Lut3DTransformImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Ev.exit
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #20 ; 0 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(240) %i.a) #20, !inline_history !17
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

_ZNSt10shared_ptrIN16OpenColorIO_v2_514Lut3DTransformEEC2INS0_18Lut3DTransformImplEPFvPS1_EvEEPT_T0_.exit: ; preds = %_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZN16OpenColorIO_v2_518Lut3DTransformImpl7deleterEPNS_14Lut3DTransformE, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.a, ptr %i.q, align 8, !tbaa !23
  store ptr %i.d, ptr %i.c, align 8, !tbaa !16
  ret void

bb.f:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 240) #23
  br label %common.resume
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut3DTransformImpl7deleterEPNS_14Lut3DTransformE(ptr noundef %0) #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(240) %0) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_514Lut3DTransform6CreateEm(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #19 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut3DTransformImplE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 noundef %1)
          to label %_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Em.exit unwind label %bb.f

_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Em.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !16
  %i.d = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_514Lut3DTransformEEC2INS0_18Lut3DTransformImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Em.exit
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #20 ; 0 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(240) %i.a) #20, !inline_history !17
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

_ZNSt10shared_ptrIN16OpenColorIO_v2_514Lut3DTransformEEC2INS0_18Lut3DTransformImplEPFvPS1_EvEEPT_T0_.exit: ; preds = %_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Em.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZN16OpenColorIO_v2_518Lut3DTransformImpl7deleterEPNS_14Lut3DTransformE, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.a, ptr %i.q, align 8, !tbaa !23
  store ptr %i.d, ptr %i.c, align 8, !tbaa !16
  ret void

bb.f:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 240) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Ev(ptr noundef nonnull align 8 dereferenceable(240) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut3DTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.a, i64 noundef 2)
  ret void
}

declare void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232), i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Em(ptr noundef nonnull align 8 dereferenceable(240) initializes((0, 8)) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut3DTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.a, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_518Lut3DTransformImpl18createEditableCopyEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.13") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN16OpenColorIO_v2_514Lut3DTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %2, align 16, !tbaa !10, !nonnull !26, !noundef !26
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN16OpenColorIO_v2_514Lut3DTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_518Lut3DTransformImplE, i64 0) #20 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN16OpenColorIO_v2_56OpDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(232) %i.a)
          to label %.noexc unwind label %bb.b     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i32 %i.g, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.m = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514Lut3DTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.b ; 0 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_514Lut3DTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.n, align 8
  %3 = load <2 x ptr>, ptr %2, align 16, !tbaa !59
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514Lut3DTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514Lut3DTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !60
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !60
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_518Lut3DTransformImpl12getDirectionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63
  ret i32 %i.b
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut3DTransformImpl12setDirectionENS_18TransformDirectionE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(240) initializes((232, 236)) %0, i32 noundef %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %1, ptr %i.a, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_518Lut3DTransformImpl8validateEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(232) %i.a)
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
  %i.q = load ptr, ptr %1, align 8, !tbaa !64
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
  %i.u = load ptr, ptr %1, align 8, !tbaa !64     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.x = load i64, ptr %i.v, align 8, !tbaa !61
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
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !65
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.21) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !66
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !64
  %i.g = load i64, ptr %i.a, align 8, !tbaa !66
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
  %i.j = load i64, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !67
  %i.l = load ptr, ptr %0, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_518Lut3DTransformImpl21getFileOutputBitDepthEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut3DTransformImpl21setFileOutputBitDepthENS_8BitDepthE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(240) initializes((236, 240)) %0, i32 noundef %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %1, ptr %i.a, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_518Lut3DTransformImpl17getFormatMetadataEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(240) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK16OpenColorIO_v2_518Lut3DTransformImpl17getFormatMetadataEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(240) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_518Lut3DTransformImpl6equalsERKNS_14Lut3DTransformE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN16OpenColorIO_v2_514Lut3DTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_518Lut3DTransformImplE, i64 0) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11Lut3DOpDataES2_(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %i.d)
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

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11Lut3DOpDataES2_(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(232)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZNK16OpenColorIO_v2_518Lut3DTransformImpl11getGridSizeEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut3DTransformImpl11setGridSizeEm(ptr noundef nonnull align 8 dereferenceable(240) initializes((192, 208)) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenColorIO_v2_5::Lut3DOpData::Lut3DArray", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC1Em(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZN16OpenColorIO_v2_56ArrayTIfEaSERKS1_.exit unwind label %bb.b ; 0 uses

_ZN16OpenColorIO_v2_56ArrayTIfEaSERKS1_.exit:     ; preds = %bb.a
  call void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.f
}

declare void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC1Em(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut3DTransformImpl8setValueEmmmfff(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(240) %0) ; 5 uses
  tail call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115CheckLUT3DIndexEPKcS2_mm(ptr noundef nonnull @.str.1, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_111COMPONENT_RE, i64 noundef %1, i64 noundef %i.d)
  tail call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115CheckLUT3DIndexEPKcS2_mm(ptr noundef nonnull @.str.1, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_111COMPONENT_GE, i64 noundef %2, i64 noundef %i.d)
  tail call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115CheckLUT3DIndexEPKcS2_mm(ptr noundef nonnull @.str.1, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_111COMPONENT_BE, i64 noundef %3, i64 noundef %i.d)
  %i.e = mul i64 %i.d, %1
  %i.f = add i64 %i.e, %2
  %i.g = mul i64 %i.f, %i.d
  %i.h = add i64 %i.g, %3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69
  %.idx = mul i64 %i.h, 12
  %i.k = getelementptr i8, ptr %i.j, i64 %.idx    ; 3 uses
  store float %4, ptr %i.k, align 4, !tbaa !70
  %i.l = getelementptr i8, ptr %i.k, i64 4
  store float %5, ptr %i.l, align 4, !tbaa !70
  %i.m = getelementptr i8, ptr %i.k, i64 8
  store float %6, ptr %i.m, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115CheckLUT3DIndexEPKcS2_mm(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.not = icmp ult i64 %2, %3
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.14, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %0)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.15, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %bb.c
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.16, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %bb.d
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %2)
          to label %_ZNSolsEm.exit unwind label %bb.g

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.17, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZNSolsEm.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3)
          to label %_ZNSolsEm.exit19 unwind label %bb.g

_ZNSolsEm.exit19:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZNSolsEm.exit19
  %i.j = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.k = load ptr, ptr %5, align 8, !tbaa !64
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef %i.k)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #21
          to label %bb.l unwind label %bb.h

bb.g:                                             ; preds = %_ZNSolsEm.exit19, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %bb.d, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.r = load i64, ptr %i.p, align 8, !tbaa !61
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.0, label %bb.i, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.0, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn23 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn23, %bb.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %bb.g ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.a
  ret void

bb.l:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_518Lut3DTransformImpl8getValueEmmmRfS1_S1_(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(240) %0) ; 5 uses
  tail call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115CheckLUT3DIndexEPKcS2_mm(ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_111COMPONENT_RE, i64 noundef %1, i64 noundef %i.d)
  tail call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115CheckLUT3DIndexEPKcS2_mm(ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_111COMPONENT_GE, i64 noundef %2, i64 noundef %i.d)
  tail call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115CheckLUT3DIndexEPKcS2_mm(ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_111COMPONENT_BE, i64 noundef %3, i64 noundef %i.d)
  %i.e = mul i64 %i.d, %1
  %i.f = add i64 %i.e, %2
  %i.g = mul i64 %i.f, %i.d
  %i.h = add i64 %i.g, %3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69
  %.idx = mul i64 %i.h, 12
  %i.k = getelementptr i8, ptr %i.j, i64 %.idx    ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !70
  store float %i.l, ptr %4, align 4, !tbaa !70
  %i.m = getelementptr i8, ptr %i.k, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !70
  store float %i.n, ptr %5, align 4, !tbaa !70
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !70
  store float %i.p, ptr %6, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut3DTransformImpl16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232) %i.a, i32 noundef %1)
  ret void
}

declare void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_518Lut3DTransformImpl16getInterpolationEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_14Lut3DTransformE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 16) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 10) ; 0 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %i.j = tail call noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef %i.i) ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !7
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !72
  %i.q = or i32 %i.p, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.n, i32 noundef %i.q)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.r = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #20
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.j, i64 noundef %i.r) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 13) ; 0 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %i.z = tail call noundef ptr @_ZN16OpenColorIO_v2_516BitDepthToStringENS_8BitDepthE(i32 noundef %i.y) ; 3 uses
  %.not.i42 = icmp eq ptr %i.z, null
  br i1 %.not.i42, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !72
  %i.ag = or i32 %i.af, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #20
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.z, i64 noundef %i.ah) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %bb.d, %bb.e
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 14) ; 0 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ap = tail call noundef ptr @_ZN16OpenColorIO_v2_521InterpolationToStringENS_13InterpolationE(i32 noundef %i.ao) ; 3 uses
  %.not.i44 = icmp eq ptr %i.ap, null
  br i1 %.not.i44, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %i.aq = load ptr, ptr %0, align 8, !tbaa !7
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !72
  %i.aw = or i32 %i.av, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %i.ax = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #20
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ap, i64 noundef %i.ax) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45: ; preds = %bb.f, %bb.g
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 5 uses
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.bd)
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %bb.l, label %.preheader85

.preheader85:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45, %bb.i
  %.033107 = phi i64 [ %i.ce, %bb.i ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 ] ; 2 uses
  %.076106 = phi float [ %.sroa.speculated55, %bb.i ], [ f0x7F7FFFFF, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 ]
  %.079105 = phi float [ %.sroa.speculated63, %bb.i ], [ f0x7F7FFFFF, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 ]
  %.082104 = phi float [ %.sroa.speculated73, %bb.i ], [ f0x7F7FFFFF, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 ]
  br label %.preheader

bb.h:                                             ; preds = %bb.i
  %i.bh = fcmp olt float %.sroa.speculated73, %i.cj
  %.sroa.speculated70.le.le.le = select i1 %i.bh, float %i.cj, float %.sroa.speculated73
  %i.bi = fcmp olt float %.sroa.speculated63, %i.cl
  %.sroa.speculated60.le.le.le = select i1 %i.bi, float %i.cl, float %.sroa.speculated63
  %i.bj = fcmp olt float %.sroa.speculated55, %i.cn
  %.sroa.speculated.le.le.le = select i1 %i.bj, float %i.cn, float %.sroa.speculated55
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  %i.bl = fpext float %.sroa.speculated73 to double
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.bl) ; 2 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.bo = fpext float %.sroa.speculated63 to double
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, double noundef %i.bo) ; 2 uses
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.br = fpext float %.sroa.speculated55 to double
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, double noundef %i.br)
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.10, i64 noundef 3) ; 0 uses
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.11, i64 noundef 8) ; 0 uses
  %i.bv = fpext float %.sroa.speculated70.le.le.le to double
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.bv) ; 2 uses
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.by = fpext float %.sroa.speculated60.le.le.le to double
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, double noundef %i.by) ; 2 uses
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.cb = fpext float %.sroa.speculated.le.le.le to double
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, double noundef %i.cb)
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  br label %bb.l

.preheader:                                       ; preds = %.preheader85, %bb.j
  %.032103 = phi i64 [ 0, %.preheader85 ], [ %i.cf, %bb.j ] ; 2 uses
  %.177102 = phi float [ %.076106, %.preheader85 ], [ %.sroa.speculated55, %bb.j ]
  %.180101 = phi float [ %.079105, %.preheader85 ], [ %.sroa.speculated63, %bb.j ]
  %.183100 = phi float [ %.082104, %.preheader85 ], [ %.sroa.speculated73, %bb.j ]
  br label %bb.k

bb.i:                                             ; preds = %bb.j
  %i.ce = add nuw i64 %.033107, 1                 ; 2 uses
  %exitcond111.not = icmp eq i64 %i.ce, %i.bd
  br i1 %exitcond111.not, label %bb.h, label %.preheader85, !llvm.loop !81

bb.j:                                             ; preds = %bb.k
  %i.cf = add nuw i64 %.032103, 1                 ; 2 uses
  %exitcond110.not = icmp eq i64 %i.cf, %i.bd
  br i1 %exitcond110.not, label %bb.i, label %.preheader, !llvm.loop !83

bb.k:                                             ; preds = %.preheader, %bb.k
  %.090 = phi i64 [ 0, %.preheader ], [ %i.cp, %bb.k ] ; 2 uses
  %.27889 = phi float [ %.177102, %.preheader ], [ %.sroa.speculated55, %bb.k ] ; 2 uses
  %.28188 = phi float [ %.180101, %.preheader ], [ %.sroa.speculated63, %bb.k ] ; 2 uses
  %.28487 = phi float [ %.183100, %.preheader ], [ %.sroa.speculated73, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !70
  %i.cg = load ptr, ptr %1, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.033107, i64 noundef %.032103, i64 noundef %.090, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.cj = load float, ptr %i.a, align 4, !tbaa !70 ; 4 uses
  %i.ck = fcmp olt float %i.cj, %.28487
  %.sroa.speculated73 = select i1 %i.ck, float %i.cj, float %.28487 ; 6 uses
  %i.cl = load float, ptr %i.b, align 4, !tbaa !70 ; 4 uses
  %i.cm = fcmp olt float %i.cl, %.28188
  %.sroa.speculated63 = select i1 %i.cm, float %i.cl, float %.28188 ; 6 uses
  %i.cn = load float, ptr %i.c, align 4, !tbaa !70 ; 4 uses
  %i.co = fcmp olt float %i.cn, %.27889
  %.sroa.speculated55 = select i1 %i.co, float %i.cn, float %.27889 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.cp = add nuw i64 %.090, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.bd
  br i1 %exitcond.not, label %bb.j, label %bb.k, !llvm.loop !84

bb.l:                                             ; preds = %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN16OpenColorIO_v2_516BitDepthToStringENS_8BitDepthE(i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN16OpenColorIO_v2_521InterpolationToStringENS_13InterpolationE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK16OpenColorIO_v2_514Lut3DTransform16getTransformTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 {
bb.a:
  ret i32 20
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518Lut3DTransformImplD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut3DTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut3DOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(232) %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518Lut3DTransformImplD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut3DTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut3DOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(232) %i.a) #20, !inline_history !85
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #23
  ret void
}

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN16OpenColorIO_v2_56OpDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !86
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
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
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !86
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = load ptr, ptr %1, align 8, !tbaa !69     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.i = load ptr, ptr %0, align 8, !tbaa !69     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, !prof !62

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !89

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load float, ptr %i.c, align 4, !tbaa !70
  store float %i.r, ptr %i.o, align 4, !tbaa !70
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #23
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !88
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !87   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.k, label %bb.l, !prof !89

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 4
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load float, ptr %i.c, align 4, !tbaa !70
  store float %i.z, ptr %i.i, align 4, !tbaa !70
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 4
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !89

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !69
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !87 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !69
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !87
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 4
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load float, ptr %i.c, align 4, !tbaa !70
  store float %i.ac, ptr %i.i, align 4, !tbaa !70
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

_ZSt4copyIPfS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 4, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !89

bb.r:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load float, ptr %i.af, align 4, !tbaa !70
  store float %i.ak, ptr %i.ad, align 4, !tbaa !70
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !87
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_511Lut3DOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
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
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS1_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSPFvPN16OpenColorIO_v2_514Lut3DTransformEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !61
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(42) @_ZTSPFvPN16OpenColorIO_v2_514Lut3DTransformEE) #20
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
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(none) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{ptr @_ZN16OpenColorIO_v2_518Lut3DTransformImplC2Ev}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_514Lut3DTransformELN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0, !14, i64 8}
!12 = !{!"p1 _ZTSN16OpenColorIO_v2_514Lut3DTransformE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!15 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{ptr @_ZN16OpenColorIO_v2_518Lut3DTransformImpl7deleterEPNS_14Lut3DTransformE}
!18 = !{!19, !4, i64 8}
!19 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!20 = !{!19, !4, i64 12}
!21 = !{!22, !13, i64 0}
!22 = !{!"_ZTSSt14_Sp_ebo_helperILi0EPFvPN16OpenColorIO_v2_514Lut3DTransformEELb0EE", !13, i64 0}
!23 = !{!24, !25, i64 8}
!24 = !{!"_ZTSNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !22, i64 0, !25, i64 8}
!25 = !{!"p1 _ZTSN16OpenColorIO_v2_518Lut3DTransformImplE", !13, i64 0}
!26 = !{}
!27 = !{!28, !48, i64 168}
!28 = !{!"_ZTSN16OpenColorIO_v2_511Lut3DOpDataE", !29, i64 0, !48, i64 168, !49, i64 176, !57, i64 224, !58, i64 228}
!29 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !30, i64 8, !32, i64 48}
!30 = !{!"_ZTSSt5mutex", !31, i64 0}
!31 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!32 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !33, i64 0, !34, i64 8, !34, i64 40, !38, i64 72, !43, i64 96}
!33 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !37, i64 8, !5, i64 16}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!36 = !{!"p1 omnipotent char", !13, i64 0}
!37 = !{!"long", !5, i64 0}
!38 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !13, i64 0}
!43 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !44, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !13, i64 0}
!48 = !{!"_ZTSN16OpenColorIO_v2_513InterpolationE", !5, i64 0}
!49 = !{!"_ZTSN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayE", !50, i64 0}
!50 = !{!"_ZTSN16OpenColorIO_v2_56ArrayTIfEE", !51, i64 0, !37, i64 8, !37, i64 16, !52, i64 24}
!51 = !{!"_ZTSN16OpenColorIO_v2_59ArrayBaseE"}
!52 = !{!"_ZTSSt6vectorIfSaIfEE", !53, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!56 = !{!"p1 float", !13, i64 0}
!57 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !5, i64 0}
!58 = !{!"_ZTSN16OpenColorIO_v2_58BitDepthE", !5, i64 0}
!59 = !{!13, !13, i64 0}
!60 = distinct !{null, null}
!61 = !{!5, !5, i64 0}
!62 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!63 = !{!28, !57, i64 224}
!64 = !{!34, !36, i64 0}
!65 = !{!35, !36, i64 0}
!66 = !{!37, !37, i64 0}
!67 = !{!34, !37, i64 8}
!68 = !{!28, !58, i64 228}
!69 = !{!55, !56, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"float", !5, i64 0}
!72 = !{!73, !75, i64 32}
!73 = !{!"_ZTSSt8ios_base", !37, i64 8, !37, i64 16, !74, i64 24, !75, i64 28, !75, i64 32, !76, i64 40, !77, i64 48, !5, i64 64, !4, i64 192, !78, i64 200, !79, i64 208}
!74 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!75 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!76 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!77 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !37, i64 8}
!78 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!79 = !{!"_ZTSSt6locale", !80, i64 0}
!80 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = !{ptr @_ZN16OpenColorIO_v2_518Lut3DTransformImplD2Ev}
!86 = distinct !{null}
!87 = !{!55, !56, i64 8}
!88 = !{!55, !56, i64 16}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{!91, !25, i64 24}
!91 = !{!"_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut3DTransformImplEPFvPNS0_14Lut3DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0, !24, i64 16}
!92 = !{!93, !36, i64 8}
!93 = !{!"_ZTSSt9type_info", !36, i64 8}
end_hunk_0
