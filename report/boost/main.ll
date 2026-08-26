Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/main?download=true
inline.NumInlined: 2011
inline.NumDeleted: 879
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5boost4asio6detail15allocate_objectINS1_18signal_set_serviceENS0_17execution_context9allocatorIvEEJRNS0_10io_contextEEEEPT_RKT0_DpOT1_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !387, !nonnull !126, !align !127
  invoke void @_ZN5boost4asio6detail9scheduler9init_taskEv(ptr noundef nonnull align 8 dereferenceable(272) %i.x)
          to label %.noexc7 unwind label %bb.b

.noexc7:                                          ; preds = %.noexc6
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.y, i8 0, i64 520, i1 false), !tbaa !673
  invoke void @_ZN5boost4asio6detail18signal_set_service11add_serviceEPS2_(ptr noundef nonnull align 8 dereferenceable(608) %i.e)
          to label %_ZN5boost4asio6detail18signal_set_serviceC2ERNS0_17execution_contextE.exit unwind label %bb.b

_ZN5boost4asio6detail18signal_set_serviceC2ERNS0_17execution_contextE.exit: ; preds = %.noexc7
  ret ptr %i.e

bb.b:                                             ; preds = %.noexc7, %.noexc6, %.noexc, %bb.a
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %i.aa) #33 ; 0 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.e, i64 noundef 608, i64 noundef 8)
          to label %_ZNSt16allocator_traitsIN5boost4asio17execution_context9allocatorINS1_6detail18signal_set_serviceEEEE10deallocateERS6_PS5_m.exit unwind label %bb.c, !inline_history !674

_ZNSt16allocator_traitsIN5boost4asio17execution_context9allocatorINS1_6detail18signal_set_serviceEEEE10deallocateERS6_PS5_m.exit: ; preds = %bb.b
  invoke void @__cxa_rethrow() #37
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt16allocator_traitsIN5boost4asio17execution_context9allocatorINS1_6detail18signal_set_serviceEEEE10deallocateERS6_PS5_m.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.af

bb.e:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #34
  unreachable

bb.f:                                             ; preds = %_ZNSt16allocator_traitsIN5boost4asio17execution_context9allocatorINS1_6detail18signal_set_serviceEEEE10deallocateERS6_PS5_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost4asio6detail16service_registry17destroy_allocatedINS1_18signal_set_serviceEEEvPNS0_17execution_context7serviceE(ptr noundef %0) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198, !nonnull !126, !align !127
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(608) dereferenceable(608) %0) #33, !inline_history !675
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %0, i64 noundef 608, i64 noundef 8), !inline_history !676
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail18signal_set_service11add_serviceEPS2_(ptr noundef %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.boost::asio::execution_context::service::key", align 8 ; 5 uses
  %2 = alloca %"struct.boost::asio::execution_context::service::key", align 8 ; 5 uses
  %3 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #33 ; 0 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !677
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
  %.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !677
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.thread42, label %.thread

.thread42:                                        ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit

.thread:                                          ; preds = %bb.a, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !198, !nonnull !126, !align !127
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr @_ZTIN5boost4asio6detail14typeid_wrapperINS0_14config_serviceEEE, ptr %2, align 8, !tbaa !154
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !155
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !137, !nonnull !126, !align !127
  %i.m = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost4asio6detail16service_registry14do_use_serviceERKNS0_17execution_context7service3keyEPFPS4_RS3_PvESA_(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @_ZN5boost4asio6detail16service_registry6createINS0_14config_serviceENS0_17execution_contextEJEEEPNS5_7serviceERS5_PvDpOT1_, ptr noundef nonnull %i.l)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.n = invoke noundef zeroext i1 @_ZN5boost4asio6detail10config_getIbEET_RKNS0_14config_serviceEPKcS8_S3_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.35, i1 noundef zeroext true)
          to label %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit unwind label %bb.j

_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit: ; preds = %bb.e
  br i1 %i.n, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !677
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !198, !nonnull !126, !align !127
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !136  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store ptr @_ZTIN5boost4asio6detail14typeid_wrapperINS0_14config_serviceEEE, ptr %1, align 8, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !155
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !137, !nonnull !126, !align !127
  %i.w = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost4asio6detail16service_registry14do_use_serviceERKNS0_17execution_context7service3keyEPFPS4_RS3_PvESA_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @_ZN5boost4asio6detail16service_registry6createINS0_14config_serviceENS0_17execution_contextEJEEEPNS5_7serviceERS5_PvDpOT1_, ptr noundef nonnull %i.v)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.x = invoke noundef zeroext i1 @_ZN5boost4asio6detail10config_getIbEET_RKNS0_14config_serviceEPKcS8_S3_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.35, i1 noundef zeroext true)
          to label %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit31 unwind label %bb.k

