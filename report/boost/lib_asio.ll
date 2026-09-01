Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_asio?download=true
inline.NumInlined: 3512
inline.NumDeleted: 969
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5boost4asio6detail18signal_set_service14deliver_signalEi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit29, label %bb.b, !llvm.loop !758

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit29: ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev.exit, %bb.a
  %i.ao = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  ret void
}

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #50 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt11logic_errorEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt11logic_errorEE, ptr nonnull @_ZN5boost10wrapexceptISt11logic_errorED2Ev) #51
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #50
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio6detail18signal_set_service13start_wait_opERNS2_19implementation_typeEPNS1_9signal_opE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !736, !nonnull !110, !align !111
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = atomicrmw add ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.020 = load ptr, ptr %i.f, align 8, !tbaa !704 ; 2 uses
  %.not21 = icmp eq ptr %.020, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.022 = phi ptr [ %.0, %bb.c ], [ %.020, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !756  ; 2 uses
  %.not14 = icmp eq i64 %i.h, 0
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.j = add i64 %i.h, -1
  store i64 %i.j, ptr %i.i, align 8, !tbaa !756
  %i.k = load i32, ptr %.022, align 8, !tbaa !725
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.k, ptr %i.l, align 8, !tbaa !755
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !736, !nonnull !110, !align !111
  invoke void @_ZN5boost4asio6detail9scheduler24post_deferred_completionEPNS1_19scheduler_operationE(ptr noundef nonnull align 8 dereferenceable(272) %i.m, ptr noundef nonnull %2)
          to label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit15 unwind label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit: ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  resume { ptr, i32 } %i.n

bb.c:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.022, i64 40
  %.0 = load ptr, ptr %i.p, align 8, !tbaa !704   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !759

._crit_edge:                                      ; preds = %bb.c, %bb.a
  store ptr null, ptr %2, align 8, !tbaa !198
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !735  ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  %..i = select i1 %.not.i, ptr %1, ptr %i.r
  store ptr %2, ptr %..i, align 8, !tbaa !84
  store ptr %2, ptr %i.q, align 8, !tbaa !735
  br label %_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit15

_ZN5boost4asio6detail11scoped_lockINS1_18posix_static_mutexEED2Ev.exit15: ; preds = %bb.b, %._crit_edge
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5boost4asio6detail16get_signal_stateEvE5state) #50 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN5boost4asio6detail10socket_ops6acceptEiPvPmRNS_6system10error_codeE(i32 noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq i32 %0, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135, !noalias !760
  %i.d = and i64 %i.c, -2
  %switch.i.i.i.i = icmp eq i64 %i.d, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !27, !noalias !760
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !760
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 9) #50, !noalias !760, !inline_history !226
  br i1 %i.h, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %bb.c

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread: ; preds = %bb.b, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread
  %i.i = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit ]
  store i64 9, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !85
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !141
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.j = tail call i32 @accept(i32 noundef %0, ptr noundef %1, ptr noundef null)
  br label %_ZN5boost4asio6detail10socket_ops11call_acceptIjEEiM6msghdrT_iPvPm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %2, align 8, !tbaa !141
  %i.l = trunc i64 %i.k to i32
  store i32 %i.l, ptr %i.a, align 4, !tbaa !134
  %i.m = call i32 @accept(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %i.a)
  %i.n = load i32, ptr %i.a, align 4, !tbaa !134
  %i.o = zext i32 %i.n to i64
  store i64 %i.o, ptr %2, align 8, !tbaa !141
  br label %_ZN5boost4asio6detail10socket_ops11call_acceptIjEEiM6msghdrT_iPvPm.exit

