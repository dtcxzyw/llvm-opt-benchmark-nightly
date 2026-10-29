Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/close?download=true
inline.NumInlined: 66991
inline.NumDeleted: 20813
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 186
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeE:bb.a
  store ptr %i.af, ptr %14, align 8, !tbaa !1491
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1268
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  store ptr @.str.91, ptr %15, align 8, !tbaa !1734
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 7, ptr %i.aj, align 8, !tbaa !1733
  %i.ak = call noundef zeroext i1 @_ZN5boost5beast4http10token_list6existsERKNS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br i1 %i.ak, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  invoke void @_ZN5boost5beast9websocket15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %7, i32 noundef 11)
          to label %_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_.exit51 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #37
  unreachable

_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_.exit51: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.5.0.copyload.i47 = load i64, ptr %.sroa.5.0..sroa_idx.i46, align 8, !tbaa !1268 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %switch.i.i.i48 = icmp ult i64 %.sroa.5.0.copyload.i47, 2
  %i.an = and i64 %.sroa.5.0.copyload.i47, 1
  %i.ao = or disjoint i64 %i.an, ptrtoint (ptr @_ZZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_E7loc_bb_ to i64)
  %.sroa.5.0.i.i49 = select i1 %switch.i.i.i48, i64 %.sroa.5.0.copyload.i47, i64 %i.ao
  %.sroa.5.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i.i49, ptr %.sroa.5.0..sroa_idx.i.i50, align 8, !tbaa !1268
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  %i.ap = call { ptr, i64 } @_ZN5boost5beast4http9to_stringENS1_5fieldE(i16 noundef zeroext 109), !noalias !15448 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !15448
  store ptr %i.aq, ptr %6, align 8, !noalias !15449
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !noalias !15449
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !15449
  store ptr %1, ptr %5, align 8, !tbaa !1727, !alias.scope !15450, !noalias !15451
  %i.at = call noundef ptr @_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb0EEEE4findINS_4core17basic_string_viewIcEENS0_6detail16key_nodeptr_compINS_5beast4http12basic_fieldsISaIcEE11key_compareENS0_8bhtraitsINSG_7elementES4_LNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEENS_11move_detail8identityISJ_EEEEEEPNS0_11rbtree_nodeIS3_EEPKSS_RKT_T0_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dead_on_return %5), !noalias !15451 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !15449
  %i.au = icmp eq ptr %i.at, %1
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !15448
  %i.aw = icmp eq ptr %i.av, %i.u
  %i.ax = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %i.ax, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZN5boost5beast9websocket15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 12)
          to label %_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_.exit59 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #37
  unreachable

_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_.exit59: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload.i55 = load i64, ptr %.sroa.5.0..sroa_idx.i54, align 8, !tbaa !1268 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %switch.i.i.i56 = icmp ult i64 %.sroa.5.0.copyload.i55, 2
  %i.ba = and i64 %.sroa.5.0.copyload.i55, 1
  %i.bb = or disjoint i64 %i.ba, ptrtoint (ptr @_ZZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_E7loc_bb_ to i64)
  %.sroa.5.0.i.i57 = select i1 %switch.i.i.i56, i64 %.sroa.5.0.copyload.i55, i64 %i.bb
  %.sroa.5.0..sroa_idx.i.i58 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i.i57, ptr %.sroa.5.0..sroa_idx.i.i58, align 8, !tbaa !1268
  br label %.critedge

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.be = load i16, ptr %i.bc, align 2, !tbaa !1730
  %i.bf = zext i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 34
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !1731
  %i.bj = zext i16 %i.bi to i64
  store ptr %i.bg, ptr %16, align 8, !tbaa !1491
  %.sroa.2.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.bj, ptr %.sroa.2.0..sroa_idx.i62, align 8, !tbaa !1268
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  store ptr @.str.5, ptr %17, align 8, !tbaa !1734
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 9, ptr %i.bk, align 8, !tbaa !1733
  %i.bl = call noundef zeroext i1 @_ZN5boost5beast4http10token_list6existsERKNS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br i1 %i.bl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 13)
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  call void @_ZNK5boost5beast4http12basic_fieldsISaIcEE4findENS1_5fieldE(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive::list_iterator.160") align 8 %18, ptr noundef nonnull align 8 dereferenceable(80) %1, i16 noundef zeroext 88)
  %i.bm = load ptr, ptr %18, align 8, !tbaa !1813
  %i.bn = icmp eq ptr %i.bm, %i.u
  br i1 %i.bn, label %.critedge28, label %bb.s

.critedge28:                                      ; preds = %bb.r
  call void @_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %19, i8 0, i64 30, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.bp = load i8, ptr %2, align 1, !tbaa !1779
  %i.bq = zext i8 %i.bp to i64
  call void @_ZN5boost5beast9websocket6detail18make_sec_ws_acceptERNS_14static_strings19basic_static_stringILm28EcSt11char_traitsIcEEENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 1 dereferenceable(30) %19, ptr nonnull %i.bo, i64 %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 1
  %i.bs = load i8, ptr %19, align 1, !tbaa !1815
  %i.bt = zext i8 %i.bs to i64
  store ptr %i.br, ptr %20, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %18, align 8, !tbaa !1813 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.by = load i16, ptr %i.bw, align 2, !tbaa !1730
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 50
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !1731
  %i.cd = zext i16 %i.cc to i64
  %i.ce = call noundef i32 @_ZNK5boost4core17basic_string_viewIcE7compareES2_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr nonnull %i.ca, i64 %i.cd) #36
  %.not24 = icmp eq i32 %i.ce, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br i1 %.not24, label %.critedge30, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %.critedge

