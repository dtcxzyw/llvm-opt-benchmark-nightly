Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/wsload?download=true
inline.NumInlined: 12104
inline.NumDeleted: 5158
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5boost5beast4http6detail12read_some_opINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_13static_bufferILm1536EEELb0EEclINS4_6detail11composed_opISC_NSE_13composed_workIFvS8_EEENSF_INS2_7read_opIS9_SB_Lb0ENS2_14parser_is_doneEEESI_NS0_9websocket6streamIS9_Lb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISS_EEEEEEJFvSU_mEEEEJS11_EEEEEvRT_SU_m:bb.a

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %i.ed = and i64 %i.cy, 1
  %.not.i.i45 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i45, label %_ZNK5boost6system10error_codecvbEv.exit47.thread103, label %_ZNK5boost6system10error_codecvbEv.exit38

.thread98:                                        ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  %i.ee = and i64 %i.cy, 1
  %.not.i.i4599 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i4599, label %_ZNK5boost6system10error_codecvbEv.exit47.thread103, label %_ZNK5boost6system10error_codecvbEv.exit38

_ZNK5boost6system10error_codecvbEv.exit47:        ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %.not125 = icmp eq i32 %i.da, 0
  br i1 %.not125, label %_ZNK5boost6system10error_codecvbEv.exit47.thread103, label %_ZNK5boost6system10error_codecvbEv.exit38, !llvm.loop !3111

_ZNK5boost6system10error_codecvbEv.exit38:        ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, %.thread98, %_ZNK5boost6system10error_code5valueEv.exit17.i.i, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.thread93, %.thread, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_codecvbEv.exit47
  %.sroa.17.3 = phi i8 [ 1, %.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39 ], [ 0, %_ZNK5boost6system10error_codecvbEv.exit47 ], [ 0, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit ], [ 1, %.thread93 ], [ 0, %_ZNK5boost6system10error_code5valueEv.exit17.i.i ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ 0, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread ], [ 0, %.thread98 ], [ 0, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread ], [ 0, %_ZNK5boost6system10error_code8categoryEv.exit20.i.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !3122, !range !374, !noundef !299
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %.noexc52, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit38
  store i32 63, ptr %0, align 8, !tbaa !218
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.en = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ep = getelementptr inbounds nuw i8, ptr %18, i64 472
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 480 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %18, i64 216 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 408
  %i.eu = getelementptr inbounds nuw i8, ptr %18, i64 160
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  call void @_ZN5boost5beast17stable_async_baseINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS4_EEEENS_4asio15any_io_executorESaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(248) %i.es) #35, !inline_history !327
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.eu) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.el) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  %i.ev = load i32, ptr %0, align 8, !tbaa !218
  %.not24 = icmp eq i32 %i.ev, 0
  br i1 %.not24, label %bb.ae, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.ew = load ptr, ptr %i.ei, align 8, !tbaa !3128, !nonnull !299, !align !471
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  invoke void @_ZNK5boost4asio15any_io_executor7requireINS0_9execution6detail8blocking7never_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits14require_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEES7_NS3_11prefer_onlyINS5_10possibly_tILi0EEEEENSH_INS4_16outstanding_work9tracked_tILi0EEEEENSH_INSL_11untracked_tILi0EEEEENSH_INS4_12relationship6fork_tILi0EEEEENSH_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 %17, ptr noundef nonnull align 8 dereferenceable(56) %i.ex, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail10blocking_tILi0EE5neverE, i32 noundef 0)
          to label %_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISS_EEEEEEJFvSU_mEEEEJS11_EEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKS14_RKS15_NS0_10constraintIXoosr11is_executorIS15_EE5valuesr9execution11is_executorIS15_EE5valueEiE4typeE.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #36
  unreachable

