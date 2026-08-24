Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sscsm_controller?download=true
inline.NumInlined: 387
inline.NumDeleted: 288
begin_hunk_0
@_ZTI25SSCSMRequestPollNextEvent = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS25SSCSMRequestPollNextEvent, ptr @_ZTI13ISSCSMRequest }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS25SSCSMRequestPollNextEvent = linkonce_odr dso_local constant [28 x i8] c"25SSCSMRequestPollNextEvent\00", comdat, align 1
@_ZTI13ISSCSMRequest = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13ISSCSMRequest }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS13ISSCSMRequest = linkonce_odr dso_local constant [16 x i8] c"13ISSCSMRequest\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN25SSCSMRequestPollNextEvent6AnswerE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN25SSCSMRequestPollNextEvent6AnswerE, ptr @_ZN25SSCSMRequestPollNextEvent6AnswerD2Ev, ptr @_ZN25SSCSMRequestPollNextEvent6AnswerD0Ev] }, comdat, align 8
@_ZTIN25SSCSMRequestPollNextEvent6AnswerE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN25SSCSMRequestPollNextEvent6AnswerE, ptr @_ZTI12ISSCSMAnswer }, comdat, align 8
@_ZTSN25SSCSMRequestPollNextEvent6AnswerE = linkonce_odr dso_local constant [37 x i8] c"N25SSCSMRequestPollNextEvent6AnswerE\00", comdat, align 1
@_ZTI12ISSCSMAnswer = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS12ISSCSMAnswer }, comdat, align 8
@_ZTS12ISSCSMAnswer = linkonce_odr dso_local constant [15 x i8] c"12ISSCSMAnswer\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceI13StupidChannelSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceI13StupidChannelSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceI13StupidChannelSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceI13StupidChannelSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceI13StupidChannelSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceI13StupidChannelSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceI13StupidChannelSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceI13StupidChannelSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceI13StupidChannelSaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [79 x i8] c"St23_Sp_counted_ptr_inplaceI13StupidChannelSaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr dso_local constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTV18SSCSMEventTearDown = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI18SSCSMEventTearDown, ptr @_ZN11ISSCSMEventD2Ev, ptr @_ZN18SSCSMEventTearDownD0Ev, ptr @_ZN18SSCSMEventTearDown4execEP16SSCSMEnvironment] }, comdat, align 8
@_ZTI18SSCSMEventTearDown = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18SSCSMEventTearDown, ptr @_ZTI11ISSCSMEvent }, comdat, align 8
@_ZTS18SSCSMEventTearDown = linkonce_odr dso_local constant [21 x i8] c"18SSCSMEventTearDown\00", comdat, align 1
@_ZTI11ISSCSMEvent = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11ISSCSMEvent }, comdat, align 8
@_ZTS11ISSCSMEvent = linkonce_odr dso_local constant [14 x i8] c"11ISSCSMEvent\00", comdat, align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"SSCSMEventTearDown needs to be handled by SSCSMEnvironment::run()\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/luanti/luanti/src/script/sscsm/sscsm_events.h\00", align 1
@__PRETTY_FUNCTION__._ZN18SSCSMEventTearDown4execEP16SSCSMEnvironment = private unnamed_addr constant [58 x i8] c"virtual void SSCSMEventTearDown::exec(SSCSMEnvironment *)\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"SSCSMRequestPollNextEvent needs to be handled by SSCSMControler::runEvent()\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"/opt-bench/work/luanti/luanti/src/script/sscsm/sscsm_requests.h\00", align 1
@__PRETTY_FUNCTION__._ZN25SSCSMRequestPollNextEvent4execEP6Client = private unnamed_addr constant [72 x i8] c"virtual SerializedSSCSMAnswer SSCSMRequestPollNextEvent::exec(Client *)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE], section "llvm.metadata"

@_ZN15SSCSMControllerC1ESt10unique_ptrI16SSCSMEnvironmentSt14default_deleteIS1_EESt10shared_ptrI13StupidChannelE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN15SSCSMControllerC2ESt10unique_ptrI16SSCSMEnvironmentSt14default_deleteIS1_EESt10shared_ptrI13StupidChannelE
@_ZN15SSCSMControllerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15SSCSMControllerD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15SSCSMController6createEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %2 = alloca %"class.std::shared_ptr", align 16  ; 9 uses
  %3 = alloca %"class.std::unique_ptr.2", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20, !noalias !9 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !12, !noalias !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !14, !noalias !9
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceI13StupidChannelSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !15, !noalias !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, i8 0, i64 104, i1 false), !noalias !9
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.f) #19, !noalias !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !9
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17, !alias.scope !9
  store ptr %i.e, ptr %2, align 16, !tbaa !21, !alias.scope !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZSt11make_uniqueI16SSCSMEnvironmentJRSt10shared_ptrI13StupidChannelEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !23
  %i.i = invoke noundef zeroext i1 @_ZN6Thread5startEv(ptr noundef nonnull align 8 dereferenceable(144) %i.h)
          to label %bb.c unwind label %bb.n       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 16, !tbaa !25    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19, !noalias !27
  store ptr %i.j, ptr %1, align 8, !tbaa !30, !noalias !27
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(104) %i.j) #19, !noalias !27 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.l) #21
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.c
  store i8 1, ptr %i.k, align 8, !tbaa !34, !noalias !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.o = load ptr, ptr %i.m, align 8, !noalias !27 ; 6 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.f, label %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EEaSEDn.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %bb.e unwind label %bb.g, !noalias !27, !llvm.loop !35

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load i8, ptr %i.k, align 8, !tbaa !34, !range !37, !noalias !27, !noundef !38
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !30, !noalias !27 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #19, !noalias !27 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i:          ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !27
  br label %.body

