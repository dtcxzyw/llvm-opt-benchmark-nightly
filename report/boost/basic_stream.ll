Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/basic_stream?download=true
inline.NumInlined: 19842
inline.NumDeleted: 6964
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5boost5beast17basic_stream_test11testConnectEv:bb.a
  %i.md = load i8, ptr %i.mc, align 1, !range !68
  %i.me = trunc nuw i8 %i.md to i1
  %or.cond.i.i297 = select i1 %i.mb, i1 %i.me, i1 false
  br i1 %or.cond.i.i297, label %bb.bo, label %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i298

bb.bo:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit296.thread500
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %56, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #36
  store ptr @.str.36, ptr %57, align 8, !tbaa !254
  %i.mf = getelementptr inbounds nuw i8, ptr %57, i64 8
  store ptr @.str.37, ptr %i.mf, align 8, !tbaa !256
  %i.mg = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i32 592, ptr %i.mg, align 8, !tbaa !257
  %i.mh = getelementptr inbounds nuw i8, ptr %57, i64 20
  store i32 48, ptr %i.mh, align 4, !tbaa !258
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(24) %57) #38
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #36
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #36
  br label %.body299

_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i298: ; preds = %_ZNK5boost6system10error_codecvbEv.exit296.thread500
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !106
  invoke void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.mk)
          to label %.critedge153 unwind label %bb.hz

_ZNK5boost6system10error_codecvbEv.exit296.thread: ; preds = %bb.bn
  %i.ml = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #36
  invoke void @_ZNK5boost6system10error_code7messageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %123, ptr noundef nonnull align 8 dereferenceable(24) %122)
          to label %bb.br unwind label %bb.ia

bb.br:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit296.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #36
  invoke void @_ZN5boost5beast9unit_test6detail11make_reasonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_RKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %55, ptr noundef nonnull align 8 dereferenceable(32) %123, ptr noundef nonnull @.str.25, i32 noundef 866)
          to label %.noexc308 unwind label %bb.ib

.noexc308:                                        ; preds = %bb.br
  invoke void @_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(808) %i.ml, ptr noundef nonnull align 8 dereferenceable(32) %55)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %.noexc308
  %i.mm = load ptr, ptr %55, align 8, !tbaa !17   ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i306: ; preds = %bb.bs
  %i.mp = load i64, ptr %i.mn, align 8, !tbaa !19
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mq) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i307

bb.bt:                                            ; preds = %.noexc308
  %i.mr = landingpad { ptr, i32 }
          cleanup
  %i.ms = load ptr, ptr %55, align 8, !tbaa !17   ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i303: ; preds = %bb.bt
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !19
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mw) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i304: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #36
  br label %.body309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i307: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #36
  %i.mx = load ptr, ptr %123, align 8, !tbaa !17  ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %123, i64 16 ; 2 uses
  %i.mz = icmp eq ptr %i.mx, %i.my
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i307
  %i.na = load i64, ptr %i.my, align 8, !tbaa !19
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.mx, i64 noundef %i.nb) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i307, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #36
  br label %.critedge153

.critedge153:                                     ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #36
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %121) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #36
  %i.nc = getelementptr inbounds nuw i8, ptr %120, i64 24
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !241
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 48
  %i.nf = getelementptr inbounds nuw i8, ptr %120, i64 32
  invoke void @_ZN5boost4asio6detail28reactive_socket_service_base7destroyERNS2_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(33) %i.ne, ptr noundef nonnull align 8 dereferenceable(16) %i.nf)
          to label %_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit315 unwind label %bb.bu

bb.bu:                                            ; preds = %.critedge153
  %i.ng = landingpad { ptr, i32 }
          catch ptr null
  %i.nh = extractvalue { ptr, i32 } %i.ng, 0
  call void @__clang_call_terminate(ptr %i.nh) #37
  unreachable

_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit315: ; preds = %.critedge153
  %i.ni = getelementptr inbounds nuw i8, ptr %120, i64 56
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ni) #36
  call void @_ZN5boost4asio10io_contextD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(140) %120) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #36
  invoke fastcc void @_ZN5boost5beast12_GLOBAL__N_113test_acceptorC2Ev(ptr noundef nonnull align 8 dereferenceable(140) %124)
          to label %bb.bv unwind label %bb.ie

bb.bv:                                            ; preds = %_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit315
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #36
  invoke void @_ZN5boost11make_sharedINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEJSt17integral_constantIbLb0EERS6_EEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::shared_ptr") align 8 dereferenceable(16) %125, ptr noundef nonnull align 1 dereferenceable(1) %54, ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.bw unwind label %bb.if

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #36
  %i.nj = load ptr, ptr %125, align 8, !tbaa !143 ; 10 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 136
  %i.nl = load i8, ptr %i.nk, align 8, !tbaa !267, !range !68, !noundef !69
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 72 ; 2 uses
  %i.no = load i8, ptr %i.nn, align 8, !tbaa !285, !range !68, !noundef !69
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.by, label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i.i

bb.by:                                            ; preds = %bb.bx
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nj, i64 56
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !286 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 104
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !287, !nonnull !69, !align !81
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 48
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nj, i64 80
  %i.nw = invoke noundef i64 @_ZN5boost4asio6detail13epoll_reactor12cancel_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEmRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(152) %i.nt, ptr noundef nonnull align 8 dereferenceable(56) %i.nu, ptr noundef nonnull align 8 dereferenceable(40) %i.nv, i64 noundef -1)
          to label %.noexc318 unwind label %bb.ig ; 0 uses

.noexc318:                                        ; preds = %bb.by
  store i8 0, ptr %i.nn, align 8, !tbaa !285
  br label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i.i

_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i.i: ; preds = %.noexc318, %bb.bx
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nj, i64 64
  store i64 9223372036854775807, ptr %i.nx, align 8, !tbaa !15
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i.i, %bb.bw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nj, i64 224
  %i.nz = load i8, ptr %i.ny, align 8, !tbaa !303, !range !68, !noundef !69
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nj, i64 160 ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 8, !tbaa !285, !range !68, !noundef !69
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.cb, label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit2.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nj, i64 144
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !286 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 104
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !287, !nonnull !69, !align !81
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 48
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nj, i64 168
  %i.ok = invoke noundef i64 @_ZN5boost4asio6detail13epoll_reactor12cancel_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEmRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(152) %i.oh, ptr noundef nonnull align 8 dereferenceable(56) %i.oi, ptr noundef nonnull align 8 dereferenceable(40) %i.oj, i64 noundef -1)
          to label %.noexc319 unwind label %bb.ig ; 0 uses

