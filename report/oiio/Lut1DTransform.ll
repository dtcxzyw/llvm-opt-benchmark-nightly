inline.NumInlined: 317
inline.NumDeleted: 167
begin_hunk_0
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSPFvPN16OpenColorIO_v2_514Lut1DTransformEE = linkonce_odr constant [42 x i8] c"PFvPN16OpenColorIO_v2_514Lut1DTransformEE\00", align 1

@_ZN16OpenColorIO_v2_518Lut1DTransformImplC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_518Lut1DTransformImplC2Ev
@_ZN16OpenColorIO_v2_518Lut1DTransformImplC1ENS_11Lut1DOpData9HalfFlagsEm = hidden unnamed_addr alias void (ptr, i32, i64), ptr @_ZN16OpenColorIO_v2_518Lut1DTransformImplC2ENS_11Lut1DOpData9HalfFlagsEm

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_514Lut1DTransform6CreateEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #19 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut1DTransformImplE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.b, i64 noundef 2)
          to label %_ZN16OpenColorIO_v2_518Lut1DTransformImplC2Ev.exit unwind label %bb.f, !inline_history !9

_ZN16OpenColorIO_v2_518Lut1DTransformImplC2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !16
  %i.d = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_514Lut1DTransformEEC2INS0_18Lut1DTransformImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518Lut1DTransformImplC2Ev.exit
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #20 ; 0 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(376) %i.a) #20, !inline_history !17
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

_ZNSt10shared_ptrIN16OpenColorIO_v2_514Lut1DTransformEEC2INS0_18Lut1DTransformImplEPFvPS1_EvEEPT_T0_.exit: ; preds = %_ZN16OpenColorIO_v2_518Lut1DTransformImplC2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut1DTransformImplEPFvPNS0_14Lut1DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZN16OpenColorIO_v2_518Lut1DTransformImpl7deleterEPNS_14Lut1DTransformE, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.a, ptr %i.q, align 8, !tbaa !23
  store ptr %i.d, ptr %i.c, align 8, !tbaa !16
  ret void

bb.f:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 376) #23
  br label %common.resume
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImpl7deleterEPNS_14Lut1DTransformE(ptr noundef %0) #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(376) %0) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_514Lut1DTransform6CreateEmb(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i32
  %i.b = tail call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #19 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut1DTransformImplE, i64 16), ptr %i.b, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1ENS0_9HalfFlagsEmb(ptr noundef nonnull align 8 dereferenceable(364) %i.c, i32 noundef %i.a, i64 noundef %1, i1 noundef zeroext false)
          to label %_ZN16OpenColorIO_v2_518Lut1DTransformImplC2ENS_11Lut1DOpData9HalfFlagsEm.exit unwind label %bb.f

_ZN16OpenColorIO_v2_518Lut1DTransformImplC2ENS_11Lut1DOpData9HalfFlagsEm.exit: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !16
  %i.e = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_514Lut1DTransformEEC2INS0_18Lut1DTransformImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518Lut1DTransformImplC2ENS_11Lut1DOpData9HalfFlagsEm.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #20 ; 0 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(376) %i.b) #20, !inline_history !17
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

_ZNSt10shared_ptrIN16OpenColorIO_v2_514Lut1DTransformEEC2INS0_18Lut1DTransformImplEPFvPS1_EvEEPT_T0_.exit: ; preds = %_ZN16OpenColorIO_v2_518Lut1DTransformImplC2ENS_11Lut1DOpData9HalfFlagsEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut1DTransformImplEPFvPNS0_14Lut1DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @_ZN16OpenColorIO_v2_518Lut1DTransformImpl7deleterEPNS_14Lut1DTransformE, ptr %i.q, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.b, ptr %i.r, align 8, !tbaa !23
  store ptr %i.e, ptr %i.d, align 8, !tbaa !16
  ret void

bb.f:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 376) #23
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImplC2Ev(ptr noundef nonnull align 8 dereferenceable(376) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut1DTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.a, i64 noundef 2)
  ret void
}

