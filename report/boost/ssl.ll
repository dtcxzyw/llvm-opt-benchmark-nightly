Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/ssl?download=true
inline.NumInlined: 7023
inline.NumDeleted: 2564
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5boost6cobalt2io3ssl6stream20initiate_write_some_EPvNS1_21const_buffer_sequenceENS0_18completion_handlerIJNS_6system10error_codeEmEEE:bb.a
.noexc.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @_ZN5boost4asio3ssl6detail8async_ioINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEENS2_8write_opINS6_21const_buffer_sequenceEEENS5_18completion_handlerIJNS_6system10error_codeEmEEEEEvRT_RNS2_11stream_coreERKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(400) %i.j, ptr noundef nonnull align 8 dereferenceable(304) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(96) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %"_ZN5boost6cobalt2io5visitIZNS1_3ssl6stream20initiate_write_some_EPvNS1_21const_buffer_sequenceENS0_18completion_handlerIJNS_6system10error_codeEmEEEE3$_0EEDaRKS6_OT_.exit"

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN5boost4asio6detail28reactive_socket_service_base10async_sendINS_6cobalt2io21const_buffer_sequenceENS4_18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEEEvRNS2_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(33) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.p)
  br label %"_ZN5boost6cobalt2io5visitIZNS1_3ssl6stream20initiate_write_some_EPvNS1_21const_buffer_sequenceENS0_18completion_handlerIJNS_6system10error_codeEmEEEE3$_0EEDaRKS6_OT_.exit"

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !93
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.s = load i8, ptr %i.r, align 8, !tbaa !30, !range !98, !noundef !99
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !92
  call void @_ZN5boost4asio3ssl6detail8async_ioINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEENS2_8write_opINS0_12const_bufferEEENS5_18completion_handlerIJNS_6system10error_codeEmEEEEEvRT_RNS2_11stream_coreERKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(400) %i.u, ptr noundef nonnull align 8 dereferenceable(304) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(96) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %"_ZZN5boost6cobalt2io3ssl6stream20initiate_write_some_EPvNS1_21const_buffer_sequenceENS0_18completion_handlerIJNS_6system10error_codeEmEEEENK3$_0clINS_4asio12const_bufferEEEDaT_.exit.i"

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN5boost4asio6detail28reactive_socket_service_base10async_sendINS0_12const_bufferENS_6cobalt18completion_handlerIJNS_6system10error_codeEmEEENS0_15any_io_executorEEEvRNS2_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(33) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.z)
  br label %"_ZZN5boost6cobalt2io3ssl6stream20initiate_write_some_EPvNS1_21const_buffer_sequenceENS0_18completion_handlerIJNS_6system10error_codeEmEEEENK3$_0clINS_4asio12const_bufferEEEDaT_.exit.i"

"_ZZN5boost6cobalt2io3ssl6stream20initiate_write_some_EPvNS1_21const_buffer_sequenceENS0_18completion_handlerIJNS_6system10error_codeEmEEEENK3$_0clINS_4asio12const_bufferEEEDaT_.exit.i": ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZN5boost6cobalt2io5visitIZNS1_3ssl6stream20initiate_write_some_EPvNS1_21const_buffer_sequenceENS0_18completion_handlerIJNS_6system10error_codeEmEEEE3$_0EEDaRKS6_OT_.exit"

