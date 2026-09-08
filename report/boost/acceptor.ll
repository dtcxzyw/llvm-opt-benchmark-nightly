Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/acceptor?download=true
inline.NumInlined: 2036
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5boost6cobalt2io8acceptor14local_endpointEv:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN5boost6cobalt2io8acceptor9accept_op8initiateENS0_18completion_handlerIJNS_6system10error_codeEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !466, !nonnull !75, !align !86 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !467, !nonnull !75, !align !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89, !nonnull !75, !align !86
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN5boost4asio6detail23reactive_socket_serviceINS_6cobalt2io13protocol_typeEE12async_acceptINS0_12basic_socketIS5_NS0_15any_io_executorEEENS3_18completion_handlerIJNS_6system10error_codeEEEES9_EEvRNS6_19implementation_typeERT_PNS4_8endpointERT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(81) %i.g, ptr noundef nonnull align 8 dereferenceable(28) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6cobalt2io8acceptor16accept_stream_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_13stream_socketEEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.boost::asio::any_io_executor", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !91 ; 3 uses
  %i.b = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 16 ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, i64 noundef 584, i64 noundef 16), !inline_history !468 ; 56 uses
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.e, align 16, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 552, ptr %i.f, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 5 uses
  store ptr @_ZN5boost6cobalt2io8acceptor16accept_stream_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_13stream_socketEEEE.resume, ptr %i.g, align 16
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_ZN5boost6cobalt2io8acceptor16accept_stream_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_13stream_socketEEEE.destroy, ptr %destroy.addr, align 8
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 2 uses
  %.reload.addr75 = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 3 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.e, i64 408 ; 4 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.e, i64 504 ; 2 uses
  %.sroa.024.reload.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 544 ; 2 uses
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 568 ; 2 uses
  store ptr %0, ptr %.spill.addr, align 8
  %i.h = load i64, ptr %1, align 8, !tbaa !97     ; 2 uses
  store i64 %i.h, ptr %.reload.addr75, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !98
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit.from.52, label %bb.a

bb.a:                                             ; preds = %.from.
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  store ptr %i.n, ptr %i.o, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  store ptr %i.q, ptr %i.r, align 8, !tbaa !100
  store ptr null, ptr %i.m, align 8, !tbaa !99
  store ptr null, ptr %i.p, align 8, !tbaa !100
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !102
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit.from. unwind label %bb.b

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit.from.: ; preds = %bb.a
  store ptr null, ptr %i.i, align 8, !tbaa !98
  %.pre = load i64, ptr %.reload.addr75, align 8, !tbaa !97
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %.pre25 = load ptr, ptr %.phi.trans.insert, align 16, !tbaa !98
  %i.u = icmp eq ptr %.pre25, null
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit.from.52: ; preds = %.from.
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #34
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit: ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit.from., %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit.from.52
  %.not.i.i.i.i.i.i = phi i1 [ %i.u, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit.from. ], [ true, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit.from.52 ]
  %i.y = phi i64 [ %.pre, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit.from. ], [ %i.h, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit.from.52 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 2 uses
  store ptr %i.ab, ptr %i.z, align 16, !tbaa !103
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.aa, align 8, !tbaa !103
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 376 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 392 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !104 ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !104
  store ptr null, ptr %i.af, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 400 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !117, !nonnull !75, !align !86 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 16, !tbaa !118
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.reload.addr79, i8 0, i64 16, i1 false)
  store i64 %i.y, ptr %i.ak, align 16, !tbaa !97
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  br i1 %.not.i.i.i.i.i.i, label %.from.56, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 344 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.ap, ptr %i.aq, align 16, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 360 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.as, ptr %i.at, align 16, !tbaa !100
  store ptr null, ptr %i.ao, align 8, !tbaa !99
  store ptr null, ptr %i.ar, align 8, !tbaa !100
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !102
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %.from.55 unwind label %bb.d

.from.55:                                         ; preds = %bb.c
  store ptr null, ptr %i.al, align 16, !tbaa !98
  %.pre26 = load ptr, ptr %i.z, align 16, !tbaa !103
  %.pre27 = load i64, ptr %i.ae, align 8, !tbaa !104
  %.pre28 = load ptr, ptr %i.ah, align 16, !tbaa !117
  br label %bb.e

.from.56:                                         ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEEC2EOS6_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #34
  unreachable

bb.e:                                             ; preds = %.from.55, %.from.56
  %i.az = phi ptr [ %.pre28, %.from.55 ], [ %i.aj, %.from.56 ]
  %i.ba = phi i64 [ %.pre27, %.from.55 ], [ %i.ag, %.from.56 ]
  %i.bb = phi ptr [ %.pre26, %.from.55 ], [ %i.ab, %.from.56 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !103
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.z, align 16, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store i64 %i.ba, ptr %i.be, align 16, !tbaa !104
  store ptr null, ptr %i.ae, align 8, !tbaa !104
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 3 uses
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !118
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !486, !nonnull !75, !align !86
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !89, !nonnull !75, !align !86
  %i.bk = ptrtoint ptr %i.bh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.bl = ptrtoint ptr %i.bj to i64
  %.sroa.0.0.copyload.i.i15 = load ptr, ptr %i.bd, align 16, !tbaa !91, !noalias !487
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINS5_13protocol_typeENS9_15any_io_executorEE21initiate_async_acceptEJPNS9_12basic_socketISB_SC_EEPNS5_8endpointEEEEDaNS9_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_op, i64 16), ptr %.reload.addr78, align 8, !tbaa !36, !alias.scope !488
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  store i64 %i.bk, ptr %i.bm, align 16, !tbaa !120, !alias.scope !488
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  store i64 0, ptr %i.bn, align 8, !tbaa !122, !alias.scope !488
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  store i64 %i.bl, ptr %i.bo, align 16, !tbaa !123, !alias.scope !488
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 536
  store ptr %.sroa.0.0.copyload.i.i15, ptr %i.bp, align 8, !tbaa !132, !alias.scope !488
  invoke void @_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15await_transformIJS5_ENS_4asio21basic_socket_acceptorINS6_13protocol_typeENSA_15any_io_executorEE21initiate_async_acceptEJPNSA_12basic_socketISC_SD_EEPNS6_8endpointEEEEDaNSA_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOT__Xcldtclsr3stdE7forwardISU_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSV_EN10lazy_tupleawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::as_tuple_t") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr78)
          to label %bb.f unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %.reload.addr76, align 8, !tbaa !142, !nonnull !75, !align !86 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 416 ; 4 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !36
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr nonnull %i.br)
          to label %bb.g unwind label %.body.from.62, !inline_history !0

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 440 ; 4 uses
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !143, !range !144, !noundef !75
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  store i1 false, ptr %index.addr80, align 16
  %i.bx = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_NS0_2io13stream_socketEEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(64) %.reload.addr76, ptr nonnull %i.g) #33
  br i1 %i.bx, label %AfterCoroEnd, label %bb.i

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.: ; preds = %bb.e
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

.body.from.62:                                    ; preds = %bb.f
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.k, %.body.from.60, %.body.from.62
  %eh.lpad-body = phi { ptr, i32 } [ %i.bz, %.body.from.62 ], [ %i.ce, %.body.from.60 ], [ %i.ce, %bb.k ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 456 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !145
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64: ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #33
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !489
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 456 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !145, !noalias !490 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %bb.l, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %bb.i
  store ptr %i.cd, ptr %3, align 8, !tbaa !145, !noalias !490
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !noalias !490
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %3) #36
          to label %bb.j unwind label %bb.k, !noalias !490

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !145, !noalias !490
  %.not.i2.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.60

.body.from.60:                                    ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !noalias !490
  br label %.body

bb.l:                                             ; preds = %bb.i
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !147
  %i.cg = getelementptr inbounds nuw i8, ptr %.reload, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.024.reload.addr, ptr noundef nonnull align 16 dereferenceable(24) %i.br, i64 24, i1 false), !tbaa.struct !148
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !489
  invoke void @_ZN5boost6cobalt2io13stream_socketC1EOS2_(ptr noundef nonnull align 8 dereferenceable(152) %.reload.addr74, ptr noundef nonnull align 8 dereferenceable(128) %i.cg)
          to label %bb.m unwind label %.from.66

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 288 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ch, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.024.reload.addr, i64 24, i1 false), !tbaa.struct !148
  %i.ci = load ptr, ptr %i.bf, align 8, !tbaa !153, !nonnull !75, !align !86 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 152 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !155, !range !144, !noundef !75
  %i.cl = trunc nuw i8 %i.ck to i1
  store i8 0, ptr %i.cj, align 8, !tbaa !155
  br i1 %i.cl, label %bb.n, label %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io13stream_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.cm) #33
  br label %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io13stream_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i

_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io13stream_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i: ; preds = %bb.n, %bb.m
  invoke void @_ZN5boost6cobalt2io13stream_socketC1EOS2_(ptr noundef nonnull align 8 dereferenceable(160) %i.ci, ptr noundef nonnull align 8 dereferenceable(152) %.reload.addr74)
          to label %bb.o unwind label %.from.68

.from.66:                                         ; preds = %bb.l
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

.from.68:                                         ; preds = %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io13stream_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.cp) #33
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64, %.from.66, %.from.68
  %.pn10.pn = phi { ptr, i32 } [ %i.cn, %.from.66 ], [ %i.co, %.from.68 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64 ], [ %i.by, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.3 = extractvalue { ptr, i32 } %.pn10.pn, 0
  %i.cq = call ptr @__cxa_begin_catch(ptr %.3) #33 ; 0 uses
  invoke void @__cxa_rethrow() #36
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit
  unreachable

bb.o:                                             ; preds = %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io13stream_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 16 dereferenceable(24) %i.ch, i64 24, i1 false), !tbaa.struct !148
  store i8 1, ptr %i.cj, align 8, !tbaa !155
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.cs) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.ct = load i64, ptr %i.ak, align 16, !tbaa !97, !noalias !491
  store i64 %i.ct, ptr %.reload.addr76, align 8, !tbaa !97, !alias.scope !491
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !98, !noalias !491
  %.not.i.i.i.i.i.i18 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i.i18, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !99, !noalias !491 ; 2 uses
  store ptr %i.cy, ptr %i.bu, align 8, !tbaa !99, !alias.scope !491
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 16, !tbaa !100, !noalias !491
  store ptr %i.da, ptr %i.cc, align 8, !tbaa !100, !alias.scope !491
  store ptr null, ptr %i.cx, align 16, !tbaa !99, !noalias !491
  store ptr null, ptr %i.cz, align 16, !tbaa !100, !noalias !491
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !102, !noalias !491
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.cw)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.cu, align 8, !tbaa !98, !noalias !491
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %.pre84 = load ptr, ptr %.phi.trans.insert83, align 16, !tbaa !98
  %i.dd = icmp eq ptr %.pre84, null
  br label %AfterCoroSave45

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false), !alias.scope !491
  br label %AfterCoroSave45

bb.s:                                             ; preds = %bb.p
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  tail call void @__clang_call_terminate(ptr %i.df) #34
  unreachable

AfterCoroSave45:                                  ; preds = %bb.r, %bb.q
  %i.dg = phi i1 [ true, %bb.r ], [ %i.dd, %bb.q ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 464 ; 2 uses
  %i.di = load ptr, ptr %i.bc, align 8, !tbaa !103, !noalias !491 ; 2 uses
  store ptr %i.di, ptr %i.dh, align 16, !tbaa !103, !alias.scope !491
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.bc, align 8, !tbaa !103, !noalias !491
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i64 16, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 488 ; 3 uses
  %i.dl = load i64, ptr %i.be, align 16, !tbaa !104, !noalias !491 ; 2 uses
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !104, !alias.scope !491
  store ptr null, ptr %i.be, align 16, !tbaa !104, !noalias !491
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %i.dn = load ptr, ptr %i.bf, align 8, !tbaa !117, !noalias !491, !nonnull !75, !align !86
  store ptr %i.dn, ptr %i.dm, align 16, !tbaa !118, !alias.scope !491
  store ptr null, ptr %i.g, align 16
  %index.addr81 = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  store i1 true, ptr %index.addr81, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br i1 %i.dg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %AfterCoroSave45
  %i.dp = load ptr, ptr %i.bu, align 8, !tbaa !99 ; 2 uses
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !99
  %i.dq = load ptr, ptr %i.cc, align 8, !tbaa !100
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !100
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !156
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.br)
          to label %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge unwind label %bb.v