declare void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364), i64 noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImplC2ENS_11Lut1DOpData9HalfFlagsEm(ptr noundef nonnull align 8 dereferenceable(376) initializes((0, 8)) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut1DTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1ENS0_9HalfFlagsEmb(ptr noundef nonnull align 8 dereferenceable(364) %i.a, i32 noundef %1, i64 noundef %2, i1 noundef zeroext false)
  ret void
}

declare void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1ENS0_9HalfFlagsEmb(ptr noundef nonnull align 8 dereferenceable(364), i32 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl18createEditableCopyEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.13") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN16OpenColorIO_v2_514Lut1DTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %2, align 16, !tbaa !10, !nonnull !26, !noundef !26
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN16OpenColorIO_v2_514Lut1DTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_518Lut1DTransformImplE, i64 0) #20 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZN16OpenColorIO_v2_56OpDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(364) %i.d, ptr noundef nonnull align 8 dereferenceable(364) %i.a)
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
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_514Lut1DTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.b ; 0 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_514Lut1DTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(140) %i.n, ptr noundef nonnull align 8 dereferenceable(140) %i.o, i64 140, i1 false)
  %3 = load <2 x ptr>, ptr %2, align 16, !tbaa !61
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514Lut1DTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514Lut1DTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !62
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !62
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !64

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl12getDirectionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65
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
define hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImpl12setDirectionENS_18TransformDirectionE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(376) initializes((240, 244)) %0, i32 noundef %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %1, ptr %i.a, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl8validateEv(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  invoke void @_ZNK16OpenColorIO_v2_59Transform8validateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(364) %i.a)
          to label %bb.o unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 3 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 1
  %i.g = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #20
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i32 } %i.e, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #20
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.o)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8, !tbaa !66
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef %i.r)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #21
          to label %bb.r unwind label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !66     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.z = load i64, ptr %i.x, align 8, !tbaa !63
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.l, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn18 = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #20
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn18, %bb.l ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %bb.j ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.m ], [ %i.s, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

bb.o:                                             ; preds = %bb.b
  ret void

bb.p:                                             ; preds = %bb.n, %bb.c
  %.merged = phi { ptr, i32 } [ %i.e, %bb.c ], [ %.pn.pn.pn, %bb.n ]
  resume { ptr, i32 } %.merged

bb.q:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #22
  unreachable

bb.r:                                             ; preds = %bb.h
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_59Transform8validateEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #12

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl21getFileOutputBitDepthEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImpl21setFileOutputBitDepthENS_8BitDepthE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(376) initializes((368, 372)) %0, i32 noundef %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 %1, ptr %i.a, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_518Lut1DTransformImpl17getFormatMetadataEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(376) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl17getFormatMetadataEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(376) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl6equalsERKNS_14Lut1DTransformE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN16OpenColorIO_v2_514Lut1DTransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_518Lut1DTransformImplE, i64 0) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11Lut1DOpDataES2_(ptr noundef nonnull align 8 dereferenceable(364) %i.b, ptr noundef nonnull align 8 dereferenceable(364) %i.d)
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

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11Lut1DOpDataES2_(ptr noundef nonnull align 8 dereferenceable(364), ptr noundef nonnull align 8 dereferenceable(364)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImpl9setLengthEm(ptr noundef nonnull align 8 dereferenceable(376) initializes((192, 208)) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenColorIO_v2_5::Lut1DOpData::Lut3by1DArray", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  call void @_ZN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayC1ENS0_9HalfFlagsEmmb(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.b, i64 noundef 3, i64 noundef %1, i1 noundef zeroext false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN16OpenColorIO_v2_56ArrayTIfEaSERKS1_.exit unwind label %bb.b ; 0 uses

_ZN16OpenColorIO_v2_56ArrayTIfEaSERKS1_.exit:     ; preds = %bb.a
  call void @_ZN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.h
}

declare void @_ZN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayC1ENS0_9HalfFlagsEmmb(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImpl8setValueEmfff(ptr noundef nonnull align 8 dereferenceable(376) %0, i64 noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(376) %0)
  tail call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115CheckLUT1DIndexEPKcmm(ptr noundef nonnull @.str.1, i64 noundef %1, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %.idx = mul i64 %1, 12
  %i.g = getelementptr i8, ptr %i.f, i64 %.idx    ; 3 uses
  store float %2, ptr %i.g, align 4, !tbaa !70
  %i.h = getelementptr i8, ptr %i.g, i64 4
  store float %3, ptr %i.h, align 4, !tbaa !70
  %i.i = getelementptr i8, ptr %i.g, i64 8
  store float %4, ptr %i.i, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115CheckLUT1DIndexEPKcmm(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.18, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.c
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.f

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.19, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZNSolsEm.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %2)
          to label %_ZNSolsEm.exit17 unwind label %bb.f

_ZNSolsEm.exit17:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.20, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZNSolsEm.exit17
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.i = load ptr, ptr %4, align 8, !tbaa !66
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #21
          to label %bb.k unwind label %bb.g

bb.f:                                             ; preds = %_ZNSolsEm.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %4, align 8, !tbaa !66     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !63
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn21 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #20
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn21, %bb.h ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %bb.a
  ret void

bb.k:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImpl18setInputHalfDomainEb(ptr noundef nonnull align 8 dereferenceable(376) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpData18setInputHalfDomainEb(ptr noundef nonnull align 8 dereferenceable(364) %i.a, i1 noundef zeroext %1) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_511Lut1DOpData18setInputHalfDomainEb(ptr noundef nonnull align 8 dereferenceable(364), i1 noundef zeroext) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImpl17setOutputRawHalfsEb(ptr noundef nonnull align 8 dereferenceable(376) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpData17setOutputRawHalfsEb(ptr noundef nonnull align 8 dereferenceable(364) %i.a, i1 noundef zeroext %1) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_511Lut1DOpData17setOutputRawHalfsEb(ptr noundef nonnull align 8 dereferenceable(364), i1 noundef zeroext) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImpl12setHueAdjustENS_14Lut1DHueAdjustE(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpData12setHueAdjustENS_14Lut1DHueAdjustE(ptr noundef nonnull align 8 dereferenceable(364) %i.a, i32 noundef %1)
  ret void
}

declare void @_ZN16OpenColorIO_v2_511Lut1DOpData12setHueAdjustENS_14Lut1DHueAdjustE(ptr noundef nonnull align 8 dereferenceable(364), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImpl16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.a, i32 noundef %1)
  ret void
}

declare void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl8getValueEmRfS1_S1_(ptr noundef nonnull align 8 dereferenceable(376) %0, i64 noundef %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(376) %0)
  tail call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115CheckLUT1DIndexEPKcmm(ptr noundef nonnull @.str.2, i64 noundef %1, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %.idx = mul i64 %1, 12
  %i.g = getelementptr i8, ptr %i.f, i64 %.idx    ; 3 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !70
  store float %i.h, ptr %2, align 4, !tbaa !70
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !70
  store float %i.j, ptr %3, align 4, !tbaa !70
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !70
  store float %i.l, ptr %4, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl18getInputHalfDomainEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = trunc i32 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl17getOutputRawHalfsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = and i32 %i.b, 2
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl12getHueAdjustEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_518Lut1DTransformImpl16getInterpolationEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_14Lut1DTransformE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
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
  %i.p = load i32, ptr %i.o, align 8, !tbaa !73
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
  %.not.i28 = icmp eq ptr %i.z, null
  br i1 %.not.i28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !73
  %i.ag = or i32 %i.af, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #20
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.z, i64 noundef %i.ah) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %bb.d, %bb.e
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 14) ; 0 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ap = tail call noundef ptr @_ZN16OpenColorIO_v2_521InterpolationToStringENS_13InterpolationE(i32 noundef %i.ao) ; 3 uses
  %.not.i30 = icmp eq ptr %i.ap, null
  br i1 %.not.i30, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.aq = load ptr, ptr %0, align 8, !tbaa !7
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !73
  %i.aw = or i32 %i.av, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.ax = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #20
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ap, i64 noundef %i.ax) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %bb.f, %bb.g
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 10) ; 0 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %i.be)
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 14) ; 0 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %i.bl)
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 10) ; 0 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef i32 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bs)
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call noundef i64 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.11, i64 noundef 7) ; 0 uses
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.by)
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %.not = icmp eq i64 %i.by, 0
  br i1 %.not, label %bb.i, label %.preheader

