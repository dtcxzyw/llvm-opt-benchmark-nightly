Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/async_base?download=true
inline.NumInlined: 2739
inline.NumDeleted: 1229
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK5boost4asio6detail20initiate_async_writeINS_5beast4test12basic_streamINS0_15any_io_executorEEEEclIZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSA_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSL_E2opNS0_12const_bufferENS1_14transfer_all_tEEEvOST_SX_SY_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #31, !inline_history !869
  br label %_ZN5boost4asio6detail14start_write_opINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tEZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSC_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSN_E2opEEvSW_SZ_RKSN_RT2_RT3_.exit

bb.g:                                             ; preds = %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEEC2ERKS5_.exit.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !239 ; 4 uses
  %.not.i.i6.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i6.i.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ay = atomicrmw sub ptr %i.ax, i32 1 acq_rel, align 4
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #31, !inline_history !869
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.i
  call void @_ZN5boost4asio6detail8write_opINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tEZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSC_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSN_E2opED2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %7) #31, !inline_history !870
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  resume { ptr, i32 } %i.av

_ZN5boost4asio6detail14start_write_opINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tEZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSC_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSN_E2opEEvSW_SZ_RKSN_RT2_RT3_.exit: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast17stable_async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %i.f, align 8, !tbaa !47
  %.pr.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !145 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not5.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost4asio6detail14start_write_opINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tEZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSC_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSN_E2opEEvSW_SZ_RKSN_RT2_RT3_.exit, %.noexc.i.i
  %i.bd = phi ptr [ %i.bf, %.noexc.i.i ], [ %.pr.i.i.i, %_ZN5boost4asio6detail14start_write_opINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tEZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSC_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSN_E2opEEvSW_SZ_RKSN_RT2_RT3_.exit ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !147 ; 3 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.bd)
          to label %.noexc.i.i unwind label %bb.k, !inline_history !8

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  store ptr %i.bf, ptr %i.r, align 8, !tbaa !145
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i: ; preds = %.noexc.i.i, %_ZN5boost4asio6detail14start_write_opINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tEZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSC_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSN_E2opEEvSW_SZ_RKSN_RT2_RT3_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %i.f, align 8, !tbaa !47
  %i.bj = load i8, ptr %i.i, align 8, !tbaa !196, !range !73, !noundef !74
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.j, label %_ZN5boost4asio6detail8write_opINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tEZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSC_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSN_E2opED2Ev.exit

bb.j:                                             ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 120
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bl) #31, !inline_history !198
  br label %_ZN5boost4asio6detail8write_opINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tEZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSC_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSN_E2opED2Ev.exit

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #32, !inline_history !199
  unreachable

_ZN5boost4asio6detail8write_opINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tEZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSC_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSN_E2opED2Ev.exit: ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i.i, %bb.j
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.g) #31, !inline_history !198
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail8write_opINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tEZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSC_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSN_E2opEclESR_mi(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef byval(%"class.boost::system::error_code") align 8 %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::weak_ptr", align 16  ; 5 uses
  %5 = alloca %"struct.boost::beast::test::basic_stream<>::run_write_op", align 8 ; 4 uses
  %6 = alloca %"class.boost::asio::const_buffer", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.a, align 8, !tbaa !370
  %cond = icmp eq i32 %3, 1
  br i1 %cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 1
  %i.f = load i32, ptr %1, align 8
  %.fr.i.i = freeze i32 %i.f
  %.not.i.i = icmp eq i32 %.fr.i.i, 0
  %or.cond.i.i = and i1 %i.e, %.not.i.i
  %spec.select.i.i = select i1 %or.cond.i.i, i64 65536, i64 0
  br label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit

_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit: ; preds = %select.unfold, %bb.c, %bb.b, %_ZNK5boost4asio6detail28base_from_cancellation_stateIZNS_5beast15async_base_test20async_write_messagesINS3_4test12basic_streamINS0_15any_io_executorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS4_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSJ_E2opvE9cancelledEv.exit
  %.0 = phi i64 [ 65536, %_ZNK5boost4asio6detail28base_from_cancellation_stateIZNS_5beast15async_base_test20async_write_messagesINS3_4test12basic_streamINS0_15any_io_executorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS4_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSJ_E2opvE9cancelledEv.exit ], [ 65536, %bb.b ], [ %spec.select.i.i, %bb.c ], [ 65536, %select.unfold ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !371, !nonnull !74, !align !76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !366
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !372  ; 2 uses
  %spec.select.i.i9 = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.m) ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !373
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select.i.i9
  %i.p = sub i64 %i.m, %spec.select.i.i9
  %spec.select.i1.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %.0)
  store ptr %i.o, ptr %6, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %spec.select.i1.i, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.h, ptr %5, align 8, !tbaa !214
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !239  ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !tbaa !77
  store <2 x ptr> %i.v, ptr %4, align 16, !tbaa !77
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEEC2ERKS5_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.x = atomicrmw add ptr %i.w, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEEC2ERKS5_.exit.i.i.i