._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge: ; preds = %bb.t
  %.pre85 = load ptr, ptr %i.dh, align 16, !tbaa !103
  %.pre86 = load ptr, ptr %i.dk, align 8, !tbaa !104
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.u:                                             ; preds = %AfterCoroSave45
  %i.du = inttoptr i64 %i.dl to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #34
  unreachable

_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i: ; preds = %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge, %bb.u
  %i.dx = phi ptr [ %.pre86, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.du, %bb.u ] ; 2 uses
  %i.dy = phi ptr [ %.pre85, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.di, %bb.u ]
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !103
  store ptr null, ptr %i.dk, align 8, !tbaa !104
  call void @_ZN5boost6cobalt2io8acceptor16accept_stream_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_13stream_socketEEEE.destroy(ptr nonnull %i.g), !inline_history !1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.eb = load ptr, ptr %i.ea, align 16, !tbaa !157 ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i82, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !158
  %i.ed = icmp eq i32 %i.ec, 3
  br i1 %i.ed, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 2, ptr %i.eb, align 4, !tbaa !158
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %.sroa.03.0.i.i = phi ptr [ @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE5_S_frE, %bb.x ], [ %i.dx, %bb.w ], [ %i.dx, %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !98
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %AfterCoroSuspend47, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !99
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !159
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %AfterCoroSuspend47 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #34
  unreachable

AfterCoroSuspend47:                               ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.em = load ptr, ptr %.sroa.03.0.i.i, align 8
  call void %i.em(ptr nonnull %.sroa.03.0.i.i)
  br label %AfterCoroEnd

bb.ab:                                            ; preds = %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %AfterCoroEnd49 unwind label %bb.ac

AfterCoroEnd:                                     ; preds = %AfterCoroSuspend47, %bb.h
  ret void

AfterCoroEnd49:                                   ; preds = %bb.ab
  call void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.reload.addr79) #33
  call void @_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.reload.addr75) #33
  call void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEEdlEPv(ptr noundef nonnull %i.g) #33
  resume { ptr, i32 } %i.en

bb.ac:                                            ; preds = %bb.ab
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15await_transformIJS5_ENS_4asio21basic_socket_acceptorINS6_13protocol_typeENSA_15any_io_executorEE21initiate_async_acceptEJPNSA_12basic_socketISC_SD_EEPNS6_8endpointEEEEDaNSA_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOT__Xcldtclsr3stdE7forwardISU_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSV_EN10lazy_tupleawEv(ptr dead_on_unwind noalias writable sret(%"struct.boost::cobalt::as_tuple_t") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::cobalt::op<boost::system::error_code>::awaitable", align 8 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !498
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4160 ; 3 uses
  store ptr %1, ptr %2, align 8, !tbaa !160, !alias.scope !499, !noalias !498
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !143, !alias.scope !499, !noalias !498
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !161, !alias.scope !499, !noalias !498
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !145, !alias.scope !499, !noalias !498
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.a, ptr %i.e, align 8, !tbaa !162, !alias.scope !499, !noalias !498
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.g = call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #33, !noalias !498
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost6cobalt6detail12sbo_resourceE, i64 16), ptr %i.a, align 8, !tbaa !36, !alias.scope !499, !noalias !498
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4168 ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !164, !alias.scope !499, !noalias !498
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4176 ; 2 uses
  store i64 4096, ptr %i.i, align 8, !tbaa !165, !alias.scope !499, !noalias !498
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4184 ; 2 uses
  store i64 4096, ptr %i.j, align 8, !tbaa !166, !alias.scope !499, !noalias !498
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4192
  store i8 0, ptr %i.k, align 8, !tbaa !167, !alias.scope !499, !noalias !498
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4200
  store ptr %i.g, ptr %i.l, align 8, !tbaa !170, !alias.scope !499, !noalias !498
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = and i64 %i.m, 8                          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = sub nuw nsw i64 16, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.o
  store ptr %i.p, ptr %i.h, align 8, !tbaa !171, !alias.scope !499, !noalias !498
  store i64 4088, ptr %i.j, align 8, !tbaa !172, !alias.scope !499, !noalias !498
  store i64 4088, ptr %i.i, align 8, !tbaa !173, !alias.scope !499, !noalias !498
  br label %_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv.exit.i.i

_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv.exit.i.i: ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132, !noalias !498
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.s = load ptr, ptr %2, align 8, !tbaa !142, !noalias !501, !nonnull !75, !align !86
  store ptr %i.s, ptr %0, align 8, !tbaa !160, !alias.scope !501
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !143, !alias.scope !501
  %i.u = load i8, ptr %i.b, align 8, !tbaa !143, !range !144, !noalias !501, !noundef !75
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit.i.i

bb.c:                                             ; preds = %_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 24, i1 false), !tbaa.struct !148
  store i8 1, ptr %i.t, align 8, !tbaa !143, !alias.scope !501
  br label %_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit.i.i

_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit.i.i: ; preds = %bb.c, %_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.c, align 8, !tbaa !161, !noalias !501
  store i32 %i.z, ptr %i.y, align 8, !tbaa !161, !alias.scope !501
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !145, !noalias !501
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !145, !alias.scope !501
  store ptr null, ptr %i.d, align 8, !tbaa !145, !noalias !501
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !162, !alias.scope !501
  call void @_ZNSt3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #33, !noalias !498
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !145, !noalias !498
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEEC2IZNS0_6detail19composition_promiseIJS4_NS0_2io13stream_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINSB_13protocol_typeENSF_15any_io_executorEE21initiate_async_acceptEJPNSF_12basic_socketISH_SI_EEPNSB_8endpointEEEEDaNSF_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOTL0___Xcldtclsr3stdE7forwardISZ_EfL0p_EonawERNS0_14awaitable_typeEEEEOT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #33, !noalias !498
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEEC2IZNS0_6detail19composition_promiseIJS4_NS0_2io13stream_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINSB_13protocol_typeENSF_15any_io_executorEE21initiate_async_acceptEJPNSF_12basic_socketISH_SI_EEPNSB_8endpointEEEEDaNSF_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOTL0___Xcldtclsr3stdE7forwardISZ_EfL0p_EonawERNS0_14awaitable_typeEEEEOT_.exit

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEEC2IZNS0_6detail19composition_promiseIJS4_NS0_2io13stream_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINSB_13protocol_typeENSF_15any_io_executorEE21initiate_async_acceptEJPNSF_12basic_socketISH_SI_EEPNSB_8endpointEEEEDaNSF_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOTL0___Xcldtclsr3stdE7forwardISZ_EfL0p_EonawERNS0_14awaitable_typeEEEEOT_.exit: ; preds = %_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !498
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %.not2.i = icmp eq ptr %i.b, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
end_hunk_0
begin_hunk_1_@_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEEdlEPv:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload, ptr noundef nonnull %i.a, i64 noundef %i.b, i64 noundef 16)
          to label %_ZNSt3pmr15memory_resource10deallocateEPvmm.exit unwind label %bb.b, !inline_history !3

_ZNSt3pmr15memory_resource10deallocateEPvmm.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6cobalt2io8acceptor20accept_seq_packet_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_17seq_packet_socketEEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %2 = alloca %"class.boost::asio::any_io_executor", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !91 ; 3 uses
  %i.b = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 16 ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, i64 noundef 568, i64 noundef 16), !inline_history !502 ; 56 uses
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.e, align 16, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 536, ptr %i.f, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 5 uses
  store ptr @_ZN5boost6cobalt2io8acceptor20accept_seq_packet_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_17seq_packet_socketEEEE.resume, ptr %i.g, align 16
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_ZN5boost6cobalt2io8acceptor20accept_seq_packet_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_17seq_packet_socketEEEE.destroy, ptr %destroy.addr, align 8
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 2 uses
  %.reload.addr75 = getelementptr inbounds nuw i8, ptr %i.e, i64 296 ; 3 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %i.e, i64 392 ; 4 uses
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %i.e, i64 488 ; 2 uses
  %.sroa.024.reload.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 528 ; 2 uses
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.e, i64 552 ; 2 uses
  store ptr %0, ptr %.spill.addr, align 8
  %i.h = load i64, ptr %1, align 8, !tbaa !97     ; 2 uses
  store i64 %i.h, ptr %.reload.addr75, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !98
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit.from.52, label %bb.a

bb.a:                                             ; preds = %.from.
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  store ptr %i.n, ptr %i.o, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  store ptr %i.q, ptr %i.r, align 8, !tbaa !100
  store ptr null, ptr %i.m, align 8, !tbaa !99
  store ptr null, ptr %i.p, align 8, !tbaa !100
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !102
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit.from. unwind label %bb.b

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit.from.: ; preds = %bb.a
  store ptr null, ptr %i.i, align 8, !tbaa !98
  %.pre = load i64, ptr %.reload.addr75, align 8, !tbaa !97
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %.pre25 = load ptr, ptr %.phi.trans.insert, align 16, !tbaa !98
  %i.u = icmp eq ptr %.pre25, null
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit.from.52: ; preds = %.from.
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  br label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #34
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit: ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit.from., %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit.from.52
  %.not.i.i.i.i.i.i = phi i1 [ %i.u, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit.from. ], [ true, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit.from.52 ]
  %i.y = phi i64 [ %.pre, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit.from. ], [ %i.h, %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit.from.52 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 2 uses
  store ptr %i.ab, ptr %i.z, align 16, !tbaa !103
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.aa, align 8, !tbaa !103
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 360 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 376 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !104 ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !104
  store ptr null, ptr %i.af, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !176, !nonnull !75, !align !86 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 16, !tbaa !177
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.reload.addr79, i8 0, i64 16, i1 false)
  store i64 %i.y, ptr %i.ak, align 16, !tbaa !97
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  br i1 %.not.i.i.i.i.i.i, label %.from.56, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 328 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.ap, ptr %i.aq, align 16, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 344 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.as, ptr %i.at, align 16, !tbaa !100
  store ptr null, ptr %i.ao, align 8, !tbaa !99
  store ptr null, ptr %i.ar, align 8, !tbaa !100
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !102
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.am)
          to label %.from.55 unwind label %bb.d

.from.55:                                         ; preds = %bb.c
  store ptr null, ptr %i.al, align 16, !tbaa !98
  %.pre26 = load ptr, ptr %i.z, align 16, !tbaa !103
  %.pre27 = load i64, ptr %i.ae, align 8, !tbaa !104
  %.pre28 = load ptr, ptr %i.ah, align 16, !tbaa !176
  br label %bb.e

.from.56:                                         ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEC2EOS6_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #34
  unreachable

