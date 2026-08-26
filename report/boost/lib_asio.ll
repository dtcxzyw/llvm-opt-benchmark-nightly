Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_asio?download=true
inline.NumInlined: 3512
inline.NumDeleted: 969
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK5boost4asio6detail16service_registry14do_has_serviceERKNS0_17execution_context7service3keyE:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN5boost4asio6detail16get_signal_stateEv() local_unnamed_addr #8 {
bb.a:
  ret ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state
}

; Function Attrs: mustprogress nofree uwtable
define dso_local void @asio_signal_handler(i32 noundef %0) #22 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !134
  %i.b = tail call ptr @__errno_location() #53    ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !134
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 44), align 4, !tbaa !700
  %i.e = call i64 @write(i32 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  store i32 %i.c, ptr %i.b, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_serviceC2ERNS0_17execution_contextE(ptr noundef nonnull align 8 dereferenceable(608) initializes((0, 64), (72, 608)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::asio::execution_context::service::key", align 8 ; 5 uses
  %3 = alloca %"struct.boost::asio::execution_context::service::key", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost4asio6detail18signal_set_serviceE, i64 16), ptr %0, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store ptr @_ZTIN5boost4asio6detail14typeid_wrapperINS1_9schedulerEEE, ptr %3, align 8, !tbaa !123
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106, !nonnull !110, !align !111
  %i.i = call noundef nonnull align 8 dereferenceable(272) ptr @_ZN5boost4asio6detail16service_registry14do_use_serviceERKNS0_17execution_context7service3keyEPFPS4_RS3_PvESA_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @_ZN5boost4asio6detail16service_registry6createINS1_9schedulerENS0_17execution_contextEJEEEPNS5_7serviceERS5_PvDpOT1_, ptr noundef nonnull %i.h), !inline_history !413
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !173
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store ptr @_ZTIN5boost4asio6detail14typeid_wrapperINS1_13epoll_reactorEEE, ptr %2, align 8, !tbaa !123
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !124
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !106, !nonnull !110, !align !111
  %i.o = call noundef nonnull align 8 dereferenceable(152) ptr @_ZN5boost4asio6detail16service_registry14do_use_serviceERKNS0_17execution_context7service3keyEPFPS4_RS3_PvESA_(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @_ZN5boost4asio6detail16service_registry6createINS1_13epoll_reactorENS0_17execution_contextEJEEEPNS5_7serviceERS5_PvDpOT1_, ptr noundef nonnull %i.n), !inline_history !568 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.o, ptr %i.p, align 8, !tbaa !541
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !481, !nonnull !110, !align !111
  tail call void @_ZN5boost4asio6detail9scheduler9init_taskEv(ptr noundef nonnull align 8 dereferenceable(272) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.t, i8 0, i64 520, i1 false), !tbaa !704
  tail call void @_ZN5boost4asio6detail18signal_set_service11add_serviceEPS2_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_service11add_serviceEPS2_(ptr noundef %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.boost::asio::execution_context::service::key", align 8 ; 5 uses
  %2 = alloca %"struct.boost::asio::execution_context::service::key", align 8 ; 5 uses
  %3 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !706
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost4asio6detail18signal_set_service16open_descriptorsEv()
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.thread52

bb.d:                                             ; preds = %bb.b
  %.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !706
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.thread42, label %.thread

.thread42:                                        ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit

.thread:                                          ; preds = %bb.a, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !484, !nonnull !110, !align !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store ptr @_ZTIN5boost4asio6detail14typeid_wrapperINS0_14config_serviceEEE, ptr %2, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !124
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !106, !nonnull !110, !align !111
  %i.m = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost4asio6detail16service_registry14do_use_serviceERKNS0_17execution_context7service3keyEPFPS4_RS3_PvESA_(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @_ZN5boost4asio6detail16service_registry6createINS0_14config_serviceENS0_17execution_contextEJEEEPNS5_7serviceERS5_PvDpOT1_, ptr noundef nonnull %i.l)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %i.n = invoke noundef zeroext i1 @_ZN5boost4asio6detail10config_getIbEET_RKNS0_14config_serviceEPKcS8_S3_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i1 noundef zeroext true)
          to label %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit unwind label %bb.j

_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit: ; preds = %bb.e
  br i1 %i.n, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !706
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !484, !nonnull !110, !align !111
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !101  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store ptr @_ZTIN5boost4asio6detail14typeid_wrapperINS0_14config_serviceEEE, ptr %1, align 8, !tbaa !123
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106, !nonnull !110, !align !111
  %i.w = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost4asio6detail16service_registry14do_use_serviceERKNS0_17execution_context7service3keyEPFPS4_RS3_PvESA_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @_ZN5boost4asio6detail16service_registry6createINS0_14config_serviceENS0_17execution_contextEJEEEPNS5_7serviceERS5_PvDpOT1_, ptr noundef nonnull %i.v)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  %i.x = invoke noundef zeroext i1 @_ZN5boost4asio6detail10config_getIbEET_RKNS0_14config_serviceEPKcS8_S3_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i1 noundef zeroext true)
          to label %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit31 unwind label %bb.k