_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit31: ; preds = %bb.g
  br i1 %i.x, label %bb.o, label %.critedge

.critedge:                                        ; preds = %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit, %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.103)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %.critedge
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %3) #37
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
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn27 = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.aa, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.thread52

bb.o:                                             ; preds = %_ZNK5boost4asio6config3getIbEENS0_10constraintIXsr11is_integralIT_EE5valueES4_E4typeEPKcS8_S4_.exit31
  %.pr41 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !677 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %.pr41, ptr %i.ac, align 8, !tbaa !680
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr null, ptr %i.ad, align 8, !tbaa !681
  %.not24 = icmp eq ptr %.pr41, null
  br i1 %.not24, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr41, i64 600
  store ptr %0, ptr %i.ae, align 8, !tbaa !681
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit: ; preds = %.thread42, %bb.p, %bb.o
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 56), align 8, !tbaa !677
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !682
  %i.ag = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #33 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !683, !nonnull !126, !align !127
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #36 ; 7 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr null, ptr %i.ak, align 8, !tbaa !112
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm, ptr %i.al, align 8, !tbaa !115
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !116
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op10do_performEPNS1_10reactor_opE, ptr %i.ao, align 8, !tbaa !382
  %i.ap = call noundef i32 @_ZN5boost4asio6detail13epoll_reactor28register_internal_descriptorEiiRPNS2_16descriptor_stateEPNS1_10reactor_opE(ptr noundef nonnull align 8 dereferenceable(152) %i.ai, i32 noundef 0, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.ak) ; 0 uses
  ret void

.thread52:                                        ; preds = %bb.j, %bb.k, %bb.c, %bb.n
  %.pn27.pn48 = phi { ptr, i32 } [ %.pn27, %bb.n ], [ %i.y, %bb.j ], [ %i.z, %bb.k ], [ %i.d, %bb.c ]
  %i.aq = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #33 ; 0 uses
  resume { ptr, i32 } %.pn27.pn48
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail18signal_set_serviceD2Ev(ptr noundef nonnull align 8 dead_on_return(608) dereferenceable(608) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost4asio6detail18signal_set_serviceE, i64 16), ptr %0, align 8, !tbaa !9
  invoke void @_ZN5boost4asio6detail18signal_set_service14remove_serviceEPS2_(ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #34
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail18signal_set_serviceD0Ev(ptr noundef nonnull align 8 dereferenceable(608) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost4asio6detail18signal_set_serviceE, i64 16), ptr %0, align 8, !tbaa !9
  invoke void @_ZN5boost4asio6detail18signal_set_service14remove_serviceEPS2_(ptr noundef nonnull align 8 dereferenceable(608) %0)
          to label %_ZN5boost4asio6detail18signal_set_serviceD2Ev.exit unwind label %bb.b, !inline_history !684

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #34, !inline_history !684
  unreachable

_ZN5boost4asio6detail18signal_set_serviceD2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 608) #35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail18signal_set_service8shutdownEv(ptr noundef nonnull align 8 dereferenceable(608) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  tail call void @_ZN5boost4asio6detail18signal_set_service14remove_serviceEPS2_(ptr noundef nonnull %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