"_ZN5boost6cobalt2io5visitIZNS1_3ssl6stream20initiate_write_some_EPvNS1_21const_buffer_sequenceENS0_18completion_handlerIJNS_6system10error_codeEmEEEE3$_0EEDaRKS6_OT_.exit": ; preds = %.noexc.i, %bb.c, %"_ZZN5boost6cobalt2io3ssl6stream20initiate_write_some_EPvNS1_21const_buffer_sequenceENS0_18completion_handlerIJNS_6system10error_codeEmEEEENK3$_0clINS_4asio12const_bufferEEEDaT_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost6cobalt2io3ssl6stream13handshake_op_5readyENS0_7handlerIJNS_6system10error_codeEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree writeonly captures(none) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !103, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !108, !noalias !113
  %i.e = and i64 %i.d, -2
  %switch.i.i.i.i = icmp eq i64 %i.e, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.b
  %i.f = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !9, !noalias !113
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !113
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 114) #36, !noalias !113, !inline_history !116
  br i1 %i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.c

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.b, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.j = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 2, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 114, ptr %1, align 8
  %.sroa.43.0..sroa.01.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.43.0..sroa.01.0..sroa_idx, align 8
  %.sroa.5.0..sroa.01.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.j, ptr %.sroa.5.0..sroa.01.0..sroa_idx, align 8
  store i8 1, ptr %i.k, align 8, !tbaa !117
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6cobalt2io3ssl6stream13handshake_op_8initiateENS0_18completion_handlerIJNS_6system10error_codeEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"class.boost::asio::ssl::detail::handshake_op", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119, !nonnull !99, !align !120 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store i32 %i.d, ptr %2, align 4, !tbaa !122
  call void @_ZN5boost4asio3ssl6detail8async_ioINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEENS2_12handshake_opENS5_18completion_handlerIJNS_6system10error_codeEEEEEEvRT_RNS2_11stream_coreERKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(400) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(96) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost6cobalt2io3ssl6stream20handshake_buffer_op_5readyENS0_7handlerIJNS_6system10error_codeEmEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree writeonly captures(none) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !124, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !108, !noalias !129
  %i.e = and i64 %i.d, -2
  %switch.i.i.i.i = icmp eq i64 %i.e, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.b
  %i.f = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !9, !noalias !129
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !129
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 114) #36, !noalias !129, !inline_history !116
  br i1 %i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.c

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.b, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.j = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 2, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %1, align 8, !tbaa !132
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 114, ptr %i.l, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 1, ptr %i.k, align 8, !tbaa !134
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6cobalt2io3ssl6stream20handshake_buffer_op_8initiateENS0_18completion_handlerIJNS_6system10error_codeEmEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::asio::ssl::detail::buffered_handshake_op", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136, !nonnull !99, !align !120 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !137
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store i32 %i.d, ptr %2, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 16, i1 false), !tbaa.struct !92
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !100
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !94, !noalias !140 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !101, !noalias !140 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !94, !noalias !140 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost4asio3ssl6streamINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEEE15async_handshakeINS5_21const_buffer_sequenceETkNS0_20completion_token_forIFvNS_6system10error_codeEmEEENS4_18completion_handlerIJSE_mEEEEEDTcl14async_initiateIT0_SF_EclL_ZSt7declvalINS9_33initiate_async_buffered_handshakeEEDTcl9__declvalIT_ELi0EEEvEEfp1_fp_fp0_EENS1_11stream_base14handshake_typeERKSL_OSI_NS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit, label %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader

_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader: ; preds = %bb.a
  %i.i = add i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.j = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.epil.preheader, label %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader.new

_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader.new: ; preds = %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.i, -2
  br label %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i

_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i: ; preds = %.cont.us.i.i.i.i.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader.new
  %.0.us28.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader.new ], [ %i.o, %.cont.us.i.i.i.i.i.i.i ]
  %.sroa.11.0.us27.i.i.i.i.i.i.i = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader.new ], [ %i.p, %.cont.us.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.cont.us.i.i.i.i.i.i.i ]
  %i.k = icmp eq i64 %.sroa.11.0.us27.i.i.i.i.i.i.i, -1
  br i1 %i.k, label %.cont.us.i.i.i.i.i.i.i, label %.else.us.i.i.i.i.i.i.i

.else.us.i.i.i.i.i.i.i:                           ; preds = %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.11.0.us27.i.i.i.i.i.i.i
  %.sroa.gep2.us.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.3.0.copyload.else.val.us.i.i.i.i.i.i.i = load i64, ptr %.sroa.gep2.us.i.i.i.i.i.i.i, align 8, !tbaa !94
  br label %.cont.us.i.i.i.i.i.i.i