_ZN5boost4asio6detail10socket_ops11call_acceptIjEEiM6msghdrT_iPvPm.exit: ; preds = %.thread.i, %bb.e
  %i.p = phi i32 [ %i.j, %.thread.i ], [ %i.m, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN5boost4asio6detail10socket_ops11call_acceptIjEEiM6msghdrT_iPvPm.exit
  %i.r = tail call ptr @__errno_location() #53
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134  ; 3 uses
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135
  %i.u = and i64 %i.t, -2
  %switch.i.i.i = icmp eq i64 %i.u, -5572340897628102704
  br i1 %switch.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = icmp ne i32 %i.s, 0
  br label %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.w = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.s) #50, !inline_history !584
  br label %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.thread

_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.thread: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i1 [ %i.v, %bb.g ], [ %i.z, %bb.h ]
  %i.aa = select i1 %.0.i.i.i, i64 3, i64 2
  store i32 %i.s, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i11, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !85
  %.sroa.6.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i12, align 8, !tbaa !141
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost4asio6detail10socket_ops11call_acceptIjEEiM6msghdrT_iPvPm.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.thread, %bb.i, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.thread ], [ %i.p, %bb.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN5boost4asio6detail10socket_ops11sync_acceptEihPvPmRNS_6system10error_codeE(i32 noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.pollfd, align 4             ; 7 uses
  %i.a = tail call noundef i32 @_ZN5boost4asio6detail10socket_ops6acceptEiPvPmRNS_6system10error_codeE(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  %.not91 = icmp eq i32 %i.a, -1
  br i1 %.not91, label %.lr.ph, label %.thread79

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.d = and i8 %1, 1
  %.not20 = icmp eq i8 %i.d, 0
  %i.e = and i8 %1, 4                             ; 2 uses
  %.not19 = icmp eq i8 %i.e, 0
  %i.f = icmp eq i32 %0, -1
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 6
  %.not19.not = icmp ne i8 %i.e, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135, !noalias !763
  %i.j = and i64 %i.i, -2
  %switch.i.i.i.i = icmp eq i64 %i.j, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.b
  %i.k = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !27, !noalias !763
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !noalias !763
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 11) #50, !noalias !763, !inline_history !145 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !146  ; 3 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.q = load i32, ptr %4, align 8, !tbaa !85
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %bb.c, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.c:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond89 = icmp eq i64 %i.o, 0
  br i1 %cond89, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !85
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.d, %bb.c
  %.0.i18.i = phi ptr [ %i.s, %bb.d ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.c ] ; 2 uses
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = icmp eq ptr %.0.i18.i, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.x, %i.t
  %i.z = select i1 %i.u, i1 %i.v, i1 %i.y
  br i1 %i.z, label %.critedge, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135, !noalias !766
  %i.ab = and i64 %i.aa, -2
  %switch.i.i.i.i21 = icmp eq i64 %i.ab, -5572340897628102704
  br i1 %switch.i.i.i.i21, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit24.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit24

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit24: ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  %i.ac = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !27, !noalias !766
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !766
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 11) #50, !noalias !766, !inline_history !145 ; 0 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !146
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit24.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit24.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit24, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  %i.ag = phi i64 [ %.pre, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit24 ], [ %i.o, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread ] ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35.thread, label %_ZNK5boost6system10error_code5valueEv.exit17.i28

_ZNK5boost6system10error_code5valueEv.exit17.i28: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit24.thread
  %i.ai = load i32, ptr %4, align 8, !tbaa !85
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.e, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35.thread

bb.e:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i28
  %cond88 = icmp eq i64 %i.ag, 0
  br i1 %cond88, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !85
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35: ; preds = %bb.f, %bb.e
  %.0.i18.i32 = phi ptr [ %i.ak, %bb.f ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.e ] ; 2 uses
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = icmp eq ptr %.0.i18.i32, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i18.i32, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.ap, %i.al
  %i.ar = select i1 %i.am, i1 %i.an, i1 %i.aq
  br i1 %i.ar, label %.critedge, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35.thread

.critedge:                                        ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35
  br i1 %.not20, label %bb.j, label %.thread79

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i28, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit24.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135, !noalias !769
  %i.at = and i64 %i.as, -2
  %switch.i.i.i.i36 = icmp eq i64 %i.at, -5572340897628102704
  br i1 %switch.i.i.i.i36, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39: ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35.thread
  %i.au = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !27, !noalias !769
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !769
  %i.ax = call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 103) #50, !noalias !769, !inline_history !145 ; 0 uses
  %.pre96 = load i64, ptr %i.b, align 8, !tbaa !146
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35.thread
  %i.ay = phi i64 [ %.pre96, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39 ], [ %i.ag, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit35.thread ] ; 2 uses
  %i.az = icmp eq i64 %i.ay, 1
  %i.ba = load i32, ptr %4, align 8, !tbaa !85    ; 3 uses
  br i1 %i.az, label %bb.i, label %_ZNK5boost6system10error_code5valueEv.exit17.i43