.critedge30:                                      ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZN5boost5beast9websocket6detail9impl_baseILb1EE15on_response_pmdERKNS0_4http7messageILb0ENS5_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS5_12basic_fieldsISA_EEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(120) %1)
  call void @_ZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type4openENS0_9role_typeE(ptr noundef nonnull align 8 dereferenceable(2544) %0, i32 noundef 0)
  br label %.critedge

.critedge:                                        ; preds = %_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_.exit59, %bb.q, %_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_.exit44, %_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_.exit51, %bb.t, %.critedge28, %.critedge30, %_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_.exit37, %_ZZN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE9impl_type11on_responseERKNS0_4http7messageILb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISG_EEEERKNS_14static_strings19basic_static_stringILm24EcSF_EERNS_6system10error_codeEENKUlNS1_5errorEE_clESV_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio8append_tINS_5beast4test7handlerEJNS_6system10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !1307
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1393
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1394
  %i.g = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @.str.20, ptr noundef %i.d, i32 noundef %i.f)
          to label %_ZN5boost5beast4test7handlerD2Ev.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #37
  unreachable

_ZN5boost5beast4test7handlerD2Ev.exit:            ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNO5boost4asio12async_resultINS0_8append_tINS_5beast4test7handlerEJNS_6system10error_codeEEEEJFvvEEE12init_wrapperINS0_6detail31initiate_dispatch_with_executorINS0_15any_io_executorEEEEclIS5_JNSC_19empty_work_functionEEEEvOT_St5tupleIJS7_EEDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::asio::detail::binder0.1782", align 8 ; 12 uses
  %5 = alloca %"class.boost::asio::detail::append_handler.1781", align 8 ; 12 uses
  %.sroa.0 = alloca %"class.boost::system::error_code", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1406
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15458)
  %i.a = load i8, ptr %1, align 8, !tbaa !3623, !range !1300, !noalias !15458, !noundef !1301
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !1406
  br label %_ZN5boost4asio6detail14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEC2IS5_EEOT_St5tupleIJS7_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !1271, !alias.scope !15458
  br label %_ZN5boost4asio6detail14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEC2IS5_EEOT_St5tupleIJS7_EE.exit

_ZN5boost4asio6detail14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEC2IS5_EEOT_St5tupleIJS7_EE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ] ; 2 uses
  store i8 %.sink.i.i.i.i, ptr %5, align 8, !tbaa !1388, !alias.scope !15458
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1405, !range !1300, !noundef !1301
  store i8 1, ptr %i.g, align 8, !tbaa !1405
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !3624
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !tbaa.struct !1406
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15459)
  %6 = trunc nuw i8 %.sink.i.i.i.i to i1
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost4asio6detail14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEC2IS5_EEOT_St5tupleIJS7_EE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !1406
  br label %_ZN5boost4asio6detail12bind_handlerINS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEENS1_7binder0INSt5decayIT_E4typeEEEOSC_.exit.i

bb.e:                                             ; preds = %_ZN5boost4asio6detail14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEC2IS5_EEOT_St5tupleIJS7_EE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !1271, !alias.scope !15460
  br label %_ZN5boost4asio6detail12bind_handlerINS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEENS1_7binder0INSt5decayIT_E4typeEEEOSC_.exit.i

_ZN5boost4asio6detail12bind_handlerINS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEENS1_7binder0INSt5decayIT_E4typeEEEOSC_.exit.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i.i.i.i = phi i8 [ 1, %bb.d ], [ 0, %bb.e ]
  store i8 %.sink.i.i.i.i.i.i.i, ptr %4, align 8, !tbaa !1388, !alias.scope !15460
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !1405, !noalias !15459
  store i8 %i.h, ptr %i.o, align 8, !tbaa !1392, !alias.scope !15459
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  invoke void @_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder0INS5_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %bb.f unwind label %.body