bb.e:                                             ; preds = %.from.55, %.from.56
  %i.az = phi ptr [ %.pre28, %.from.55 ], [ %i.aj, %.from.56 ]
  %i.ba = phi i64 [ %.pre27, %.from.55 ], [ %i.ag, %.from.56 ]
  %i.bb = phi ptr [ %.pre26, %.from.55 ], [ %i.ab, %.from.56 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !103
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.z, align 16, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store i64 %i.ba, ptr %i.be, align 16, !tbaa !104
  store ptr null, ptr %i.ae, align 8, !tbaa !104
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 3 uses
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !177
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !517, !nonnull !75, !align !86
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !89, !nonnull !75, !align !86
  %i.bk = ptrtoint ptr %i.bh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.bl = ptrtoint ptr %i.bj to i64
  %.sroa.0.0.copyload.i.i15 = load ptr, ptr %i.bd, align 16, !tbaa !91, !noalias !518
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINS5_13protocol_typeENS9_15any_io_executorEE21initiate_async_acceptEJPNS9_12basic_socketISB_SC_EEPNS5_8endpointEEEEDaNS9_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_op, i64 16), ptr %.reload.addr78, align 8, !tbaa !36, !alias.scope !519
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  store i64 %i.bk, ptr %i.bm, align 16, !tbaa !120, !alias.scope !519
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  store i64 0, ptr %i.bn, align 8, !tbaa !122, !alias.scope !519
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  store i64 %i.bl, ptr %i.bo, align 16, !tbaa !123, !alias.scope !519
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  store ptr %.sroa.0.0.copyload.i.i15, ptr %i.bp, align 8, !tbaa !179, !alias.scope !519
  invoke void @_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15await_transformIJS5_ENS_4asio21basic_socket_acceptorINS6_13protocol_typeENSA_15any_io_executorEE21initiate_async_acceptEJPNSA_12basic_socketISC_SD_EEPNS6_8endpointEEEEDaNSA_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOT__Xcldtclsr3stdE7forwardISU_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSV_EN10lazy_tupleawEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::cobalt::as_tuple_t") align 8 %.reload.addr76, ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr78)
          to label %bb.f unwind label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %.reload.addr76, align 8, !tbaa !142, !nonnull !75, !align !86 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 400 ; 4 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !36
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr nonnull %i.br)
          to label %bb.g unwind label %.body.from.62, !inline_history !0

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 424 ; 4 uses
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !143, !range !144, !noundef !75
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  store i1 false, ptr %index.addr80, align 16
  %i.bx = tail call noundef zeroext i1 @_ZN5boost6cobalt2opIJNS_6system10error_codeEEE14awaitable_base13await_suspendINS0_6detail19composition_promiseIJS3_NS0_2io17seq_packet_socketEEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(64) %.reload.addr76, ptr nonnull %i.g) #33
  br i1 %i.bx, label %AfterCoroEnd, label %bb.i

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.: ; preds = %bb.e
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

.body.from.62:                                    ; preds = %bb.f
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.k, %.body.from.60, %.body.from.62
  %eh.lpad-body = phi { ptr, i32 } [ %i.bz, %.body.from.62 ], [ %i.ce, %.body.from.60 ], [ %i.ce, %bb.k ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 440 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !145
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64: ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #33
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !520
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 440 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !145, !noalias !521 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %bb.l, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %bb.i
  store ptr %i.cd, ptr %3, align 8, !tbaa !145, !noalias !521
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !noalias !521
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %3) #36
          to label %bb.j unwind label %bb.k, !noalias !521

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !145, !noalias !521
  %.not.i2.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.60

.body.from.60:                                    ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !noalias !521
  br label %.body

bb.l:                                             ; preds = %bb.i
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !181
  %i.cg = getelementptr inbounds nuw i8, ptr %.reload, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.024.reload.addr, ptr noundef nonnull align 16 dereferenceable(24) %i.br, i64 24, i1 false), !tbaa.struct !148
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !520
  invoke void @_ZN5boost6cobalt2io17seq_packet_socketC1EOS2_(ptr noundef nonnull align 8 dereferenceable(136) %.reload.addr74, ptr noundef nonnull align 8 dereferenceable(112) %i.cg)
          to label %bb.m unwind label %.from.66

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ch, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.024.reload.addr, i64 24, i1 false), !tbaa.struct !148
  %i.ci = load ptr, ptr %i.bf, align 8, !tbaa !183, !nonnull !75, !align !86 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 136 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !185, !range !144, !noundef !75
  %i.cl = trunc nuw i8 %i.ck to i1
  store i8 0, ptr %i.cj, align 8, !tbaa !185
  br i1 %i.cl, label %bb.n, label %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io17seq_packet_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.cm) #33
  br label %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io17seq_packet_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i

_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io17seq_packet_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i: ; preds = %bb.n, %bb.m
  invoke void @_ZN5boost6cobalt2io17seq_packet_socketC1EOS2_(ptr noundef nonnull align 8 dereferenceable(144) %i.ci, ptr noundef nonnull align 8 dereferenceable(136) %.reload.addr74)
          to label %bb.o unwind label %.from.68

.from.66:                                         ; preds = %bb.l
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

.from.68:                                         ; preds = %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io17seq_packet_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.cp) #33
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from., %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64, %.from.66, %.from.68
  %.pn10.pn = phi { ptr, i32 } [ %i.cn, %.from.66 ], [ %i.co, %.from.68 ], [ %eh.lpad-body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64 ], [ %i.by, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from. ], [ %eh.lpad-body, %.body ]
  %.3 = extractvalue { ptr, i32 } %.pn10.pn, 0
  %i.cq = call ptr @__cxa_begin_catch(ptr %.3) #33 ; 0 uses
  invoke void @__cxa_rethrow() #36
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit
  unreachable

bb.o:                                             ; preds = %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io17seq_packet_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 16 dereferenceable(24) %i.ch, i64 24, i1 false), !tbaa.struct !148
  store i8 1, ptr %i.cj, align 8, !tbaa !185
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.cs) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.ct = load i64, ptr %i.ak, align 16, !tbaa !97, !noalias !522
  store i64 %i.ct, ptr %.reload.addr76, align 8, !tbaa !97, !alias.scope !522
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !98, !noalias !522
  %.not.i.i.i.i.i.i18 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i.i18, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !99, !noalias !522 ; 2 uses
  store ptr %i.cy, ptr %i.bu, align 8, !tbaa !99, !alias.scope !522
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 16, !tbaa !100, !noalias !522
  store ptr %i.da, ptr %i.cc, align 8, !tbaa !100, !alias.scope !522
  store ptr null, ptr %i.cx, align 16, !tbaa !99, !noalias !522
  store ptr null, ptr %i.cz, align 16, !tbaa !100, !noalias !522
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !102, !noalias !522
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.cw)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.cu, align 8, !tbaa !98, !noalias !522
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %.pre84 = load ptr, ptr %.phi.trans.insert83, align 16, !tbaa !98
  %i.dd = icmp eq ptr %.pre84, null
  br label %AfterCoroSave45

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false), !alias.scope !522
  br label %AfterCoroSave45

bb.s:                                             ; preds = %bb.p
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  tail call void @__clang_call_terminate(ptr %i.df) #34
  unreachable

AfterCoroSave45:                                  ; preds = %bb.r, %bb.q
  %i.dg = phi i1 [ true, %bb.r ], [ %i.dd, %bb.q ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.di = load ptr, ptr %i.bc, align 8, !tbaa !103, !noalias !522 ; 2 uses
  store ptr %i.di, ptr %i.dh, align 16, !tbaa !103, !alias.scope !522
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.bc, align 8, !tbaa !103, !noalias !522
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 16 dereferenceable(16) %i.bd, i64 16, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 472 ; 3 uses
  %i.dl = load i64, ptr %i.be, align 16, !tbaa !104, !noalias !522 ; 2 uses
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !104, !alias.scope !522
  store ptr null, ptr %i.be, align 16, !tbaa !104, !noalias !522
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.dn = load ptr, ptr %i.bf, align 8, !tbaa !176, !noalias !522, !nonnull !75, !align !86
  store ptr %i.dn, ptr %i.dm, align 16, !tbaa !177, !alias.scope !522
  store ptr null, ptr %i.g, align 16
  %index.addr81 = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  store i1 true, ptr %index.addr81, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br i1 %i.dg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %AfterCoroSave45
  %i.dp = load ptr, ptr %i.bu, align 8, !tbaa !99 ; 2 uses
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !99
  %i.dq = load ptr, ptr %i.cc, align 8, !tbaa !100
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !100
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !156
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.br)
          to label %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge unwind label %bb.v

._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge: ; preds = %bb.t
  %.pre85 = load ptr, ptr %i.dh, align 16, !tbaa !103
  %.pre86 = load ptr, ptr %i.dk, align 8, !tbaa !104
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.u:                                             ; preds = %AfterCoroSave45
  %i.du = inttoptr i64 %i.dl to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #34
  unreachable

_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i: ; preds = %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge, %bb.u
  %i.dx = phi ptr [ %.pre86, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.du, %bb.u ] ; 2 uses
  %i.dy = phi ptr [ %.pre85, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.di, %bb.u ]
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !103
  store ptr null, ptr %i.dk, align 8, !tbaa !104
  call void @_ZN5boost6cobalt2io8acceptor20accept_seq_packet_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_17seq_packet_socketEEEE.destroy(ptr nonnull %i.g), !inline_history !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.eb = load ptr, ptr %i.ea, align 16, !tbaa !157 ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i82, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !158
  %i.ed = icmp eq i32 %i.ec, 3
  br i1 %i.ed, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 2, ptr %i.eb, align 4, !tbaa !158
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %.sroa.03.0.i.i = phi ptr [ @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE5_S_frE, %bb.x ], [ %i.dx, %bb.w ], [ %i.dx, %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !98
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %AfterCoroSuspend47, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !99
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !159
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %AfterCoroSuspend47 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #34
  unreachable

AfterCoroSuspend47:                               ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.em = load ptr, ptr %.sroa.03.0.i.i, align 8
  call void %i.em(ptr nonnull %.sroa.03.0.i.i)
  br label %AfterCoroEnd

bb.ab:                                            ; preds = %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %AfterCoroEnd49 unwind label %bb.ac

AfterCoroEnd:                                     ; preds = %AfterCoroSuspend47, %bb.h
  ret void

AfterCoroEnd49:                                   ; preds = %bb.ab
  call void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.reload.addr79) #33
  call void @_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.reload.addr75) #33
  call void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEdlEPv(ptr noundef nonnull %i.g) #33
  resume { ptr, i32 } %i.en

bb.ac:                                            ; preds = %bb.ab
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15await_transformIJS5_ENS_4asio21basic_socket_acceptorINS6_13protocol_typeENSA_15any_io_executorEE21initiate_async_acceptEJPNSA_12basic_socketISC_SD_EEPNS6_8endpointEEEEDaNSA_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOT__Xcldtclsr3stdE7forwardISU_EfL1p_EonawERNS0_14awaitable_typeEEEEDaSV_EN10lazy_tupleawEv(ptr dead_on_unwind noalias writable sret(%"struct.boost::cobalt::as_tuple_t") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::cobalt::op<boost::system::error_code>::awaitable", align 8 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !529
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4160 ; 3 uses
  store ptr %1, ptr %2, align 8, !tbaa !160, !alias.scope !530, !noalias !529
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !143, !alias.scope !530, !noalias !529
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !161, !alias.scope !530, !noalias !529
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !145, !alias.scope !530, !noalias !529
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.a, ptr %i.e, align 8, !tbaa !162, !alias.scope !530, !noalias !529
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.g = call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #33, !noalias !529
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost6cobalt6detail12sbo_resourceE, i64 16), ptr %i.a, align 8, !tbaa !36, !alias.scope !530, !noalias !529
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4168 ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !164, !alias.scope !530, !noalias !529
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4176 ; 2 uses
  store i64 4096, ptr %i.i, align 8, !tbaa !165, !alias.scope !530, !noalias !529
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4184 ; 2 uses
  store i64 4096, ptr %i.j, align 8, !tbaa !166, !alias.scope !530, !noalias !529
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4192
  store i8 0, ptr %i.k, align 8, !tbaa !167, !alias.scope !530, !noalias !529
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4200
  store ptr %i.g, ptr %i.l, align 8, !tbaa !170, !alias.scope !530, !noalias !529
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = and i64 %i.m, 8                          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = sub nuw nsw i64 16, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.o
  store ptr %i.p, ptr %i.h, align 8, !tbaa !171, !alias.scope !530, !noalias !529
  store i64 4088, ptr %i.j, align 8, !tbaa !172, !alias.scope !530, !noalias !529
  store i64 4088, ptr %i.i, align 8, !tbaa !173, !alias.scope !530, !noalias !529
  br label %_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv.exit.i.i

