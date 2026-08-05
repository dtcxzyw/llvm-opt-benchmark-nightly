inline.NumInlined: 26976
inline.NumDeleted: 9827
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE13enqueue_timerERKNS4_10time_pointIS6_NS4_8durationIlSt5ratioILl1ELl1000000000EEEEEERNSD_14per_timer_dataEPNS1_7wait_opE:bb.a
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr %2, align 8, !tbaa !698
  %i.bv = icmp eq ptr %i.bu, %3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bw = phi i1 [ false, %bb.k ], [ %i.bv, %bb.l ]
  ret i1 %i.bw
}

declare void @_ZN5boost4asio6detail13epoll_reactor14update_timeoutEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5boost4asio6detail16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS3_22basic_resolver_resultsIS4_EENS_5beast6detail12any_endpointENS8_12basic_streamIS4_S5_NS8_21unlimited_rate_policyEE3ops10connect_opIZNS8_12_GLOBAL__N_124core_3_timeouts_snippetsEvE3$_0EEEclENS_6system10error_codeEi"(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef readonly byval(%"class.boost::system::error_code") align 8 captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %4 = alloca %"class.boost::asio::ip::basic_endpoint", align 4 ; 4 uses
  %5 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %6 = alloca %"struct.boost::asio::cancellation_slot::auto_delete_helper", align 8 ; 5 uses
  %7 = alloca %"class.boost::asio::any_io_executor", align 8 ; 5 uses
  %8 = alloca %"class.boost::asio::any_io_executor", align 8 ; 8 uses
  %9 = alloca %"class.boost::asio::cancellation_slot", align 8 ; 6 uses
  %10 = alloca %"struct.boost::asio::detail::reactive_socket_connect_op<boost::asio::detail::range_connect_op<boost::asio::ip::tcp, boost::asio::any_io_executor, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>, boost::beast::detail::any_endpoint, boost::beast::basic_stream<boost::asio::ip::tcp>::ops::connect_op<(lambda at /opt-bench/work/boost/boost/libs/beast/test/doc/core_3_timeouts.cpp:89:13)>>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %11 = alloca %"class.boost::asio::detail::binder1.119", align 8 ; 8 uses
  %12 = alloca %"class.boost::system::error_code", align 8 ; 7 uses
  %13 = alloca %"class.boost::system::error_code", align 8 ; 7 uses
  %14 = alloca %"class.boost::system::error_code", align 8 ; 3 uses
  %15 = alloca %"class.boost::asio::ip::basic_resolver_iterator", align 8 ; 16 uses
  %16 = alloca %"class.boost::asio::ip::basic_endpoint", align 4 ; 7 uses
  %17 = alloca %"class.boost::asio::detail::binder1.119", align 8 ; 8 uses
  %18 = alloca %"class.boost::asio::ip::basic_endpoint", align 4 ; 7 uses
  %19 = alloca %"class.boost::system::error_code", align 8 ; 20 uses
  %20 = alloca %"class.boost::asio::ip::basic_resolver_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::asio::ip::basic_resolver_iterator", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !848, !noalias !845 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !198, !noalias !845 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !845
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !203, !noalias !845
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !203, !noalias !845
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !845 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  store ptr %i.b, ptr %20, align 8, !tbaa !848, !alias.scope !845
  %i.j = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !198, !alias.scope !845
  %i.k = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store i64 0, ptr %i.k, align 8, !tbaa !263, !alias.scope !845
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !alias.scope !849
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  store ptr %i.b, ptr %15, align 8, !tbaa !848
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 7 uses
  store ptr %i.d, ptr %i.l, align 8, !tbaa !198
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i5 = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.m, align 4, !tbaa !203
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !203
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i64, ptr %i.k, align 8, !tbaa !263
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit.i