.cont.us.i.i.i.i.i.i.i:                           ; preds = %.else.us.i.i.i.i.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i
  %.sroa.3.0.copyload.us.i.i.i.i.i.i.i = phi i64 [ %.sroa.22.0.copyload.i.i.i.i.i.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i ], [ %.sroa.3.0.copyload.else.val.us.i.i.i.i.i.i.i, %.else.us.i.i.i.i.i.i.i ]
  %i.m = add i64 %.sroa.3.0.copyload.us.i.i.i.i.i.i.i, %.0.us28.i.i.i.i.i.i.i
  %i.n = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.11.0.us27.i.i.i.i.i.i.i
  %.sroa.gep2.us.i.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.n, i64 24
  %.sroa.3.0.copyload.else.val.us.i.i.i.i.i.i.i.1 = load i64, ptr %.sroa.gep2.us.i.i.i.i.i.i.i.1, align 8, !tbaa !94
  %i.o = add i64 %.sroa.3.0.copyload.else.val.us.i.i.i.i.i.i.i.1, %i.m ; 3 uses
  %i.p = add i64 %.sroa.11.0.us27.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost4asio3ssl6streamINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEEE15async_handshakeINS5_21const_buffer_sequenceETkNS0_20completion_token_forIFvNS_6system10error_codeEmEEENS4_18completion_handlerIJSE_mEEEEEDTcl14async_initiateIT0_SF_EclL_ZSt7declvalINS9_33initiate_async_buffered_handshakeEEDTcl9__declvalIT_ELi0EEEvEEfp1_fp_fp0_EENS1_11stream_base14handshake_typeERKSL_OSI_NS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit.loopexit.unr-lcssa, label %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i, !llvm.loop !145

_ZN5boost4asio3ssl6streamINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEEE15async_handshakeINS5_21const_buffer_sequenceETkNS0_20completion_token_forIFvNS_6system10error_codeEmEEENS4_18completion_handlerIJSE_mEEEEEDTcl14async_initiateIT0_SF_EclL_ZSt7declvalINS9_33initiate_async_buffered_handshakeEEDTcl9__declvalIT_ELi0EEEvEEfp1_fp_fp0_EENS1_11stream_base14handshake_typeERKSL_OSI_NS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit.loopexit.unr-lcssa: ; preds = %.cont.us.i.i.i.i.i.i.i
  %i.q = and i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not.not, label %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.epil.preheader, label %_ZN5boost4asio3ssl6streamINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEEE15async_handshakeINS5_21const_buffer_sequenceETkNS0_20completion_token_forIFvNS_6system10error_codeEmEEENS4_18completion_handlerIJSE_mEEEEEDTcl14async_initiateIT0_SF_EclL_ZSt7declvalINS9_33initiate_async_buffered_handshakeEEDTcl9__declvalIT_ELi0EEEvEEfp1_fp_fp0_EENS1_11stream_base14handshake_typeERKSL_OSI_NS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit

_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5boost4asio3ssl6streamINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEEE15async_handshakeINS5_21const_buffer_sequenceETkNS0_20completion_token_forIFvNS_6system10error_codeEmEEENS4_18completion_handlerIJSE_mEEEEEDTcl14async_initiateIT0_SF_EclL_ZSt7declvalINS9_33initiate_async_buffered_handshakeEEDTcl9__declvalIT_ELi0EEEvEEfp1_fp_fp0_EENS1_11stream_base14handshake_typeERKSL_OSI_NS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit.loopexit.unr-lcssa, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader
  %.0.us28.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader ], [ %i.o, %_ZN5boost4asio3ssl6streamINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEEE15async_handshakeINS5_21const_buffer_sequenceETkNS0_20completion_token_forIFvNS_6system10error_codeEmEEENS4_18completion_handlerIJSE_mEEEEEDTcl14async_initiateIT0_SF_EclL_ZSt7declvalINS9_33initiate_async_buffered_handshakeEEDTcl9__declvalIT_ELi0EEEvEEfp1_fp_fp0_EENS1_11stream_base14handshake_typeERKSL_OSI_NS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit.loopexit.unr-lcssa ]
  %.sroa.11.0.us27.i.i.i.i.i.i.i.epil.init = phi i64 [ -1, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.preheader ], [ %i.p, %_ZN5boost4asio3ssl6streamINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEEE15async_handshakeINS5_21const_buffer_sequenceETkNS0_20completion_token_forIFvNS_6system10error_codeEmEEENS4_18completion_handlerIJSE_mEEEEEDTcl14async_initiateIT0_SF_EclL_ZSt7declvalINS9_33initiate_async_buffered_handshakeEEDTcl9__declvalIT_ELi0EEEvEEfp1_fp_fp0_EENS1_11stream_base14handshake_typeERKSL_OSI_NS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod2 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.r = icmp eq i64 %.sroa.11.0.us27.i.i.i.i.i.i.i.epil.init, -1
  br i1 %i.r, label %.cont.us.i.i.i.i.i.i.i.epil, label %.else.us.i.i.i.i.i.i.i.epil

.else.us.i.i.i.i.i.i.i.epil:                      ; preds = %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.epil.preheader
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.11.0.us27.i.i.i.i.i.i.i.epil.init
  %.sroa.gep2.us.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.3.0.copyload.else.val.us.i.i.i.i.i.i.i.epil = load i64, ptr %.sroa.gep2.us.i.i.i.i.i.i.i.epil, align 8, !tbaa !94
  br label %.cont.us.i.i.i.i.i.i.i.epil

.cont.us.i.i.i.i.i.i.i.epil:                      ; preds = %.else.us.i.i.i.i.i.i.i.epil, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.epil.preheader
  %.sroa.3.0.copyload.us.i.i.i.i.i.i.i.epil = phi i64 [ %.sroa.22.0.copyload.i.i.i.i.i.i.i.i, %_ZN5boost6cobalt2ioneERKNS1_21const_buffer_sequence14const_iteratorES5_.exit.thread.us.i.i.i.i.i.i.i.epil.preheader ], [ %.sroa.3.0.copyload.else.val.us.i.i.i.i.i.i.i.epil, %.else.us.i.i.i.i.i.i.i.epil ]
  %i.t = add i64 %.sroa.3.0.copyload.us.i.i.i.i.i.i.i.epil, %.0.us28.i.i.i.i.i.i.i.epil.init
  br label %_ZN5boost4asio3ssl6streamINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEEE15async_handshakeINS5_21const_buffer_sequenceETkNS0_20completion_token_forIFvNS_6system10error_codeEmEEENS4_18completion_handlerIJSE_mEEEEEDTcl14async_initiateIT0_SF_EclL_ZSt7declvalINS9_33initiate_async_buffered_handshakeEEDTcl9__declvalIT_ELi0EEEvEEfp1_fp_fp0_EENS1_11stream_base14handshake_typeERKSL_OSI_NS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit

_ZN5boost4asio3ssl6streamINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEEE15async_handshakeINS5_21const_buffer_sequenceETkNS0_20completion_token_forIFvNS_6system10error_codeEmEEENS4_18completion_handlerIJSE_mEEEEEDTcl14async_initiateIT0_SF_EclL_ZSt7declvalINS9_33initiate_async_buffered_handshakeEEDTcl9__declvalIT_ELi0EEEvEEfp1_fp_fp0_EENS1_11stream_base14handshake_typeERKSL_OSI_NS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit: ; preds = %.cont.us.i.i.i.i.i.i.i.epil, %_ZN5boost4asio3ssl6streamINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEEE15async_handshakeINS5_21const_buffer_sequenceETkNS0_20completion_token_forIFvNS_6system10error_codeEmEEENS4_18completion_handlerIJSE_mEEEEEDTcl14async_initiateIT0_SF_EclL_ZSt7declvalINS9_33initiate_async_buffered_handshakeEEDTcl9__declvalIT_ELi0EEEvEEfp1_fp_fp0_EENS1_11stream_base14handshake_typeERKSL_OSI_NS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit.loopexit.unr-lcssa, %bb.a
  %.0.lcssa.us.i.i.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.o, %_ZN5boost4asio3ssl6streamINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEEE15async_handshakeINS5_21const_buffer_sequenceETkNS0_20completion_token_forIFvNS_6system10error_codeEmEEENS4_18completion_handlerIJSE_mEEEEEDTcl14async_initiateIT0_SF_EclL_ZSt7declvalINS9_33initiate_async_buffered_handshakeEEDTcl9__declvalIT_ELi0EEEvEEfp1_fp_fp0_EENS1_11stream_base14handshake_typeERKSL_OSI_NS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit.loopexit.unr-lcssa ], [ %i.t, %.cont.us.i.i.i.i.i.i.i.epil ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %.0.lcssa.us.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !147
  call void @_ZN5boost4asio3ssl6detail8async_ioINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEENS2_21buffered_handshake_opINS6_21const_buffer_sequenceEEENS5_18completion_handlerIJNS_6system10error_codeEmEEEEEvRT_RNS2_11stream_coreERKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(400) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(96) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost6cobalt2io3ssl6stream12shutdown_op_5readyENS0_7handlerIJNS_6system10error_codeEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree writeonly captures(none) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !148, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !108, !noalias !150
  %i.e = and i64 %i.d, -2
  %switch.i.i.i.i = icmp eq i64 %i.e, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.b
  %i.f = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !9, !noalias !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !150
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 92) #36, !noalias !150, !inline_history !116
  br i1 %i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.c

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.b, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.j = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 2, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 92, ptr %1, align 8
  %.sroa.43.0..sroa.01.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.43.0..sroa.01.0..sroa_idx, align 8
  %.sroa.5.0..sroa.01.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.j, ptr %.sroa.5.0..sroa.01.0..sroa_idx, align 8
  store i8 1, ptr %i.k, align 8, !tbaa !117
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6cobalt2io3ssl6stream12shutdown_op_8initiateENS0_18completion_handlerIJNS_6system10error_codeEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"class.boost::asio::ssl::detail::shutdown_op", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153, !nonnull !99, !align !120 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN5boost4asio3ssl6detail8async_ioINS0_19basic_stream_socketINS_6cobalt2io13protocol_typeENS0_15any_io_executorEEENS2_11shutdown_opENS5_18completion_handlerIJNS_6system10error_codeEEEEEEvRT_RNS2_11stream_coreERKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(400) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(96) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6cobalt2io3ssl6stream16set_verify_depthEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::system::result") align 8 captures(none) initializes((24, 25)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154, !noalias !155
  tail call void @SSL_set_verify_depth(ptr noundef %i.b, i32 noundef %2), !noalias !155
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.c, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6cobalt2io3ssl6stream15set_verify_modeENS2_6verifyE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::system::result") align 8 captures(none) initializes((24, 25)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154, !noalias !162 ; 2 uses
  %i.c = tail call ptr @SSL_get_verify_callback(ptr noundef %i.b), !noalias !162
  tail call void @SSL_set_verify(ptr noundef %i.b, i32 noundef %2, ptr noundef %i.c), !noalias !162
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.d, align 8, !tbaa !160
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, ptr } @_ZNK5boost6system14error_category23default_error_conditionEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i32, ptr } %i.c(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) #36 ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.d, 0
  %i.f = extractvalue { i32, ptr } %i.d, 1        ; 4 uses
  %i.g = load i32, ptr %2, align 8, !tbaa !167
  %.not.i = icmp eq i32 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.f, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !169  ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null              ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !108
  %i.m = icmp eq i64 %i.l, -5572340897628102704
  br label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