.noexc319:                                        ; preds = %bb.cb
  store i8 0, ptr %i.ob, align 8, !tbaa !285
  br label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit2.i.i

_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit2.i.i: ; preds = %.noexc319, %bb.ca
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nj, i64 152
  store i64 9223372036854775807, ptr %i.ol, align 8, !tbaa !15
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit2.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %124, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #36
  store i8 0, ptr %126, align 8, !tbaa !372
  %i.on = getelementptr inbounds nuw i8, ptr %126, i64 8
  %161 = getelementptr inbounds nuw i8, ptr %126, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %161, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.on, align 8, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %53, ptr noundef nonnull align 8 dereferenceable(28) %i.om, i64 28, i1 false), !tbaa.struct !266
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE15connect_handlerEC2ISE_EEOT_RSA_NS3_14basic_endpointIS4_EE(ptr noundef nonnull align 8 dereferenceable(120) %52, ptr noundef nonnull align 8 dereferenceable(40) %126, ptr noundef nonnull align 8 dereferenceable(16) %125, ptr noundef nonnull align 4 dead_on_return %53)
          to label %bb.cd unwind label %bb.ih

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE15connect_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %52) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  %i.oo = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !85
  %i.op = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.oo, ptr noundef nonnull align 8 dereferenceable(40) %126, ptr noundef nonnull align 1 dereferenceable(1) @.str.22, ptr noundef nonnull @.str.25, i32 noundef 719)
          to label %_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit unwind label %bb.ce ; 0 uses

bb.ce:                                            ; preds = %bb.cd
  %i.oq = landingpad { ptr, i32 }
          catch ptr null
  %i.or = extractvalue { ptr, i32 } %i.oq, 0
  call void @__clang_call_terminate(ptr %i.or) #37
  unreachable

_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #36
  %i.os = invoke noundef i64 @_ZN5boost4asio10io_context3runEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.cf unwind label %bb.ig     ; 0 uses

bb.cf:                                            ; preds = %_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit
  invoke void @_ZN5boost4asio10io_context7restartEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.cg unwind label %bb.ig

bb.cg:                                            ; preds = %bb.cf
  %i.ot = load ptr, ptr %125, align 8, !tbaa !143 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !158
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #36
  invoke void @_ZN5boost4asio6detail28reactive_socket_service_base5closeERNS2_24base_implementation_typeERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %50, ptr noundef nonnull align 8 dereferenceable(33) %i.ow, ptr noundef nonnull align 8 dereferenceable(16) %i.ox, ptr noundef nonnull align 8 dereferenceable(24) %49)
          to label %.noexc324 unwind label %bb.ig

.noexc324:                                        ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #36
  store ptr @.str.33, ptr %51, align 8, !tbaa !254
  %i.oy = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr @.str.74, ptr %i.oy, align 8, !tbaa !256
  %i.oz = getelementptr inbounds nuw i8, ptr %51, i64 16
  store i32 514, ptr %i.oz, align 8, !tbaa !257
  %i.pa = getelementptr inbounds nuw i8, ptr %51, i64 20
  store i32 5, ptr %i.pa, align 4, !tbaa !258
  %i.pb = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !31 ; 2 uses
  %i.pd = and i64 %i.pc, 1
  %.not.i.i.i.i321 = icmp eq i64 %i.pd, 0
  br i1 %.not.i.i.i.i321, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.noexc324
  %i.pe = icmp ne i64 %i.pc, 1
  %i.pf = load i32, ptr %49, align 8
  %i.pg = icmp ne i32 %i.pf, 0
  %or.cond.i.i322 = select i1 %i.pe, i1 true, i1 %i.pg
  br i1 %or.cond.i.i322, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i323, label %bb.ci

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i323: ; preds = %bb.ch
  invoke void @_ZN5boost4asio6detail14do_throw_errorERKNS_6system10error_codeEPKcRKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull @.str.74, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %bb.ci unwind label %bb.ig

bb.ci:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i323, %.noexc324, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #36
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE13expires_afterENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE(ptr noundef nonnull align 8 dereferenceable(16) %125, i64 30000000000)
          to label %bb.cj unwind label %bb.ii

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #36
  store i8 0, ptr %127, align 8, !tbaa !372
  %i.ph = getelementptr inbounds nuw i8, ptr %127, i64 8
  %162 = getelementptr inbounds nuw i8, ptr %127, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %162, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ph, align 8, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %48, ptr noundef nonnull align 8 dereferenceable(28) %i.om, i64 28, i1 false), !tbaa.struct !266
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE15connect_handlerEC2ISE_EEOT_RSA_NS3_14basic_endpointIS4_EE(ptr noundef nonnull align 8 dereferenceable(120) %47, ptr noundef nonnull align 8 dereferenceable(40) %127, ptr noundef nonnull align 8 dereferenceable(16) %125, ptr noundef nonnull align 4 dead_on_return %48)
          to label %bb.ck unwind label %bb.ij

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE15connect_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %47) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %48)
  %i.pi = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !85
  %i.pj = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.pi, ptr noundef nonnull align 8 dereferenceable(40) %127, ptr noundef nonnull align 1 dereferenceable(1) @.str.22, ptr noundef nonnull @.str.25, i32 noundef 719)
          to label %_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit329 unwind label %bb.cl ; 0 uses

bb.cl:                                            ; preds = %bb.ck
  %i.pk = landingpad { ptr, i32 }
          catch ptr null
  %i.pl = extractvalue { ptr, i32 } %i.pk, 0
  call void @__clang_call_terminate(ptr %i.pl) #37
  unreachable

_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit329: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #36
  %i.pm = invoke noundef i64 @_ZN5boost4asio10io_context3runEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.cm unwind label %bb.ig     ; 0 uses

bb.cm:                                            ; preds = %_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit329
  invoke void @_ZN5boost4asio10io_context7restartEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.cn unwind label %bb.ig

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %125) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #36
  %i.pn = getelementptr inbounds nuw i8, ptr %124, i64 24
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !241
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 48
  %i.pq = getelementptr inbounds nuw i8, ptr %124, i64 32
  invoke void @_ZN5boost4asio6detail28reactive_socket_service_base7destroyERNS2_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(33) %i.pp, ptr noundef nonnull align 8 dereferenceable(16) %i.pq)
          to label %_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit330 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pr = landingpad { ptr, i32 }
          catch ptr null
  %i.ps = extractvalue { ptr, i32 } %i.pr, 0
  call void @__clang_call_terminate(ptr %i.ps) #37
  unreachable