_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv.exit.i.i: ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !179, !noalias !529
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.s = load ptr, ptr %2, align 8, !tbaa !142, !noalias !532, !nonnull !75, !align !86
  store ptr %i.s, ptr %0, align 8, !tbaa !160, !alias.scope !532
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !143, !alias.scope !532
  %i.u = load i8, ptr %i.b, align 8, !tbaa !143, !range !144, !noalias !532, !noundef !75
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit.i.i

bb.c:                                             ; preds = %_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 24, i1 false), !tbaa.struct !148
  store i8 1, ptr %i.t, align 8, !tbaa !143, !alias.scope !532
  br label %_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit.i.i

_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit.i.i: ; preds = %bb.c, %_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.c, align 8, !tbaa !161, !noalias !532
  store i32 %i.z, ptr %i.y, align 8, !tbaa !161, !alias.scope !532
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !145, !noalias !532
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !145, !alias.scope !532
  store ptr null, ptr %i.d, align 8, !tbaa !145, !noalias !532
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !162, !alias.scope !532
  call void @_ZNSt3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #33, !noalias !529
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !145, !noalias !529
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEEC2IZNS0_6detail19composition_promiseIJS4_NS0_2io17seq_packet_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINSB_13protocol_typeENSF_15any_io_executorEE21initiate_async_acceptEJPNSF_12basic_socketISH_SI_EEPNSB_8endpointEEEEDaNSF_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOTL0___Xcldtclsr3stdE7forwardISZ_EfL0p_EonawERNS0_14awaitable_typeEEEEOT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #33, !noalias !529
  br label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEEC2IZNS0_6detail19composition_promiseIJS4_NS0_2io17seq_packet_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINSB_13protocol_typeENSF_15any_io_executorEE21initiate_async_acceptEJPNSF_12basic_socketISH_SI_EEPNSB_8endpointEEEEDaNSF_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOTL0___Xcldtclsr3stdE7forwardISZ_EfL0p_EonawERNS0_14awaitable_typeEEEEOT_.exit

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEEC2IZNS0_6detail19composition_promiseIJS4_NS0_2io17seq_packet_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINSB_13protocol_typeENSF_15any_io_executorEE21initiate_async_acceptEJPNSF_12basic_socketISH_SI_EEPNSB_8endpointEEEEDaNSF_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOTL0___Xcldtclsr3stdE7forwardISZ_EfL0p_EonawERNS0_14awaitable_typeEEEEOT_.exit: ; preds = %_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !529
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %.not2.i = icmp eq ptr %i.b, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
end_hunk_1
begin_hunk_2_@_ZN5boost4asio6detail16reactive_wait_opINS_6cobalt18completion_handlerIJNS_6system10error_codeEEEENS0_15any_io_executorEE12do_immediateEPNS1_19scheduler_operationEbPKv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN5boost4asio6detail22immediate_handler_workINS_6cobalt18completion_handlerIJNS_6system10error_codeEEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN5boost4asio6detail16reactive_wait_opINS_6cobalt18completion_handlerIJNS_6system10error_codeEEEENS0_15any_io_executorEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.df
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6cobalt2opIJNS_6system10error_codeENS0_2io13stream_socketEEE5readyENS0_7handlerIJS3_S5_EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6cobalt2opIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE5readyENS0_7handlerIJS3_S5_EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #31

; Function Attrs: mustprogress uwtable
define internal void @_ZN5boost6cobalt2io8acceptor16accept_stream_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_13stream_socketEEEE.resume(ptr noundef nonnull align 8 dereferenceable(552) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::asio::any_io_executor", align 8 ; 10 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.sroa.024.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !834
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145, !noalias !835 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

.body:                                            ; preds = %bb.c, %.body.from.60
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !145
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64: ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #33
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !145, !noalias !835
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33, !noalias !835
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %2) #36
          to label %bb.b unwind label %bb.c, !noalias !835

bb.b:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.c:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !145, !noalias !835
  %.not.i2.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.60

.body.from.60:                                    ; preds = %bb.c
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33, !noalias !835
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.reload, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.024.reload.addr, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !148
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !834
  invoke void @_ZN5boost6cobalt2io13stream_socketC1EOS2_(ptr noundef nonnull align 8 dereferenceable(152) %.reload.addr74, ptr noundef nonnull align 8 dereferenceable(128) %i.g)
          to label %bb.e unwind label %.from.66

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.024.reload.addr, i64 24, i1 false), !tbaa.struct !148
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !153, !nonnull !75, !align !86 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !155, !range !144, !noundef !75
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 8, !tbaa !155
  br i1 %i.m, label %bb.f, label %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io13stream_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.n) #33
  br label %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io13stream_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i

_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io13stream_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i: ; preds = %bb.f, %bb.e
  invoke void @_ZN5boost6cobalt2io13stream_socketC1EOS2_(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull align 8 dereferenceable(152) %.reload.addr74)
          to label %bb.g unwind label %.from.68

.from.66:                                         ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

.from.68:                                         ; preds = %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io13stream_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.q) #33
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64, %.from.68, %.from.66
  %.pn10.pn = phi { ptr, i32 } [ %i.o, %.from.66 ], [ %i.p, %.from.68 ], [ %i.d, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64 ], [ %i.d, %.body ]
  %.3 = extractvalue { ptr, i32 } %.pn10.pn, 0
  %i.r = call ptr @__cxa_begin_catch(ptr %.3) #33 ; 0 uses
  invoke void @__cxa_rethrow() #36
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit
  unreachable

bb.g:                                             ; preds = %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io13stream_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !148
  store i8 1, ptr %i.k, align 8, !tbaa !155
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.u) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.v = load i64, ptr %i.s, align 8, !tbaa !97, !noalias !836
  store i64 %i.v, ptr %.reload.addr76, align 8, !tbaa !97, !alias.scope !836
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98, !noalias !836
  %.not.i.i.i.i.i.i18 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i18, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99, !noalias !836 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !99, !alias.scope !836
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !100, !noalias !836
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !100, !alias.scope !836
  store ptr null, ptr %i.z, align 8, !tbaa !99, !noalias !836
  store ptr null, ptr %i.ac, align 8, !tbaa !100, !noalias !836
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102, !noalias !836
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.w, align 8, !tbaa !98, !noalias !836
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !98
  %i.ag = icmp eq ptr %.pre, null
  br label %AfterCoroSave45

bb.j:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !836
  br label %AfterCoroSave45

bb.k:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #34
  unreachable

AfterCoroSave45:                                  ; preds = %bb.j, %bb.i
  %i.ak = phi i1 [ true, %bb.j ], [ %i.ag, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !103, !noalias !836 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !103, !alias.scope !836
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.an, align 8, !tbaa !103, !noalias !836
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.as = load i64, ptr %i.al, align 8, !tbaa !104, !noalias !836 ; 2 uses
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !104, !alias.scope !836
  store ptr null, ptr %i.al, align 8, !tbaa !104, !noalias !836
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !117, !noalias !836, !nonnull !75, !align !86
  store ptr %i.au, ptr %i.at, align 8, !tbaa !118, !alias.scope !836
  store ptr null, ptr %0, align 8
  %index.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i1 true, ptr %index.addr81, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %AfterCoroSave45
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !99 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !99
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !100
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !156
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge unwind label %bb.n

._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge: ; preds = %bb.l
  %.pre3 = load ptr, ptr %i.ao, align 8, !tbaa !103
  %.pre4 = load ptr, ptr %i.ar, align 8, !tbaa !104
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.m:                                             ; preds = %AfterCoroSave45
  %i.bc = inttoptr i64 %i.as to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i: ; preds = %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge, %bb.m
  %i.bg = phi ptr [ %.pre4, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.bc, %bb.m ] ; 2 uses
  %i.bh = phi ptr [ %.pre3, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.ap, %bb.m ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !103
  store ptr null, ptr %i.ar, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr nonnull %0)
          to label %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i unwind label %bb.o, !inline_history !1

bb.o:                                             ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #34
  unreachable

_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i: ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !157 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i2, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !158
  %i.bq = icmp eq i32 %i.bp, 3
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 2, ptr %i.bo, align 4, !tbaa !158
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %.sroa.03.0.i.i = phi ptr [ @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE5_S_frE, %bb.q ], [ %i.bg, %bb.p ], [ %i.bg, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !98
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !99
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !159
  invoke void %i.bw(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #34
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.bz = load ptr, ptr %.sroa.03.0.i.i, align 8
  musttail call void %i.bz(ptr nonnull %.sroa.03.0.i.i)
  ret void

bb.v:                                             ; preds = %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %i.ca

bb.x:                                             ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5boost6cobalt2io8acceptor16accept_stream_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_13stream_socketEEEE.destroy(ptr noundef nonnull align 8 dereferenceable(552) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 544
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %AfterCoroSuspend47, label %AfterCoroSuspend, !prof !411

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %.pre30 = load ptr, ptr %.phi.trans.insert29, align 8, !tbaa !145
  %i.a = icmp eq ptr %.pre30, null
  br i1 %i.a, label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15final_awaitableD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.phi.trans.insert29) #33
  br label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15final_awaitableD2Ev.exit

AfterCoroSuspend47:                               ; preds = %resume.entry
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 3 uses
  %.not2.i.i = icmp eq ptr %i.c, null
  br i1 %.not2.i.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %AfterCoroSuspend47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157  ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.e, null
  br i1 %.not.i.i19, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.e, align 4, !tbaa !158
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #38
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.b, align 8, !tbaa !104
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr nonnull %i.c)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i unwind label %bb.g, !inline_history !2

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #34
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i:  ; preds = %bb.f, %bb.e, %AfterCoroSuspend47
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15final_awaitableD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15final_awaitableD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #34
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15final_awaitableD2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, %bb.h, %AfterCoroSuspend, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 3 uses
  %.not2.i.i20 = icmp eq ptr %i.x, null
  br i1 %.not2.i.i20, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22, label %bb.j

bb.j:                                             ; preds = %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15final_awaitableD2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !157  ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.z, null
  br i1 %.not.i.i21, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !158
  %i.ab = icmp eq i32 %i.aa, 3
  br i1 %i.ab, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #38
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.w, align 8, !tbaa !104
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr nonnull %i.x)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22 unwind label %bb.o, !inline_history !2

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #34
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22: ; preds = %bb.n, %bb.m, %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15final_awaitableD2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !159
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(56) %i.al)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #34
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev.exit: ; preds = %bb.p, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !104 ; 3 uses
  %.not2.i = icmp eq ptr %i.as, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !157 ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = load i32, ptr %i.au, align 4, !tbaa !158
  %i.aw = icmp eq i32 %i.av, 3
  br i1 %i.aw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ax = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #38
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.ar, align 8, !tbaa !104
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr nonnull %i.as)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.w, !inline_history !2

bb.w:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #34
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.v, %bb.u, %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !98
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !99
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !159
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(56) %i.bg)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #34
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.x
  %i.bm = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bm, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %0, i64 -24
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bn = add i64 %.sroa.4.0.copyload.i, 32
  %i.bo = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, ptr noundef nonnull %i.bm, i64 noundef %i.bn, i64 noundef 16)
          to label %CoroEnd unwind label %bb.z, !inline_history !3

bb.z:                                             ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev.exit
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #34
  unreachable

CoroEnd:                                          ; preds = %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io13stream_socketEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5boost6cobalt2io8acceptor20accept_seq_packet_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_17seq_packet_socketEEEE.resume(ptr noundef nonnull align 8 dereferenceable(536) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::asio::any_io_executor", align 8 ; 10 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %.reload.addr74 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.024.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !843
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145, !noalias !844 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

.body:                                            ; preds = %bb.c, %.body.from.60
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !145
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit, label %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64

_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64: ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #33
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !145, !noalias !844
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33, !noalias !844
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %2) #36
          to label %bb.b unwind label %bb.c, !noalias !844

