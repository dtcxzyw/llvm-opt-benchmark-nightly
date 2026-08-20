inline.NumInlined: 2732
inline.NumDeleted: 1279
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9impl_typeC2EOS8_:bb.a
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !51
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  store i64 0, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, i8 0, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 -1, ptr %i.br, align 8, !tbaa !187
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, ptr noundef nonnull align 8 dereferenceable(56) %i.bu) #34
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !40, !range !49, !noundef !50
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !51 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !54, !nonnull !50, !align !74
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke void @_ZN5boost4asio6detail13epoll_reactor10move_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEvRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataESK_(ptr noundef nonnull align 8 dereferenceable(152) %i.ca, ptr noundef nonnull align 8 dereferenceable(56) %i.cb, ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.cc)
          to label %.noexc.i.i unwind label %.body17

.noexc.i.i:                                       ; preds = %bb.h
  %.pre.i.i.i = load i8, ptr %i.bv, align 8, !tbaa !40, !range !49
  br label %bb.i

.body17:                                          ; preds = %bb.h
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bt) #34
  call void @_ZN5boost4asio6detail22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE19implementation_typeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bp) #34
  call void @_ZN5boost4asio6detail14io_object_implINS1_22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(130) %i.ao) #34
  br label %.body14

bb.i:                                             ; preds = %.noexc.i.i, %bb.g
  %i.ce = phi i8 [ %.pre.i.i.i, %.noexc.i.i ], [ 0, %bb.g ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !13
  store i64 %i.cg, ptr %i.bp, align 8, !tbaa !13
  store i64 0, ptr %i.cf, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i8 %i.ce, ptr %i.ch, align 8, !tbaa !40
  store i8 0, ptr %i.bv, align 8, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !134
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !134
  ret void

.body14:                                          ; preds = %bb.f, %.body17
  %.pn = phi { ptr, i32 } [ %i.cd, %.body17 ], [ %i.bf, %bb.f ]
  call void @_ZN5boost4asio6detail14io_object_implINS1_22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(130) %i.q) #34
  br label %.body

.body:                                            ; preds = %bb.c, %.body14
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body14 ], [ %i.ah, %bb.c ]
  call void @_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.a) #34
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !110 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %_ZN5boost23enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.body
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = atomicrmw sub ptr %i.cn, i32 1 acq_rel, align 4
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.k, label %_ZN5boost23enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !76
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #34, !inline_history !141
  br label %_ZN5boost23enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit

_ZN5boost23enable_shared_from_thisINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit: ; preds = %.body, %bb.j, %bb.k
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN5boost4asio6detail28reactive_socket_service_base19base_move_constructERNS2_24base_implementation_typeES4_(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost4asio6detail13epoll_reactor10move_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEvRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataESK_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %5 = alloca %"class.boost::asio::detail::conditionally_enabled_mutex<boost::asio::detail::futex_slim_mutex>::scoped_lock", align 8 ; 9 uses
  %6 = alloca %"class.boost::asio::detail::op_queue.12", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 0, ptr %i.b, align 8, !tbaa !157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %.not15.i.not = icmp eq i32 %i.d, -1            ; 2 uses
  br i1 %.not15.i.not, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lockC2ERS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !159  ; 2 uses
  %.not17.i = icmp eq i32 %i.f, 0
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0818.i = phi i32 [ %i.m, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !162, !nonnull !50, !align !163
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %.not.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i, label %.sink.split.i, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE8try_lockEv.exit.i

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE8try_lockEv.exit.i: ; preds = %.lr.ph.i
  %i.j = cmpxchg ptr %i.h, i32 0, i32 1 acquire monotonic, align 4
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE8try_lockEv.exit.i
  %i.l = icmp sgt i32 %.0818.i, 0
  %.neg.i = sext i1 %i.l to i32
  %i.m = add i32 %.0818.i, %.neg.i                ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !164

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !162
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %i.n = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 6 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  %.not6.i.i = icmp eq i32 %i.p, -1
  br i1 %.not6.i.i, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !159  ; 2 uses
  %.not8.i.i = icmp eq i32 %i.r, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.049.i.i = phi i32 [ %i.v, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = cmpxchg ptr %i.o, i32 0, i32 1 acquire monotonic, align 4
  %i.t = extractvalue { i32, i1 } %i.s, 1
  br i1 %i.t, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp sgt i32 %.049.i.i, 0
  %.neg.i.i = sext i1 %i.u to i32
  %i.v = add i32 %.049.i.i, %.neg.i.i             ; 2 uses
  %.not.i12.i = icmp eq i32 %i.v, 0
  br i1 %.not.i12.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !166

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.w = cmpxchg ptr %i.o, i32 0, i32 1 acquire monotonic, align 4 ; 2 uses
  %i.x = extractvalue { i32, i1 } %i.w, 1
  br i1 %i.x, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.y = extractvalue { i32, i1 } %i.w, 0
  %.not.i.i.i = icmp eq i32 %i.y, 2
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = atomicrmw xchg ptr %i.o, i32 2 acquire, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.sink.split.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g, %bb.f
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.ab = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.o, i32 noundef 128, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0) #34 ; 0 uses
  %i.ac = atomicrmw xchg ptr %i.o, i32 2 acquire, align 4
  %.not1.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not1.i.i.i, label %.sink.split.i, label %.lr.ph.i.i.i, !llvm.loop !167

.sink.split.i:                                    ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE8try_lockEv.exit.i, %.lr.ph.i, %.lr.ph.i.i, %.lr.ph.i.i.i, %bb.g, %._crit_edge.i.i, %._crit_edge.i
  store i8 1, ptr %i.b, align 8, !tbaa !157
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lockC2ERS4_.exit

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lockC2ERS4_.exit: ; preds = %bb.a, %.sink.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !168
  %.not.i7 = icmp ne ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %2, %i.ag
  %or.cond.i = select i1 %.not.i7, i1 true, i1 %i.ah
  br i1 %or.cond.i, label %.preheader.i, label %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE12cancel_timerERNSD_14per_timer_dataERNS1_8op_queueINS1_19scheduler_operationEEEm.exit

.preheader.i:                                     ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lockC2ERS4_.exit
  %.pr.pre.i = load ptr, ptr %2, align 8, !tbaa !148 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not18.i42 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not18.i42, label %.thread28.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i, %bb.m
  %7 = phi ptr [ %.pr35.i, %bb.m ], [ %.pr.pre.i, %.preheader.i ] ; 7 uses
  %8 = phi ptr [ %7, %bb.m ], [ null, %.preheader.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !83, !noalias !1058
  %i.am = and i64 %i.al, -2
  %switch.i.i.i.i.i = icmp eq i64 %i.am, -5572340897628102704
  br i1 %switch.i.i.i.i.i, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i: ; preds = %bb.h
  %i.an = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !76, !noalias !1058
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !1058
  %i.aq = tail call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #34, !noalias !1058, !inline_history !172
  br i1 %i.aq, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i, label %bb.i

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i: ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i, %bb.h
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i
  %i.ar = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i ]
  store i64 125, ptr %i.ak, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !17
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %i.ar, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !13
  %i.as = load ptr, ptr %2, align 8, !tbaa !148   ; 3 uses
  %.not.i.i9 = icmp eq ptr %i.as, null
  br i1 %.not.i.i9, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !149 ; 3 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !148
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.ai, align 8, !tbaa !152
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.as, align 8, !tbaa !149
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pr35.i = phi ptr [ %i.at, %bb.l ], [ null, %bb.i ] ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !149
  %.not.i21.i = icmp eq ptr %8, null
  %..i.i = select i1 %.not.i21.i, ptr %6, ptr %8
  store ptr %7, ptr %..i.i, align 8, !tbaa !173
  store ptr %7, ptr %i.aj, align 8, !tbaa !174
  %.not17.i10 = icmp eq ptr %.pr35.i, null
  br i1 %.not17.i10, label %.thread28.i, label %bb.h

.thread28.i:                                      ; preds = %bb.m, %.preheader.i
  invoke void @_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE12remove_timerERNSD_14per_timer_dataE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE12cancel_timerERNSD_14per_timer_dataERNS1_8op_queueINS1_19scheduler_operationEEEm.exit unwind label %bb.ae

_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE12cancel_timerERNSD_14per_timer_dataERNS1_8op_queueINS1_19scheduler_operationEEEm.exit: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lockC2ERS4_.exit, %.thread28.i
  %i.av = load ptr, ptr %3, align 8, !tbaa !465   ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.av, null
  br i1 %.not.i.i12, label %_ZN5boost4asio6detail8op_queueINS1_7wait_opEE4pushIS3_EEvRNS2_IT_EE.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE12cancel_timerERNSD_14per_timer_dataERNS1_8op_queueINS1_19scheduler_operationEEEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !152 ; 2 uses
  %.not8.i.i13 = icmp eq ptr %i.ax, null
  %..i.i14 = select i1 %.not8.i.i13, ptr %2, ptr %i.ax
  store ptr %i.av, ptr %..i.i14, align 8, !tbaa !223
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !465
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 16, i1 false)
  br label %_ZN5boost4asio6detail8op_queueINS1_7wait_opEE4pushIS3_EEvRNS2_IT_EE.exit.i

_ZN5boost4asio6detail8op_queueINS1_7wait_opEE4pushIS3_EEvRNS2_IT_EE.exit.i: ; preds = %bb.n, %_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE12cancel_timerERNSD_14per_timer_dataERNS1_8op_queueINS1_19scheduler_operationEEEm.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !187
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !187
  store i64 -1, ptr %i.ba, align 8, !tbaa !187
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !187 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !189
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !192 ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 4
  %i.bm = icmp ult i64 %i.bd, %i.bl
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost4asio6detail8op_queueINS1_7wait_opEE4pushIS3_EEvRNS2_IT_EE.exit.i
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bd
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %2, ptr %i.bo, align 8, !tbaa !193
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5boost4asio6detail8op_queueINS1_7wait_opEE4pushIS3_EEvRNS2_IT_EE.exit.i
  %i.bp = load ptr, ptr %i.af, align 8, !tbaa !195
  %i.bq = icmp eq ptr %i.bp, %3
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %2, ptr %i.af, align 8, !tbaa !195
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !168 ; 3 uses
  %.not.i15 = icmp eq ptr %i.bs, null
  br i1 %.not.i15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %2, ptr %i.bt, align 8, !tbaa !196
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !196 ; 3 uses
  %.not24.i = icmp eq ptr %i.bv, null
  br i1 %.not24.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %2, ptr %i.bw, align 8, !tbaa !168
  %.pre.i16 = load ptr, ptr %i.br, align 8, !tbaa !168
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bx = phi ptr [ %.pre.i16, %bb.u ], [ %i.bs, %bb.t ]
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !196
  store ptr %i.bx, ptr %i.ad, align 8, !tbaa !168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  br i1 %.not15.i.not, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lock6unlockEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = load ptr, ptr %5, align 8, !tbaa !162, !nonnull !50, !align !163
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 3 uses
  %i.cb = atomicrmw sub ptr %i.ca, i32 1 release, align 4
  %.not.i.i17 = icmp eq i32 %i.cb, 1
  br i1 %.not.i.i17, label %_ZN5boost4asio6detail16futex_slim_mutex6unlockEv.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store atomic i32 0, ptr %i.ca release, align 4
  %i.cc = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.ca, i32 noundef 129, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #34 ; 0 uses
  br label %_ZN5boost4asio6detail16futex_slim_mutex6unlockEv.exit.i

_ZN5boost4asio6detail16futex_slim_mutex6unlockEv.exit.i: ; preds = %bb.x, %bb.w
  store i8 0, ptr %i.b, align 8, !tbaa !157
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lock6unlockEv.exit

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lock6unlockEv.exit: ; preds = %_ZN5boost4asio6detail16futex_slim_mutex6unlockEv.exit.i, %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !176, !nonnull !50, !align !74
  invoke void @_ZN5boost4asio6detail9scheduler25post_deferred_completionsERNS1_8op_queueINS1_19scheduler_operationEEE(ptr noundef nonnull align 8 dereferenceable(272) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lock6unlockEv.exit
  %i.cf = load ptr, ptr %6, align 8, !tbaa !185   ; 2 uses
  %.not5.i = icmp eq ptr %i.cf, null
  br i1 %.not5.i, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lockD2Ev.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.lr.ph.i18
  %i.ch = phi ptr [ %i.cf, %.lr.ph.i18 ], [ %i.cm, %bb.ac ] ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !149 ; 2 uses
  store ptr %i.ci, ptr %6, align 8, !tbaa !185
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %i.cg, align 8, !tbaa !174
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store ptr null, ptr %i.ch, align 8, !tbaa !149
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void %i.cl(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0)
          to label %bb.ac unwind label %bb.ad, !inline_history !186

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.cm = load ptr, ptr %6, align 8, !tbaa !185   ; 2 uses
  %.not.i19 = icmp eq ptr %i.cm, null
  br i1 %.not.i19, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lockD2Ev.exit, label %bb.z

bb.ad:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #35
  unreachable

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lockD2Ev.exit: ; preds = %bb.ac, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.ae:                                            ; preds = %.thread28.i, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lock6unlockEv.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lockD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  resume { ptr, i32 } %i.cp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost11make_sharedINS_5beast9websocket6streamINS_4asio3ssl6streamINS1_12basic_streamINS4_2ip3tcpENS4_15any_io_executorENS1_21unlimited_rate_policyEEEEELb1EE9impl_typeEJNS4_6strandINS4_10io_context19basic_executor_typeISaIvELm0EEEEERNS5_7contextEEEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::shared_ptr.77") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::shared_ptr.77", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %3, align 8
  %i.b = invoke noalias noundef nonnull dereferenceable(2808) ptr @_Znwm(i64 noundef 2808) #38
          to label %_ZNK5boost10shared_ptrINS_5beast9websocket6streamINS_4asio3ssl6streamINS1_12basic_streamINS4_2ip3tcpENS4_15any_io_executorENS1_21unlimited_rate_policyEEEEELb1EE9impl_typeEE29_internal_get_untyped_deleterEv.exit unwind label %bb.b ; 10 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #34 ; 0 uses
  invoke void @__cxa_rethrow() #36
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.c, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.n ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #35
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNK5boost10shared_ptrINS_5beast9websocket6streamINS_4asio3ssl6streamINS1_12basic_streamINS4_2ip3tcpENS4_15any_io_executorENS1_21unlimited_rate_policyEEEEELb1EE9impl_typeEE29_internal_get_untyped_deleterEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.i, align 4, !tbaa !102
end_hunk_0