_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEEC2ERKS5_.exit.i.i.i: ; preds = %bb.d, %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit
  invoke void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE12run_write_opclINS3_6detail8write_opIS5_NS3_12const_bufferEPKSA_NS8_14transfer_all_tEZNS0_15async_base_test20async_write_messagesIS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSE_12testJavadocsEvE7handlerEENS3_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSP_E2opEESA_EEvOSX_NS_8weak_ptrINS1_6detail12stream_stateEEES11_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.e unwind label %bb.h, !inline_history !873

bb.e:                                             ; preds = %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEEC2ERKS5_.exit.i.i.i
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !239  ; 4 uses
  %.not.i.i5.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i5.i.i.i, label %_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE16async_write_someINS3_12const_bufferENS3_6detail8write_opIS5_S7_PKS7_NS8_14transfer_all_tEZNS0_15async_base_test20async_write_messagesIS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSD_12testJavadocsEvE7handlerEENS3_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSO_E2opEEEEDaRKSW_OSY_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE16async_write_someINS3_12const_bufferENS3_6detail8write_opIS5_S7_PKS7_NS8_14transfer_all_tEZNS0_15async_base_test20async_write_messagesIS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSD_12testJavadocsEvE7handlerEENS3_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSO_E2opEEEEDaRKSW_OSY_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #31, !inline_history !874
  br label %_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE16async_write_someINS3_12const_bufferENS3_6detail8write_opIS5_S7_PKS7_NS8_14transfer_all_tEZNS0_15async_base_test20async_write_messagesIS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSD_12testJavadocsEvE7handlerEENS3_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSO_E2opEEEEDaRKSW_OSY_.exit

bb.h:                                             ; preds = %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEEC2ERKS5_.exit.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !239 ; 4 uses
  %.not.i.i6.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i6.i.i.i, label %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit7.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = atomicrmw sub ptr %i.ah, i32 1 acq_rel, align 4
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.j, label %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit7.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #31, !inline_history !874
  br label %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit7.i.i.i

_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit7.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  resume { ptr, i32 } %i.af

_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE16async_write_someINS3_12const_bufferENS3_6detail8write_opIS5_S7_PKS7_NS8_14transfer_all_tEZNS0_15async_base_test20async_write_messagesIS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSD_12testJavadocsEvE7handlerEENS3_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSO_E2opEEEEDaRKSW_OSY_.exit: ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !366
  %i.ap = add i64 %i.ao, %2                       ; 6 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !366
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %i.as = and i64 %i.ar, 1
  %.not.i.i10 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %.thread20, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit16

bb.m:                                             ; preds = %bb.k
  %7 = icmp ne i64 %2, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8
  %.not26 = icmp ult i64 %i.ap, %i.av
  %or.cond.not29 = select i1 %7, i1 %.not26, i1 false
  br i1 %or.cond.not29, label %select.unfold, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit16

.thread20:                                        ; preds = %bb.l
  %8 = load i32, ptr %1, align 8, !tbaa !157
  %9 = icmp ne i32 %8, 0
  %10 = icmp ne i64 %2, 0
  %or.cond.not36 = or i1 %10, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %12 = load i64, ptr %11, align 8
  %13 = icmp ult i64 %i.ap, %12
  %or.cond.not2937 = select i1 %or.cond.not36, i1 %13, i1 false
  %i.aw = load i32, ptr %1, align 8
  %.fr.i.i12 = freeze i32 %i.aw
  %.not.i.i13 = icmp eq i32 %.fr.i.i12, 0
  %or.cond.i.i14 = and i1 %or.cond.not2937, %.not.i.i13
  br i1 %or.cond.i.i14, label %select.unfold, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit16