_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit330: ; preds = %bb.cn
  %i.pt = getelementptr inbounds nuw i8, ptr %124, i64 56
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.pt) #36
  call void @_ZN5boost4asio10io_contextD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(140) %124) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #36
  invoke fastcc void @_ZN5boost5beast12_GLOBAL__N_113test_acceptorC2Ev(ptr noundef nonnull align 8 dereferenceable(140) %128)
          to label %bb.cp unwind label %bb.in

bb.cp:                                            ; preds = %_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit330
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #36
  invoke void @_ZN5boost11make_sharedINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEJSt17integral_constantIbLb0EERS6_EEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::shared_ptr") align 8 dereferenceable(16) %129, ptr noundef nonnull align 1 dereferenceable(1) %46, ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.cq unwind label %bb.io

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #36
  %i.pu = getelementptr inbounds nuw i8, ptr %128, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %98, ptr noundef nonnull align 8 dereferenceable(28) %i.pu, i64 28, i1 false), !tbaa.struct !266
  %i.pv = load ptr, ptr %129, align 8, !tbaa !143 ; 10 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 136
  %i.px = load i8, ptr %i.pw, align 8, !tbaa !267, !range !68, !noundef !69
  %i.py = trunc nuw i8 %i.px to i1
  br i1 %i.py, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 72 ; 2 uses
  %i.qa = load i8, ptr %i.pz, align 8, !tbaa !285, !range !68, !noundef !69
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.cs, label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i.i333

bb.cs:                                            ; preds = %bb.cr
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 56
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !286 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 104
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !287, !nonnull !69, !align !81
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 48
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pv, i64 80
  %i.qi = invoke noundef i64 @_ZN5boost4asio6detail13epoll_reactor12cancel_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEmRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(152) %i.qf, ptr noundef nonnull align 8 dereferenceable(56) %i.qg, ptr noundef nonnull align 8 dereferenceable(40) %i.qh, i64 noundef -1)
          to label %.noexc335 unwind label %bb.ip ; 0 uses

.noexc335:                                        ; preds = %bb.cs
  store i8 0, ptr %i.pz, align 8, !tbaa !285
  br label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i.i333

_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i.i333: ; preds = %.noexc335, %bb.cr
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pv, i64 64
  store i64 9223372036854775807, ptr %i.qj, align 8, !tbaa !15
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i.i333, %bb.cq
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pv, i64 224
  %i.ql = load i8, ptr %i.qk, align 8, !tbaa !303, !range !68, !noundef !69
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE13expires_neverEv.exit337, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pv, i64 160 ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 8, !tbaa !285, !range !68, !noundef !69
  %i.qp = trunc nuw i8 %i.qo to i1
  br i1 %i.qp, label %bb.cv, label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit2.i.i334

bb.cv:                                            ; preds = %bb.cu
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pv, i64 144
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !286 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 104
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !287, !nonnull !69, !align !81
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 48
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pv, i64 168
  %i.qw = invoke noundef i64 @_ZN5boost4asio6detail13epoll_reactor12cancel_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEmRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(152) %i.qt, ptr noundef nonnull align 8 dereferenceable(56) %i.qu, ptr noundef nonnull align 8 dereferenceable(40) %i.qv, i64 noundef -1)
          to label %.noexc336 unwind label %bb.ip ; 0 uses

.noexc336:                                        ; preds = %bb.cv
  store i8 0, ptr %i.qn, align 8, !tbaa !285
  br label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit2.i.i334

_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit2.i.i334: ; preds = %.noexc336, %bb.cu
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pv, i64 152
  store i64 9223372036854775807, ptr %i.qx, align 8, !tbaa !15
  br label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE13expires_neverEv.exit337

_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE13expires_neverEv.exit337: ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_10io_context19basic_executor_typeISaIvELm0EEEE10expires_atERKNS2_10time_pointIS4_NS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit2.i.i334, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #36
  store i8 0, ptr %130, align 1, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE13range_handlerEC2IZNSD_11testConnectEvE5rangeNS0_6detail12any_endpointESE_EEOT1_RSA_RKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(88) %44, ptr noundef nonnull align 1 dereferenceable(1) %130, ptr noundef nonnull align 8 dereferenceable(16) %129, ptr noundef nonnull align 4 dereferenceable(28) %98, ptr noundef nonnull align 1 dereferenceable(1) %45)
          to label %bb.cw unwind label %bb.iq

bb.cw:                                            ; preds = %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE13expires_neverEv.exit337
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE13range_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %44) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  %i.qy = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !85
  %i.qz = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.qy, ptr noundef nonnull align 1 dereferenceable(1) %130, ptr noundef nonnull align 1 dereferenceable(1) @.str.22, ptr noundef nonnull @.str.25, i32 noundef 766)
          to label %_ZZN5boost5beast17basic_stream_test11testConnectEvEN13range_handlerD2Ev.exit unwind label %bb.cx ; 0 uses

bb.cx:                                            ; preds = %bb.cw
  %i.ra = landingpad { ptr, i32 }
          catch ptr null
  %i.rb = extractvalue { ptr, i32 } %i.ra, 0
  call void @__clang_call_terminate(ptr %i.rb) #37
  unreachable

_ZZN5boost5beast17basic_stream_test11testConnectEvEN13range_handlerD2Ev.exit: ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #36
  %i.rc = invoke noundef i64 @_ZN5boost4asio10io_context3runEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.cy unwind label %bb.ip     ; 0 uses

bb.cy:                                            ; preds = %_ZZN5boost5beast17basic_stream_test11testConnectEvEN13range_handlerD2Ev.exit
  invoke void @_ZN5boost4asio10io_context7restartEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.cz unwind label %bb.ip

bb.cz:                                            ; preds = %bb.cy
  %i.rd = load ptr, ptr %129, align 8, !tbaa !143 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !158
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 48
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #36
  invoke void @_ZN5boost4asio6detail28reactive_socket_service_base5closeERNS2_24base_implementation_typeERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %42, ptr noundef nonnull align 8 dereferenceable(33) %i.rg, ptr noundef nonnull align 8 dereferenceable(16) %i.rh, ptr noundef nonnull align 8 dereferenceable(24) %41)
          to label %.noexc342 unwind label %bb.ip