bb.b:                                             ; preds = %._crit_edge
  %.not.i.i = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.b = phi ptr [ %i.c, %bb.c ], [ %.sroa.0.3, %bb.b ] ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !112
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void %i.e(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
          to label %bb.c unwind label %bb.d, !inline_history !348

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = icmp eq ptr %i.c, null
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %i.f, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #34
  unreachable

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.3, %._crit_edge ] ; 2 uses
  %.sroa.9.0 = phi ptr [ null, %bb.a ], [ %.sroa.9.1, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %.0914 = load ptr, ptr %i.i, align 8, !tbaa !673 ; 2 uses
  %.not15 = icmp eq ptr %.0914, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit ], [ %.sroa.0.0, %bb.e ] ; 2 uses
  %i.j = phi ptr [ %i.p, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit ], [ %.sroa.9.0, %bb.e ] ; 3 uses
  %.0916 = phi ptr [ %.09, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit ], [ %.0914, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0916, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685  ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !688  ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.not8.i = icmp eq ptr %i.j, null
  br i1 %.not8.i, label %.cont, label %.else

.else:                                            ; preds = %bb.f
  store ptr %i.m, ptr %i.j, align 8, !tbaa !342
  br label %.cont

.cont:                                            ; preds = %bb.f, %.else
  %.sroa.0.4 = phi ptr [ %.sroa.0.1, %.else ], [ %i.m, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit

_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit: ; preds = %.cont, %.lr.ph
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %.lr.ph ], [ %.sroa.0.4, %.cont ] ; 2 uses
  %i.p = phi ptr [ %i.j, %.lr.ph ], [ %i.o, %.cont ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0916, i64 24
  %.09 = load ptr, ptr %i.q, align 8, !tbaa !673  ; 2 uses
  %.not = icmp eq ptr %.09, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !689

._crit_edge:                                      ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit, %bb.e
  %.sroa.0.3 = phi ptr [ %.sroa.0.0, %bb.e ], [ %.sroa.0.2, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit ] ; 3 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %bb.e ], [ %i.p, %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushINS1_9signal_opEEEvRNS2_IT_EE.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65
  br i1 %exitcond.not, label %bb.b, label %bb.e, !llvm.loop !690

_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev.exit: ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail18signal_set_service11notify_forkENS0_17execution_context10fork_eventE(ptr noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %3 = alloca %"class.boost::asio::detail::posix_signal_blocker", align 8 ; 8 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #33 ; 0 uses
  switch i32 %1, label %_ZN5boost4asio6detail13epoll_reactor23cleanup_descriptor_dataERPNS2_16descriptor_stateE.exit [
    i32 0, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit: ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !682
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 48), align 8, !tbaa !691
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #33 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !683, !nonnull !126, !align !127
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZN5boost4asio6detail13epoll_reactor30deregister_internal_descriptorEiRPNS2_16descriptor_stateE(ptr noundef nonnull align 8 dereferenceable(152) %i.e, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !357  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit, label %.noexc

.noexc:                                           ; preds = %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !683, !nonnull !126, !align !127
  tail call void @_ZN5boost4asio6detail13epoll_reactor21free_descriptor_stateEPNS2_16descriptor_stateE(ptr noundef nonnull align 8 dereferenceable(152) %i.h, ptr noundef nonnull %i.g)
  store ptr null, ptr %i.f, align 8, !tbaa !357
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 48), align 8, !tbaa !691, !range !159, !noundef !126
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit25, label %_ZN5boost4asio6detail13epoll_reactor23cleanup_descriptor_dataERPNS2_16descriptor_stateE.exit

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit25: ; preds = %bb.b
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !682
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 48), align 8, !tbaa !691
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #33 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !683, !nonnull !126, !align !127
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #36 ; 7 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr null, ptr %i.p, align 8, !tbaa !112
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm, ptr %i.q, align 8, !tbaa !115
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op10do_performEPNS1_10reactor_opE, ptr %i.t, align 8, !tbaa !382
  %i.u = tail call noundef i32 @_ZN5boost4asio6detail13epoll_reactor28register_internal_descriptorEiiRPNS2_16descriptor_stateEPNS1_10reactor_opE(ptr noundef nonnull align 8 dereferenceable(152) %i.n, i32 noundef 0, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.p) ; 0 uses
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 48), align 8, !tbaa !691, !range !159, !noundef !126
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZN5boost4asio6detail13epoll_reactor23cleanup_descriptor_dataERPNS2_16descriptor_stateE.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i8 0, ptr %3, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.x = call i32 @sigfillset(ptr noundef nonnull %2) #33 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = call i32 @pthread_sigmask(i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %i.y) #33
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i8
  store i8 %i.ab, ptr %3, align 8, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !682 ; 2 uses
  %.not.i26 = icmp eq i32 %i.ac, -1
  br i1 %.not.i26, label %.noexc27, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = invoke i32 @close(i32 noundef %i.ac)
          to label %.noexc27 unwind label %bb.k   ; 0 uses

.noexc27:                                         ; preds = %bb.e, %bb.d
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !682
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 44), align 4, !tbaa !692 ; 2 uses
  %.not7.i = icmp eq i32 %i.ae, -1
  br i1 %.not7.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc27
  %i.af = invoke i32 @close(i32 noundef %i.ae)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %.noexc27, %bb.f
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 44), align 4, !tbaa !692
  invoke void @_ZN5boost4asio6detail18signal_set_service16open_descriptorsEv()
          to label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit29 unwind label %bb.k

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit29: ; preds = %bb.g
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 40), align 8, !tbaa !682
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost4asio6detail16get_signal_stateEvE5state, i64 48), align 8, !tbaa !691
  %i.ah = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #33 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !683, !nonnull !126, !align !127
  %i.ak = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #36
          to label %bb.h unwind label %bb.l       ; 7 uses