_ZNK5boost6system10error_code5valueEv.exit17.i43: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39.thread
  %i.bb = icmp eq i32 %i.ba, 103
  br i1 %i.bb, label %bb.g, label %_ZNK5boost6system10error_code5valueEv.exit

bb.g:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i43
  %cond = icmp eq i64 %i.ay, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit50, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !85
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit50

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit50: ; preds = %bb.h, %bb.g
  %.0.i18.i47 = phi ptr [ %i.bc, %bb.h ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.g ] ; 2 uses
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  %6 = icmp ne ptr %.0.i18.i47, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i18.i47, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %7 = icmp ne i64 %i.bg, %i.bd
  %i.bh = select i1 %i.be, i1 %6, i1 %7
  %brmerge = or i1 %i.bh, %.not19.not
  br i1 %brmerge, label %.thread79, label %bb.j

bb.i:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39.thread
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = urem i64 %i.bj, 2097143
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = mul nuw nsw i32 %i.bl, 1000
  %i.bn = add i32 %i.bm, %i.ba
  br label %_ZNK5boost6system10error_code5valueEv.exit

_ZNK5boost6system10error_code5valueEv.exit:       ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i43, %bb.i
  %.0.i51 = phi i32 [ %i.bn, %bb.i ], [ %i.ba, %_ZNK5boost6system10error_code5valueEv.exit17.i43 ]
  %i.bo = icmp eq i32 %.0.i51, 71
  %or.cond = and i1 %.not19, %i.bo
  br i1 %or.cond, label %bb.j, label %.thread79

bb.j:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit50, %_ZNK5boost6system10error_code5valueEv.exit, %.critedge
  br i1 %i.f, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135, !noalias !772
  %i.bq = and i64 %i.bp, -2
  %switch.i.i.i.i.i = icmp eq i64 %i.bq, -5572340897628102704
  br i1 %switch.i.i.i.i.i, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i: ; preds = %bb.k
  %i.br = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !27, !noalias !772
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !772
  %i.bu = call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 9) #50, !noalias !772, !inline_history !775
  br i1 %i.bu, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i, label %.thread83

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i: ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i, %bb.k
  br label %.thread83

.thread83:                                        ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i
  %i.bv = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i ]
  store i64 9, ptr %4, align 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.c, align 8, !tbaa !85
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !141
  br label %.thread79

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i32 %0, ptr %5, align 4, !tbaa !299
  store i16 1, ptr %i.g, align 4, !tbaa !302
  store i16 0, ptr %i.h, align 2, !tbaa !303
  %i.bw = call i32 @poll(ptr noundef nonnull %5, i64 noundef 1, i32 noundef -1)
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.by = tail call ptr @__errno_location() #53
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !134 ; 3 uses
  %i.ca = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135
  %i.cb = and i64 %i.ca, -2
  %switch.i.i.i.i53 = icmp eq i64 %i.cb, -5572340897628102704
  br i1 %switch.i.i.i.i53, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = icmp ne i32 %i.bz, 0
  br label %.thread86

bb.o:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.bz) #50, !inline_history !776
  br label %.thread86