_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit31: ; preds = %bb.g
  br i1 %i.x, label %bb.o, label %.critedge

.critedge:                                        ; preds = %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit, %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.62)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %.critedge
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %3) #51
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.e, %.thread
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.thread52

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.thread52

bb.l:                                             ; preds = %.critedge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #50
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn27 = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.aa, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %.thread52

bb.o:                                             ; preds = %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit31
  %.pr41 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !706 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %.pr41, ptr %i.ac, align 8, !tbaa !707
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr null, ptr %i.ad, align 8, !tbaa !710
  %.not24 = icmp eq ptr %.pr41, null
  br i1 %.not24, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr41, i64 600
  store ptr %0, ptr %i.ae, align 8, !tbaa !710
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit: ; preds = %.thread42, %bb.p, %bb.o
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !706
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !712, !nonnull !110, !align !111
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #54 ; 6 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !198
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm, ptr %i.al, align 8, !tbaa !201
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !437
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i8 0, i64 40, i1 false)
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op10do_performEPNS1_10reactor_opE, ptr %i.ao, align 8, !tbaa !495
  %i.ap = tail call noundef i32 @_ZN5boost4asio6detail13epoll_reactor28register_internal_descriptorEiiRPNS2_16descriptor_stateEPNS1_10reactor_opE(ptr noundef nonnull align 8 dereferenceable(152) %i.ai, i32 noundef 0, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.ak) ; 0 uses
  ret void