bb.h:                                             ; preds = %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit29
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr null, ptr %i.ak, align 8, !tbaa !112
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op11do_completeEPvPNS1_19scheduler_operationERKNS_6system10error_codeEm, ptr %i.am, align 8, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 0, ptr %i.an, align 8, !tbaa !116
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store ptr @_ZN5boost4asio6detail18signal_set_service12pipe_read_op10do_performEPNS1_10reactor_opE, ptr %i.ap, align 8, !tbaa !382
  %i.aq = invoke noundef i32 @_ZN5boost4asio6detail13epoll_reactor28register_internal_descriptorEiiRPNS2_16descriptor_stateEPNS1_10reactor_opE(ptr noundef nonnull align 8 dereferenceable(152) %i.aj, i32 noundef 0, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.ak)
          to label %bb.i unwind label %bb.l       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ar = load i8, ptr %3, align 8, !tbaa !280, !range !159, !noundef !126
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.at = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %i.y, ptr noundef null) #33 ; 0 uses
  br label %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit

_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit29
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.9.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.l ], [ %i.au, %bb.k ]
  %i.aw = load i8, ptr %3, align 8, !tbaa !280, !range !159, !noundef !126
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %i.y, ptr noundef null) #33 ; 0 uses
  br label %bb.o

_ZN5boost4asio6detail13epoll_reactor23cleanup_descriptor_dataERPNS2_16descriptor_stateE.exit: ; preds = %bb.b, %bb.c, %bb.a
  %i.az = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #33 ; 0 uses
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit: ; preds = %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit25, %.noexc, %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEE6unlockEv.exit, %_ZN5boost4asio6detail20posix_signal_blockerD2Ev.exit, %_ZN5boost4asio6detail13epoll_reactor23cleanup_descriptor_dataERPNS2_16descriptor_stateE.exit
  ret void

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.sroa.9.0, label %.thread44, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit31

.thread44:                                        ; preds = %bb.o
  %i.ba = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #33 ; 0 uses
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit31

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit31: ; preds = %bb.o, %.thread44
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail9scheduler9init_taskEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !394, !range !159, !noundef !126
  %i.c = trunc nuw i8 %i.b to i1                  ; 5 uses
  br i1 %i.c, label %bb.b, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !395  ; 2 uses
  %.not8.i = icmp eq i32 %i.e, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.069.i = phi i32 [ %i.j, %bb.c ], [ %i.e, %.lr.ph.i.preheader ] ; 2 uses
  %i.g = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #33
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = icmp sgt i32 %.069.i, 0
  %.neg.i = sext i1 %i.i to i32
  %i.j = add i32 %.069.i, %.neg.i                 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !396

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #33 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit: ; preds = %.lr.ph.i, %bb.a, %._crit_edge.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 218
  %i.n = load i8, ptr %i.m, align 2, !tbaa !275, !range !159, !noundef !126
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !271
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.e, label %_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !272
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !198, !nonnull !126, !align !127
  %i.v = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.f unwind label %bb.m       ; 4 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.p, align 8, !tbaa !271
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  store ptr null, ptr %i.x, align 8, !tbaa !112
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !343  ; 2 uses
  %.not.i2 = icmp eq ptr %i.z, null
  %..i = select i1 %.not.i2, ptr %i.w, ptr %i.z
  store ptr %i.x, ptr %..i, align 8, !tbaa !342
  store ptr %i.x, ptr %i.y, align 8, !tbaa !343
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !278
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i8, ptr %i.a, align 4, !tbaa !394, !range !159, !noundef !126
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !397 ; 2 uses
  %i.ai = or i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !397
  %i.aj = icmp ugt i64 %i.ah, 1
  br i1 %i.aj, label %bb.i, label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.c, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i.i.i, label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i.i.i: ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #33 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i

_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i.i.i, %bb.i
  %i.am = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.af) #33 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit4

_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !273, !range !159, !noundef !126
  %i.ap = trunc nuw i8 %i.ao to i1
  %.not.i3 = icmp eq ptr %i.v, null
  %or.cond = or i1 %.not.i3, %i.ap
  br i1 %or.cond, label %.noexc, label %bb.j

bb.j:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i
  store i8 1, ptr %i.an, align 8, !tbaa !273
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc unwind label %bb.m, !inline_history !398

.noexc:                                           ; preds = %bb.j, %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i
  br i1 %i.c, label %bb.k, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit4

bb.k:                                             ; preds = %.noexc
  %i.at = load i8, ptr %i.a, align 4, !tbaa !394, !range !159, !noundef !126
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.l, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit4

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.av) #33 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit4

bb.m:                                             ; preds = %bb.j, %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br i1 %i.c, label %bb.n, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ay) #33 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit: ; preds = %bb.m, %bb.n
  resume { ptr, i32 } %i.ax

_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit: ; preds = %bb.d, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit
  br i1 %i.c, label %bb.o, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit4

end_hunk_0