bb.b:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.c:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !145, !noalias !844
  %.not.i2.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i2.i.i, label %.body, label %.body.from.60

.body.from.60:                                    ; preds = %bb.c
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33, !noalias !844
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !181
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.reload, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.024.reload.addr, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !148
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !843
  invoke void @_ZN5boost6cobalt2io17seq_packet_socketC1EOS2_(ptr noundef nonnull align 8 dereferenceable(136) %.reload.addr74, ptr noundef nonnull align 8 dereferenceable(112) %i.g)
          to label %bb.e unwind label %.from.66

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.024.reload.addr, i64 24, i1 false), !tbaa.struct !148
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !183, !nonnull !75, !align !86 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !185, !range !144, !noundef !75
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 8, !tbaa !185
  br i1 %i.m, label %bb.f, label %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io17seq_packet_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.n) #33
  br label %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io17seq_packet_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i

_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io17seq_packet_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i: ; preds = %bb.f, %bb.e
  invoke void @_ZN5boost6cobalt2io17seq_packet_socketC1EOS2_(ptr noundef nonnull align 8 dereferenceable(144) %i.j, ptr noundef nonnull align 8 dereferenceable(136) %.reload.addr74)
          to label %bb.g unwind label %.from.68

.from.66:                                         ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

.from.68:                                         ; preds = %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io17seq_packet_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.q) #33
  br label %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit

.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit: ; preds = %.body, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64, %.from.68, %.from.66
  %.pn10.pn = phi { ptr, i32 } [ %i.o, %.from.66 ], [ %i.p, %.from.68 ], [ %i.d, %_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit.from.64 ], [ %i.d, %.body ]
  %.3 = extractvalue { ptr, i32 } %.pn10.pn, 0
  %i.r = call ptr @__cxa_begin_catch(ptr %.3) #33 ; 0 uses
  invoke void @__cxa_rethrow() #36
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit
  unreachable

bb.g:                                             ; preds = %_ZNSt8optionalISt5tupleIJN5boost6system10error_codeENS1_6cobalt2io17seq_packet_socketEEEE7emplaceIJS7_EEENSt9enable_ifIX18is_constructible_vIS7_DpT_EERS7_E4typeEDpOSB_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !148
  store i8 1, ptr %i.k, align 8, !tbaa !185
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS_6cobalt2io13protocol_typeEEENS0_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.u) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.v = load i64, ptr %i.s, align 8, !tbaa !97, !noalias !845
  store i64 %i.v, ptr %.reload.addr76, align 8, !tbaa !97, !alias.scope !845
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98, !noalias !845
  %.not.i.i.i.i.i.i18 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i18, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99, !noalias !845 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !99, !alias.scope !845
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !100, !noalias !845
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !100, !alias.scope !845
  store ptr null, ptr %i.z, align 8, !tbaa !99, !noalias !845
  store ptr null, ptr %i.ac, align 8, !tbaa !100, !noalias !845
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102, !noalias !845
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.w, align 8, !tbaa !98, !noalias !845
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !98
  %i.ag = icmp eq ptr %.pre, null
  br label %AfterCoroSave45

bb.j:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !845
  br label %AfterCoroSave45

bb.k:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #34
  unreachable

AfterCoroSave45:                                  ; preds = %bb.j, %bb.i
  %i.ak = phi i1 [ true, %bb.j ], [ %i.ag, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !103, !noalias !845 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !103, !alias.scope !845
  store ptr @_ZZN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS7_17any_executor_base8prop_fnsIST_EEvE3fns, ptr %i.an, align 8, !tbaa !103, !noalias !845
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.as = load i64, ptr %i.al, align 8, !tbaa !104, !noalias !845 ; 2 uses
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !104, !alias.scope !845
  store ptr null, ptr %i.al, align 8, !tbaa !104, !noalias !845
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !176, !noalias !845, !nonnull !75, !align !86
  store ptr %i.au, ptr %i.at, align 8, !tbaa !177, !alias.scope !845
  store ptr null, ptr %0, align 8
  %index.addr81 = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i1 true, ptr %index.addr81, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %AfterCoroSave45
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !99 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !99
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !100
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !156
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge unwind label %bb.n

._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge: ; preds = %bb.l
  %.pre3 = load ptr, ptr %i.ao, align 8, !tbaa !103
  %.pre4 = load ptr, ptr %i.ar, align 8, !tbaa !104
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.m:                                             ; preds = %AfterCoroSave45
  %i.bc = inttoptr i64 %i.as to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  br label %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i: ; preds = %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge, %bb.m
  %i.bg = phi ptr [ %.pre4, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.bc, %bb.m ] ; 2 uses
  %i.bh = phi ptr [ %.pre3, %._ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i_crit_edge ], [ %i.ap, %bb.m ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !103
  store ptr null, ptr %i.ar, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr nonnull %0)
          to label %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i unwind label %bb.o, !inline_history !4

bb.o:                                             ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #34
  unreachable

_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i: ; preds = %_ZN5boost4asio15any_io_executorC2ERKS1_.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !157 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i2, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !158
  %i.bq = icmp eq i32 %i.bp, 3
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 2, ptr %i.bo, align 4, !tbaa !158
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i
  %.sroa.03.0.i.i = phi ptr [ @_ZNSt7__n486116coroutine_handleINS_22noop_coroutine_promiseEE5_S_frE, %bb.q ], [ %i.bg, %bb.p ], [ %i.bg, %_ZN5boost6cobalt6detail12self_destroyINS1_19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEENS_4asio15any_io_executorEEEvNSt7__n486116coroutine_handleIT_EERKT0_.exit.i.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !98
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !99
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !159
  invoke void %i.bw(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #34
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.bz = load ptr, ptr %.sroa.03.0.i.i, align 8
  musttail call void %i.bz(ptr nonnull %.sroa.03.0.i.i)
  ret void

bb.v:                                             ; preds = %.from._ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %i.ca

bb.x:                                             ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5boost6cobalt2io8acceptor20accept_seq_packet_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_17seq_packet_socketEEEE.destroy(ptr noundef nonnull align 8 dereferenceable(536) %0) #8 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 528
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %AfterCoroSuspend47, label %AfterCoroSuspend, !prof !411

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.pre30 = load ptr, ptr %.phi.trans.insert29, align 8, !tbaa !145
  %i.a = icmp eq ptr %.pre30, null
  br i1 %i.a, label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15final_awaitableD2Ev.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.phi.trans.insert29) #33
  br label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15final_awaitableD2Ev.exit

AfterCoroSuspend47:                               ; preds = %resume.entry
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 3 uses
  %.not2.i.i = icmp eq ptr %i.c, null
  br i1 %.not2.i.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %AfterCoroSuspend47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157  ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.e, null
  br i1 %.not.i.i19, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.e, align 4, !tbaa !158
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #38
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.b, align 8, !tbaa !104
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr nonnull %i.c)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i unwind label %bb.g, !inline_history !2

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #34
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i:  ; preds = %bb.f, %bb.e, %AfterCoroSuspend47
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15final_awaitableD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15final_awaitableD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #34
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15final_awaitableD2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i, %bb.h, %AfterCoroSuspend, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 3 uses
  %.not2.i.i20 = icmp eq ptr %i.x, null
  br i1 %.not2.i.i20, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22, label %bb.j

bb.j:                                             ; preds = %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15final_awaitableD2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !157  ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.z, null
  br i1 %.not.i.i21, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !158
  %i.ab = icmp eq i32 %i.aa, 3
  br i1 %i.ab, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #38
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.w, align 8, !tbaa !104
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr nonnull %i.x)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22 unwind label %bb.o, !inline_history !2

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #34
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22: ; preds = %bb.n, %bb.m, %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15final_awaitableD2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !159
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(56) %i.al)
          to label %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #34
  unreachable

_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEED2Ev.exit: ; preds = %bb.p, %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i.i22
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !104 ; 3 uses
  %.not2.i = icmp eq ptr %i.as, null
  br i1 %.not2.i, label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !157 ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = load i32, ptr %i.au, align 4, !tbaa !158
  %i.aw = icmp eq i32 %i.av, 3
  br i1 %i.aw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ax = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #38
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.ar, align 8, !tbaa !104
  br label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr nonnull %i.as)
          to label %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i unwind label %bb.w, !inline_history !2

bb.w:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #34
  unreachable

_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i:    ; preds = %bb.v, %bb.u, %_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !98
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !99
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !159
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(56) %i.bg)
          to label %_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #34
  unreachable

_ZN5boost6cobalt18completion_handlerIJNS_6system10error_codeENS0_2io17seq_packet_socketEEED2Ev.exit: ; preds = %_ZN5boost6cobalt13unique_handleIvED2Ev.exit.i, %bb.x
  %i.bm = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bm, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %0, i64 -24
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bn = add i64 %.sroa.4.0.copyload.i, 32
  %i.bo = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