.thread52:                                        ; preds = %bb.j, %bb.k, %bb.c, %bb.n
  %.pn27.pn48 = phi { ptr, i32 } [ %.pn27, %bb.n ], [ %i.y, %bb.j ], [ %i.z, %bb.k ], [ %i.d, %bb.c ]
  %i.aq = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  resume { ptr, i32 } %.pn27.pn48
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_serviceD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(608) dereferenceable(608) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost4asio6detail18signal_set_serviceE, i64 16), ptr %0, align 8, !tbaa !27
  invoke void @_ZN5boost4asio6detail18signal_set_service14remove_serviceEPS2_(ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #49
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_service14remove_serviceEPS2_(ptr nofree noundef captures(address) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !707
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !710
  %.not26 = icmp ne ptr %i.e, null
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8
  %i.g = icmp eq ptr %i.f, %0
  %or.cond = select i1 %.not26, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit32

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit: ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !712, !nonnull !110, !align !111
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZN5boost4asio6detail13epoll_reactor30deregister_internal_descriptorEiRPNS2_16descriptor_stateE(ptr noundef nonnull align 8 dereferenceable(152) %i.k, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !476  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE4lockEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !712, !nonnull !110, !align !111
  tail call void @_ZN5boost4asio6detail13epoll_reactor21free_descriptor_stateEPNS2_16descriptor_stateE(ptr noundef nonnull align 8 dereferenceable(152) %i.n, ptr noundef nonnull %i.m)
  store ptr null, ptr %i.l, align 8, !tbaa !476
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE4lockEv.exit

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE4lockEv.exit: ; preds = %bb.c, %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit
  %i.o = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !706 ; 2 uses
  %i.q = icmp eq ptr %i.p, %0
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !707 ; 5 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE4lockEv.exit
  store ptr %.pre.pre, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !706
  br label %bb.e

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit: ; preds = %bb.l, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  resume { ptr, i32 } %lpad.thr_comm

bb.e:                                             ; preds = %bb.d, %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE4lockEv.exit
  %i.s = phi ptr [ %.pre.pre, %bb.d ], [ %i.p, %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE4lockEv.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !710  ; 3 uses
  %.not27 = icmp eq ptr %i.u, null
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 592
  store ptr %.pre.pre, ptr %i.v, align 8, !tbaa !707
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not28 = icmp eq ptr %.pre.pre, null
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 600
  store ptr %i.u, ptr %i.w, align 8, !tbaa !710
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = icmp eq ptr %i.s, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br i1 %i.x, label %bb.j, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit32

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711 ; 2 uses
  %.not.i30 = icmp eq i32 %i.y, -1
  br i1 %.not.i30, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = invoke i32 @close(i32 noundef %i.y)
          to label %.noexc unwind label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit ; 0 uses

.noexc:                                           ; preds = %bb.k, %bb.j
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 44), align 4, !tbaa !700 ; 2 uses
  %.not7.i = icmp eq i32 %i.aa, -1
  br i1 %.not7.i, label %_ZN5boost4asio6detail18signal_set_service17close_descriptorsEv.exit, label %bb.l

bb.l:                                             ; preds = %.noexc
  %i.ab = invoke i32 @close(i32 noundef %i.aa)
          to label %_ZN5boost4asio6detail18signal_set_service17close_descriptorsEv.exit unwind label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit ; 0 uses

_ZN5boost4asio6detail18signal_set_service17close_descriptorsEv.exit: ; preds = %bb.l, %.noexc
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 44), align 4, !tbaa !700
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit32

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit32: ; preds = %_ZN5boost4asio6detail18signal_set_service17close_descriptorsEv.exit, %bb.i, %bb.b
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_serviceD0Ev(ptr noundef nonnull align 8 dereferenceable(608) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost4asio6detail18signal_set_serviceE, i64 16), ptr %0, align 8, !tbaa !27
  invoke void @_ZN5boost4asio6detail18signal_set_service14remove_serviceEPS2_(ptr noundef nonnull align 8 dereferenceable(608) %0)
          to label %_ZN5boost4asio6detail18signal_set_serviceD2Ev.exit unwind label %bb.b, !inline_history !713

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #49, !inline_history !713
  unreachable

_ZN5boost4asio6detail18signal_set_serviceD2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 608) #55
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_service8shutdownEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(608) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  tail call void @_ZN5boost4asio6detail18signal_set_service14remove_serviceEPS2_(ptr noundef nonnull %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

bb.b:                                             ; preds = %._crit_edge
  %.not.i.i = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev.exit, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.i.i

_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.i.i: ; preds = %bb.b, %bb.c
  %i.b = phi ptr [ %i.c, %bb.c ], [ %.sroa.0.3, %bb.b ] ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void %i.e(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
          to label %bb.c unwind label %bb.d, !inline_history !202

bb.c:                                             ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.i.i
  %i.f = icmp eq ptr %i.c, null
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br i1 %i.f, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev.exit, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.i.i

bb.d:                                             ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #49
  unreachable

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.3, %._crit_edge ] ; 2 uses
  %.sroa.9.0 = phi ptr [ null, %bb.a ], [ %.sroa.9.1, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %.0914 = load ptr, ptr %i.i, align 8, !tbaa !704 ; 2 uses
  %.not15 = icmp eq ptr %.0914, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit ], [ %.sroa.0.0, %bb.e ] ; 2 uses
  %i.j = phi ptr [ %i.p, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit ], [ %.sroa.9.0, %bb.e ] ; 3 uses
  %.0916 = phi ptr [ %.09, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit ], [ %.0914, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0916, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !714  ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !717  ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.not8.i = icmp eq ptr %i.j, null
  br i1 %.not8.i, label %.cont, label %.else

.else:                                            ; preds = %bb.f
  store ptr %i.m, ptr %i.j, align 8, !tbaa !215
  br label %.cont

.cont:                                            ; preds = %bb.f, %.else
  %.sroa.0.4 = phi ptr [ %.sroa.0.1, %.else ], [ %i.m, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !717
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit

_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit: ; preds = %.cont, %.lr.ph
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %.lr.ph ], [ %.sroa.0.4, %.cont ] ; 2 uses
  %i.p = phi ptr [ %i.j, %.lr.ph ], [ %i.o, %.cont ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0916, i64 24
  %.09 = load ptr, ptr %i.q, align 8, !tbaa !704  ; 2 uses
  %.not = icmp eq ptr %.09, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !719

._crit_edge:                                      ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit, %bb.e
  %.sroa.0.3 = phi ptr [ %.sroa.0.0, %bb.e ], [ %.sroa.0.2, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit ] ; 3 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %bb.e ], [ %i.p, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65
  br i1 %exitcond.not, label %bb.b, label %bb.e, !llvm.loop !720

_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev.exit: ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_service11notify_forkENS0_17execution_context10fork_eventE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(608) %0, i32 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %3 = alloca %"class.boost::asio::detail::posix_signal_blocker", align 8 ; 8 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  switch i32 %1, label %_ZN5boost4asio6detail13epoll_reactor23cleanup_descriptor_dataERPNS2_16descriptor_stateE.exit [
    i32 0, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit: ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 48), align 8, !tbaa !721
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !712, !nonnull !110, !align !111
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZN5boost4asio6detail13epoll_reactor30deregister_internal_descriptorEiRPNS2_16descriptor_stateE(ptr noundef nonnull align 8 dereferenceable(152) %i.e, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !476  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !712, !nonnull !110, !align !111
  tail call void @_ZN5boost4asio6detail13epoll_reactor21free_descriptor_stateEPNS2_16descriptor_stateE(ptr noundef nonnull align 8 dereferenceable(152) %i.h, ptr noundef nonnull %i.g)
  store ptr null, ptr %i.f, align 8, !tbaa !476
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 48), align 8, !tbaa !721, !range !188, !noundef !110
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit25, label %_ZN5boost4asio6detail13epoll_reactor23cleanup_descriptor_dataERPNS2_16descriptor_stateE.exit

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit25: ; preds = %bb.c
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 48), align 8, !tbaa !721
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !712, !nonnull !110, !align !111
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #54 ; 6 uses
  store ptr null, ptr %i.p, align 8, !tbaa !198
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm, ptr %i.q, align 8, !tbaa !201
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !437
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 40, i1 false)
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op10do_performEPNS1_10reactor_opE, ptr %i.t, align 8, !tbaa !495
  %i.u = tail call noundef i32 @_ZN5boost4asio6detail13epoll_reactor28register_internal_descriptorEiiRPNS2_16descriptor_stateEPNS1_10reactor_opE(ptr noundef nonnull align 8 dereferenceable(152) %i.n, i32 noundef 0, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.p) ; 0 uses
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 48), align 8, !tbaa !721, !range !188, !noundef !110
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN5boost4asio6detail13epoll_reactor23cleanup_descriptor_dataERPNS2_16descriptor_stateE.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i8 0, ptr %3, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  %i.x = call i32 @sigfillset(ptr noundef nonnull %2) #50 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = call i32 @pthread_sigmask(i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %i.y) #50
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i8
  store i8 %i.ab, ptr %3, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711 ; 2 uses
  %.not.i26 = icmp eq i32 %i.ac, -1
  br i1 %.not.i26, label %.noexc, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = invoke i32 @close(i32 noundef %i.ac)
          to label %.noexc unwind label %bb.l     ; 0 uses

.noexc:                                           ; preds = %bb.f, %bb.e
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 44), align 4, !tbaa !700 ; 2 uses
  %.not7.i = icmp eq i32 %i.ae, -1
  br i1 %.not7.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.af = invoke i32 @close(i32 noundef %i.ae)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %.noexc, %bb.g
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 44), align 4, !tbaa !700
  invoke void @_ZN5boost4asio6detail18signal_set_service16open_descriptorsEv()
          to label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit28 unwind label %bb.l

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit28: ; preds = %bb.h
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 48), align 8, !tbaa !721
  %i.ah = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !712, !nonnull !110, !align !111
  %i.ak = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #54
          to label %bb.i unwind label %bb.m       ; 6 uses