bb.h:                                             ; preds = %.preheader
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 8) ; 0 uses
  %i.cd = fpext float %.sroa.speculated63 to double
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.cd) ; 2 uses
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.cg = fpext float %.sroa.speculated57 to double
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, double noundef %i.cg) ; 2 uses
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.cj = fpext float %.sroa.speculated51 to double
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, double noundef %i.cj)
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.13, i64 noundef 3) ; 0 uses
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 8) ; 0 uses
  %i.cn = fpext float %.sroa.speculated45 to double
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.cn) ; 2 uses
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.cq = fpext float %.sroa.speculated40 to double
  %i.cr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.co, double noundef %i.cq) ; 2 uses
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  %i.ct = fpext float %.sroa.speculated to double
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, double noundef %i.ct)
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  br label %bb.i

.preheader:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %.preheader
  %.078 = phi i64 [ %i.di, %.preheader ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 ] ; 2 uses
  %.06677 = phi float [ %.sroa.speculated, %.preheader ], [ f0xFF7FFFFF, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 ] ; 2 uses
  %.06776 = phi float [ %.sroa.speculated40, %.preheader ], [ f0xFF7FFFFF, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 ] ; 2 uses
  %.06875 = phi float [ %.sroa.speculated45, %.preheader ], [ f0xFF7FFFFF, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 ] ; 2 uses
  %.06974 = phi float [ %.sroa.speculated51, %.preheader ], [ f0x7F7FFFFF, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 ] ; 2 uses
  %.07073 = phi float [ %.sroa.speculated57, %.preheader ], [ f0x7F7FFFFF, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 ] ; 2 uses
  %.07172 = phi float [ %.sroa.speculated63, %.preheader ], [ f0x7F7FFFFF, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !70
  %i.cw = load ptr, ptr %1, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.078, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.cz = load float, ptr %i.a, align 4, !tbaa !70 ; 4 uses
  %i.da = fcmp olt float %i.cz, %.07172
  %.sroa.speculated63 = select i1 %i.da, float %i.cz, float %.07172 ; 2 uses
  %i.db = load float, ptr %i.b, align 4, !tbaa !70 ; 4 uses
  %i.dc = fcmp olt float %i.db, %.07073
  %.sroa.speculated57 = select i1 %i.dc, float %i.db, float %.07073 ; 2 uses
  %i.dd = load float, ptr %i.c, align 4, !tbaa !70 ; 4 uses
  %i.de = fcmp olt float %i.dd, %.06974
  %.sroa.speculated51 = select i1 %i.de, float %i.dd, float %.06974 ; 2 uses
  %i.df = fcmp olt float %.06875, %i.cz
  %.sroa.speculated45 = select i1 %i.df, float %i.cz, float %.06875 ; 2 uses
  %i.dg = fcmp olt float %.06776, %i.db
  %.sroa.speculated40 = select i1 %i.dg, float %i.db, float %.06776 ; 2 uses
  %i.dh = fcmp olt float %.06677, %i.dd
  %.sroa.speculated = select i1 %i.dh, float %i.dd, float %.06677 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.di = add nuw i64 %.078, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.di, %i.by
  br i1 %exitcond.not, label %bb.h, label %.preheader, !llvm.loop !82

bb.i:                                             ; preds = %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.16, i64 noundef 1) ; 0 uses
  ret ptr %0
}