end_hunk_2
begin_hunk_3_@_ZN5boost6cobalt2io8acceptor20accept_seq_packet_op8initiateENS0_18completion_handlerIJNS_6system10error_codeENS1_17seq_packet_socketEEEE.destroy:resume.entry
!211 = !{!210, !210, i64 0}
!212 = !{!"p1 _ZTSN5boost4asio6detail14thread_contextE", !37, i64 0}
!213 = !{!"p1 _ZTSN5boost4asio6detail16thread_info_baseE", !37, i64 0}
!214 = !{!"_ZTSN5boost4asio6detail10call_stackINS1_14thread_contextENS1_16thread_info_baseEE7contextE", !212, i64 0, !213, i64 8, !210, i64 16}
!215 = !{!214, !213, i64 8}
!216 = !{!"p2 _ZTSN5boost4asio6detail13epoll_reactor16descriptor_stateE", !95, i64 0}
!217 = !{!"_ZTSN5boost4asio6detail28reactive_socket_service_base23reactor_op_cancellationE", !205, i64 0, !216, i64 8, !31, i64 16, !31, i64 20}
!218 = !{!217, !205, i64 0}
!219 = !{!217, !216, i64 8}
!220 = !{!217, !31, i64 16}
!221 = !{!217, !31, i64 20}
!222 = !{!"_ZTSN5boost4asio6detail25cancellation_handler_baseE"}
!223 = !{!"_ZTSN5boost4asio6detail20cancellation_handlerINS1_28reactive_socket_service_base23reactor_op_cancellationEEE", !222, i64 0, !217, i64 8, !40, i64 32}
!224 = !{!223, !40, i64 32}
!225 = !{!"p1 _ZTSN5boost4asio6detail19scheduler_operationE", !37, i64 0}
!226 = !{!"_ZTSN5boost4asio6detail19scheduler_operationE", !225, i64 0, !37, i64 8, !31, i64 16}
!227 = !{!"_ZTSN5boost4asio6detail10reactor_opE", !226, i64 0, !62, i64 24, !37, i64 48, !40, i64 56, !37, i64 64}
!228 = !{!227, !37, i64 48}
!229 = !{!226, !225, i64 0}
!230 = !{!226, !37, i64 8}
!231 = !{!226, !31, i64 16}
!232 = !{!227, !37, i64 64}
!233 = !{!"_ZTSN5boost4asio6detail13socket_holderE", !31, i64 0}
!234 = !{!"_ZTSN5boost4asio6detail30reactive_socket_accept_op_baseINS0_12basic_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEES6_EE", !227, i64 0, !31, i64 72, !30, i64 76, !233, i64 80, !87, i64 88, !51, i64 96, !121, i64 112, !40, i64 120}
!235 = !{!234, !31, i64 72}
!236 = !{!234, !30, i64 76}
!237 = !{!233, !31, i64 0}
!238 = !{i64 0, i64 4, !67, i64 4, i64 4, !67, i64 8, i64 4, !67}
!239 = !{!234, !121, i64 112}
!240 = !{!234, !40, i64 120}
!241 = !{!"p1 _ZTSSt8optionalISt5tupleIJN5boost6system10error_codeEEEE", !37, i64 0}
!242 = !{!"_ZTSN5boost6cobalt18completion_handlerIJNS_6system10error_codeEEEE", !107, i64 0, !114, i64 80, !241, i64 88}
!243 = !{!242, !241, i64 88}
!244 = !{!241, !241, i64 0}
!245 = !{!234, !87, i64 88}
!246 = !{!206, !30, i64 32}
!247 = !{!49, !49, i64 0}
!248 = !{!"_ZTSSt13__atomic_baseIiE", !31, i64 0}
!249 = !{!"_ZTSSt6atomicIiE", !248, i64 0}
!250 = !{!"_ZTSN5boost4asio6detail16futex_slim_mutexE", !249, i64 0}
!251 = !{!"_ZTSN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEEE", !250, i64 4, !31, i64 8}
!252 = !{!"_ZTSN5boost4asio6detail13epoll_reactor16descriptor_stateE", !226, i64 0, !49, i64 24, !49, i64 32, !251, i64 40, !205, i64 56, !31, i64 64, !31, i64 68, !30, i64 72, !30, i64 120, !134, i64 123}
!253 = !{!252, !205, i64 56}
!254 = !{!252, !31, i64 64}
!255 = !{!252, !134, i64 123}
!256 = !{!134, !134, i64 0}
!257 = !{!251, !31, i64 8}
!258 = !{!"llvm.loop.mustprogress"}
!259 = !{!"_ZTS11epoll_event", !31, i64 0, !30, i64 4}
!260 = !{!259, !31, i64 0}
!261 = !{!252, !31, i64 68}
!262 = !{!"p1 _ZTSSt9type_info", !37, i64 0}
!263 = !{!"p1 _ZTSN5boost4asio17execution_context2idE", !37, i64 0}
!264 = !{!"_ZTSN5boost4asio17execution_context7service3keyE", !262, i64 0, !263, i64 8}
!265 = !{!"p1 _ZTSN5boost4asio17execution_contextE", !37, i64 0}
!266 = !{!"p1 _ZTSN5boost4asio17execution_context7serviceE", !37, i64 0}
!267 = !{!"_ZTSN5boost4asio17execution_context7serviceE", !264, i64 8, !265, i64 24, !266, i64 32, !37, i64 40}
!268 = !{!"_ZTSN5boost4asio6detail30execution_context_service_baseINS1_13epoll_reactorEEE", !267, i64 0}
!269 = !{!"_ZTSN5boost4asio6detail14scheduler_taskE"}
!270 = !{!"p1 _ZTSN5boost4asio6detail9schedulerE", !37, i64 0}
!271 = !{!"_ZTSN5boost4asio6detail26eventfd_select_interrupterE", !31, i64 0, !31, i64 4}
!272 = !{!"p1 _ZTSN5boost4asio6detail16timer_queue_baseE", !37, i64 0}
!273 = !{!"_ZTSN5boost4asio6detail15timer_queue_setE", !272, i64 0}
!274 = !{!"p1 _ZTSN5boost4asio17execution_context19allocator_impl_baseE", !37, i64 0}
!275 = !{!"_ZTSN5boost4asio17execution_context9allocatorIvEE", !274, i64 0}
!276 = !{!"_ZTSN5boost4asio6detail11object_poolINS1_13epoll_reactor16descriptor_stateENS0_17execution_context9allocatorIvEEEE", !275, i64 0, !49, i64 8, !49, i64 16}
!277 = !{!"_ZTSN5boost4asio6detail13epoll_reactorE", !268, i64 0, !269, i64 48, !270, i64 56, !251, i64 64, !271, i64 76, !31, i64 84, !31, i64 88, !273, i64 96, !134, i64 104, !134, i64 105, !31, i64 108, !251, i64 112, !276, i64 128}
!278 = !{!277, !31, i64 84}
!279 = !{!"p1 _ZTSN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEEE", !37, i64 0}
!280 = !{!279, !279, i64 0}
!281 = !{!"_ZTSN5boost4asio6detail27conditionally_enabled_mutexINS1_16futex_slim_mutexEE11scoped_lockE", !279, i64 0, !134, i64 8}
!282 = !{!281, !134, i64 8}
!283 = !{!281, !279, i64 0}
!284 = !{i64 4}
!285 = !{!277, !134, i64 105}
!286 = !{!277, !31, i64 108}
!287 = !{!276, !49, i64 16}
!288 = !{!252, !49, i64 24}
!289 = !{!275, !274, i64 0}
!290 = !{!248, !31, i64 0}
!291 = !{!276, !49, i64 8}
!292 = !{!252, !49, i64 32}
!293 = !{!"p1 _ZTSN5boost4asio6detail10reactor_opE", !37, i64 0}
!294 = !{!"_ZTSN5boost4asio6detail8op_queueINS1_10reactor_opEEE", !293, i64 0, !293, i64 8}
!295 = !{!294, !293, i64 0}
!296 = !{!294, !293, i64 8}
!297 = !{!"_ZTSN5boost4asio6detail8op_queueINS1_19scheduler_operationEEE", !225, i64 0, !225, i64 8}
!298 = !{!"_ZTSN5boost4asio6detail13epoll_reactor32perform_io_cleanup_on_block_exitE", !205, i64 0, !297, i64 8, !225, i64 24}
!299 = !{!298, !205, i64 0}
!300 = !{!297, !225, i64 0}
!301 = !{!297, !225, i64 8}
!302 = !{!225, !225, i64 0}
!303 = !{!298, !225, i64 24}
!304 = !{!277, !270, i64 56}
!305 = !{!214, !212, i64 0}
!306 = !{!"_ZTSN5boost4asio6detail16thread_info_baseE", !30, i64 0, !31, i64 96, !140, i64 104}
!307 = !{!"_ZTSN5boost4asio6detail21scheduler_thread_infoE", !306, i64 0, !297, i64 112, !40, i64 128}
!308 = !{!307, !40, i64 128}
!309 = !{!"_ZTSN5boost4asio6detail30execution_context_service_baseINS1_9schedulerEEE", !267, i64 0}
!310 = !{!"_ZTSN5boost4asio6detail11posix_mutexE", !30, i64 0}
!311 = !{!"_ZTSN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEEE", !310, i64 8, !31, i64 48, !134, i64 52}
!312 = !{!"_ZTSN5boost4asio6detail11posix_eventE", !30, i64 0, !40, i64 48}
!313 = !{!"_ZTSN5boost4asio6detail27conditionally_enabled_eventE", !312, i64 8}
!314 = !{!"p1 _ZTSN5boost4asio6detail14scheduler_taskE", !37, i64 0}
!315 = !{!"_ZTSN5boost4asio6detail9scheduler14task_operationE", !226, i64 0}
!316 = !{!"_ZTSSt13__atomic_baseIlE", !40, i64 0}
!317 = !{!"_ZTSSt6atomicIlE", !316, i64 0}
!318 = !{!"p1 _ZTSN5boost4asio6detail12posix_thread9func_baseE", !37, i64 0}
!319 = !{!"_ZTSN5boost4asio6detail12posix_threadE", !318, i64 0}
!320 = !{!"_ZTSN5boost4asio6detail9schedulerE", !309, i64 0, !134, i64 48, !134, i64 49, !311, i64 56, !313, i64 112, !314, i64 176, !37, i64 184, !315, i64 192, !134, i64 216, !134, i64 217, !134, i64 218, !317, i64 224, !297, i64 232, !40, i64 248, !40, i64 256, !319, i64 264}
!321 = !{!320, !134, i64 49}
!322 = !{!311, !134, i64 52}
!323 = !{!311, !31, i64 48}
!324 = !{!320, !40, i64 256}
!325 = !{!312, !40, i64 48}
!326 = !{!320, !134, i64 216}
!327 = !{!320, !314, i64 176}
!328 = !{!"_ZTSN5boost4asio9execution6detail17any_executor_base10target_fnsE", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!329 = !{!328, !37, i64 24}
!330 = !{!328, !37, i64 16}
!331 = !{!"p1 _ZTSN5boost4asio6detail17executor_function9impl_baseE", !37, i64 0}
!332 = !{!"_ZTSN5boost4asio6detail17executor_functionE", !331, i64 0}
!333 = !{!332, !331, i64 0}
!334 = !{!"_ZTSN5boost4asio6detail17executor_function9impl_baseE", !37, i64 0}
!335 = !{!334, !37, i64 0}
!336 = !{!"p1 _ZTSSaIvE", !37, i64 0}
!337 = !{!"p1 _ZTSN5boost4asio6detail17executor_function4implINS1_7binder1INS_6cobalt18completion_handlerIJNS_6system10error_codeEEEES8_EESaIvEEE", !37, i64 0}
!338 = !{!"_ZTSN5boost4asio6detail17executor_function4implINS1_7binder1INS_6cobalt18completion_handlerIJNS_6system10error_codeEEEES8_EESaIvEE3ptrE", !336, i64 0, !37, i64 8, !337, i64 16}
!339 = !{!338, !336, i64 0}
!340 = !{!338, !337, i64 16}
!341 = !{!338, !37, i64 8}
!342 = !{!"_ZTSSt9type_info", !38, i64 8}
!343 = !{!342, !38, i64 8}
!344 = !{!"_ZTSN5boost4asio9execution6detail17any_executor_base8prop_fnsINS1_12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS2_8blocking7never_tILi0EEENS1_11prefer_onlyINSA_10possibly_tILi0EEEEENSD_INS2_16outstanding_work9tracked_tILi0EEEEENSD_INSH_11untracked_tILi0EEEEENSD_INS2_12relationship6fork_tILi0EEEEENSD_INSO_14continuation_tILi0EEEEEEEEEE", !37, i64 0, !37, i64 8, !37, i64 16}
!345 = !{!344, !37, i64 16}
!346 = !{!101, !37, i64 24}
!347 = !{!293, !293, i64 0}
!348 = !{!"_ZTSN5boost6cobalt6detail32completion_handler_noop_executorE", !59, i64 0, !37, i64 56}
!349 = !{!348, !37, i64 56}
!350 = !{!"p1 _ZTSN5boost4asio6detail17executor_function4implINS1_7binder0INS1_7binder1INS_6cobalt18completion_handlerIJNS_6system10error_codeEEEES9_EEEESaIvEEE", !37, i64 0}
!351 = !{!"_ZTSN5boost4asio6detail17executor_function4implINS1_7binder0INS1_7binder1INS_6cobalt18completion_handlerIJNS_6system10error_codeEEEES9_EEEESaIvEE3ptrE", !336, i64 0, !37, i64 8, !350, i64 16}
!352 = !{!351, !336, i64 0}
!353 = !{!351, !350, i64 16}
!354 = !{!351, !37, i64 8}
!355 = !{!"p1 _ZTSN5boost4asio6detail17executor_function4implINS1_7binder0INS1_15work_dispatcherINS1_19empty_work_functionENS1_7binder1INS_6cobalt18completion_handlerIJNS_6system10error_codeEEEESB_EENS0_15any_io_executorEvEEEESaIvEEE", !37, i64 0}
!356 = !{!"_ZTSN5boost4asio6detail17executor_function4implINS1_7binder0INS1_15work_dispatcherINS1_19empty_work_functionENS1_7binder1INS_6cobalt18completion_handlerIJNS_6system10error_codeEEEESB_EENS0_15any_io_executorEvEEEESaIvEE3ptrE", !336, i64 0, !37, i64 8, !355, i64 16}
!357 = !{!356, !336, i64 0}
!358 = !{!356, !37, i64 8}
!359 = !{!356, !355, i64 16}
!360 = !{!150, !149, i64 0}
!361 = !{!106, !90, i64 0}
!362 = !{!265, !265, i64 0}
!363 = !{!"_ZTSN5boost4asio17execution_context18auto_allocator_ptrE", !274, i64 0}
!364 = !{!"p1 _ZTSN5boost4asio6detail16service_registryE", !37, i64 0}
!365 = !{!"_ZTSN5boost4asio17execution_contextE", !363, i64 0, !364, i64 8}
!366 = !{!365, !364, i64 8}
!367 = !{!264, !262, i64 0}
!368 = !{!264, !263, i64 8}
!369 = !{!"_ZTSN5boost4asio6detail16service_registryE", !310, i64 8, !265, i64 48, !266, i64 56}
!370 = !{!369, !265, i64 48}
!371 = !{!365, !274, i64 0}
!372 = !{!267, !37, i64 40}
!373 = !{!267, !265, i64 24}
!374 = !{!270, !270, i64 0}
!375 = !{!277, !31, i64 88}
!376 = !{!277, !134, i64 104}
!377 = !{!271, !31, i64 0}
!378 = !{!271, !31, i64 4}
!379 = !{!272, !272, i64 0}
!380 = !{!"_ZTS8timespec", !40, i64 0, !40, i64 8}
!381 = !{!"_ZTS10itimerspec", !380, i64 0, !380, i64 16}
!382 = !{!381, !40, i64 16}
!383 = !{!381, !40, i64 24}
!384 = !{!320, !134, i64 48}
!385 = !{!320, !37, i64 184}
!386 = !{!320, !134, i64 217}
!387 = !{!320, !134, i64 218}
!388 = !{!320, !40, i64 248}
!389 = !{!319, !318, i64 0}
!390 = !{!"_ZTSN5boost4asio6detail12posix_thread9func_baseE", !40, i64 8}
!391 = !{!390, !40, i64 8}
!392 = !{!"p1 _ZTSN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEEE", !37, i64 0}
!393 = !{!"_ZTSN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE", !392, i64 0, !134, i64 8}
!394 = !{!393, !134, i64 8}
!395 = !{!393, !392, i64 0}
!396 = !{!"p1 _ZTSN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE", !37, i64 0}
!397 = !{!"p1 _ZTSN5boost4asio6detail21scheduler_thread_infoE", !37, i64 0}
!398 = !{!"_ZTSN5boost4asio6detail9scheduler12task_cleanupE", !270, i64 0, !396, i64 8, !397, i64 16}
!399 = !{!398, !270, i64 0}
!400 = !{!398, !396, i64 8}
!401 = !{!398, !397, i64 16}
!402 = !{!"_ZTSN5boost4asio6detail9scheduler12work_cleanupE", !270, i64 0, !396, i64 8, !397, i64 16}
!403 = !{!402, !270, i64 0}
!404 = !{!402, !396, i64 8}
!405 = !{!402, !397, i64 16}
!406 = !{!"p1 _ZTSN5boost4asio6detail16reactive_wait_opINS_6cobalt18completion_handlerIJNS_6system10error_codeEEEENS0_15any_io_executorEEE", !37, i64 0}
!407 = !{!"_ZTSN5boost4asio6detail16reactive_wait_opINS_6cobalt18completion_handlerIJNS_6system10error_codeEEEENS0_15any_io_executorEE3ptrE", !198, i64 0, !406, i64 8, !406, i64 16}
!408 = !{!407, !198, i64 0}
!409 = !{!407, !406, i64 8}
!410 = !{!407, !406, i64 16}
!411 = !{!"branch_weights", i32 -715855702, i32 1073737600}
!412 = distinct !{!412, !"_ZN5boost4asio6detail23reactive_socket_serviceINS_6cobalt2io13protocol_typeEE4openERNS6_19implementation_typeERKS5_RNS_6system10error_codeE"}
!413 = distinct !{!413, !412, !"_ZN5boost4asio6detail23reactive_socket_serviceINS_6cobalt2io13protocol_typeEE4openERNS6_19implementation_typeERKS5_RNS_6system10error_codeE: argument 0"}
!414 = distinct !{!414, !"_ZN5boost4asio6detail23reactive_socket_serviceINS_6cobalt2io13protocol_typeEE10set_optionINS1_13socket_option7booleanILi1ELi2EEEEENS_6system10error_codeERNS6_19implementation_typeERKT_RSC_"}
!415 = distinct !{!415, !414, !"_ZN5boost4asio6detail23reactive_socket_serviceINS_6cobalt2io13protocol_typeEE10set_optionINS1_13socket_option7booleanILi1ELi2EEEEENS_6system10error_codeERNS6_19implementation_typeERKT_RSC_: argument 0"}
!416 = distinct !{!416, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!417 = distinct !{!417, !416, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!418 = distinct !{null, null, null, null, null, null}
!419 = distinct !{null, null, null, null, null}
!420 = distinct !{!420, !"_ZN5boost4asio6detail23reactive_socket_serviceINS_6cobalt2io13protocol_typeEE4bindERNS6_19implementation_typeERKNS4_8endpointERNS_6system10error_codeE"}
!421 = distinct !{!421, !420, !"_ZN5boost4asio6detail23reactive_socket_serviceINS_6cobalt2io13protocol_typeEE4bindERNS6_19implementation_typeERKNS4_8endpointERNS_6system10error_codeE: argument 0"}
!422 = distinct !{!422, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!423 = distinct !{!423, !422, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!424 = distinct !{null, null, null, null, null, null}
!425 = distinct !{null, null, null, null, null}
!426 = distinct !{!426, !"_ZN5boost4asio6detail28reactive_socket_service_base6listenERNS2_24base_implementation_typeEiRNS_6system10error_codeE"}
!427 = distinct !{!427, !426, !"_ZN5boost4asio6detail28reactive_socket_service_base6listenERNS2_24base_implementation_typeEiRNS_6system10error_codeE: argument 0"}
!428 = distinct !{!428, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!429 = distinct !{!429, !428, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!430 = distinct !{null, null, null, null, null, null}
!431 = distinct !{null, null, null, null, null}
!432 = !{!413}
!433 = !{!"_ZTSN5boost4asio6detail13socket_option7booleanILi1ELi2EEE", !31, i64 0}
!434 = !{!433, !31, i64 0}
!435 = !{!417, !415}
!436 = !{!415}
!437 = !{!421}
!438 = !{!423, !421}
!439 = !{!427}
!440 = !{!429, !427}
!441 = distinct !{!441, !"_ZN5boost4asio21basic_socket_acceptorINS_6cobalt2io13protocol_typeENS0_15any_io_executorEE4bindERKNS3_8endpointERNS_6system10error_codeE"}
!442 = distinct !{!442, !441, !"_ZN5boost4asio21basic_socket_acceptorINS_6cobalt2io13protocol_typeENS0_15any_io_executorEE4bindERKNS3_8endpointERNS_6system10error_codeE: argument 0"}
!443 = distinct !{!443, !"_ZN5boost4asio6detail23reactive_socket_serviceINS_6cobalt2io13protocol_typeEE4bindERNS6_19implementation_typeERKNS4_8endpointERNS_6system10error_codeE"}
!444 = distinct !{!444, !443, !"_ZN5boost4asio6detail23reactive_socket_serviceINS_6cobalt2io13protocol_typeEE4bindERNS6_19implementation_typeERKNS4_8endpointERNS_6system10error_codeE: argument 0"}
!445 = distinct !{!445, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!446 = distinct !{!446, !445, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!447 = distinct !{null, null, null, null, null, null, null}
!448 = distinct !{null, null, null, null, null, null}
!449 = !{!444, !442}
!450 = !{!446, !444, !442}
!451 = distinct !{!451, !"_ZN5boost4asio21basic_socket_acceptorINS_6cobalt2io13protocol_typeENS0_15any_io_executorEE6listenEiRNS_6system10error_codeE"}
!452 = distinct !{!452, !451, !"_ZN5boost4asio21basic_socket_acceptorINS_6cobalt2io13protocol_typeENS0_15any_io_executorEE6listenEiRNS_6system10error_codeE: argument 0"}
!453 = distinct !{!453, !"_ZN5boost4asio6detail28reactive_socket_service_base6listenERNS2_24base_implementation_typeEiRNS_6system10error_codeE"}
!454 = distinct !{!454, !453, !"_ZN5boost4asio6detail28reactive_socket_service_base6listenERNS2_24base_implementation_typeEiRNS_6system10error_codeE: argument 0"}
!455 = distinct !{!455, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!456 = distinct !{!456, !455, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!457 = distinct !{null, null, null, null, null, null, null}
!458 = distinct !{null, null, null, null, null, null}
!459 = !{!454, !452}
!460 = !{!456, !454, !452}
!461 = distinct !{!461, !"_ZNK5boost4asio21basic_socket_acceptorINS_6cobalt2io13protocol_typeENS0_15any_io_executorEE14local_endpointEv"}
!462 = distinct !{!462, !461, !"_ZNK5boost4asio21basic_socket_acceptorINS_6cobalt2io13protocol_typeENS0_15any_io_executorEE14local_endpointEv: argument 0"}
!463 = !{!462}
!464 = !{!"p1 _ZTSN5boost6cobalt2io6socketE", !37, i64 0}
!465 = !{!"_ZTSN5boost6cobalt2io8acceptor9accept_opE", !84, i64 0, !85, i64 8, !464, i64 16}
!466 = !{!465, !85, i64 8}
!467 = !{!465, !464, i64 16}
!468 = distinct !{null, null}
!469 = distinct !{!469, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINS5_13protocol_typeENS9_15any_io_executorEE21initiate_async_acceptEJPNS9_12basic_socketISB_SC_EEPNS5_8endpointEEEEDaNS9_24deferred_async_operationIFvDpT_ET0_JDpT1_EEE"}
!470 = distinct !{!470, !469, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINS5_13protocol_typeENS9_15any_io_executorEE21initiate_async_acceptEJPNS9_12basic_socketISB_SC_EEPNS5_8endpointEEEEDaNS9_24deferred_async_operationIFvDpT_ET0_JDpT1_EEE: argument 0"}
!471 = distinct !{!471, !"_ZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15await_transformIJS5_ENS_4asio21basic_socket_acceptorINS6_13protocol_typeENSA_15any_io_executorEE21initiate_async_acceptEJPNSA_12basic_socketISC_SD_EEPNS6_8endpointEEEEDaNSA_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOT__Xcldtclsr3stdE7forwardISU_EfL0p_EonawERNS0_14awaitable_typeEEEEDaSV_"}
!472 = distinct !{!472, !471, !"_ZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15await_transformIJS5_ENS_4asio21basic_socket_acceptorINS6_13protocol_typeENSA_15any_io_executorEE21initiate_async_acceptEJPNSA_12basic_socketISC_SD_EEPNS6_8endpointEEEEDaNSA_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOT__Xcldtclsr3stdE7forwardISU_EfL0p_EonawERNS0_14awaitable_typeEEEEDaSV_: argument 0"}
!473 = distinct !{!473, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEE12await_resumeEv"}
!474 = distinct !{!474, !473, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEE12await_resumeEv: argument 0"}
!475 = distinct !{!475, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE"}
!476 = distinct !{!476, !475, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE: argument 0"}
!477 = distinct !{!477, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE13final_suspendEv"}
!478 = distinct !{!478, !477, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE13final_suspendEv: argument 0"}
!479 = !{!"_ZTSN5boost6cobalt2opIJNS_6system10error_codeENS0_2io13stream_socketEEEE"}
!480 = !{!"_ZTSN5boost6cobalt2io11read_streamE"}
!481 = !{!"_ZTSN5boost6cobalt2io12write_streamE"}
!482 = !{!"_ZTSN5boost6cobalt2io6streamE", !480, i64 0, !481, i64 8}
!483 = !{!"_ZTSN5boost4asio19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEE", !119, i64 0}
!484 = !{!"_ZTSN5boost6cobalt2io13stream_socketE", !88, i64 0, !482, i64 16, !483, i64 32}
!485 = !{!"_ZTSN5boost6cobalt2io8acceptor16accept_stream_opE", !479, i64 0, !85, i64 8, !484, i64 16}
!486 = !{!485, !85, i64 8}
!487 = !{!470}
!488 = !{!472, !470}
!489 = !{!474}
!490 = !{!476, !474}
!491 = !{!478}
!492 = distinct !{!492, !"_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINS5_13protocol_typeENS9_15any_io_executorEE21initiate_async_acceptEJPNS9_12basic_socketISB_SC_EEPNS5_8endpointEEEEDaNS9_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEEN11deferred_opawEv"}
!493 = distinct !{!493, !492, !"_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io13stream_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINS5_13protocol_typeENS9_15any_io_executorEE21initiate_async_acceptEJPNS9_12basic_socketISB_SC_EEPNS5_8endpointEEEEDaNS9_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEEN11deferred_opawEv: argument 0"}
!494 = distinct !{!494, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv"}
!495 = distinct !{!495, !494, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv: argument 0"}
!496 = distinct !{!496, !"_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE"}
!497 = distinct !{!497, !496, !"_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE: argument 0"}
!498 = !{!493}
!499 = !{!495}
!500 = !{!497}
!501 = !{!497, !493}
!502 = distinct !{null, null}
!503 = distinct !{!503, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINS5_13protocol_typeENS9_15any_io_executorEE21initiate_async_acceptEJPNS9_12basic_socketISB_SC_EEPNS5_8endpointEEEEDaNS9_24deferred_async_operationIFvDpT_ET0_JDpT1_EEE"}
!504 = distinct !{!504, !503, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINS5_13protocol_typeENS9_15any_io_executorEE21initiate_async_acceptEJPNS9_12basic_socketISB_SC_EEPNS5_8endpointEEEEDaNS9_24deferred_async_operationIFvDpT_ET0_JDpT1_EEE: argument 0"}
!505 = distinct !{!505, !"_ZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15await_transformIJS5_ENS_4asio21basic_socket_acceptorINS6_13protocol_typeENSA_15any_io_executorEE21initiate_async_acceptEJPNSA_12basic_socketISC_SD_EEPNS6_8endpointEEEEDaNSA_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOT__Xcldtclsr3stdE7forwardISU_EfL0p_EonawERNS0_14awaitable_typeEEEEDaSV_"}
!506 = distinct !{!506, !505, !"_ZN5boost6cobalt8as_tupleIZNS0_6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15await_transformIJS5_ENS_4asio21basic_socket_acceptorINS6_13protocol_typeENSA_15any_io_executorEE21initiate_async_acceptEJPNSA_12basic_socketISC_SD_EEPNS6_8endpointEEEEDaNSA_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEE11deferred_opQrQOT__Xcldtclsr3stdE7forwardISU_EfL0p_EonawERNS0_14awaitable_typeEEEEDaSV_: argument 0"}
!507 = distinct !{!507, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEE12await_resumeEv"}
!508 = distinct !{!508, !507, !"_ZN5boost6cobalt10as_tuple_tINS0_2opIJNS_6system10error_codeEEE14awaitable_baseEE12await_resumeEv: argument 0"}
!509 = distinct !{!509, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE"}
!510 = distinct !{!510, !509, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEEE14awaitable_base12await_resumeERKNS0_12as_tuple_tagE: argument 0"}
!511 = distinct !{!511, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE13final_suspendEv"}
!512 = distinct !{!512, !511, !"_ZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE13final_suspendEv: argument 0"}
!513 = !{!"_ZTSN5boost6cobalt2opIJNS_6system10error_codeENS0_2io17seq_packet_socketEEEE"}
!514 = !{!"_ZTSN5boost4asio23basic_seq_packet_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEE", !119, i64 0}
!515 = !{!"_ZTSN5boost6cobalt2io17seq_packet_socketE", !88, i64 0, !514, i64 16}
!516 = !{!"_ZTSN5boost6cobalt2io8acceptor20accept_seq_packet_opE", !513, i64 0, !85, i64 8, !515, i64 16}
!517 = !{!516, !85, i64 8}
!518 = !{!504}
!519 = !{!506, !504}
!520 = !{!508}
!521 = !{!510, !508}
!522 = !{!512}
!523 = distinct !{!523, !"_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINS5_13protocol_typeENS9_15any_io_executorEE21initiate_async_acceptEJPNS9_12basic_socketISB_SC_EEPNS5_8endpointEEEEDaNS9_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEEN11deferred_opawEv"}
!524 = distinct !{!524, !523, !"_ZZN5boost6cobalt6detail19composition_promiseIJNS_6system10error_codeENS0_2io17seq_packet_socketEEE15await_transformIJS4_ENS_4asio21basic_socket_acceptorINS5_13protocol_typeENS9_15any_io_executorEE21initiate_async_acceptEJPNS9_12basic_socketISB_SC_EEPNS5_8endpointEEEEDaNS9_24deferred_async_operationIFvDpT_ET0_JDpT1_EEEEN11deferred_opawEv: argument 0"}
!525 = distinct !{!525, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv"}
!526 = distinct !{!526, !525, !"_ZN5boost6cobalt2opIJNS_6system10error_codeEEEawEv: argument 0"}
!527 = distinct !{!527, !"_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE"}
!528 = distinct !{!528, !527, !"_ZNO5boost6cobalt2opIJNS_6system10error_codeEEE9awaitable16replace_resourceEPNSt3pmr15memory_resourceE: argument 0"}
!529 = !{!524}
!530 = !{!526}
!531 = !{!528}
!532 = !{!528, !524}
!533 = !{!"_ZTSN5boost4asio11socket_base9wait_typeE", !30, i64 0}
!534 = !{!"_ZTSN5boost6cobalt2io8acceptor7wait_opE", !84, i64 0, !85, i64 8, !533, i64 16}
!535 = !{!534, !85, i64 8}
!536 = !{!534, !533, i64 16}
!537 = !{!"_ZTSN5boost6system15error_conditionE", !31, i64 0, !43, i64 8}
!538 = !{!537, !31, i64 0}
!539 = !{!537, !43, i64 8}
!540 = distinct !{!540, !"_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei"}
!541 = distinct !{!541, !540, !"_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei: argument 0"}
!542 = distinct !{!542, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei"}
!543 = distinct !{!543, !542, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei: argument 0"}
!544 = !{!541}
!545 = !{!543}
!546 = !{!543, !541}
!547 = distinct !{ptr @_ZN5boost10wrapexceptINS_4asio9execution12bad_executorEEC2ERKS4_, null}
!548 = distinct !{null}
!549 = !{ptr @_ZN5boost10wrapexceptINS_4asio9execution12bad_executorEEC2ERKS4_}
!550 = distinct !{null}
!551 = distinct !{null, null, null}
!552 = distinct !{null, null}
!553 = distinct !{null, null}
!554 = distinct !{!554, !"_ZN5boost4asio5error15make_error_codeENS1_11misc_errorsE"}
!555 = distinct !{!555, !554, !"_ZN5boost4asio5error15make_error_codeENS1_11misc_errorsE: argument 0"}
!556 = distinct !{null, null, null, null, null}
!557 = distinct !{null}
!558 = !{!555}
!559 = distinct !{!559, !"_ZN5boost4asio12basic_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEE6assignERKS4_RKiRNS_6system10error_codeE"}
!560 = distinct !{!560, !559, !"_ZN5boost4asio12basic_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEE6assignERKS4_RKiRNS_6system10error_codeE: argument 0"}
!561 = !{!560}
!562 = distinct !{!562, !"_ZN5boost4asio6detail28reactive_socket_service_base9do_assignERNS2_24base_implementation_typeEiRKiRNS_6system10error_codeE"}
!563 = distinct !{!563, !562, !"_ZN5boost4asio6detail28reactive_socket_service_base9do_assignERNS2_24base_implementation_typeEiRKiRNS_6system10error_codeE: argument 0"}
!564 = distinct !{!564, !"_ZN5boost4asio5error15make_error_codeENS1_11misc_errorsE"}
!565 = distinct !{!565, !564, !"_ZN5boost4asio5error15make_error_codeENS1_11misc_errorsE: argument 0"}
!566 = distinct !{null, null, null, null, null}
!567 = distinct !{null, null, null}
!568 = !{!51, !31, i64 4}
!569 = !{!563}
!570 = !{!565, !563}
!571 = distinct !{null}
!572 = distinct !{!572, !258}
!573 = distinct !{null, null, null, null}
!574 = distinct !{!574, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!575 = distinct !{!575, !574, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!576 = distinct !{!576, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!577 = distinct !{!577, !576, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!578 = !{!"_ZTS6linger", !31, i64 0, !31, i64 4}
!579 = !{!578, !31, i64 0}
!580 = !{!578, !31, i64 4}
!581 = !{!575}
!582 = !{!577}
!583 = distinct !{null, null, null, null}
!584 = distinct !{ptr @_ZN5boost10wrapexceptISt9bad_allocEC2ERKS2_, null}
!585 = distinct !{null}
!586 = !{ptr @_ZN5boost10wrapexceptISt9bad_allocEC2ERKS2_}
!587 = distinct !{null}
!588 = distinct !{!588, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!589 = distinct !{!589, !588, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!590 = distinct !{null, null, null, null, null}
!591 = distinct !{!591, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!592 = distinct !{!592, !591, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!593 = distinct !{!593, !258}
!594 = distinct !{null, null, null, null}
!595 = distinct !{!595, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!596 = distinct !{!596, !595, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!597 = distinct !{!597, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!598 = distinct !{!598, !597, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!599 = distinct !{!599, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!600 = distinct !{!600, !599, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!601 = !{!589}
!602 = !{!592}
!603 = !{!596}
!604 = !{!598}
!605 = !{!600}
!606 = distinct !{null}
!607 = distinct !{!607, !"_ZNK14asio_prefer_fn4implclIRKN5boost4asio15any_io_executorERKNS3_9execution6detail16outstanding_work9tracked_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SF_SH_vvvvvvvE11result_typeEE4typeEOSF_OSG_"}
!608 = distinct !{!608, !607, !"_ZNK14asio_prefer_fn4implclIRKN5boost4asio15any_io_executorERKNS3_9execution6detail16outstanding_work9tracked_tILi0EEEEENSt9enable_ifIXeqsr11call_traitsIS0_T_FvT0_EEE8overloadLNS_13overload_typeE3EENS_11call_traitsIS0_SF_SH_vvvvvvvE11result_typeEE4typeEOSF_OSG_: argument 0"}
!609 = distinct !{!609, !"_ZNK5boost4asio15any_io_executor6preferINS0_9execution6detail16outstanding_work9tracked_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits13prefer_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEENS4_8blocking7never_tILi0EEENS3_11prefer_onlyINSH_10possibly_tILi0EEEEENSK_IS7_EENSK_INS5_11untracked_tILi0EEEEENSK_INS4_12relationship6fork_tILi0EEEEENSK_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE"}
!610 = distinct !{!610, !609, !"_ZNK5boost4asio15any_io_executor6preferINS0_9execution6detail16outstanding_work9tracked_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits13prefer_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEENS4_8blocking7never_tILi0EEENS3_11prefer_onlyINSH_10possibly_tILi0EEEEENSK_IS7_EENSK_INS5_11untracked_tILi0EEEEENSK_INS4_12relationship6fork_tILi0EEEEENSK_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE: argument 0"}
!611 = distinct !{!611, !"_ZNK5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEE6preferISH_EEST_RKT_PNSt9enable_ifIXsr36find_convertible_preferable_propertyISV_EE5valueEvE4typeE"}
end_hunk_3