.noexc342:                                        ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #36
  store ptr @.str.33, ptr %43, align 8, !tbaa !254
  %i.ri = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr @.str.74, ptr %i.ri, align 8, !tbaa !256
  %i.rj = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i32 514, ptr %i.rj, align 8, !tbaa !257
  %i.rk = getelementptr inbounds nuw i8, ptr %43, i64 20
  store i32 5, ptr %i.rk, align 4, !tbaa !258
  %i.rl = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !31 ; 2 uses
  %i.rn = and i64 %i.rm, 1
  %.not.i.i.i.i339 = icmp eq i64 %i.rn, 0
  br i1 %.not.i.i.i.i339, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.noexc342
  %i.ro = icmp ne i64 %i.rm, 1
  %i.rp = load i32, ptr %41, align 8
  %i.rq = icmp ne i32 %i.rp, 0
  %or.cond.i.i340 = select i1 %i.ro, i1 true, i1 %i.rq
  br i1 %or.cond.i.i340, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i341, label %bb.db

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i341: ; preds = %bb.da
  invoke void @_ZN5boost4asio6detail14do_throw_errorERKNS_6system10error_codeEPKcRKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull @.str.74, ptr noundef nonnull align 8 dereferenceable(24) %43)
          to label %bb.db unwind label %bb.ip

bb.db:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i341, %.noexc342, %bb.da
end_hunk_0
begin_hunk_1_@_ZN5boost5beast17basic_stream_test11testConnectEv:bb.a

_ZZN5boost5beast17basic_stream_test11testConnectEvEN16iterator_handlerD2Ev.exit403: ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #36
  %i.yw = invoke noundef i64 @_ZN5boost4asio10io_context3runEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.fk unwind label %bb.jq     ; 0 uses

bb.fk:                                            ; preds = %_ZZN5boost5beast17basic_stream_test11testConnectEvEN16iterator_handlerD2Ev.exit403
  invoke void @_ZN5boost4asio10io_context7restartEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.fl unwind label %bb.jq

bb.fl:                                            ; preds = %bb.fk
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %141) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #36
  %i.yx = getelementptr inbounds nuw i8, ptr %140, i64 24
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !241
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 48
  %i.za = getelementptr inbounds nuw i8, ptr %140, i64 32
  invoke void @_ZN5boost4asio6detail28reactive_socket_service_base7destroyERNS2_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(33) %i.yz, ptr noundef nonnull align 8 dereferenceable(16) %i.za)
          to label %_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit404 unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.zb = landingpad { ptr, i32 }
          catch ptr null
  %i.zc = extractvalue { ptr, i32 } %i.zb, 0
  call void @__clang_call_terminate(ptr %i.zc) #37
  unreachable

_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit404: ; preds = %bb.fl
  %i.zd = getelementptr inbounds nuw i8, ptr %140, i64 56
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.zd) #36
  call void @_ZN5boost4asio10io_contextD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(140) %140) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  invoke void @_ZN5boost11make_sharedINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEJSt17integral_constantIbLb0EERS6_EEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::shared_ptr") align 8 dereferenceable(16) %144, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.fn unwind label %bb.jx

bb.fn:                                            ; preds = %_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit404
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #36
  invoke void @_ZN5boost4asio2ip12make_addressEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::ip::address") align 4 %146, ptr noundef nonnull @.str.73)
          to label %bb.fo unwind label %bb.jy

bb.fo:                                            ; preds = %bb.fn
  call void @_ZN5boost4asio2ip6detail8endpointC1ERKNS1_7addressEt(ptr noundef nonnull align 4 dereferenceable(28) %145, ptr noundef nonnull align 4 dereferenceable(28) %146, i16 noundef zeroext 1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #36
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE13expires_afterENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE(ptr noundef nonnull align 8 dereferenceable(16) %144, i64 0)
          to label %bb.fp unwind label %bb.jz

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  invoke void @_ZN5boost5beast15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %13, i32 noundef 1)
          to label %bb.fr unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ze = landingpad { ptr, i32 }
          catch ptr null
  %i.zf = extractvalue { ptr, i32 } %i.ze, 0
  call void @__clang_call_terminate(ptr %i.zf) #37
  unreachable

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %148, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !312
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.zg = getelementptr inbounds nuw i8, ptr %147, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zg, ptr noundef nonnull align 8 dereferenceable(24) %148, i64 24, i1 false)
  store i8 0, ptr %147, align 8, !tbaa !372
  %i.zh = getelementptr inbounds nuw i8, ptr %147, i64 8
  store i8 1, ptr %i.zh, align 8, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %12, ptr noundef nonnull align 4 dereferenceable(28) %145, i64 28, i1 false), !tbaa.struct !266
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE15connect_handlerEC2ISE_EEOT_RSA_NS3_14basic_endpointIS4_EE(ptr noundef nonnull align 8 dereferenceable(120) %11, ptr noundef nonnull align 8 dereferenceable(40) %147, ptr noundef nonnull align 8 dereferenceable(16) %144, ptr noundef nonnull align 4 dead_on_return %12)
          to label %bb.fs unwind label %bb.ka

bb.fs:                                            ; preds = %bb.fr
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE15connect_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.zi = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !85
  %i.zj = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.zi, ptr noundef nonnull align 8 dereferenceable(40) %147, ptr noundef nonnull align 1 dereferenceable(1) @.str.22, ptr noundef nonnull @.str.25, i32 noundef 719)
          to label %_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit409 unwind label %bb.ft ; 0 uses

bb.ft:                                            ; preds = %bb.fs
  %i.zk = landingpad { ptr, i32 }
          catch ptr null
  %i.zl = extractvalue { ptr, i32 } %i.zk, 0
  call void @__clang_call_terminate(ptr %i.zl) #37
  unreachable

_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit409: ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.zm = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #36
  %i.zn = add nsw i64 %i.zm, 1000000000
  store i64 %i.zn, ptr %10, align 8
  %i.zo = invoke noundef i64 @_ZN5boost4asio10io_context13run_one_untilINSt6chrono3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEmRKNS3_10time_pointIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(24) %99, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc411 unwind label %.loopexit.split-lp