_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EEaSEDn.exit.i: ; preds = %bb.e
  store ptr null, ptr %i.m, align 8, !tbaa !39, !noalias !27
  %i.u = load i8, ptr %i.k, align 8, !tbaa !34, !range !37, !noalias !27, !noundef !38
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EEaSEDn.exit.i
  %i.w = load ptr, ptr %1, align 8, !tbaa !30, !noalias !27 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i4.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #19, !noalias !27 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EEaSEDn.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !27
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.z = icmp eq ptr %i.y, getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV25SSCSMRequestPollNextEvent, i64 16)
  br i1 %i.z, label %.critedge, label %bb.p

bb.m:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI16SSCSMEnvironmentSt14default_deleteIS0_EED2Ev.exit21

bb.n:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.l
  invoke void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15SSCSMController6createEv) #21
          to label %bb.q unwind label %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EED2Ev.exit11

bb.q:                                             ; preds = %bb.p
  unreachable

_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EED2Ev.exit11: ; preds = %.critedge, %bb.p
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #19, !inline_history !41
  br label %.body

.critedge:                                        ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.ah = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %.noexc13 unwind label %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EED2Ev.exit11 ; 3 uses

.noexc13:                                         ; preds = %.critedge
  %i.ai = load i64, ptr %3, align 8, !tbaa !23, !noalias !42
  store ptr null, ptr %3, align 8, !tbaa !23, !noalias !42
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !17, !noalias !42 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %2, align 16, !tbaa !45, !noalias !42
  %.not.i.i.i.i12 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i12, label %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EED2Ev.exit16, label %bb.r

bb.r:                                             ; preds = %.noexc13
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !42
  %.not.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = load i32, ptr %i.al, align 4, !tbaa !47, !noalias !42
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !47, !noalias !42
  br label %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EED2Ev.exit16

bb.t:                                             ; preds = %bb.r
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4, !noalias !42 ; 0 uses
  br label %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EED2Ev.exit16

_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EED2Ev.exit16: ; preds = %bb.t, %bb.s, %.noexc13
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !23, !noalias !42
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store <2 x ptr> %i.ak, ptr %i.aq, align 8, !tbaa !45, !noalias !42
  store ptr %i.ah, ptr %0, align 8, !tbaa !48, !alias.scope !42
  %4 = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #19, !inline_history !41
  %i.at = load ptr, ptr %3, align 8, !tbaa !23    ; 3 uses
  %.not.i17 = icmp eq ptr %i.at, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrI16SSCSMEnvironmentSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI16SSCSMEnvironmentEclEPS0_.exit.i

_ZNKSt14default_deleteI16SSCSMEnvironmentEclEPS0_.exit.i: ; preds = %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EED2Ev.exit16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(176) %i.at) #19, !inline_history !50
  br label %_ZNSt10unique_ptrI16SSCSMEnvironmentSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI16SSCSMEnvironmentSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EED2Ev.exit16, %_ZNKSt14default_deleteI16SSCSMEnvironmentEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !17  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrI16SSCSMEnvironmentSt14default_deleteIS0_EED2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ay, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !14
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #19, !inline_history !51
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #19, !inline_history !51
  br label %_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i18 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i18, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.bb, %bb.x ], [ %i.bl, %bb.y ]
  %i.bm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bm, label %bb.z, label %_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !52

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #19
  br label %_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrI16SSCSMEnvironmentSt14default_deleteIS0_EED2Ev.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

.body:                                            ; preds = %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EED2Ev.exit11, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, %bb.o, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.ad, %_ZNSt10unique_ptrI13ISSCSMRequestSt14default_deleteIS0_EED2Ev.exit11 ], [ %i.ac, %bb.o ], [ %i.p, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i ] ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !23    ; 3 uses
  %.not.i19 = icmp eq ptr %i.bn, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrI16SSCSMEnvironmentSt14default_deleteIS0_EED2Ev.exit21, label %_ZNKSt14default_deleteI16SSCSMEnvironmentEclEPS0_.exit.i20

_ZNKSt14default_deleteI16SSCSMEnvironmentEclEPS0_.exit.i20: ; preds = %.body
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(176) %i.bn) #19, !inline_history !50
  br label %_ZNSt10unique_ptrI16SSCSMEnvironmentSt14default_deleteIS0_EED2Ev.exit21

_ZNSt10unique_ptrI16SSCSMEnvironmentSt14default_deleteIS0_EED2Ev.exit21: ; preds = %_ZNKSt14default_deleteI16SSCSMEnvironmentEclEPS0_.exit.i20, %.body, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %.pn.pn, %.body ], [ %.pn.pn, %_ZNKSt14default_deleteI16SSCSMEnvironmentEclEPS0_.exit.i20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11make_uniqueI16SSCSMEnvironmentJRSt10shared_ptrI13StupidChannelEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #20 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !45
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !45
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrI13StupidChannelEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !47
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !47
  br label %_ZNSt10shared_ptrI13StupidChannelEC2ERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrI13StupidChannelEC2ERKS1_.exit

_ZNSt10shared_ptrI13StupidChannelEC2ERKS1_.exit:  ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN16SSCSMEnvironmentC1ESt10shared_ptrI13StupidChannelE(ptr noundef nonnull align 8 dereferenceable(176) %i.a, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrI13StupidChannelEC2ERKS1_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !23
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17   ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !14
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #19, !inline_history !51
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #19, !inline_history !51
  br label %_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i3 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !52

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #19
  br label %_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrI13StupidChannelEC2ERKS1_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 176) #22
  resume { ptr, i32 } %i.aa
}

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN6Thread5startEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrI13StupidChannelLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