bb.i:                                             ; preds = %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit28
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.ak, align 8, !tbaa !198
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm, ptr %i.am, align 8, !tbaa !201
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 0, ptr %i.an, align 8, !tbaa !437
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i8 0, i64 40, i1 false)
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op10do_performEPNS1_10reactor_opE, ptr %i.ap, align 8, !tbaa !495
  %i.aq = invoke noundef i32 @_ZN5boost4asio6detail13epoll_reactor28register_internal_descriptorEiiRPNS2_16descriptor_stateEPNS1_10reactor_opE(ptr noundef nonnull align 8 dereferenceable(152) %i.aj, i32 noundef 0, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.ak)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ar = load i8, ptr %3, align 8, !tbaa !666, !range !188, !noundef !110
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.at = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %i.y, ptr noundef null) #50 ; 0 uses
  br label %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit

_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit

bb.l:                                             ; preds = %bb.g, %bb.f, %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i, %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit28
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.9.0 = phi i1 [ false, %bb.m ], [ true, %bb.l ]
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.m ], [ %i.au, %bb.l ]
  %i.aw = load i8, ptr %3, align 8, !tbaa !666, !range !188, !noundef !110
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %i.y, ptr noundef null) #50 ; 0 uses
  br label %bb.p

_ZN5boost4asio6detail13epoll_reactor23cleanup_descriptor_dataERPNS2_16descriptor_stateE.exit: ; preds = %bb.c, %bb.d, %bb.a
  %i.az = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit: ; preds = %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit25, %bb.b, %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit, %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit, %_ZN5boost4asio6detail13epoll_reactor23cleanup_descriptor_dataERPNS2_16descriptor_stateE.exit
  ret void

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br i1 %.sroa.9.0, label %.thread43, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit30