.noexc411:                                        ; preds = %_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit409
  %.not5.i.i = icmp eq i64 %i.zo, 0
  br i1 %.not5.i.i, label %.loopexit513, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc411, %.noexc412
  %i.zp = invoke noundef i64 @_ZN5boost4asio10io_context13run_one_untilINSt6chrono3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEmRKNS3_10time_pointIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(24) %99, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc412 unwind label %.loopexit

.noexc412:                                        ; preds = %.lr.ph.i.i
  %.not.i.i410 = icmp eq i64 %i.zp, 0
  br i1 %.not.i.i410, label %.loopexit513, label %.lr.ph.i.i, !llvm.loop !378

.loopexit513:                                     ; preds = %.noexc412, %.noexc411
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  invoke void @_ZN5boost4asio10io_context7restartEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.fu unwind label %bb.kb

bb.fu:                                            ; preds = %.loopexit513
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #36
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %144) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  invoke void @_ZN5boost11make_sharedINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEJSt17integral_constantIbLb0EERS6_EEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::shared_ptr") align 8 dereferenceable(16) %149, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.fv unwind label %bb.ke

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #36
  invoke void @_ZN5boost4asio2ip12make_addressEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::ip::address") align 4 %151, ptr noundef nonnull @.str.53)
          to label %bb.fw unwind label %bb.kf

bb.fw:                                            ; preds = %bb.fv
  call void @_ZN5boost4asio2ip6detail8endpointC1ERKNS1_7addressEt(ptr noundef nonnull align 4 dereferenceable(28) %150, ptr noundef nonnull align 4 dereferenceable(28) %151, i16 noundef zeroext 1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #36
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE13expires_afterENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE(ptr noundef nonnull align 8 dereferenceable(16) %149, i64 0)
          to label %bb.fx unwind label %bb.kg

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #36
  store i8 0, ptr %152, align 8, !tbaa !372
  %i.zq = getelementptr inbounds nuw i8, ptr %152, i64 8
  store i8 0, ptr %i.zq, align 8, !tbaa !304
  %i.zr = getelementptr inbounds nuw i8, ptr %152, i64 16
  store i8 0, ptr %i.zr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %150, i64 28, i1 false), !tbaa.struct !266
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE15connect_handlerEC2ISE_EEOT_RSA_NS3_14basic_endpointIS4_EE(ptr noundef nonnull align 8 dereferenceable(120) %7, ptr noundef nonnull align 8 dereferenceable(40) %152, ptr noundef nonnull align 8 dereferenceable(16) %149, ptr noundef nonnull align 4 dead_on_return %8)
          to label %bb.fy unwind label %bb.kh

bb.fy:                                            ; preds = %bb.fx
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE15connect_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.zs = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !85
  %i.zt = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.zs, ptr noundef nonnull align 8 dereferenceable(40) %152, ptr noundef nonnull align 1 dereferenceable(1) @.str.22, ptr noundef nonnull @.str.25, i32 noundef 719)
          to label %_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit417 unwind label %bb.fz ; 0 uses

bb.fz:                                            ; preds = %bb.fy
  %i.zu = landingpad { ptr, i32 }
          catch ptr null
  %i.zv = extractvalue { ptr, i32 } %i.zu, 0
  call void @__clang_call_terminate(ptr %i.zv) #37
  unreachable

_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit417: ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #36
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %149) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #36
  %i.zw = invoke noundef i64 @_ZN5boost4asio10io_context3runEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.ga unwind label %bb.kk     ; 0 uses

bb.ga:                                            ; preds = %_ZZN5boost5beast17basic_stream_test11testConnectEvEN15connect_handlerD2Ev.exit417
  invoke void @_ZN5boost4asio10io_context7restartEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.gb unwind label %bb.kk

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #36
  invoke fastcc void @_ZN5boost5beast12_GLOBAL__N_113test_acceptorC2Ev(ptr noundef nonnull align 8 dereferenceable(140) %153)
          to label %bb.gc unwind label %bb.kl

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  invoke void @_ZN5boost11make_sharedINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEJSt17integral_constantIbLb0EERS6_EEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::shared_ptr") align 8 dereferenceable(16) %154, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.gd unwind label %bb.km

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE13expires_afterENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE(ptr noundef nonnull align 8 dereferenceable(16) %154, i64 50000000)
          to label %bb.ge unwind label %bb.kn

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #36
  store i8 0, ptr %155, align 8, !tbaa !372
  %i.zx = getelementptr inbounds nuw i8, ptr %155, i64 8
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %163, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.zx, align 8, !tbaa !304
  %i.zy = getelementptr inbounds nuw i8, ptr %153, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %i.zy, i64 28, i1 false), !tbaa.struct !266
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE15connect_handlerEC2ISE_EEOT_RSA_NS3_14basic_endpointIS4_EE(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(40) %155, ptr noundef nonnull align 8 dereferenceable(16) %154, ptr noundef nonnull align 4 dead_on_return %5)
          to label %bb.gf unwind label %bb.ko

bb.gf:                                            ; preds = %bb.ge
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops10connect_opIZNS0_17basic_stream_test11testConnectEvE15connect_handlerED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.zz = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !85
  %i.aaa = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.zz, ptr noundef nonnull align 8 dereferenceable(40) %155, ptr noundef nonnull align 1 dereferenceable(1) @.str.22, ptr noundef nonnull @.str.25, i32 noundef 719)
          to label %bb.gh unwind label %bb.gg     ; 0 uses

bb.gg:                                            ; preds = %bb.gf
  %i.aab = landingpad { ptr, i32 }
          catch ptr null
  %i.aac = extractvalue { ptr, i32 } %i.aab, 0
  call void @__clang_call_terminate(ptr %i.aac) #37
  unreachable

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i64 0, ptr %3, align 8, !tbaa !325
  %i.aad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 100000000, ptr %i.aad, align 8, !tbaa !327
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gj, %bb.gh
  %i.aae = invoke i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
          to label %.noexc423 unwind label %bb.kp

.noexc423:                                        ; preds = %bb.gi
  %i.aaf = icmp eq i32 %i.aae, -1
  br i1 %i.aaf, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %.noexc423
  %i.aag = tail call ptr @__errno_location() #42
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !168
  %i.aai = icmp eq i32 %i.aah, 4
  br i1 %i.aai, label %bb.gi, label %bb.gk, !llvm.loop !328