_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISS_EEEEEEJFvSU_mEEEEJS11_EEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKS14_RKS15_NS0_10constraintIXoosr11is_executorIS15_EE5valuesr9execution11is_executorIS15_EE5valueEiE4typeE.exit: ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !3130)
  %i.fa = load i64, ptr %1, align 8, !tbaa !1101, !noalias !3130
  store i64 %i.fa, ptr %18, align 8, !tbaa !1101, !alias.scope !3130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ej, ptr noundef nonnull align 8 dereferenceable(48) %i.ek, i64 48, i1 false)
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.el, ptr noundef nonnull align 8 dereferenceable(56) %i.em) #35
  invoke void @_ZN5boost4asio6detail11composed_opINS_5beast4http6detail7read_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0ENS5_14parser_is_doneEEENS1_13composed_workIFvSA_EEENS3_9websocket6streamISB_Lb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISP_EEEEEEJEEC2EOSY_(ptr noundef nonnull align 8 dereferenceable(356) %i.en, ptr noundef nonnull align 8 dereferenceable(356) %i.eo)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISS_EEEEEEJFvSU_mEEEEJS11_EEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKS14_RKS15_NS0_10constraintIXoosr11is_executorIS15_EE5valuesr9execution11is_executorIS15_EE5valueEiE4typeE.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.el) #35
  br label %.body48

bb.ah:                                            ; preds = %_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISS_EEEEEEJFvSU_mEEEEJS11_EEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKS14_RKS15_NS0_10constraintIXoosr11is_executorIS15_EE5valuesr9execution11is_executorIS15_EE5valueEiE4typeE.exit
  %i.fc = load i32, ptr %i.eq, align 8, !tbaa !1121, !noalias !3130
  store i32 %i.fc, ptr %i.ep, align 8, !tbaa !1121, !alias.scope !3130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !268
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %17) #35, !inline_history !3114
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %8) #35, !inline_history !3115
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.er, i64 24, i1 false), !tbaa.struct !268
  invoke void @_ZNO5boost4asio12async_resultINS0_8append_tINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_13static_bufferILm1536EEELb0EEENS3_13composed_workIFvSC_EEENS4_INS7_7read_opISD_SF_Lb0ENS7_14parser_is_doneEEESJ_NS5_9websocket6streamISD_Lb1EE12handshake_opINS5_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIST_EEEEEEJFvSV_mEEEEJS12_EEEJSV_EEEJFvvEEE12init_wrapperINS3_31initiate_dispatch_with_executorISC_EEEclIS14_JNS3_19empty_work_functionEEEEvOT_St5tupleIJSV_EEDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(504) %18, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ai unwind label %.body.i, !inline_history !3116

.body.i:                                          ; preds = %bb.ah
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #35, !inline_history !3115
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #35, !inline_history !3114
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @_ZN5boost4asio8append_tINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISS_EEEEEEJFvSU_mEEEEJS11_EEEJSU_EED2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %18) #35
  br label %.body48

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #35, !inline_history !3115
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #35, !inline_history !3114
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISD_EEEEEE, i64 16), ptr %i.es, align 8, !tbaa !174
  %i.fe = load ptr, ptr %i.et, align 8, !tbaa !326 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fg = atomicrmw add ptr %i.ff, i32 -1 acq_rel, align 4
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.ak, label %bb.ad

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !174
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #35, !inline_history !3117
  br label %bb.ad