bb.f:                                             ; preds = %_ZN5boost4asio6detail12bind_handlerINS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEENS1_7binder0INSt5decayIT_E4typeEEEOSC_.exit.i
  %i.r = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !1307
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !1393
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1394
  %i.v = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) @.str.20, ptr noundef %i.s, i32 noundef %i.u)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #37
  unreachable

.body:                                            ; preds = %_ZN5boost4asio6detail12bind_handlerINS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEENS1_7binder0INSt5decayIT_E4typeEEEOSC_.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @_ZN5boost4asio6detail14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.z = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !1307
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !1393
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1394
  %i.ad = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.z, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) @.str.20, ptr noundef %i.aa, i32 noundef %i.ac)
          to label %_ZN5boost4asio6detail14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #37
  unreachable

_ZN5boost4asio6detail14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !1307
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1393
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1394
  %i.g = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @.str.20, ptr noundef %i.d, i32 noundef %i.f)
          to label %_ZN5boost5beast4test7handlerD2Ev.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #37
  unreachable

_ZN5boost5beast4test7handlerD2Ev.exit:            ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder0INS5_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::append_handler<boost::beast::test::handler, boost::system::error_code>>, std::allocator<void>>::ptr", align 8 ; 6 uses
  %3 = alloca %"class.boost::asio::detail::executor_function", align 8 ; 7 uses
  %4 = alloca %"class.boost::asio::detail::binder0.1782", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator.19", align 1 ; 4 uses
  %6 = alloca %"class.boost::asio::execution::bad_executor", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1464
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1499 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2315 ; 2 uses
  %.not6 = icmp eq ptr %i.f, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull @_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder0INS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEEEEvPv, ptr nonnull %1)
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2316
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15465)
  %i.i = load i8, ptr %1, align 8, !tbaa !3623, !range !1300, !noalias !15465, !noundef !1301
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !tbaa.struct !1406
  br label %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEC2EOSA_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.m, align 8, !tbaa !1271, !alias.scope !15465
  br label %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEC2EOSA_.exit

_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEC2EOSA_.exit: ; preds = %bb.e, %bb.f
  %.sink.i.i.i.i.i = phi i8 [ 1, %bb.e ], [ 0, %bb.f ]
  store i8 %.sink.i.i.i.i.i, ptr %4, align 8, !tbaa !1388, !alias.scope !15465
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1405, !range !1300, !noundef !1301
  store i8 1, ptr %i.o, align 8, !tbaa !1405
  store i8 %i.p, ptr %i.n, align 8, !tbaa !1392
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !tbaa.struct !3624
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !1406
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %5, ptr %2, align 8, !tbaa !3668
  %i.u = invoke noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEC2EOSA_.exit
  %i.v = invoke noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_21executor_function_tagEEEPvT_PS2_mm(ptr noundef %i.u, i64 noundef 104, i64 noundef 8)
          to label %.noexc9 unwind label %bb.n    ; 8 uses

.noexc9:                                          ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.w, align 8, !tbaa !3669
  call void @llvm.experimental.noalias.scope.decl(metadata !15466)
  %i.x = load i8, ptr %4, align 8, !tbaa !3623, !range !1300, !noalias !15466, !noundef !1301
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc9
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1406
  br label %bb.i

bb.h:                                             ; preds = %.noexc9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i8 0, ptr %i.ab, align 8, !tbaa !1271, !alias.scope !15466
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.i.i.i.i.i.i.i = phi i8 [ 1, %bb.g ], [ 0, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 %.sink.i.i.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !1388, !alias.scope !15466
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.af = load i8, ptr %i.n, align 8, !tbaa !1405, !range !1300, !noundef !1301
  store i8 1, ptr %i.n, align 8, !tbaa !1405
  store i8 %i.af, ptr %i.ae, align 8, !tbaa !1392
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !3624
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !1406
  store ptr @_ZN5boost4asio6detail17executor_function8completeINS1_7binder0INS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEESaIvEEEvPNS2_9impl_baseEb, ptr %i.v, align 8, !tbaa !1521
  store ptr %i.v, ptr %3, align 8, !tbaa !1519
  store ptr null, ptr %i.ac, align 8, !tbaa !3670
  call void @_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_14append_handlerINS_5beast4test7handlerEJNS_6system10error_codeEEEEEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
end_hunk_0