bb.e:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %_ZNK5boost6system15error_condition6cat_idEv.exit12.i, label %bb.f

_ZNK5boost6system15error_condition6cat_idEv.exit12.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !108
  %i.p = icmp eq i64 %i.o, -5572340897628102704
  br label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !108  ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = icmp eq ptr %i.f, %i.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, %i.r
  %i.x = select i1 %i.s, i1 %i.t, i1 %i.w
  br label %_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit

_ZN5boost6systemeqERKNS0_15error_conditionES3_.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZNK5boost6system15error_condition6cat_idEv.exit12.i, %bb.f
  %.0.i = phi i1 [ %i.x, %bb.f ], [ false, %bb.a ], [ %i.p, %_ZNK5boost6system15error_condition6cat_idEv.exit12.i ], [ %i.m, %bb.d ], [ true, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !170
  switch i64 %i.b, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, -5572340897628102703
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !108
  %i.j = icmp eq i64 %i.i, -5572340897628102702
  br i1 %i.j, label %_ZNK5boost6system10error_code5valueEv.exit.i, label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

_ZNK5boost6system10error_code5valueEv.exit.i:     ; preds = %bb.c
  %i.k = load i32, ptr %1, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !172
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = urem i64 %i.n, 2097143
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, 1000
  %i.r = add i32 %i.q, %i.k
  %i.s = icmp eq i32 %2, %i.r
  br label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

bb.d:                                             ; preds = %bb.a
  %i.t = load i32, ptr %1, align 8, !tbaa !8
  %i.u = icmp eq i32 %2, %i.t
  br i1 %i.u, label %bb.e, label %_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !108  ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = icmp eq ptr %0, %i.w
end_hunk_0