.body48:                                          ; preds = %bb.ag, %.body.i
  %.pn22 = phi { ptr, i32 } [ %i.fd, %.body.i ], [ %i.fb, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit54

.noexc52:                                         ; preds = %bb.a, %_ZNK5boost6system10error_codecvbEv.exit38
  %.sroa.17.4 = phi i8 [ %.sroa.17.3, %_ZNK5boost6system10error_codecvbEv.exit38 ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !3121
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !1100 ; 2 uses
  %.not.i = icmp eq i32 %i.fp, -1
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc52
  %i.fq = add nuw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 8, !tbaa !1100
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.noexc52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.fn, align 8, !tbaa !1101
  store ptr %.sroa.0.0.copyload.i.i, ptr %4, align 8
  invoke void @_ZN5boost4asio17cancellation_slot5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc55 unwind label %bb.ao, !inline_history !3118

.noexc55:                                         ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_ZN5boost5beast4http6detail7read_opINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_13static_bufferILm1536EEELb0ENS2_14parser_is_doneEEclINS4_6detail11composed_opISD_NSF_13composed_workIFvS8_EEENS0_9websocket6streamIS9_Lb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISQ_EEEEEEJFvSS_mEEEEEEvRT_SS_m(ptr noundef nonnull align 8 dereferenceable(40) %i.fr, ptr noundef nonnull align 8 dereferenceable(356) %i.fn, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %5, i64 noundef %i.fm)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc55
  %i.fs = trunc nuw i8 %.sroa.17.4 to i1
  br i1 %i.fs, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split

_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split: ; preds = %bb.an, %bb.a
  store i32 -1, ptr %0, align 8, !tbaa !218
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

_ZN5boost4asio6detail13coroutine_refD2Ev.exit:    ; preds = %bb.o, %bb.ad, %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split, %bb.an
  ret void

bb.ao:                                            ; preds = %bb.am, %.noexc55
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = trunc nuw i8 %.sroa.17.4 to i1
  br i1 %i.fu, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit54, label %bb.ap

bb.ap:                                            ; preds = %.thread119, %.thread115, %bb.ao
  %.pn25118 = phi { ptr, i32 } [ %i.ba, %.thread115 ], [ %i.ft, %bb.ao ], [ %i.dy, %.thread119 ]
  store i32 -1, ptr %0, align 8, !tbaa !218
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit54

_ZN5boost4asio6detail13coroutine_refD2Ev.exit54:  ; preds = %.body, %.body48, %bb.ao, %bb.ap
  %.pn25114 = phi { ptr, i32 } [ %.pn25118, %bb.ap ], [ %i.ft, %bb.ao ], [ %eh.lpad-body, %.body ], [ %.pn22, %.body48 ]
  resume { ptr, i32 } %.pn25114
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !526
  %.not.i.i = icmp eq i64 %i.c, 0                 ; 2 uses
  %.0.v.i.i = select i1 %.not.i.i, i64 16, i64 32
  %.0.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0.v.i.i
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.d = add nuw nsw i64 9, 1
  %xtraiter = and i64 %i.d, 7                     ; 2 uses
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.i.i.i.epil

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !527
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !526
  %i.h = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.e, i64 %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil = phi ptr [ %i.l, %.lr.ph.i.i.i.epil ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.epil = phi i64 [ %i.k, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !526
  %i.k = add i64 %i.j, %.068.i.i.i.epil           ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !3131

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit: ; preds = %.lr.ph.i.i.i.epil
  %i.m = icmp ult i64 %i.k, 8193
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %bb.c
  %.01017.i.i.i = phi ptr [ %i.t, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %1, %bb.c ] ; 3 uses
  %.sroa.011.016.i.i.i = phi ptr [ %i.r, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.6.015.i.i.i = phi i64 [ %i.s, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ 8192, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01017.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !526  ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.sroa.6.015.i.i.i, i64 %i.o) ; 3 uses
  %.not.i.i4.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i4.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i29
  %i.q = load ptr, ptr %.01017.i.i.i, align 8, !tbaa !527
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.011.016.i.i.i, ptr align 1 %i.q, i64 %i.p, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i29
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i.i, i64 %i.p
  %i.s = sub nuw nsw i64 %.sroa.6.015.i.i.i, %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01017.i.i.i, i64 16 ; 2 uses
  %i.u = icmp ne i64 %i.s, 0
  %i.v = icmp ne ptr %i.t, %.0.i.i
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i.i29, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, !llvm.loop !17

_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i
  %i.x = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.h

bb.e:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !3134
  %i.aa = icmp ugt i64 %i.k, %i.z
  br i1 %i.aa, label %bb.f, label %.lr.ph.preheader.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #39, !noalias !3135
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !201 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !201
  %.not.i.i.i.i30 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i30, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #38
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.f
  store i64 %i.k, ptr %i.y, align 8, !tbaa !3134
  %.pre = load i64, ptr %i.b, align 8, !tbaa !526
  %i.ae = icmp eq i64 %.pre, 0
  %i.af = select i1 %i.ae, i64 16, i64 32
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %.not.i.i.i31 = phi i64 [ 32, %bb.e ], [ %i.af, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !201
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.not.i.i.i31
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.preheader.i.i
  %.01017.i.i = phi ptr [ %i.ao, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.011.016.i.i = phi ptr [ %i.am, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.ah, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi i64 [ %i.an, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.k, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !526 ; 2 uses
  %i.ak = tail call i64 @llvm.umin.i64(i64 %.sroa.6.015.i.i, i64 %i.aj) ; 3 uses
  %.not.i.i4.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i4.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.al = load ptr, ptr %.01017.i.i, align 8, !tbaa !527
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.011.016.i.i, ptr align 1 %i.al, i64 %i.ak, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i, i64 %i.ak
  %i.an = sub nuw i64 %.sroa.6.015.i.i, %i.ak     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 16 ; 2 uses
  %i.ap = icmp ne i64 %i.an, 0
  %i.aq = icmp ne ptr %i.ao, %.0.i.i.i
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit, !llvm.loop !17

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !201
  %i.at = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.as, i64 %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit, %bb.b
  %.1 = phi i64 [ %i.at, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit ], [ %i.h, %bb.b ], [ %i.x, %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit ]
  ret i64 %.1
}

declare void @_ZN5boost5beast4http12basic_parserILb0EE7put_eofERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio8append_tINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISS_EEEEEEJFvSU_mEEEEJS11_EEEJSU_EED2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE12handshake_opINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISD_EEEEEE, i64 16), ptr %i.a, align 8, !tbaa !174
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !326  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SD_Lb0ENS5_14parser_is_doneEEESH_NS3_9websocket6streamISB_Lb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISR_EEEEEEJFvST_mEEEEJEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = atomicrmw add ptr %i.d, i32 -1 acq_rel, align 4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SD_Lb0ENS5_14parser_is_doneEEESH_NS3_9websocket6streamISB_Lb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISR_EEEEEEJFvST_mEEEEJEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !174
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #35, !inline_history !71
  br label %_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SD_Lb0ENS5_14parser_is_doneEEESH_NS3_9websocket6streamISB_Lb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISR_EEEEEEJFvST_mEEEEJEED2Ev.exit

_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SD_Lb0ENS5_14parser_is_doneEEESH_NS3_9websocket6streamISB_Lb1EE12handshake_opINS3_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISR_EEEEEEJFvST_mEEEEJEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN5boost5beast17stable_async_baseINS0_6detail18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrIS4_EEEENS_4asio15any_io_executorESaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(248) %i.a) #35, !inline_history !327
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.j) #35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.k) #35
  ret void
}

declare noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80), ptr, i64, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail28reactive_socket_service_base13async_receiveINS_5beast6detail12buffers_pairILb1EEENS1_11composed_opINS4_4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSF_EEENS8_INSA_7read_opISG_SI_Lb0ENSA_14parser_is_doneEEESM_NS4_9websocket6streamISG_Lb1EE12handshake_opINS5_18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISV_EEEEEEJFvSX_mEEEEJS14_EEESF_EEvRNS2_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(476) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::asio::cancellation_slot::auto_delete_helper", align 8 ; 5 uses
  %7 = alloca %"class.boost::asio::cancellation_slot", align 8 ; 6 uses
  %8 = alloca %"struct.boost::asio::detail::reactive_socket_recv_op<boost::beast::detail::buffers_pair<true>, boost::asio::detail::composed_op<boost::beast::http::detail::read_some_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::static_buffer<1536>, false>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::beast::http::detail::read_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::static_buffer<1536>, false, boost::beast::http::detail::parser_is_done>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::beast::websocket::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::handshake_op<boost::beast::detail::bind_front_wrapper<void (connection::*)(boost::system::error_code), std::shared_ptr<connection>>>, void (boost::system::error_code, unsigned long)>, void (boost::system::error_code, unsigned long)>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 472 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1121
  %i.c = icmp ugt i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 464
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ugt i32 %i.e, 1
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.h = load ptr, ptr %4, align 8, !tbaa !702    ; 2 uses
  store ptr %i.h, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store ptr %4, ptr %8, align 8, !tbaa !1127
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.j = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
  %i.k = tail call noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_11default_tagEEEPvT_PS2_mm(ptr noundef %i.j, i64 noundef 712, i64 noundef 8) ; 19 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !1128
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr null, ptr %i.l, align 8, !tbaa !1129
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %1, align 8, !tbaa !244
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !650
  store ptr null, ptr %i.k, align 8, !tbaa !303
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_ZN5boost4asio6detail23reactive_socket_recv_opINS_5beast6detail12buffers_pairILb1EEENS1_11composed_opINS3_4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSE_EEENS7_INS9_7read_opISF_SH_Lb0ENS9_14parser_is_doneEEESL_NS3_9websocket6streamISF_Lb1EE12handshake_opINS4_18bind_front_wrapperIM10connectionFvNS_6system10error_codeEEJSt10shared_ptrISU_EEEEEEJFvSW_mEEEEJS13_EEESE_E11do_completeEPvPNS1_19scheduler_operationERKSW_m, ptr %i.q, align 8, !tbaa !304
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !305
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
end_hunk_0