declare noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN16OpenColorIO_v2_516BitDepthToStringENS_8BitDepthE(i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN16OpenColorIO_v2_521InterpolationToStringENS_13InterpolationE(i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK16OpenColorIO_v2_514Lut1DTransform16getTransformTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 {
bb.a:
  ret i32 19
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImplD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut1DTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(364) %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518Lut1DTransformImplD0Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lut1DTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_511Lut1DOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(364) %i.a) #20, !inline_history !84
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 376) #23
  ret void
}

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN16OpenColorIO_v2_56OpDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !85
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
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
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !85
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = load ptr, ptr %1, align 8, !tbaa !69     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = load ptr, ptr %0, align 8, !tbaa !69     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, !prof !64

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !88

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
  store ptr %i.s, ptr %i.g, align 8, !tbaa !87
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.k, label %bb.l, !prof !88

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
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !88

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !69
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !86 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !69
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !86
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
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !88

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
  store ptr %i.am, ptr %i.an, align 8, !tbaa !86
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_511Lut1DOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(364)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut1DTransformImplEPFvPNS0_14Lut1DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut1DTransformImplEPFvPNS0_14Lut1DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
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
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut1DTransformImplEPFvPNS0_14Lut1DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut1DTransformImplEPFvPNS1_14Lut1DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut1DTransformImplEPFvPNS0_14Lut1DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSPFvPN16OpenColorIO_v2_514Lut1DTransformEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !63
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(42) @_ZTSPFvPN16OpenColorIO_v2_514Lut1DTransformEE) #20
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(none) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{ptr @_ZN16OpenColorIO_v2_518Lut1DTransformImplC2Ev}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_514Lut1DTransformELN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0, !14, i64 8}
!12 = !{!"p1 _ZTSN16OpenColorIO_v2_514Lut1DTransformE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!15 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{ptr @_ZN16OpenColorIO_v2_518Lut1DTransformImpl7deleterEPNS_14Lut1DTransformE}
!18 = !{!19, !4, i64 8}
!19 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!20 = !{!19, !4, i64 12}
!21 = !{!22, !13, i64 0}
!22 = !{!"_ZTSSt14_Sp_ebo_helperILi0EPFvPN16OpenColorIO_v2_514Lut1DTransformEELb0EE", !13, i64 0}
!23 = !{!24, !25, i64 8}
!24 = !{!"_ZTSNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut1DTransformImplEPFvPNS0_14Lut1DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !22, i64 0, !25, i64 8}
!25 = !{!"p1 _ZTSN16OpenColorIO_v2_518Lut1DTransformImplE", !13, i64 0}
!26 = !{}
!27 = !{!28, !48, i64 168}
!28 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpDataE", !29, i64 0, !48, i64 168, !49, i64 176, !57, i64 224, !58, i64 228, !59, i64 232, !5, i64 240, !60, i64 360}
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
!49 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayE", !50, i64 0}
!50 = !{!"_ZTSN16OpenColorIO_v2_56ArrayTIfEE", !51, i64 0, !37, i64 8, !37, i64 16, !52, i64 24}
!51 = !{!"_ZTSN16OpenColorIO_v2_59ArrayBaseE"}
!52 = !{!"_ZTSSt6vectorIfSaIfEE", !53, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!56 = !{!"p1 float", !13, i64 0}
!57 = !{!"_ZTSN16OpenColorIO_v2_511Lut1DOpData9HalfFlagsE", !5, i64 0}
!58 = !{!"_ZTSN16OpenColorIO_v2_514Lut1DHueAdjustE", !5, i64 0}
!59 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !5, i64 0}
!60 = !{!"_ZTSN16OpenColorIO_v2_58BitDepthE", !5, i64 0}
!61 = !{!13, !13, i64 0}
!62 = distinct !{null, null}
!63 = !{!5, !5, i64 0}
!64 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!65 = !{!28, !59, i64 232}
!66 = !{!34, !36, i64 0}
!67 = !{!28, !60, i64 360}
!68 = !{!28, !57, i64 224}
!69 = !{!55, !56, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"float", !5, i64 0}
!72 = !{!28, !58, i64 228}
!73 = !{!74, !76, i64 32}
!74 = !{!"_ZTSSt8ios_base", !37, i64 8, !37, i64 16, !75, i64 24, !76, i64 28, !76, i64 32, !77, i64 40, !78, i64 48, !5, i64 64, !4, i64 192, !79, i64 200, !80, i64 208}
!75 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!76 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!77 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!78 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !37, i64 8}
!79 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!80 = !{!"_ZTSSt6locale", !81, i64 0}
!81 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{ptr @_ZN16OpenColorIO_v2_518Lut1DTransformImplD2Ev}
!85 = distinct !{null}
!86 = !{!55, !56, i64 8}
!87 = !{!55, !56, i64 16}
!88 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!89 = !{!90, !25, i64 24}
!90 = !{!"_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_518Lut1DTransformImplEPFvPNS0_14Lut1DTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0, !24, i64 16}
!91 = !{!92, !36, i64 8}
!92 = !{!"_ZTSSt9type_info", !36, i64 8}
end_hunk_0