select.unfold:                                    ; preds = %.thread20, %bb.m
  %i.ax = load ptr, ptr %0, align 8, !tbaa !363   ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i17, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit, label %_ZNK5boost4asio6detail28base_from_cancellation_stateIZNS_5beast15async_base_test20async_write_messagesINS3_4test12basic_streamINS0_15any_io_executorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS4_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSJ_E2opvE9cancelledEv.exit

_ZNK5boost4asio6detail28base_from_cancellation_stateIZNS_5beast15async_base_test20async_write_messagesINS3_4test12basic_streamINS0_15any_io_executorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS4_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSJ_E2opvE9cancelledEv.exit: ; preds = %select.unfold
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !882
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit, label %bb.n, !llvm.loop !875

bb.n:                                             ; preds = %_ZNK5boost4asio6detail28base_from_cancellation_stateIZNS_5beast15async_base_test20async_write_messagesINS3_4test12basic_streamINS0_15any_io_executorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS4_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSJ_E2opvE9cancelledEv.exit
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !52, !noalias !883
  %i.bb = and i64 %i.ba, -2
  %switch.i.i.i.i = icmp eq i64 %i.bb, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit: ; preds = %bb.n
  %i.bc = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !47, !noalias !883
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !883
  %i.bf = tail call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #31, !noalias !883, !inline_history !878
  br i1 %i.bf, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread, label %bb.o

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread: ; preds = %bb.n, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread
  %i.bg = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit ]
  store i64 125, ptr %1, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !42
  store i64 %i.bg, ptr %i.aq, align 8, !tbaa !39
  %.pre = load i64, ptr %i.an, align 8, !tbaa !366
  br label %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit16

_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit16: ; preds = %.thread20, %bb.l, %bb.m, %bb.o
  %14 = phi i64 [ %i.ap, %bb.l ], [ %i.ap, %.thread20 ], [ %i.ap, %bb.m ], [ %.pre, %bb.o ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZZN5boost5beast15async_base_test20async_write_messagesINS0_4test12basic_streamINS_4asio15any_io_executorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS1_12testJavadocsEvE7handlerEENS5_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSH_EN2opclESL_m(ptr noundef nonnull align 8 dereferenceable(184) %i.bh, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %1, i64 noundef %14)
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost4asio6detail25base_from_completion_condINS1_14transfer_all_tEE20check_for_completionERKNS_6system10error_codeEm.exit16, %_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE16async_write_someINS3_12const_bufferENS3_6detail8write_opIS5_S7_PKS7_NS8_14transfer_all_tEZNS0_15async_base_test20async_write_messagesIS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSD_12testJavadocsEvE7handlerEENS3_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSO_E2opEEEEDaRKSW_OSY_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail8write_opINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_12const_bufferEPKS8_NS1_14transfer_all_tEZNS3_15async_base_test20async_write_messagesIS7_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSC_12testJavadocsEvE7handlerEENS0_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSN_E2opED2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast17stable_async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !145 ; 2 uses
  %.not5.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not5.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %i.c = phi ptr [ %i.e, %.noexc.i ], [ %.pr.i.i, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc.i unwind label %bb.c, !inline_history !8

.noexc.i:                                         ; preds = %.lr.ph.i.i
  store ptr %i.e, ptr %i.b, align 8, !tbaa !145
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i: ; preds = %.noexc.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEEE, i64 16), ptr %i.a, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load i8, ptr %i.i, align 8, !tbaa !196, !range !73, !noundef !74
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN5boost5beast17stable_async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEED2Ev.exit

bb.b:                                             ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.l) #31, !inline_history !198
  br label %_ZN5boost5beast17stable_async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEED2Ev.exit

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #32, !inline_history !199
  unreachable