.thread43:                                        ; preds = %bb.p
  %i.ba = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit30

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit30: ; preds = %bb.p, %.thread43
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_service17close_descriptorsEv() local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711 ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @close(i32 noundef %i.a)   ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 44), align 4, !tbaa !700 ; 2 uses
  %.not7 = icmp eq i32 %i.c, -1
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @close(i32 noundef %i.c)   ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 44), align 4, !tbaa !700
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_service16open_descriptorsEv() local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::system::system_error", align 8 ; 5 uses
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %1 = alloca %"class.boost::system::error_code", align 8 ; 7 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.b = call i32 @pipe(ptr noundef nonnull %i.a) #50
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !134  ; 2 uses
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711
  %i.e = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.d, i32 noundef 4, i32 noundef 2048) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !134  ; 2 uses
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 44), align 4, !tbaa !700
  %i.h = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.g, i32 noundef 4, i32 noundef 2048) ; 0 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !711
  %i.j = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 2, i32 noundef 1) ; 0 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 44), align 4, !tbaa !700
  %i.l = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.k, i32 noundef 2, i32 noundef 1) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  %i.m = tail call ptr @__errno_location() #53
  %i.n = load i32, ptr %i.m, align 4, !tbaa !134  ; 3 uses
  store i64 0, ptr %1, align 8
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135
  %i.p = and i64 %i.o, -2
  %switch.i.i = icmp eq i64 %i.p, -5572340897628102704
  br i1 %switch.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ne i32 %i.n, 0
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.n) #50, !inline_history !448
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i1 [ %i.q, %bb.d ], [ %i.u, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = select i1 %.0.i.i, i64 3, i64 2          ; 2 uses
  store i64 %i.w, ptr %i.v, align 8, !tbaa !146
  store i32 %i.n, ptr %1, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.x, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store ptr @.str.64, ptr %2, align 8, !tbaa !177
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.31, ptr %i.y, align 8, !tbaa !179
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 776, ptr %i.z, align 8, !tbaa !180
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 5, ptr %i.aa, align 4, !tbaa !181
  %i.ab = and i64 %i.w, 1
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i, label %_ZN5boost4asio6detail11throw_errorERKNS_6system10error_codeEPKcRKNS_15source_locationE.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i

_ZNK5boost6system10error_codecvbEv.exit.thread.i: ; preds = %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #50
  call void @_ZN5boost6system12system_errorC2ERKNS0_10error_codeEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.63)
  invoke void @_ZN5boost15throw_exceptionINS_6system12system_errorEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #51
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i
  unreachable

bb.g:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #50
  resume { ptr, i32 } %i.ac

_ZN5boost4asio6detail11throw_errorERKNS_6system10error_codeEPKcRKNS_15source_locationE.exit: ; preds = %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio6detail11throw_errorERKNS_6system10error_codeEPKcRKNS_15source_locationE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_service9constructERNS2_19implementation_typeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(608) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((16, 24)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !722
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_service7destroyERNS2_19implementation_typeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(608) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %3 = alloca %"class.boost::system::error_code", align 8 ; 3 uses
  %4 = alloca %"class.boost::system::error_code", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  call void @_ZN5boost4asio6detail18signal_set_service5clearERNS2_19implementation_typeERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %3, ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @_ZN5boost4asio6detail18signal_set_service6cancelERNS2_19implementation_typeERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  ret void
end_hunk_0