bb.gk:                                            ; preds = %bb.gj, %.noexc423
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.aaj = invoke noundef i64 @_ZN5boost4asio10io_context3runEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.gl unwind label %bb.kq     ; 0 uses

bb.gl:                                            ; preds = %bb.gk
  invoke void @_ZN5boost4asio10io_context7restartEv(ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.gm unwind label %bb.kq

bb.gm:                                            ; preds = %bb.gl
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %154) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #36
  %i.aak = getelementptr inbounds nuw i8, ptr %153, i64 24
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !241
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 48
  %i.aan = getelementptr inbounds nuw i8, ptr %153, i64 32
  invoke void @_ZN5boost4asio6detail28reactive_socket_service_base7destroyERNS2_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(33) %i.aam, ptr noundef nonnull align 8 dereferenceable(16) %i.aan)
          to label %_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit424 unwind label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.aao = landingpad { ptr, i32 }
          catch ptr null
  %i.aap = extractvalue { ptr, i32 } %i.aao, 0
  call void @__clang_call_terminate(ptr %i.aap) #37
  unreachable

_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit424: ; preds = %bb.gm
  %i.aaq = getelementptr inbounds nuw i8, ptr %153, i64 56
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aaq) #36
  call void @_ZN5boost4asio10io_contextD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(140) %153) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZN5boost11make_sharedINS_5beast12basic_streamINS_4asio2ip3tcpENS3_10io_context19basic_executor_typeISaIvELm0EEENS1_21unlimited_rate_policyEE9impl_typeEJSt17integral_constantIbLb0EERS6_EEENS_6detail15sp_if_not_arrayIT_E4typeEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::shared_ptr") align 8 dereferenceable(16) %156, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.go unwind label %bb.ku

bb.go:                                            ; preds = %_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit424
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #36
  invoke void @_ZN5boost4asio2ip15make_address_v4EPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::ip::address_v4") align 4 %159, ptr noundef nonnull @.str.53)
          to label %bb.gp unwind label %bb.kv

bb.gp:                                            ; preds = %bb.go
  call void @_ZN5boost4asio2ip7addressC1ERKNS1_10address_v4E(ptr noundef nonnull align 4 dereferenceable(28) %158, ptr noundef nonnull align 4 dereferenceable(4) %159) #36
  call void @_ZN5boost4asio2ip6detail8endpointC1ERKNS1_7addressEt(ptr noundef nonnull align 4 dereferenceable(28) %157, ptr noundef nonnull align 4 dereferenceable(28) %158, i16 noundef zeroext 1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  store ptr %156, ptr %1, align 8, !tbaa !379
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE3ops14run_connect_opclIZNS0_17basic_stream_test11testConnectEvEUlNS_6system10error_codeEE_EEvOT_RKNS3_14basic_endpointIS4_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %160, ptr noundef nonnull align 4 dereferenceable(28) %157)
          to label %bb.gq unwind label %bb.kw

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #36
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %156) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #36
  call void @_ZN5boost4asio10io_contextD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %99) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #36
  ret void

bb.gr:                                            ; preds = %bb.a
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gs:                                            ; preds = %bb.b
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.gt:                                            ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i, %bb.e, %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i, %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEE7connectERKNS3_14basic_endpointIS4_EE.exit, %bb.c
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gu:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

bb.gv:                                            ; preds = %bb.j
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %.body159

.body159:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %bb.gv
  %eh.lpad-body160 = phi { ptr, i32 } [ %i.aav, %bb.gv ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ] ; 2 uses
  %i.aaw = load ptr, ptr %103, align 8, !tbaa !17 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %103, i64 16 ; 2 uses
  %i.aay = icmp eq ptr %i.aaw, %i.aax
  br i1 %i.aay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %.body159
  %i.aaz = load i64, ptr %i.aax, align 8, !tbaa !19
  %i.aba = add i64 %i.aaz, 1
  call void @_ZdlPvm(ptr noundef %i.aaw, i64 noundef %i.aba) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %.body159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428, %bb.gu
  %.pn = phi { ptr, i32 } [ %i.aau, %bb.gu ], [ %eh.lpad-body160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428 ], [ %eh.lpad-body160, %.body159 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #36
  br label %.body

.body:                                            ; preds = %bb.gt, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430 ], [ %i.aat, %bb.gt ], [ %i.aj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #36
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_10io_context19basic_executor_typeISaIvELm0EEENS0_21unlimited_rate_policyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %101) #36
  br label %bb.gw

bb.gw:                                            ; preds = %.body, %bb.gs
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.aas, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #36
  call fastcc void @_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %100) #36
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gr
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.gw ], [ %i.aar, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #36
  br label %bb.kz

bb.gy:                                            ; preds = %_ZN5boost5beast12_GLOBAL__N_113test_acceptorD2Ev.exit
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.gz:                                            ; preds = %bb.n
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.ha:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i, %bb.o
  %i.abd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #36
  br label %.body180

bb.hb:                                            ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i179, %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i167, %bb.r
  %i.abe = landingpad { ptr, i32 }
          cleanup
  br label %.body180

bb.hc:                                            ; preds = %bb.t
  %i.abf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #36
  br label %.body180

bb.hd:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit177.thread
  %i.abg = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEED2Ev:bb.a
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN5boost5beast4http12basic_fieldsISaIcEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost5beast4http12basic_fieldsISaIcEE14realloc_stringERNS_4core17basic_string_viewIcEES7_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1114
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ae) #39
  br label %_ZN5boost5beast4http12basic_fieldsISaIcEED2Ev.exit

_ZN5boost5beast4http12basic_fieldsISaIcEED2Ev.exit: ; preds = %_ZN5boost5beast4http12basic_fieldsISaIcEE14realloc_stringERNS_4core17basic_string_viewIcEES7_.exit.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http12basic_parserILb1EEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !521 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i3, label %_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN5boost5beast4http12basic_fieldsISaIcEED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #39, !inline_history !3649
  br label %_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit

_ZN5boost5beast4http12basic_parserILb1EED2Ev.exit: ; preds = %_ZN5boost5beast4http12basic_fieldsISaIcEED2Ev.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE15on_request_implENS1_4verbENS_4core17basic_string_viewIcEES9_iRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE15on_request_implENS1_4verbENS_4core17basic_string_viewIcEES9_iRNS_6system10error_codeESt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE16on_response_implEiNS_4core17basic_string_viewIcEEiRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1, ptr %2, i64 %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE13on_field_implENS1_5fieldENS_4core17basic_string_viewIcEES9_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(240) %0, i16 noundef zeroext %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.b = tail call noundef ptr @_ZN5boost5beast4http12basic_fieldsISaIcEE22try_create_new_elementENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i16 noundef zeroext %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_code6failedEv.exit.thread12.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.d, 1
  br i1 %i.f, label %_ZNK5boost6system10error_code6failedEv.exit.i, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZNK5boost6system10error_code6failedEv.exit.i:    ; preds = %bb.b
  %i.g = load i32, ptr %6, align 8, !tbaa !253
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZNK5boost6system10error_code6failedEv.exit.thread12.i, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZNK5boost6system10error_code6failedEv.exit.thread12.i: ; preds = %_ZNK5boost6system10error_code6failedEv.exit.i, %bb.a
  tail call void @_ZN5boost5beast4http12basic_fieldsISaIcEE14insert_elementERNS4_7elementE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(54) %i.b)
  br label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit: ; preds = %bb.b, %_ZNK5boost6system10error_code6failedEv.exit.i, %_ZNK5boost6system10error_code6failedEv.exit.thread12.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE21on_trailer_field_implENS1_5fieldENS_4core17basic_string_viewIcEES9_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(240) %0, i16 noundef zeroext %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.boost::intrusive::detail::key_nodeptr_comp", align 8 ; 4 uses
  %8 = alloca %"class.boost::core::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.boost::core::basic_string_view", align 8 ; 4 uses
  %10 = alloca %"class.boost::beast::http::token_list", align 8 ; 5 uses
  store ptr %2, ptr %9, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.c = tail call { ptr, i64 } @_ZN5boost5beast4http9to_stringENS1_5fieldE(i16 noundef zeroext 107), !noalias !3650 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !3650
  store ptr %i.d, ptr %8, align 8, !noalias !3653
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.e, ptr %i.f, align 8, !noalias !3653
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !3653
  store ptr %i.b, ptr %7, align 8, !tbaa !3656, !alias.scope !3659, !noalias !3662
  %i.g = call noundef ptr @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE4findINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dead_on_return %7), !noalias !3662 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !3653
  %i.h = icmp eq ptr %i.g, %i.b
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !3650
  %i.k = icmp eq ptr %i.i, %i.j
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %_ZNK5boost5beast4http12basic_fieldsISaIcEEixENS1_5fieldE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.o = load i16, ptr %i.m, align 2, !tbaa !3499
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %i.s = load i16, ptr %i.r, align 2, !tbaa !3503
  %i.t = zext i16 %i.s to i64
  br label %_ZNK5boost5beast4http12basic_fieldsISaIcEEixENS1_5fieldE.exit

_ZNK5boost5beast4http12basic_fieldsISaIcEEixENS1_5fieldE.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %.sroa.03.0.i = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ]
  store ptr %.sroa.03.0.i, ptr %10, align 8, !tbaa !521
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.sroa.3.0.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  %i.u = call noundef zeroext i1 @_ZN5boost5beast4http10token_list6existsERKNS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br i1 %i.u, label %bb.c, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

bb.c:                                             ; preds = %_ZNK5boost5beast4http12basic_fieldsISaIcEEixENS1_5fieldE.exit
  switch i16 %1, label %bb.d [
    i16 25, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 73, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 109, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 108, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 31, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 107, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 53, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit
    i16 44, label %bb.e
    i16 26, label %bb.e
    i16 80, label %bb.e
    i16 100, label %bb.e
    i16 101, label %bb.e
    i16 94, label %bb.e
    i16 47, label %bb.e
    i16 62, label %bb.e
    i16 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 171
  %i.w = load i8, ptr %i.v, align 1, !tbaa !3624, !range !68, !noundef !69
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %.sroa.01.0.copyload = load ptr, ptr %9, align 8, !tbaa !521
  %.sroa.22.0.copyload = load i64, ptr %i.a, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.y = call noundef ptr @_ZN5boost5beast4http12basic_fieldsISaIcEE22try_create_new_elementENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i16 noundef zeroext %1, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.ab = and i64 %i.aa, 1
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_code6failedEv.exit.thread12.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %_ZNK5boost6system10error_code6failedEv.exit.i, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZNK5boost6system10error_code6failedEv.exit.i:    ; preds = %bb.f
  %i.ad = load i32, ptr %6, align 8, !tbaa !253
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %_ZNK5boost6system10error_code6failedEv.exit.thread12.i, label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZNK5boost6system10error_code6failedEv.exit.thread12.i: ; preds = %_ZNK5boost6system10error_code6failedEv.exit.i, %bb.e
  call void @_ZN5boost5beast4http12basic_fieldsISaIcEE14insert_elementERNS4_7elementE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(54) %i.y)
  br label %_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit

_ZN5boost5beast4http12basic_fieldsISaIcEE6insertENS1_5fieldENS_4core17basic_string_viewIcEES8_RNS_6system10error_codeE.exit: ; preds = %_ZNK5boost6system10error_code6failedEv.exit.thread12.i, %_ZNK5boost6system10error_code6failedEv.exit.i, %bb.f, %bb.d, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %_ZNK5boost5beast4http12basic_fieldsISaIcEEixENS1_5fieldE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE14on_header_implERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE17on_body_init_implERKNS_8optionalImEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 1, ptr %i.a, align 1, !tbaa !3622
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE12on_body_implENS_4core17basic_string_viewIcEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 4)
          to label %_ZN5boost5beast4http10empty_body6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #37
  unreachable

_ZN5boost5beast4http10empty_body6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload.i, 2
  %i.c = and i64 %.sroa.5.0.copyload.i, 1
  %i.d = or disjoint i64 %i.c, ptrtoint (ptr @_ZZN5boost5beast4http10empty_body6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload.i, i64 %i.d
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !15
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE20on_chunk_header_implEmNS_4core17basic_string_viewIcEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #5 comdat align 2 {
bb.a:
  %5 = alloca %"class.boost::core::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFvmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit

_ZNKSt8functionIFvmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %i.e, align 8
  store i64 %1, ptr %i.a, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3665
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %4), !inline_history !3666
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt8functionIFvmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE18on_chunk_body_implEmNS_4core17basic_string_viewIcEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %6 = alloca %"class.boost::core::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFmmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit

_ZNKSt8functionIFmmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %6, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %i.e, align 8
  store i64 %1, ptr %i.a, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3667
  %i.h = call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %4), !inline_history !3668
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %5, i32 noundef 4)
          to label %_ZN5boost5beast4http10empty_body6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #37
  unreachable

_ZN5boost5beast4http10empty_body6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload.i, 2
  %i.k = and i64 %.sroa.5.0.copyload.i, 1
  %i.l = or disjoint i64 %i.k, ptrtoint (ptr @_ZZN5boost5beast4http10empty_body6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload.i, i64 %i.l
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost5beast4http10empty_body6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit, %_ZNKSt8functionIFmmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit
  %.0 = phi i64 [ %i.h, %_ZNKSt8functionIFmmN5boost4core17basic_string_viewIcEERNS0_6system10error_codeEEEclEmS3_S6_.exit ], [ 0, %_ZN5boost5beast4http10empty_body6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE14on_finish_implERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http12basic_parserILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5boost5beast4http12basic_parserILb1EEE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !521  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #39
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http12basic_parserILb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http12basic_fieldsISaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.a, align 8, !tbaa !3435
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !3439
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvNS7_11key_compareEmLb0EvEC2EOSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !3669
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !3669
  store ptr null, ptr %1, align 8, !tbaa !3631
  store ptr %0, ptr %i.d, align 8, !tbaa !3435
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3439
  store ptr %i.g, ptr %i.b, align 8, !tbaa !3439
  store ptr %0, ptr %i.f, align 8, !tbaa !3439
  %i.h = load ptr, ptr %0, align 8, !tbaa !3631   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b
  store ptr %0, ptr %i.a, align 8, !tbaa !3435
  store ptr %0, ptr %i.b, align 8, !tbaa !3439
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.h, align 8, !tbaa !3631
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !3631 ; 2 uses
  %.not36.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not36.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %.pre.i.i.i.i, align 8, !tbaa !3631
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.thread.i.i
  store ptr %1, ptr %i.d, align 8, !tbaa !3435
  store ptr %1, ptr %i.f, align 8, !tbaa !3439
  br label %bb.f

_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvNS7_11key_compareEmLb0EvEC2EOSG_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.i, ptr %i.i, align 8, !tbaa !3440
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.j, align 8, !tbaa !3443
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEC2EOSF_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  store ptr %i.k, ptr %i.k, align 8, !tbaa !3440
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8, !tbaa !3443
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !3440 ; 3 uses
  %.not.i24.i.i.i = icmp eq ptr %i.n, null        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i24.i.i.i, label %bb.g, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f
  %.pre26.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !3443 ; 2 uses
  %.phi.trans.insert27.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre28.i.i.i = load ptr, ptr %.phi.trans.insert27.i.i.i, align 8, !tbaa !3443
  %.pre29.i.i.i = load ptr, ptr %.pre26.i.i.i, align 8, !tbaa !3440
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.l, ptr %i.l, align 8, !tbaa !3440
  store ptr %i.l, ptr %i.o, align 8, !tbaa !3443
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !3440 ; 2 uses
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !3443 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %.pre3.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !3443
  %.pre4.i = load ptr, ptr %.pre.i, align 8, !tbaa !3440
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %i.p = phi ptr [ %.pre4.i, %bb.g ], [ %i.k, %._crit_edge.i.i.i ]
  %i.q = phi ptr [ %.pre3.i, %bb.g ], [ %i.k, %._crit_edge.i.i.i ]
  %i.r = phi ptr [ %.pre.i, %bb.g ], [ %i.k, %._crit_edge.i.i.i ]
  %i.s = phi ptr [ %i.l, %bb.g ], [ %.pre29.i.i.i, %._crit_edge.i.i.i ]
  %i.t = phi ptr [ %i.l, %bb.g ], [ %.pre28.i.i.i, %._crit_edge.i.i.i ]
  %i.u = phi ptr [ %i.l, %bb.g ], [ %.pre26.i.i.i, %._crit_edge.i.i.i ]
  %i.v = phi ptr [ %i.l, %bb.g ], [ %i.n, %._crit_edge.i.i.i ]
  %i.w = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.k, %._crit_edge.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.t, ptr %i.x, align 8, !tbaa !3443
  store ptr %i.q, ptr %i.y, align 8, !tbaa !3443
  store ptr %i.s, ptr %i.r, align 8, !tbaa !3440
  store ptr %i.p, ptr %i.u, align 8, !tbaa !3440
  %i.z = load <2 x ptr>, ptr %i.l, align 8, !tbaa !3670
  %i.aa = load <2 x ptr>, ptr %i.k, align 8, !tbaa !3670
  store <2 x ptr> %i.z, ptr %i.k, align 8, !tbaa !3670
  store <2 x ptr> %i.aa, ptr %i.l, align 8, !tbaa !3670
  br i1 %.not.i24.i.i.i, label %bb.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEC2EOSF_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEC2EOSF_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvEC2EOSF_.exit: ; preds = %_ZN5boost9intrusive13multiset_implINS0_8bhtraitsINS_5beast4http12basic_fieldsISaIcEE7elementENS0_18rbtree_node_traitsIPvLb0EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEEvNS7_11key_compareEmLb0EvEC2EOSG_.exit, %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8, !tbaa !521
  %.sroa.2.0..0.1.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..0.1.sroa_idx.i, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store ptr %.sroa.0.0.copyload.i, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.2.0.copyload.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i6 = load ptr, ptr %i.af, align 8, !tbaa !521
  %.sroa.2.0..0.1.sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i8 = load i64, ptr %.sroa.2.0..0.1.sroa_idx.i7, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %.sroa.0.0.copyload.i6, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.2.0.copyload.i8, ptr %i.ag, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE15on_request_implENS1_4verbENS_4core17basic_string_viewIcEES9_iRNS_6system10error_codeESt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %.sroa.0 = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 170 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !3623, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %8, i32 noundef 25)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #37
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !312
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.f = and i64 %.sroa.5.0.copyload, 1
  %i.g = or disjoint i64 %i.f, ptrtoint (ptr @_ZZN5boost5beast4http6parserILb1ENS1_10empty_bodyESaIcEE15on_request_implENS1_4verbENS_4core17basic_string_viewIcEES9_iRNS_6system10error_codeESt17integral_constantIbLb1EEE7loc_bb_ to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload, i64 %i.g
end_hunk_2