_ZN5boost5beast17stable_async_baseIZNS0_15async_base_test12testJavadocsEvE7handlerNS_4asio15any_io_executorESaIvEED2Ev.exit: ; preds = %_ZN5boost5beast6detail11stable_base12destroy_listERPS2_.exit.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.o) #31, !inline_history !198
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE12run_write_opclINS3_6detail8write_opIS5_NS3_12const_bufferEPKSA_NS8_14transfer_all_tEZNS0_15async_base_test20async_write_messagesIS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSE_12testJavadocsEvE7handlerEENS3_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSP_E2opEESA_EEvOSX_NS_8weak_ptrINS1_6detail12stream_stateEEES11_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.170, align 8            ; 9 uses
  %5 = alloca %"class.boost::system::error_code", align 8 ; 8 uses
  %6 = alloca %"class.boost::shared_ptr", align 8 ; 7 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !375, !nonnull !74, !align !76
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !888
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !888
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %0, ptr %4, align 8, !tbaa !379
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !889
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !234  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef zeroext i1 @_ZN5boost5beast4test10fail_count4failERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE12run_write_opclINS3_6detail8write_opIS5_NS3_12const_bufferEPKSA_NS8_14transfer_all_tEZNS0_15async_base_test20async_write_messagesIS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSE_12testJavadocsEvE7handlerEENS3_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSP_E2opEESA_EEvOSX_NS_8weak_ptrINS1_6detail12stream_stateEEES11_ENKUlST_mE_clEST_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %5, i64 noundef 0)
  br label %bb.s

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !39
  %i.j = icmp eq i64 %.sroa.22.0.copyload, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE12run_write_opclINS3_6detail8write_opIS5_NS3_12const_bufferEPKSA_NS8_14transfer_all_tEZNS0_15async_base_test20async_write_messagesIS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSE_12testJavadocsEvE7handlerEENS3_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSP_E2opEESA_EEvOSX_NS_8weak_ptrINS1_6detail12stream_stateEEES11_ENKUlST_mE_clEST_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %5, i64 noundef 0)
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  store ptr null, ptr %6, align 8, !tbaa !204, !alias.scope !890
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !239, !noalias !890 ; 5 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !237, !alias.scope !890
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load atomic i32, ptr %i.n monotonic, align 4, !noalias !890 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i
  %.058.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i ], [ %i.o, %bb.g ] ; 2 uses
  %i.q = add nsw i32 %.058.i.i.i.i.i, 1
  %i.r = cmpxchg weak ptr %i.n, i32 %.058.i.i.i.i.i, i32 %i.q monotonic monotonic, align 4, !noalias !890 ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 1
  br i1 %i.s, label %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.t = extractvalue { i32, i1 } %i.r, 0         ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i, %bb.g
  store ptr null, ptr %i.k, align 8, !tbaa !237, !alias.scope !890
  br label %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread

_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.v = load ptr, ptr %2, align 8, !tbaa !256, !noalias !890 ; 8 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !204, !alias.scope !890
  %.not28 = icmp eq ptr %i.v, null
  br i1 %.not28, label %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread, label %bb.j

_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread: ; preds = %bb.f, %.loopexit.i.i.i, %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit
  %i.w = phi ptr [ %i.m, %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit ], [ null, %.loopexit.i.i.i ], [ null, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.x, align 8
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !52, !noalias !891
  %i.z = and i64 %i.y, -2
  %switch.i.i.i.i = icmp eq i64 %i.z, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.h

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit.thread
  %i.ab = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !47, !noalias !891
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !891
  %i.ae = call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 104) #31, !noalias !891, !inline_history !13
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %spec.select = select i1 %i.ae, i64 3, i64 2
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.ag = phi ptr [ %i.af, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ %i.aa, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ]
  %i.ah = phi i64 [ %spec.select, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ 3, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ]
  store i64 104, ptr %7, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !42
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !39
  invoke void @_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE12run_write_opclINS3_6detail8write_opIS5_NS3_12const_bufferEPKSA_NS8_14transfer_all_tEZNS0_15async_base_test20async_write_messagesIS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNSE_12testJavadocsEvE7handlerEENS3_12async_resultINSt5decayIT1_E4typeEJFvNS_6system10error_codeEEEE11return_typeERT_RKT0_mOSP_E2opEESA_EEvOSX_NS_8weak_ptrINS1_6detail12stream_stateEEES11_ENKUlST_mE_clEST_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %7, i64 noundef 0)
          to label %bb.o unwind label %bb.i

bb.i:                                             ; preds = %bb.n, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.j:                                             ; preds = %_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv.exit
  %.sroa.2.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !39
  %i.aj = load ptr, ptr %0, align 8, !tbaa !375, !nonnull !74, !align !76
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !204
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 272
  %i.am = load i64, ptr %i.al, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 72 ; 3 uses
  %i.ao = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #33
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.j
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.am, i64 %.sroa.2.0.copyload)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.aq = invoke { ptr, i64 } @_ZN5boost5beast17basic_flat_bufferISaIcEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 noundef %.sroa.speculated)
          to label %bb.l unwind label %bb.u       ; 2 uses

bb.l:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ar = extractvalue { ptr, i64 } %i.aq, 1
end_hunk_0