.thread86:                                        ; preds = %bb.n, %bb.o
  %.0.i.i.i.i54 = phi i1 [ %i.cc, %bb.n ], [ %i.cg, %bb.o ]
  %i.ch = select i1 %.0.i.i.i.i54, i64 3, i64 2
  store i32 %i.bz, ptr %4, align 8
  %.sroa.5.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i14.i, align 4
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.c, align 8, !tbaa !85
  store i64 %i.ch, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %.thread79

bb.p:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  %i.ci = call noundef i32 @_ZN5boost4asio6detail10socket_ops6acceptEiPvPmRNS_6system10error_codeE(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  %.not = icmp eq i32 %i.ci, -1
  br i1 %.not, label %bb.b, label %.thread79

.thread79:                                        ; preds = %bb.p, %_ZNK5boost6system10error_code5valueEv.exit, %.critedge, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit50, %bb.a, %.thread86, %.thread83
  %.182 = phi i32 [ -1, %.thread83 ], [ -1, %.thread86 ], [ %i.a, %bb.a ], [ -1, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit50 ], [ -1, %.critedge ], [ %i.ci, %bb.p ], [ -1, %_ZNK5boost6system10error_code5valueEv.exit ]
  ret i32 %.182
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN5boost4asio6detail10socket_ops9poll_readEihiRNS_6system10error_codeE(i32 noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.pollfd, align 4             ; 6 uses
  %i.a = icmp eq i32 %0, -1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135, !noalias !777
  %i.c = and i64 %i.b, -2
  %switch.i.i.i.i = icmp eq i64 %i.c, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit: ; preds = %bb.b
  %i.d = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !27, !noalias !777
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !777
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 9) #50, !noalias !777, !inline_history !226
  br i1 %i.g, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %bb.c

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread: ; preds = %bb.b, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread
  %i.h = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit ]
  store i64 9, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !85
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !141
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i32 %0, ptr %4, align 4, !tbaa !299
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 1, ptr %i.i, align 4, !tbaa !302
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 0, ptr %i.j, align 2, !tbaa !303
  %i.k = and i8 %1, 1
  %.not = icmp eq i8 %i.k, 0                      ; 2 uses
  %i.l = select i1 %.not, i32 %2, i32 0
  %i.m = call i32 @poll(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %i.l) ; 3 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__errno_location() #53
  %i.p = load i32, ptr %i.o, align 4, !tbaa !134  ; 3 uses
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135
  %i.r = and i64 %i.q, -2
  %switch.i.i.i = icmp eq i64 %i.r, -5572340897628102704
  br i1 %switch.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ne i32 %i.p, 0
  br label %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.p) #50, !inline_history !584
  br label %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.thread

_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.thread: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i1 [ %i.s, %bb.f ], [ %i.w, %bb.g ]
  %i.x = select i1 %.0.i.i.i, i64 3, i64 2
  store i32 %i.p, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i14, align 4
  br label %.sink.split

_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit: ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.y = icmp ne i32 %i.m, 0
  %brmerge = or i1 %.not, %i.y
  br i1 %brmerge, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !135, !noalias !780
  %i.aa = and i64 %i.z, -2
  %switch.i.i.i.i16 = icmp eq i64 %i.aa, -5572340897628102704
  br i1 %switch.i.i.i.i16, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit20.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit20

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit20: ; preds = %bb.h
  %i.ab = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !27, !noalias !780
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !780
  %i.ae = call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 11) #50, !noalias !780, !inline_history !226
  br i1 %i.ae, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit20.thread, label %bb.i

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit20.thread: ; preds = %bb.h, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit20
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit20, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit20.thread
  %i.af = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit20.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit20 ]
  store i64 11, ptr %3, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.thread
  %.sink = phi i64 [ %i.x, %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.thread ], [ %i.af, %bb.i ]
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !85
  %.sroa.6.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sink, ptr %.sroa.6.0..sroa_idx.i15, align 8, !tbaa !141
  br label %bb.j
end_hunk_0