_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.r = phi i64 [ %.pre, %bb.h ], [ 0, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 11 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !263
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !268  ; 2 uses
  %.not1.i.i = icmp eq i64 %i.u, 0
  br i1 %.not1.i.i, label %_ZSt7advanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEmEvRT_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit.i, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i.i
  %i.v = phi i64 [ %i.ax, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i.i ], [ %i.r, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit.i ]
  %.02.i.i = phi i64 [ %i.w, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i.i ], [ %i.u, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit.i ]
  %i.w = add nsw i64 %.02.i.i, -1                 ; 2 uses
  %i.x = add i64 %i.v, 1                          ; 3 uses
  store i64 %i.x, ptr %i.s, align 8, !tbaa !263
  %i.y = load ptr, ptr %15, align 8, !tbaa !848   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !852
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !855
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 96
  %i.ag = icmp eq i64 %i.x, %i.af
  br i1 %i.ag, label %bb.i, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  store ptr null, ptr %15, align 8, !tbaa !856
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !198 ; 8 uses
  store ptr null, ptr %i.l, align 8, !tbaa !198
  %.not.i.i.i.i.i.i.i6 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i6, label %_ZNSt12__shared_ptrISt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ai, align 8, !tbaa !199
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !201
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #38, !inline_history !857
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #38, !inline_history !857
  br label %_ZNSt12__shared_ptrISt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !203
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.m ], [ %i.av, %bb.n ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.o, label %_ZNSt12__shared_ptrISt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i.i, !prof !204

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #38, !inline_history !858
  br label %_ZNSt12__shared_ptrISt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i.i

_ZNSt12__shared_ptrISt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.k, %bb.i
  store i64 0, ptr %i.s, align 8, !tbaa !263
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i.i

_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrISt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i.i, %.lr.ph.i.i
  %i.ax = phi i64 [ %i.x, %.lr.ph.i.i ], [ 0, %_ZNSt12__shared_ptrISt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i.i ]
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %_ZSt7advanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEmEvRT_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !859

_ZSt7advanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEmEvRT_T0_.exit.i: ; preds = %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i.i, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %2, ptr %i.ay, align 8, !tbaa !275
  %cond.not.i = icmp eq i32 %2, 0                 ; 2 uses
  br i1 %cond.not.i, label %_ZSt7advanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEmEvRT_T0_.exit._crit_edge.i, label %bb.q

_ZSt7advanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEmEvRT_T0_.exit._crit_edge.i: ; preds = %_ZSt7advanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEmEvRT_T0_.exit.i
  %.pre.i = load ptr, ptr %15, align 8, !tbaa !848
  %.pre164.i = load ptr, ptr %21, align 8
  br label %bb.cq

bb.p:                                             ; preds = %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i, %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i, %_ZSt7advanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEmEvRT_T0_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5boost4asio6detail27base_from_connect_conditionINS_5beast6detail12any_endpointEE15check_conditionINS0_2ip23basic_resolver_iteratorINS8_3tcpEEEEEvRKNS_6system10error_codeERT_SH_(ptr noundef nonnull align 1 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.r unwind label %bb.p, !inline_history !858

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr %20, align 8, !tbaa !848
  %.fr = freeze ptr %i.bb                         ; 5 uses
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !198 ; 20 uses
  %.not.i.i.i.i10.i = icmp eq ptr %i.bc, null     ; 4 uses
  br i1 %.not.i.i.i.i10.i, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit12.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i11.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i11.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !203
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !203
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit12.i

bb.u:                                             ; preds = %bb.s
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit12.i

_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit12.i: ; preds = %bb.u, %bb.t, %bb.r
  %i.bi = load i64, ptr %i.k, align 8, !tbaa !263 ; 3 uses
  %i.bj = load ptr, ptr %15, align 8, !tbaa !848
  %.fr30 = freeze ptr %i.bj                       ; 3 uses
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !198 ; 17 uses
  %.not.i.i.i.i13.i = icmp eq ptr %i.bk, null     ; 4 uses
  br i1 %.not.i.i.i.i13.i, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit15.i, label %bb.v

bb.v:                                             ; preds = %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit12.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i14.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i14.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !203
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !203
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit15.i

bb.x:                                             ; preds = %bb.v
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit15.i

_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit15.i: ; preds = %bb.x, %bb.w, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit12.i
  %i.bq = load i64, ptr %i.s, align 8, !tbaa !263 ; 2 uses
  br i1 %.not.i.i.i.i10.i, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit18.i, label %bb.y

bb.y:                                             ; preds = %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit15.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i17.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i17.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !203
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !203
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit18.i

bb.aa:                                            ; preds = %bb.y
  %i.bv = atomicrmw volatile add ptr %i.br, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit18.i

_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit18.i: ; preds = %bb.aa, %bb.z, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit15.i
  br i1 %.not.i.i.i.i13.i, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit21.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit18.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i20.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i20.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !203
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !203
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit21.i

bb.ad:                                            ; preds = %bb.ab
  %i.ca = atomicrmw volatile add ptr %i.bw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit21.i

_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit21.i: ; preds = %bb.ad, %bb.ac, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit18.i
  %i.cb = icmp ne ptr %.fr, null
  %i.cc = icmp ne ptr %.fr30, null                ; 2 uses
  %or.cond.i.i5.i.i = or i1 %i.cb, %i.cc
  br i1 %or.cond.i.i5.i.i, label %.lr.ph.i22.i, label %_ZSt8distanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_.exit.i

.lr.ph.i22.i:                                     ; preds = %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit21.i
  %.not.i.i.i135.i = icmp eq ptr %.fr, %.fr30
  %.not.i30136.i = icmp eq i64 %i.bi, %i.bq
  %or.cond137.i = select i1 %.not.i.i.i135.i, i1 %.not.i30136.i, i1 false
  br i1 %or.cond137.i, label %_ZSt8distanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_.exit.i, label %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.preheader

_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.preheader: ; preds = %.lr.ph.i22.i
  br i1 %i.cc, label %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.us, label %.split.us, !llvm.loop !860

_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.us: ; preds = %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.preheader, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us
  %.06.i140.i.us = phi i64 [ %i.ch, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us ], [ 0, %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.preheader ]
  %i.cd = phi ptr [ %50, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us ], [ %.fr, %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.preheader ] ; 3 uses
  %.pre.i23139.i.us = phi i64 [ %.pre10.i190.i.us, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us ], [ %i.bi, %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.preheader ]
  %i.ce = phi ptr [ %51, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us ], [ %i.bc, %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.preheader ] ; 9 uses
  %22 = add i64 %.pre.i23139.i.us, 1              ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !852
  %25 = load ptr, ptr %i.cd, align 8, !tbaa !855
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 96
  %30 = icmp eq i64 %22, %29
  br i1 %30, label %31, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us

31:                                               ; preds = %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.us
  %.not.i.i.i.i.i.i25.i.us = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i25.i.us, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %34 = load atomic i64, ptr %33 acquire, align 8 ; 2 uses
  %35 = icmp eq i64 %34, 4294967297
  %36 = trunc i64 %34 to i32                      ; 2 uses
  br i1 %35, label %bb.ae, label %37

37:                                               ; preds = %32
  %38 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i26.i.us = icmp eq i8 %38, 0
  br i1 %.not.i.i.i.i.i.i.i26.i.us, label %41, label %39

39:                                               ; preds = %37
  %40 = add nsw i32 %36, -1
  store i32 %40, ptr %33, align 8, !tbaa !203
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i.us

41:                                               ; preds = %37
  %42 = atomicrmw volatile add ptr %33, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i.us

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i.us: ; preds = %41, %39
  %.0.i.i.i.i.i.i.i.i28.i.us = phi i32 [ %36, %39 ], [ %42, %41 ]
  %43 = icmp eq i32 %.0.i.i.i.i.i.i.i.i28.i.us, 1
  br i1 %43, label %44, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us, !prof !204

44:                                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i.us
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #38, !inline_history !858
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us

bb.ae:                                            ; preds = %32
  store i32 0, ptr %33, align 8, !tbaa !199
  %45 = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %45, align 4, !tbaa !201
  %46 = load ptr, ptr %i.ce, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #38, !inline_history !861
  %47 = load ptr, ptr %i.ce, align 8, !tbaa !9
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 24
  %49 = load ptr, ptr %48, align 8
  call void %49(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #38, !inline_history !861
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us

_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us: ; preds = %31, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i.us, %44, %bb.ae, %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.us
  %50 = phi ptr [ %i.cd, %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.us ], [ null, %bb.ae ], [ null, %44 ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i.us ], [ null, %31 ] ; 2 uses
  %.pre10.i190.i.us = phi i64 [ %22, %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.us ], [ 0, %bb.ae ], [ 0, %44 ], [ 0, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i.us ], [ 0, %31 ] ; 2 uses
  %51 = phi ptr [ %i.ce, %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.us ], [ null, %bb.ae ], [ null, %44 ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i.us ], [ null, %31 ] ; 2 uses
  %i.ch = add nuw nsw i64 %.06.i140.i.us, 1       ; 2 uses
  %.not.i.i.i.i.us = icmp eq ptr %50, %.fr30
  %.not.i30.i.us = icmp eq i64 %.pre10.i190.i.us, %i.bq
  %or.cond.i.us = select i1 %.not.i.i.i.i.us, i1 %.not.i30.i.us, i1 false
  br i1 %or.cond.i.us, label %_ZSt8distanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_.exit.i, label %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.us, !llvm.loop !860

.split.us:                                        ; preds = %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i.i.preheader
  %52 = getelementptr inbounds nuw i8, ptr %.fr, i64 8
  %53 = load ptr, ptr %52, align 8, !tbaa !852
  %54 = ptrtoint ptr %53 to i64
  %55 = load ptr, ptr %.fr, align 8, !tbaa !855
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %54, %56
  %58 = sdiv exact i64 %57, 96
  br i1 %.not.i.i.i.i10.i, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.i, label %bb.af

bb.af:                                            ; preds = %.split.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ci, align 8, !tbaa !199
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !201
  %i.cn = load ptr, ptr %i.bc, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #38, !inline_history !861
  %i.cq = load ptr, ptr %i.bc, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #38, !inline_history !861
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.i

bb.ah:                                            ; preds = %bb.af
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i26.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i.i26.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !203
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i

bb.aj:                                            ; preds = %bb.ah
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i.i.i28.i = phi i32 [ %i.cl, %bb.ai ], [ %i.cv, %bb.aj ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i.i.i28.i, 1
  br i1 %i.cw, label %bb.ak, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.i, !prof !204

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #38, !inline_history !858
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.i

_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.i: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i27.i, %bb.ag, %.split.us
  %59 = sub i64 %58, %i.bi
  br label %_ZSt8distanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_.exit.i, !llvm.loop !860

_ZSt8distanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_.exit.i: ; preds = %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.i, %.lr.ph.i22.i, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit21.i
  %.sroa.6.0163.i = phi ptr [ %i.bc, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit21.i ], [ %i.bc, %.lr.ph.i22.i ], [ null, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.i ], [ %51, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us ] ; 8 uses
  %.0.lcssa.i.i = phi i64 [ 0, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEC2ERKS4_.exit21.i ], [ 0, %.lr.ph.i22.i ], [ %59, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.i ], [ %i.ch, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEEppEv.exit.i24.thread.i.us ]
  br i1 %.not.i.i.i.i13.i, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZSt8distanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4294967297
  %i.da = trunc i64 %i.cy to i32                  ; 2 uses
  br i1 %i.cz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.cx, align 8, !tbaa !199
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.db, align 4, !tbaa !201
  %i.dc = load ptr, ptr %i.bk, align 8, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #38, !inline_history !862
  %i.df = load ptr, ptr %i.bk, align 8, !tbaa !9
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #38, !inline_history !862
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit.i

bb.an:                                            ; preds = %bb.al
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i32.i = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i32.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !203
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i = phi i32 [ %i.da, %bb.ao ], [ %i.dk, %bb.ap ]
  %i.dl = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dl, label %bb.aq, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit.i, !prof !204

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #38, !inline_history !858
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit.i

_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit.i: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.am, %_ZSt8distanceIN5boost4asio2ip23basic_resolver_iteratorINS2_3tcpEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_.exit.i
  %.not.i.i.i33.i = icmp eq ptr %.sroa.6.0163.i, null
  br i1 %.not.i.i.i33.i, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.6.0163.i, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.dm, align 8, !tbaa !199
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.6.0163.i, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !201
  %i.dr = load ptr, ptr %.sroa.6.0163.i, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0163.i) #38, !inline_history !862
  %i.du = load ptr, ptr %.sroa.6.0163.i, align 8, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0163.i) #38, !inline_history !862
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i34.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i.i34.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !203
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35.i

bb.av:                                            ; preds = %bb.at
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i36.i = phi i32 [ %i.dp, %bb.au ], [ %i.dz, %bb.av ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i36.i, 1
  br i1 %i.ea, label %bb.aw, label %bb.ax, !prof !204

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0163.i) #38, !inline_history !858
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35.i, %bb.as, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit.i
  store i64 %.0.lcssa.i.i, ptr %i.t, align 8, !tbaa !268
  br i1 %.not.i.i.i.i13.i, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit42.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.eb, align 8, !tbaa !199
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !201
  %i.eg = load ptr, ptr %i.bk, align 8, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #38, !inline_history !862
  %i.ej = load ptr, ptr %i.bk, align 8, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #38, !inline_history !862
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit42.i

bb.ba:                                            ; preds = %bb.ay
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i39.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i39.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !203
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i40.i

bb.bc:                                            ; preds = %bb.ba
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i40.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i40.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i41.i = phi i32 [ %i.ee, %bb.bb ], [ %i.eo, %bb.bc ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i41.i, 1
  br i1 %i.ep, label %bb.bd, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit42.i, !prof !204

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i40.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #38, !inline_history !858
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit42.i

_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit42.i: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i40.i, %bb.az, %bb.ax
  br i1 %.not.i.i.i.i10.i, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit47.i, label %bb.be

bb.be:                                            ; preds = %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit42.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.er = load atomic i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = icmp eq i64 %i.er, 4294967297
  %i.et = trunc i64 %i.er to i32                  ; 2 uses
  br i1 %i.es, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.eq, align 8, !tbaa !199
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.eu, align 4, !tbaa !201
  %i.ev = load ptr, ptr %i.bc, align 8, !tbaa !9
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #38, !inline_history !862
  %i.ey = load ptr, ptr %i.bc, align 8, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #38, !inline_history !862
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit47.i

bb.bg:                                            ; preds = %bb.be
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i44.i = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i.i44.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fc = add nsw i32 %i.et, -1
  store i32 %i.fc, ptr %i.eq, align 8, !tbaa !203
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45.i

bb.bi:                                            ; preds = %bb.bg
  %i.fd = atomicrmw volatile add ptr %i.eq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i46.i = phi i32 [ %i.et, %bb.bh ], [ %i.fd, %bb.bi ]
  %i.fe = icmp eq i32 %.0.i.i.i.i.i46.i, 1
  br i1 %i.fe, label %bb.bj, label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit47.i, !prof !204

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #38, !inline_history !858
  br label %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit47.i

_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit47.i: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45.i, %bb.bf, %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit42.i
  %i.ff = load ptr, ptr %15, align 8, !tbaa !848  ; 3 uses
  %i.fg = icmp ne ptr %i.ff, null
  %i.fh = load ptr, ptr %21, align 8              ; 3 uses
  %i.fi = icmp ne ptr %i.fh, null
  %or.cond.i.i.i = select i1 %i.fg, i1 true, i1 %i.fi
  br i1 %or.cond.i.i.i, label %bb.bk, label %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread108.i

bb.bk:                                            ; preds = %_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev.exit47.i
  %.not.i.i.i = icmp eq ptr %i.ff, %i.fh
  br i1 %.not.i.i.i, label %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.i, label %_ZN5boost4asio2ipneERKNS1_23basic_resolver_iteratorINS1_3tcpEEES6_.exit.thread.i
end_hunk_0
