Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/close?download=true
inline.NumInlined: 66991
inline.NumDeleted: 20813
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 255
begin_hunk_0_@_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_19buffers_prefix_viewINS0_6detail12buffers_pairILb1EEEEEEEmRKT_RNS_6system10error_codeE:bb.a
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.ca = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.cb = or disjoint i64 %i.ca, ptrtoint (ptr @_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_19buffers_prefix_viewINS0_6detail12buffers_pairILb1EEEEEEEmRKT_RNS_6system10error_codeEE7loc_bb_ to i64)
  store i64 2, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bq, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.cb, ptr %.sroa.5.0..sroa_idx.i18, align 8, !tbaa !1265
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit
  %.0 = phi i64 [ %.0.lcssa.i.i, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit ], [ 0, %bb.p ]
  %i.cc = load i8, ptr %i.r, align 8, !tbaa !1457, !range !1297, !noundef !1298
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.r, label %_ZNSt11unique_lockISt5mutexED2Ev.exit20

bb.r:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %3, align 8, !tbaa !1456  ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i19, label %_ZNSt11unique_lockISt5mutexED2Ev.exit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ce) #36 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit20

_ZNSt11unique_lockISt5mutexED2Ev.exit20:          ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %_ZNSt11unique_lockISt5mutexED2Ev.exit20, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread
  %.1 = phi i64 [ %.0, %_ZNSt11unique_lockISt5mutexED2Ev.exit20 ], [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread ], [ 0, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast9websocket6detail9impl_baseILb1EE15inflate_with_ebERNS0_4zlib8z_paramsERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i32 -65536, ptr %i.a, align 4
  %i.b = load ptr, ptr %0, align 8, !tbaa !1625   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2136 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %1, align 8, !tbaa !2213
  %i.f = sub i64 4, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !2212
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5944
  call void @_ZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(7104) %i.h, ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !2207
  %i.k = load ptr, ptr %0, align 8, !tbaa !1625
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2136
  %i.n = add i64 %i.m, %i.j
  store i64 %i.n, ptr %i.l, align 8, !tbaa !2136
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZN5boost5beast4zlib15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %3, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #37
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %3, align 8 ; 3 uses
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.69.0.copyload = load ptr, ptr %.sroa.69.0..sroa_idx, align 8, !tbaa !1268 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1265 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1278 ; 2 uses
  %i.s = icmp eq i64 %i.r, 1                      ; 3 uses
  %i.t = icmp eq i64 %.sroa.9.0.copyload, 1       ; 3 uses
  %i.u = xor i1 %i.t, %i.s
  br i1 %i.u, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  %or.cond.i = and i1 %i.t, %i.s
  br i1 %or.cond.i, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %2, align 8, !tbaa !1268   ; 2 uses
  br i1 %i.s, label %bb.e, label %_ZNK5boost6system10error_code5valueEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1281
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = urem i64 %i.y, 2097143
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.aa, 1000
  %i.ac = add i32 %i.ab, %i.v
  br label %_ZNK5boost6system10error_code5valueEv.exit.i

_ZNK5boost6system10error_code5valueEv.exit.i:     ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.ac, %bb.e ], [ %i.v, %bb.d ]
  br i1 %i.t, label %bb.f, label %_ZNK5boost6system10error_code5valueEv.exit17.i

bb.f:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit.i
  %i.ad = ptrtoint ptr %.sroa.69.0.copyload to i64
  %i.ae = urem i64 %i.ad, 2097143
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = mul nuw nsw i32 %i.af, 1000
  %i.ah = add i32 %i.ag, %.sroa.0.0.copyload
  br label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %bb.f, %_ZNK5boost6system10error_code5valueEv.exit.i
  %.0.i16.i = phi i32 [ %i.ah, %bb.f ], [ %.sroa.0.0.copyload, %_ZNK5boost6system10error_code5valueEv.exit.i ]
  %i.ai = icmp eq i32 %.0.i.i, %.0.i16.i
  br i1 %i.ai, label %bb.g, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.g:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  switch i64 %i.r, label %bb.i [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1268
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i

_ZNK5boost6system10error_code8categoryEv.exit.i:  ; preds = %bb.i, %bb.h, %bb.g
  %.0.i18.i = phi ptr [ %i.ak, %bb.i ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.h ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.g ] ; 2 uses
  switch i64 %.sroa.9.0.copyload, label %bb.k [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit20.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i

bb.k:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i

_ZNK5boost6system10error_code8categoryEv.exit20.i: ; preds = %bb.k, %bb.j, %_ZNK5boost6system10error_code8categoryEv.exit.i
  %.0.i19.i = phi ptr [ %.sroa.69.0.copyload, %bb.k ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.j ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %_ZNK5boost6system10error_code8categoryEv.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i19.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1276 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = icmp eq ptr %.0.i18.i, %.0.i19.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = icmp eq i64 %i.aq, %i.am
  %i.as = select i1 %i.an, i1 %i.ao, i1 %i.ar
  br i1 %i.as, label %bb.l, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1281
  %i.av = icmp eq ptr %i.au, %.sroa.69.0.copyload
  %i.aw = load i32, ptr %2, align 8
  %i.ax = icmp eq i32 %i.aw, %.sroa.0.0.copyload
  %i.ay = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %i.ay, label %bb.l, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.l:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZNK5boost6system10error_code8categoryEv.exit20.i, %bb.l, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

declare noundef zeroext i1 @_ZN5boost5beast9websocket6detail12utf8_checker5writeEPKhm(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(7104), ptr noundef nonnull align 8 dereferenceable(52), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare void @_ZN5boost5beast4zlib15make_error_codeENS1_5errorE(ptr dead_on_unwind writable sret(%"class.boost::system::error_code") align 8, i32 noundef) local_unnamed_addr #9

declare void @_ZN5boost5beast4zlib6detail14inflate_stream7doClearEv(ptr noundef nonnull align 8 dereferenceable(7104)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE10write_someINS0_6detail12buffers_pairILb1EEEEEmbRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.a = alloca [14 x i8], align 1                ; 12 uses
  %5 = alloca %"class.boost::asio::const_buffer", align 8 ; 5 uses
  %6 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.b = alloca [14 x i8], align 1                ; 12 uses
  %7 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::beast::detail::buffers_pair<true>>>>::const_iterator::increment", align 8 ; 4 uses
  %8 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::beast::detail::buffers_pair<true>>>>::const_iterator", align 8 ; 10 uses
  %i.c = alloca [14 x i8], align 1                ; 9 uses
  %9 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::detail::buffers_pair<true>>::const_iterator", align 8 ; 6 uses
  %i.d = alloca [14 x i8], align 1                ; 9 uses
  %10 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.e = alloca [14 x i8], align 1                ; 12 uses
  %i.f = alloca i64, align 8                      ; 22 uses
  %11 = alloca %"class.boost::beast::buffers_suffix.349", align 8 ; 9 uses
  %12 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 13 uses
  %13 = alloca %"struct.std::array", align 1      ; 4 uses
  %14 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %15 = alloca %"class.boost::beast::buffers_cat_view.353", align 8 ; 10 uses
  %16 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 9 uses
  %17 = alloca %"class.boost::beast::buffers_cat_view.358", align 8 ; 12 uses
  %18 = alloca %"class.boost::beast::buffers_suffix.349", align 8 ; 12 uses
  %19 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %20 = alloca %"class.boost::beast::buffers_cat_view.362", align 8 ; 14 uses
  %21 = alloca %"class.boost::beast::buffers_prefix_view.366", align 8 ; 13 uses
  %22 = alloca %"struct.std::array", align 1      ; 6 uses
  %23 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 9 uses
  %24 = alloca %"class.boost::beast::buffers_suffix.349", align 8 ; 10 uses
  %25 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %26 = alloca %"class.boost::beast::buffers_cat_view.353", align 8 ; 10 uses
  %27 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %28 = alloca %"class.boost::beast::buffers_suffix.349", align 8 ; 9 uses
  %29 = alloca %"struct.std::array", align 1      ; 6 uses
  %30 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 8 uses
  %31 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %32 = alloca %"class.boost::beast::buffers_cat_view.353", align 8 ; 10 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !1466   ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store i64 0, ptr %i.f, align 8, !tbaa !1265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = tail call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.h, label %bb.da, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2237 ; 7 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1722, !range !1297, !noundef !1298
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread632, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1764
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1764 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1764
  %i.r = add i64 %i.q, %i.o
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit: ; preds = %.lr.ph.i.i.i.1, %.lr.ph.i.i.i
  %.lcssa678 = phi i64 [ %i.o, %.lr.ph.i.i.i ], [ %i.r, %.lr.ph.i.i.i.1 ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 2239
  %i.t = load i8, ptr %i.s, align 1, !tbaa !1615, !range !1297, !noundef !1298
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 2238
  store i8 %i.t, ptr %i.u, align 2, !tbaa !2214
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1625
  %.not2.i = icmp eq ptr %i.w, null
  br i1 %.not2.i, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 2241
  %i.y = load i8, ptr %i.x, align 1, !tbaa !1616, !range !1297, !noundef !1298
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp uge i64 %.lcssa678, %i.ab
  %narrow.i = select i1 %i.z, i1 %i.ac, i1 false
  %.ph.i = zext i1 %narrow.i to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 2240
  store i8 %.ph.i, ptr %i.ad, align 8, !tbaa !2215
  br label %bb.d

bb.c:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 2240
  store i8 0, ptr %i.ae, align 8, !tbaa !2215
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 2224
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !2116
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %.thread.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 2248 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1490
  %.not3.i = icmp eq ptr %i.aj, null
  br i1 %.not3.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !1618
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !2117
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1618 ; 2 uses
  %.not.i = icmp eq i64 %i.al, %i.an
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.ao = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.an, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !2117
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #41, !noalias !9258
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !1490 ; 2 uses
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !1490
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1618
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  store i64 %i.at, ptr %i.au, align 8, !tbaa !2117
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 2248 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1490 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !1490
  %.not.i.i.i.i145 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i145, label %bb.h, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i: ; preds = %bb.g, %bb.f
  %.sink.i = phi ptr [ %i.ar, %bb.f ], [ %i.aw, %bb.g ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sink.i) #39
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i, %bb.g, %bb.f, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 2240
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !2215, !range !1297, !noundef !1298
  %i.az = shl nuw nsw i8 %i.ay, 2                 ; 2 uses
  %.pre = load i8, ptr %i.i, align 1, !tbaa !1722, !range !1297
  %i.ba = trunc nuw i8 %.pre to i1
  br i1 %i.ba, label %.thread632, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 2242
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !1617
  br label %.thread632

.thread632:                                       ; preds = %bb.b, %bb.h, %bb.i
  %.sroa.29.0634 = phi i8 [ %i.az, %bb.i ], [ %i.az, %bb.h ], [ 0, %bb.b ] ; 5 uses
  %i.bd = phi i8 [ %i.bc, %bb.i ], [ 0, %bb.h ], [ 0, %bb.b ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 2224 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !2116
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1764
  %.not.i.i.i.i146 = icmp eq i64 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1764 ; 2 uses
  br i1 %.not.i.i.i.i146, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit153, label %.lr.ph.i.i.i149.1

.lr.ph.i.i.i149.1:                                ; preds = %.thread632
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !1764
  %i.bm = add i64 %i.bl, %i.bj
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit153

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit153: ; preds = %.lr.ph.i.i.i149.1, %.thread632
  %.lcssa677 = phi i64 [ %i.bj, %.thread632 ], [ %i.bm, %.lr.ph.i.i.i149.1 ] ; 15 uses
  %.not.not.not = icmp eq i32 %i.bf, 0            ; 2 uses
  %i.bn = select i1 %.not.not.not, i8 2, i8 0     ; 3 uses
  %i.bo = or disjoint i8 %i.bn, %.sroa.29.0634    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 2240
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !2215, !range !1297, !noundef !1298
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit153
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !2103
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %11, ptr %i.bs, align 8, !tbaa !2204
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.bt, align 8, !tbaa !2205
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 2248 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !1490
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !2117
  store ptr %i.by, ptr %12, align 8
  store i64 %i.bz, ptr %i.bw, align 8
  %i.ca = call noundef zeroext i1 @_ZN5boost5beast9websocket6detail9impl_baseILb1EE7deflateINS0_6detail12buffers_pairILb1EEEEEbRNS_4asio14mutable_bufferERNS0_14buffers_suffixIT_EEbRmRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(48) %11, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.cb = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.cb, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 40
  %.2..2..2..2.gep.sroa_idx683 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.4..4..4..4.gep27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.10..10..10..10.gep28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cf = xor i1 %1, true
  %i.cg = zext i1 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.4383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE10write_someINS0_6detail12buffers_pairILb1EEEEEmbRKT_RNS_6system10error_codeE:bb.a
  br i1 %i.fg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fh = trunc nuw nsw i64 %.lcssa677 to i8
  %.1..1..1..1..sroa_idx685 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.fh, ptr %.1..1..1..1..sroa_idx685, align 1, !tbaa !1268
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.fi = icmp ult i64 %.lcssa677, 65536
  br i1 %i.fi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.1..1..1..1..sroa_idx687 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 126, ptr %.1..1..1..1..sroa_idx687, align 1, !tbaa !1268
  %i.fj = trunc nuw i64 %.lcssa677 to i16
  %i.fk = call noundef i16 @llvm.bswap.i16(i16 %i.fj)
  %.2..2..2..2.gep.sroa_idx689 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.fk, ptr %.2..2..2..2.gep.sroa_idx689, align 1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %.1..1..1..1..sroa_idx686 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 127, ptr %.1..1..1..1..sroa_idx686, align 1, !tbaa !1268
  %i.fl = call noundef i64 @llvm.bswap.i64(i64 %.lcssa677)
  %.2..2..2..2.gep.sroa_idx688 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i64 %i.fl, ptr %.2..2..2..2.gep.sroa_idx688, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.ai, %bb.aj
  %.0.i166 = phi i64 [ 2, %bb.ag ], [ 4, %bb.ai ], [ 10, %bb.aj ]
  %i.fm = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %16, i64 noundef %.0.i166) ; 2 uses
  %i.fn = extractvalue { ptr, i64 } %i.fm, 1      ; 2 uses
  %i.fo = call i64 @llvm.umin.i64(i64 %i.fn, i64 14) ; 2 uses
  %.not.i.i.i.i169 = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i.i.i169, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit171, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fp = extractvalue { ptr, i64 } %i.fm, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fp, ptr nonnull align 1 %i.d, i64 %i.fo, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit171

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit171: ; preds = %bb.ak, %bb.al
  %i.fq = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !2142
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !2139 ; 2 uses
  %i.fu = ptrtoint ptr %i.fr to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %.sroa.speculated.i.i170 = call i64 @llvm.umin.i64(i64 %i.fw, i64 %i.fo)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.sroa.speculated.i.i170 ; 3 uses
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !2139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fy = xor i1 %1, true
  %i.fz = zext i1 %i.fy to i8
  store i8 %i.fz, ptr %i.i, align 1, !tbaa !1722
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !1469, !nonnull !1298, !align !1301
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.gc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !2138 ; 3 uses
  %i.ge = ptrtoint ptr %i.fx to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  store ptr %i.gd, ptr %17, align 8, !tbaa !1302
  %.sroa.4379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.gg, ptr %.sroa.4379.0..sroa_idx, align 8, !tbaa !1265
  %i.gh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !2103
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !9262)
  call void @llvm.experimental.noalias.scope.decl(metadata !9263)
  store ptr %17, ptr %9, align 8, !tbaa !2224, !alias.scope !9264
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 1, ptr %i.gj, align 8, !alias.scope !9264
  store ptr %17, ptr %i.gi, align 8, !tbaa !2220, !alias.scope !9264
  %.not.i.i.i.i.i.i174 = icmp eq ptr %i.fx, %i.gd
  br i1 %.not.i.i.i.i.i.i174, label %._crit_edge.i.i.i.i.i.i175, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i175:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit171
  store i8 2, ptr %i.gj, align 8, !tbaa !2221, !alias.scope !9264
  %i.gk = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !1764, !noalias !9264
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gl, 0  ; 2 uses
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 32, i64 48
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %17, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !1764, !noalias !9264
  %.not.i.i.i2.i.i.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not.i.i.i2.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_6detail12buffers_pairILb1EEEEE14const_iteratorC2ERKNS4_5tupleIJS3_S6_EEESt17integral_constantIbLb0EE.exit.loopexit.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %._crit_edge.i.i.i.i.i.i175
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i177, label %.lr.ph.i.i.i.i.i.i.i.lr.ph, !llvm.loop !84

.lr.ph.i.i.i.i.i.i.i.lr.ph:                       ; preds = %.lr.ph.i.i.i.i.preheader
  %i.go = getelementptr inbounds nuw i8, ptr %17, i64 32
  br label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !84

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.lr.ph, %.lr.ph.i.i.i.i
  %i.gp = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i.i.lr.ph ], [ %i.gt, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.gq = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i.i.lr.ph ], [ %i.gp, %.lr.ph.i.i.i.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !1764, !noalias !9264
  %.not.i.i.i.i.i.i.i176 = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.i.i.i.i.i176, label %.lr.ph.i.i.i.i, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_6detail12buffers_pairILb1EEEEE14const_iteratorC2ERKNS4_5tupleIJS3_S6_EEESt17integral_constantIbLb0EE.exit.loopexit.i.i.i.i, !llvm.loop !84

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %i.gu, label %.lr.ph.i.i.i.i.._crit_edge.i.i.i.i.i.i.i177_crit_edge, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !84

.lr.ph.i.i.i.i.._crit_edge.i.i.i.i.i.i.i177_crit_edge: ; preds = %.lr.ph.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i177, !llvm.loop !84

._crit_edge.i.i.i.i.i.i.i177:                     ; preds = %.lr.ph.i.i.i.i.._crit_edge.i.i.i.i.i.i.i177_crit_edge, %.lr.ph.i.i.i.i.preheader
  store ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, ptr %i.gi, align 8, !alias.scope !9264
  store i8 0, ptr %i.gi, align 8, !tbaa !1996, !alias.scope !9264
  store i8 3, ptr %i.gj, align 8, !tbaa !2221, !alias.scope !9264
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit

_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_6detail12buffers_pairILb1EEEEE14const_iteratorC2ERKNS4_5tupleIJS3_S6_EEESt17integral_constantIbLb0EE.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i175
  %.lcssa.i.i.i.i = phi ptr [ %i.gh, %._crit_edge.i.i.i.i.i.i175 ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.lcssa.i.i.i.i, ptr %i.gi, align 8, !alias.scope !9264
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit171, %._crit_edge.i.i.i.i.i.i.i177, %_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_6detail12buffers_pairILb1EEEEE14const_iteratorC2ERKNS4_5tupleIJS3_S6_EEESt17integral_constantIbLb0EE.exit.loopexit.i.i.i.i
  %i.gv = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferENS3_6detail12buffers_pairILb1EEEEEENSD_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.gb, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  %i.gw = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.gx = load i64, ptr %i.f, align 8, !tbaa !1265 ; 2 uses
  br i1 %i.gw, label %.thread476, label %bb.am

.thread476:                                       ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.da

bb.am:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit
  %i.gy = add i64 %i.gx, %.lcssa677
  store i64 %i.gy, ptr %i.f, align 8, !tbaa !1265
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.cz

bb.an:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !2103
  %i.gz = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 6 uses
  store ptr %18, ptr %i.gz, align 8, !tbaa !2204
  %i.ha = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 5 uses
  store i64 0, ptr %i.ha, align 8, !tbaa !2205
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  %i.hc = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.hf = xor i1 %1, true
  %i.hg = zext i1 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.hi = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hj = ptrtoint ptr %18 to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.hm = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.ho = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.hp = getelementptr inbounds nuw i8, ptr %21, i64 24
  %.sroa.gep372 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.4375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.hs = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.ht = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.hu = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.hv = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.hw = getelementptr inbounds nuw i8, ptr %20, i64 88
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 24
  %.sroa.gep376 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ib = shl nsw i8 %.sroa.29.0634, 4            ; 2 uses
  %i.ic = shl nuw i8 %i.bn, 6                     ; 3 uses
  %i.id = or disjoint i8 %i.ic, 127
  %i.ie = or disjoint i8 %i.ic, 126
  %i.if = shl nuw nsw i8 %i.bo, 1
  %i.ig = and i8 %i.if, 4
  %i.ih = zext nneg i8 %i.ig to i64
  %i.ii = or i8 %i.bd, %i.ib
  %.1..1..1..1..sroa_idx690 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx693 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx691 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx694 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx692 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, %bb.an
  %.sroa.20.3 = phi i8 [ %i.ii, %bb.an ], [ %i.ib, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit ]
  %.0127 = phi i64 [ %.lcssa677, %bb.an ], [ %i.ik, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit ] ; 2 uses
  %i.ij = load i64, ptr %i.hb, align 8, !tbaa !2117
  %..i = call noundef i64 @llvm.umin.i64(i64 %.0127, i64 %i.ij) ; 14 uses
  %i.ik = sub nuw i64 %.0127, %..i                ; 2 uses
  %i.il = icmp eq i64 %i.ik, 0                    ; 2 uses
  %i.im = and i1 %1, %i.il
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %19, ptr noundef nonnull %i.hc, i64 noundef 14) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.in = select i1 %i.im, i8 -128, i8 0
  %spec.select37.i183 = or i8 %.sroa.20.3, %i.in
  store i8 %spec.select37.i183, ptr %i.c, align 1, !tbaa !1268
  %i.io = icmp ult i64 %..i, 126
  br i1 %i.io, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ip = trunc nuw nsw i64 %..i to i8
  %i.iq = or disjoint i8 %i.ic, %i.ip
  store i8 %i.iq, ptr %.1..1..1..1..sroa_idx692, align 1, !tbaa !1268
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.ir = icmp ult i64 %..i, 65536
  br i1 %i.ir, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i8 %i.ie, ptr %.1..1..1..1..sroa_idx691, align 1, !tbaa !1268
  %i.is = trunc nuw i64 %..i to i16
  %i.it = call noundef i16 @llvm.bswap.i16(i16 %i.is)
  store i16 %i.it, ptr %.2..2..2..2.gep.sroa_idx694, align 1
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  store i8 %i.id, ptr %.1..1..1..1..sroa_idx690, align 1, !tbaa !1268
  %i.iu = call noundef i64 @llvm.bswap.i64(i64 %..i)
  store i64 %i.iu, ptr %.2..2..2..2.gep.sroa_idx693, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ap
  %.0.i186 = phi i64 [ 2, %bb.ap ], [ 4, %bb.ar ], [ 10, %bb.as ]
  %spec.select = add nuw nsw i64 %.0.i186, %i.ih
  %i.iv = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %19, i64 noundef %spec.select) ; 2 uses
  %i.iw = extractvalue { ptr, i64 } %i.iv, 1      ; 2 uses
  %i.ix = call i64 @llvm.umin.i64(i64 %i.iw, i64 14) ; 2 uses
  %.not.i.i.i.i189 = icmp eq i64 %i.iw, 0
  br i1 %.not.i.i.i.i189, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iy = extractvalue { ptr, i64 } %i.iv, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iy, ptr nonnull align 1 %i.c, i64 %i.ix, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191: ; preds = %bb.at, %bb.au
  %i.iz = load ptr, ptr %i.hd, align 8, !tbaa !2142
  %i.ja = load ptr, ptr %i.he, align 8, !tbaa !2139 ; 2 uses
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %.sroa.speculated.i.i190 = call i64 @llvm.umin.i64(i64 %i.jd, i64 %i.ix)
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.sroa.speculated.i.i190 ; 3 uses
  store ptr %i.je, ptr %i.he, align 8, !tbaa !2139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.hg, ptr %i.i, align 1, !tbaa !1722
  %i.jf = load ptr, ptr %i.hh, align 8, !tbaa !1469, !nonnull !1298, !align !1301
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.jg = load ptr, ptr %i.hi, align 8, !tbaa !2138 ; 3 uses
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !9265)
  %i.jk = load ptr, ptr %i.gz, align 8, !tbaa !2204, !noalias !9265
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = sub i64 %i.jl, %i.hj                    ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(48) %18, i64 32, i1 false), !tbaa.struct !2103
  %i.jn = getelementptr inbounds i8, ptr %21, i64 %i.jm ; 7 uses
  store ptr %i.jn, ptr %i.hk, align 8, !tbaa !2204, !alias.scope !9265
  %i.jo = load i64, ptr %i.ha, align 8, !tbaa !2205, !noalias !9265 ; 3 uses
  store i64 %i.jo, ptr %i.hl, align 8, !tbaa !2205, !alias.scope !9265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i8 0, i64 16, i1 false), !alias.scope !9265
  store ptr %i.jn, ptr %i.ho, align 8, !tbaa !2220, !alias.scope !9265
  store ptr %21, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !2226, !alias.scope !9265
  %i.jp = load i64, ptr %i.hp, align 8, !tbaa !1764, !alias.scope !9265
  %.not.i.i.i.i.i.i194 = icmp eq i64 %i.jp, 0     ; 2 uses
  %.0.v.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i194, i64 16, i64 32 ; 2 uses
  %.0.v.i.i.i.i.i.i.sroa.sel = select i1 %.not.i.i.i.i.i.i194, ptr %.sroa.gep372, ptr %i.hk ; 3 uses
  %.not34.i.i.i = icmp eq i64 %i.jm, %.0.v.i.i.i.i.i.i
  br i1 %.not34.i.i.i, label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit, label %.lr.ph.split.i.preheader.i.i

.lr.ph.split.i.preheader.i.i:                     ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !1265, !alias.scope !9265
  %i.jr = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i, i64 %i.jo) ; 6 uses
  %.not.i.peel.i.i = icmp ult i64 %i.jr, %..i
  br i1 %.not.i.peel.i.i, label %bb.av, label %.thread.i.i.i

bb.av:                                            ; preds = %.lr.ph.split.i.preheader.i.i
  store i64 %i.jr, ptr %i.hm, align 8, !tbaa !2229, !alias.scope !9265
  %i.js = add nsw i64 %i.jm, 16
  %.not27.i.peel.i.i = icmp eq i64 %i.js, %.0.v.i.i.i.i.i.i
  br i1 %.not27.i.peel.i.i, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.split.i.peel.next.i.i

.lr.ph.split.i.peel.next.i.i:                     ; preds = %bb.av
  %i.jt = sub nuw i64 %..i, %i.jr
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.aw, %.lr.ph.split.i.peel.next.i.i
  %.01022.i.i.i = phi i64 [ %i.jz, %bb.aw ], [ %i.jt, %.lr.ph.split.i.peel.next.i.i ] ; 3 uses
  %i.ju = phi ptr [ %i.jw, %bb.aw ], [ %i.jq, %.lr.ph.split.i.peel.next.i.i ] ; 2 uses
  %i.jv = phi i64 [ %i.ka, %bb.aw ], [ %i.jr, %.lr.ph.split.i.peel.next.i.i ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !1265, !alias.scope !9265 ; 4 uses
  %.not.i.i.i195 = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i, %.01022.i.i.i
  br i1 %.not.i.i.i195, label %bb.aw, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.i.preheader.i.i
  %.01022.i.lcssa.i.i = phi i64 [ %..i, %.lr.ph.split.i.preheader.i.i ], [ %.01022.i.i.i, %.lr.ph.split.i.i.i ] ; 2 uses
  %.lcssa9.i.i = phi i64 [ 0, %.lr.ph.split.i.preheader.i.i ], [ %i.jv, %.lr.ph.split.i.i.i ]
  %.lcssa.i.i = phi ptr [ %i.jq, %.lr.ph.split.i.preheader.i.i ], [ %i.jw, %.lr.ph.split.i.i.i ] ; 2 uses
  %.pn.i.i.lcssa.i.i = phi i64 [ %i.jr, %.lr.ph.split.i.preheader.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %.lr.ph.split.i.i.i ]
  store ptr %.lcssa.i.i, ptr %i.ho, align 8, !tbaa !2230, !alias.scope !9265
  %i.jx = add i64 %.lcssa9.i.i, %.01022.i.lcssa.i.i ; 2 uses
  store i64 %i.jx, ptr %i.hm, align 8, !tbaa !2229, !alias.scope !9265
  %i.jy = sub i64 %.01022.i.lcssa.i.i, %.pn.i.i.lcssa.i.i ; 2 uses
  store i64 %i.jy, ptr %i.hn, align 8, !tbaa !2231, !alias.scope !9265
  br label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit

bb.aw:                                            ; preds = %.lr.ph.split.i.i.i
  %i.jz = sub nuw i64 %.01022.i.i.i, %.sroa.4.0.copyload.i.i.i.i
  %i.ka = add i64 %.sroa.4.0.copyload.i.i.i.i, %i.jv ; 3 uses
  store i64 %i.ka, ptr %i.hm, align 8, !tbaa !2229, !alias.scope !9265
  %.not27.i.i.i = icmp eq ptr %i.jw, %.0.v.i.i.i.i.i.i.sroa.sel
  br i1 %.not27.i.i.i, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !85

..loopexit_crit_edge.i.i.i:                       ; preds = %bb.aw, %bb.av
  %i.kb = phi i64 [ %i.jr, %bb.av ], [ %i.ka, %bb.aw ]
  store ptr %.0.v.i.i.i.i.i.i.sroa.sel, ptr %i.ho, align 8, !tbaa !2230, !alias.scope !9265
  br label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit

_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191, %.thread.i.i.i, %..loopexit_crit_edge.i.i.i
  %i.kc = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191 ], [ %i.jy, %.thread.i.i.i ], [ 0, %..loopexit_crit_edge.i.i.i ]
  %i.kd = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191 ], [ %i.jx, %.thread.i.i.i ], [ %i.kb, %..loopexit_crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = phi ptr [ %i.jn, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191 ], [ %.lcssa.i.i, %.thread.i.i.i ], [ %.0.v.i.i.i.i.i.i.sroa.sel, %..loopexit_crit_edge.i.i.i ] ; 2 uses
  store ptr %i.jg, ptr %20, align 8, !tbaa !1302
  store i64 %i.jj, ptr %.sroa.4375.0..sroa_idx, align 8, !tbaa !1265
  %.not = icmp eq ptr %i.jn, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ke = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  %i.kf = ptrtoaddr ptr %i.jn to i64
  %reass.sub.i.i.i.i.i.i = sub i64 %i.ke, %i.kf
  %i.kg = and i64 %reass.sub.i.i.i.i.i.i, -16
  %.0.lcssa.i.i.i.i.i.i.i = select i1 %.not, i64 0, i64 %i.kg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hq, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  %i.kh = getelementptr inbounds i8, ptr %i.hq, i64 %i.jm ; 3 uses
  store ptr %i.kh, ptr %i.hr, align 8, !tbaa !2204, !alias.scope !9266
  store i64 %i.jo, ptr %i.hs, align 8, !tbaa !2205, !alias.scope !9266
  store i64 %i.kd, ptr %i.ht, align 8, !tbaa !2229, !alias.scope !9266
  store i64 %i.kc, ptr %i.hu, align 8, !tbaa !2231, !alias.scope !9266
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.kh, i64 %.0.lcssa.i.i.i.i.i.i.i
  store ptr %scevgep.i.i.i.i.i.i.i.i, ptr %i.hv, align 8, !alias.scope !9266
  store ptr %i.hq, ptr %i.hw, align 8, !alias.scope !9266
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !9267)
  call void @llvm.experimental.noalias.scope.decl(metadata !9268)
  store ptr %20, ptr %8, align 8, !tbaa !2236, !alias.scope !9269
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hz, i8 0, i64 32, i1 false), !alias.scope !9269
  store ptr %20, ptr %i.hx, align 8, !tbaa !2220, !alias.scope !9269
  store i8 1, ptr %i.hy, align 8, !tbaa !2237, !alias.scope !9269
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !9269
  store ptr %8, ptr %7, align 8, !tbaa !2239, !noalias !9269
  %.not.i.i.i.i.i.i197 = icmp eq ptr %i.je, %i.jg
  br i1 %.not.i.i.i.i.i.i197, label %._crit_edge.i.i.i.i.i.i198, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS2_6detail12buffers_pairILb1EEEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i198:                       ; preds = %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit
  store ptr %i.hq, ptr %i.hx, align 8, !tbaa !2220, !alias.scope !9269
  store i64 %i.kd, ptr %i.hz, align 8, !tbaa !1265, !alias.scope !9269
  store ptr %i.kh, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !2220, !alias.scope !9269
  store ptr %i.hq, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !2226, !alias.scope !9269
  store i8 2, ptr %i.hy, align 8, !tbaa !2237, !alias.scope !9269
  invoke void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEEEE14const_iterator9increment4nextESt17integral_constantImLm2EE(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS2_6detail12buffers_pairILb1EEEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit unwind label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i.i.i198
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #37
  unreachable

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS2_6detail12buffers_pairILb1EEEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit, %._crit_edge.i.i.i.i.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !9269
  %i.kk = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferENS3_19buffers_prefix_viewINS3_14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEEEENSH_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.jf, ptr noundef nonnull align 8 dereferenceable(96) %20, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %33 = load i64, ptr %i.f, align 8, !tbaa !1265
  %i.kl = add i64 %33, %..i
  store i64 %i.kl, ptr %i.f, align 8, !tbaa !1265
  %i.km = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.km, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS2_6detail12buffers_pairILb1EEEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit
  br i1 %i.il, label %.thread487, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kn = load i64, ptr %i.ia, align 8, !tbaa !1764
  %.not.i.i.i199 = icmp eq i64 %i.kn, 0
  %.0.v.i.i.i.sroa.sel = select i1 %.not.i.i.i199, ptr %.sroa.gep376, ptr %i.gz ; 2 uses
  %.not12.i = icmp eq i64 %..i, 0
  br i1 %.not12.i, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.az
  %.promoted.i = load ptr, ptr %i.gz, align 8     ; 3 uses
  %.not11.i.peel = icmp eq ptr %.promoted.i, %.0.v.i.i.i.sroa.sel
  br i1 %.not11.i.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i
  %.promoted16.i = load i64, ptr %i.ha, align 8   ; 2 uses
  %.sroa.2.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 8
  %.sroa.2.0.copyload.i.peel = load i64, ptr %.sroa.2.0..sroa_idx.i.peel, align 8, !tbaa !1265
  %i.ko = sub i64 %.sroa.2.0.copyload.i.peel, %.promoted16.i ; 2 uses
  %i.kp = icmp ult i64 %..i, %i.ko                ; 2 uses
  %i.kq = add i64 %..i, %.promoted16.i
  %storemerge.i.peel = select i1 %i.kp, i64 %i.kq, i64 0
  store i64 %storemerge.i.peel, ptr %i.ha, align 8, !tbaa !2205
  br i1 %i.kp, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kr = sub nuw i64 %..i, %i.ko                 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 16 ; 2 uses
  store ptr %i.ks, ptr %i.gz, align 8, !tbaa !2204
  %.not.i200.peel = icmp eq i64 %i.kr, 0
  br i1 %.not.i200.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %.peel.next

.peel.next:                                       ; preds = %bb.bb, %bb.bd
  %.0813.i = phi i64 [ %i.kv, %bb.bd ], [ %i.kr, %bb.bb ] ; 3 uses
  %i.kt = phi ptr [ %i.kw, %bb.bd ], [ %i.ks, %bb.bb ] ; 3 uses
  %.not11.i = icmp eq ptr %i.kt, %.0.v.i.i.i.sroa.sel
  br i1 %.not11.i, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.bc

bb.bc:                                            ; preds = %.peel.next
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1265 ; 2 uses
  %i.ku = icmp ult i64 %.0813.i, %.sroa.2.0.copyload.i ; 2 uses
  %storemerge.i = select i1 %i.ku, i64 %.0813.i, i64 0
  store i64 %storemerge.i, ptr %i.ha, align 8, !tbaa !2205
  br i1 %i.ku, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kv = sub nuw i64 %.0813.i, %.sroa.2.0.copyload.i ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  store ptr %i.kw, ptr %i.gz, align 8, !tbaa !2204
  %.not.i200 = icmp eq i64 %i.kv, 0
  br i1 %.not.i200, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %.peel.next, !llvm.loop !9245

_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit: ; preds = %bb.bd, %bb.bc, %.peel.next, %.lr.ph.i, %bb.ba, %bb.bb, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br label %bb.ao

.thread487:                                       ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.cz

bb.be:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS2_6detail12buffers_pairILb1EEEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit
  %i.kx = load i64, ptr %i.f, align 8, !tbaa !1265
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.da

bb.bf:                                            ; preds = %bb.ad
  br i1 %i.fb, label %bb.cg, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ky = load ptr, ptr %0, align 8, !tbaa !1466
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 2385
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !1619, !range !1297, !noundef !1298
  %i.lb = trunc nuw i8 %i.la to i1
  %i.lc = tail call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.lb)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %i.ld = tail call noundef i32 %i.lc(), !inline_history !71 ; 3 uses
  %.not.i201 = icmp eq i32 %i.ld, 0
  br i1 %.not.i201, label %bb.bh, label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit202, !llvm.loop !72

_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit202: ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %22, i32 noundef %i.ld)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #36
  %i.le = getelementptr inbounds nuw i8, ptr %23, i64 40
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %23, ptr noundef nonnull %i.le, i64 noundef 14) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.lf = select i1 %1, i8 -128, i8 0
  %i.lg = shl nuw nsw i8 %.sroa.29.0634, 4
  %i.lh = or disjoint i8 %i.lg, %i.lf
  %.4..4..4..4.gep27.sroa_idx701 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.10..10..10..10.gep28.sroa_idx702 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %spec.select37.i208 = or i8 %i.bd, %i.lh
  store i8 %spec.select37.i208, ptr %i.b, align 1, !tbaa !1268
  %i.li = icmp ult i64 %.lcssa677, 126
  br i1 %i.li, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit202
  %.2..2..2..2.gep.sroa_idx699 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.lj = trunc nuw nsw i64 %.lcssa677 to i8
  %i.lk = or disjoint i8 %i.lj, -128
  %.1..1..1..1..sroa_idx697 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.lk, ptr %.1..1..1..1..sroa_idx697, align 1, !tbaa !1268
  br label %bb.bm

bb.bj:                                            ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit202
  %i.ll = icmp ult i64 %.lcssa677, 65536
  br i1 %i.ll, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %.1..1..1..1..sroa_idx695 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 -2, ptr %.1..1..1..1..sroa_idx695, align 1, !tbaa !1268
  %i.lm = trunc nuw i64 %.lcssa677 to i16
  %i.ln = call noundef i16 @llvm.bswap.i16(i16 %i.lm)
  %.2..2..2..2.gep.sroa_idx700 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %i.ln, ptr %.2..2..2..2.gep.sroa_idx700, align 1
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %.1..1..1..1..sroa_idx696 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 -1, ptr %.1..1..1..1..sroa_idx696, align 1, !tbaa !1268
  %i.lo = call noundef i64 @llvm.bswap.i64(i64 %.lcssa677)
  %.2..2..2..2.gep.sroa_idx698 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i64 %i.lo, ptr %.2..2..2..2.gep.sroa_idx698, align 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bi, %bb.bk, %bb.bl
  %.0.sroa.phi.i210 = phi ptr [ %.2..2..2..2.gep.sroa_idx699, %bb.bi ], [ %.4..4..4..4.gep27.sroa_idx701, %bb.bk ], [ %.10..10..10..10.gep28.sroa_idx702, %bb.bl ]
  %.0.i211 = phi i64 [ 6, %bb.bi ], [ 8, %bb.bk ], [ 14, %bb.bl ]
  store i32 %i.ld, ptr %.0.sroa.phi.i210, align 1
  %i.lp = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %23, i64 noundef %.0.i211) ; 2 uses
  %i.lq = extractvalue { ptr, i64 } %i.lp, 1      ; 2 uses
  %i.lr = call i64 @llvm.umin.i64(i64 %i.lq, i64 14) ; 2 uses
  %.not.i.i.i.i214 = icmp eq i64 %i.lq, 0
  br i1 %.not.i.i.i.i214, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit216, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ls = extractvalue { ptr, i64 } %i.lp, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ls, ptr nonnull align 1 %i.b, i64 %i.lr, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit216

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit216: ; preds = %bb.bm, %bb.bn
  %i.lt = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !2142
  %i.lv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !2139 ; 2 uses
  %i.lx = ptrtoint ptr %i.lu to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %.sroa.speculated.i.i215 = call i64 @llvm.umin.i64(i64 %i.lz, i64 %i.lr)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.sroa.speculated.i.i215
  store ptr %i.ma, ptr %i.lv, align 8, !tbaa !2139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !2103
  %i.mb = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 14 uses
  store ptr %24, ptr %i.mb, align 8, !tbaa !2204
  %i.mc = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 9 uses
  store i64 0, ptr %i.mc, align 8, !tbaa !2205
  %i.md = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !2117
  %..i217 = call noundef i64 @llvm.umin.i64(i64 %.lcssa677, i64 %i.me) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #36
  %i.mf = getelementptr inbounds nuw i8, ptr %i.g, i64 2248 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !1490 ; 2 uses
  store ptr %i.mg, ptr %25, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %..i217, ptr %i.mh, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 4 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !1764
  %.not.i.i.i.i.i220 = icmp eq i64 %i.mj, 0
  %.sroa.gep364 = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %.0.v.i.i.i.i.i.sroa.sel = select i1 %.not.i.i.i.i.i220, ptr %.sroa.gep364, ptr %i.mb
  %.not16.i.i = icmp eq i64 %..i217, 0
  br i1 %.not16.i.i, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit237, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit216, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %.sroa.07.019.i.i = phi ptr [ %i.mq, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.mg, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit216 ] ; 2 uses
  %.sroa.6.018.i.i = phi i64 [ %i.mr, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %..i217, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit216 ] ; 2 uses
  %.sroa.011.017.i.i = phi ptr [ %i.ms, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %24, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit216 ] ; 5 uses
  %.not23.i.i = icmp eq ptr %.sroa.011.017.i.i, %.0.v.i.i.i.i.i.sroa.sel
  br i1 %.not23.i.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.split.i.i
  %i.mk = load ptr, ptr %i.mb, align 8, !tbaa !2204
  %i.ml = icmp eq ptr %.sroa.011.017.i.i, %i.mk
  %.sroa.0.0.copyload1.i.i.i = load ptr, ptr %.sroa.011.017.i.i, align 8, !tbaa !1302 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i221 = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i221, align 8, !tbaa !1265 ; 3 uses
  br i1 %i.ml, label %bb.bp, label %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.mm = load i64, ptr %i.mc, align 8, !tbaa !2205
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.mm, i64 %.sroa.4.0.copyload.i.i.i) ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i, i64 %spec.select.i.i.i.i
  %i.mo = sub i64 %.sroa.4.0.copyload.i.i.i, %spec.select.i.i.i.i
  br label %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i

_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i: ; preds = %bb.bp, %bb.bo
  %.pn3.i.i.i = phi ptr [ %i.mn, %bb.bp ], [ %.sroa.0.0.copyload1.i.i.i, %bb.bo ]
  %.pn.i.i.i = phi i64 [ %i.mo, %bb.bp ], [ %.sroa.4.0.copyload.i.i.i, %bb.bo ] ; 2 uses
  %i.mp = call i64 @llvm.umin.i64(i64 %.sroa.6.018.i.i, i64 %.pn.i.i.i) ; 3 uses
  %.not.i.i.i222 = icmp eq i64 %.pn.i.i.i, 0
  br i1 %.not.i.i.i222, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.07.019.i.i, ptr align 1 %.pn3.i.i.i, i64 %i.mp, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.bq, %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i, i64 %i.mp
  %i.mr = sub nuw i64 %.sroa.6.018.i.i, %i.mp     ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i, i64 16
  %.not.i.i = icmp eq i64 %i.mr, 0
  br i1 %.not.i.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit, label %.lr.ph.split.i.i, !llvm.loop !86

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit: ; preds = %.lr.ph.split.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %i.mt = load i64, ptr %i.mi, align 8, !tbaa !1764
  %.not.i.i.i223 = icmp eq i64 %i.mt, 0
  %.0.v.i.i.i224.sroa.sel = select i1 %.not.i.i.i223, ptr %.sroa.gep364, ptr %i.mb ; 2 uses
  %.promoted.i228 = load ptr, ptr %i.mb, align 8  ; 3 uses
  %.not11.i232.peel = icmp eq ptr %.promoted.i228, %.0.v.i.i.i224.sroa.sel
  br i1 %.not11.i232.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit237, label %bb.br

bb.br:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit
  %.promoted16.i229 = load i64, ptr %i.mc, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i233.peel = getelementptr inbounds nuw i8, ptr %.promoted.i228, i64 8
  %.sroa.2.0.copyload.i234.peel = load i64, ptr %.sroa.2.0..sroa_idx.i233.peel, align 8, !tbaa !1265
  %i.mu = sub i64 %.sroa.2.0.copyload.i234.peel, %.promoted16.i229 ; 2 uses
  %i.mv = icmp ult i64 %..i217, %i.mu             ; 2 uses
  %i.mw = add i64 %..i217, %.promoted16.i229
  %storemerge.i235.peel = select i1 %i.mv, i64 %i.mw, i64 0
  store i64 %storemerge.i235.peel, ptr %i.mc, align 8, !tbaa !2205
  br i1 %i.mv, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit237, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mx = sub nuw i64 %..i217, %i.mu              ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.promoted.i228, i64 16 ; 2 uses
  store ptr %i.my, ptr %i.mb, align 8, !tbaa !2204
  %.not.i236.peel = icmp eq i64 %i.mx, 0
  br i1 %.not.i236.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit237, label %.peel.next557

.peel.next557:                                    ; preds = %bb.bs, %bb.bu
  %.0813.i231 = phi i64 [ %i.nb, %bb.bu ], [ %i.mx, %bb.bs ] ; 3 uses
  %i.mz = phi ptr [ %i.nc, %bb.bu ], [ %i.my, %bb.bs ] ; 3 uses
  %.not11.i232 = icmp eq ptr %i.mz, %.0.v.i.i.i224.sroa.sel
  br i1 %.not11.i232, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit237, label %bb.bt

bb.bt:                                            ; preds = %.peel.next557
  %.sroa.2.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %.sroa.2.0.copyload.i234 = load i64, ptr %.sroa.2.0..sroa_idx.i233, align 8, !tbaa !1265 ; 2 uses
  %i.na = icmp ult i64 %.0813.i231, %.sroa.2.0.copyload.i234 ; 2 uses
  %storemerge.i235 = select i1 %i.na, i64 %.0813.i231, i64 0
  store i64 %storemerge.i235, ptr %i.mc, align 8, !tbaa !2205
  br i1 %i.na, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit237, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nb = sub nuw i64 %.0813.i231, %.sroa.2.0.copyload.i234 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 2 uses
  store ptr %i.nc, ptr %i.mb, align 8, !tbaa !2204
  %.not.i236 = icmp eq i64 %i.nb, 0
  br i1 %.not.i236, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit237, label %.peel.next557, !llvm.loop !9246

_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit237: ; preds = %.peel.next557, %bb.bt, %bb.bu, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit, %bb.br, %bb.bs, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit216
  %i.nd = sub nuw i64 %.lcssa677, %..i217
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 1 dereferenceable(4) %22)
  %i.ne = xor i1 %1, true
  %i.nf = zext i1 %i.ne to i8
  store i8 %i.nf, ptr %i.i, align 1, !tbaa !1722
  %i.ng = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !1469, !nonnull !1298, !align !1301
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #36
  %i.ni = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !2138 ; 3 uses
  %i.nk = load ptr, ptr %i.lv, align 8, !tbaa !2139 ; 2 uses
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.nj to i64
  %i.nn = sub i64 %i.nl, %i.nm
  store ptr %i.nj, ptr %26, align 8, !tbaa !1302
  %.sroa.4363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.nn, ptr %.sroa.4363.0..sroa_idx, align 8, !tbaa !1265
  %i.no = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.no, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa.struct !1861
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !9270)
  call void @llvm.experimental.noalias.scope.decl(metadata !9271)
  store ptr %26, ptr %6, align 8, !tbaa !2219, !alias.scope !9272
  %i.np = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 1, ptr %i.nq, align 8, !alias.scope !9272
  store ptr %26, ptr %i.np, align 8, !tbaa !2220, !alias.scope !9272
  %.not.i.i.i.i.i.i240 = icmp eq ptr %i.nk, %i.nj
  br i1 %.not.i.i.i.i.i.i240, label %._crit_edge.i.i.i.i.i.i241, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit246

._crit_edge.i.i.i.i.i.i241:                       ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit237
  store ptr %i.no, ptr %i.np, align 8, !tbaa !2220, !alias.scope !9272
  store i8 2, ptr %i.nq, align 8, !tbaa !2221, !alias.scope !9272
  %i.nr = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !1764, !noalias !9272
  %.not.i.i.i.i.i.i.i243 = icmp eq i64 %i.ns, 0
  br i1 %.not.i.i.i.i.i.i.i243, label %._crit_edge.i.i.i.i.i.i.i244, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit246

._crit_edge.i.i.i.i.i.i.i244:                     ; preds = %._crit_edge.i.i.i.i.i.i241
  %.ptr4.i.i.i.i.i.i245 = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %.ptr4.i.i.i.i.i.i245, ptr %i.np, align 8, !tbaa !2220, !alias.scope !9272
  store i8 0, ptr %i.np, align 8, !tbaa !1996, !alias.scope !9272
  store i8 3, ptr %i.nq, align 8, !tbaa !2221, !alias.scope !9272
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit246

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit246: ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit237, %._crit_edge.i.i.i.i.i.i241, %._crit_edge.i.i.i.i.i.i.i244
  %i.nt = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferES9_EEENSA_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.nh, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  %i.nu = load i64, ptr %i.f, align 8, !tbaa !1265
  %i.nv = add i64 %i.nu, %..i217
  store i64 %i.nv, ptr %i.f, align 8, !tbaa !1265
  %i.nw = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.nx = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36
  br i1 %i.nw, label %.thread495, label %.preheader

.preheader:                                       ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit246
  %i.ny = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oa = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bv

bb.bv:                                            ; preds = %.preheader, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit
  %.1128 = phi i64 [ %i.oy, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit ], [ %i.nd, %.preheader ] ; 3 uses
  %.not143 = icmp eq i64 %.1128, 0
  br i1 %.not143, label %bb.cf, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ob = load i64, ptr %i.md, align 8, !tbaa !2117 ; 2 uses
  %..i247 = call noundef i64 @llvm.umin.i64(i64 %.1128, i64 %i.ob) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36
  %i.oc = load ptr, ptr %i.mf, align 8, !tbaa !1490 ; 2 uses
  store ptr %i.oc, ptr %27, align 8
  store i64 %..i247, ptr %i.ny, align 8
  %i.od = load i64, ptr %i.mi, align 8, !tbaa !1764
  %.not.i.i.i.i.i250 = icmp eq i64 %i.od, 0
  %.0.v.i.i.i.i.i251.sroa.sel = select i1 %.not.i.i.i.i.i250, ptr %.sroa.gep364, ptr %i.mb
  %.not16.i.i253 = icmp eq i64 %i.ob, 0
  br i1 %.not16.i.i253, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %.lr.ph.i.i254

.lr.ph.i.i254:                                    ; preds = %bb.bw
  %i.oe = load ptr, ptr %i.mb, align 8, !tbaa !2204
  br label %.lr.ph.split.i.i255

.lr.ph.split.i.i255:                              ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268, %.lr.ph.i.i254
  %.sroa.07.019.i.i257 = phi ptr [ %i.ol, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268 ], [ %i.oc, %.lr.ph.i.i254 ] ; 2 uses
  %.sroa.6.018.i.i258 = phi i64 [ %i.om, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268 ], [ %..i247, %.lr.ph.i.i254 ] ; 2 uses
  %.sroa.011.017.i.i259 = phi ptr [ %i.on, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268 ], [ %i.oe, %.lr.ph.i.i254 ] ; 5 uses
  %.not23.i.i260 = icmp eq ptr %.sroa.011.017.i.i259, %.0.v.i.i.i.i.i251.sroa.sel
  br i1 %.not23.i.i260, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit272, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.split.i.i255
  %i.of = load ptr, ptr %i.mb, align 8, !tbaa !2204
  %i.og = icmp eq ptr %.sroa.011.017.i.i259, %i.of
  %.sroa.0.0.copyload1.i.i.i261 = load ptr, ptr %.sroa.011.017.i.i259, align 8, !tbaa !1302 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i262 = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i259, i64 8
  %.sroa.4.0.copyload.i.i.i263 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i262, align 8, !tbaa !1265 ; 3 uses
  br i1 %i.og, label %bb.by, label %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i264

bb.by:                                            ; preds = %bb.bx
  %i.oh = load i64, ptr %i.mc, align 8, !tbaa !2205
  %spec.select.i.i.i.i271 = call i64 @llvm.umin.i64(i64 %i.oh, i64 %.sroa.4.0.copyload.i.i.i263) ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i261, i64 %spec.select.i.i.i.i271
  %i.oj = sub i64 %.sroa.4.0.copyload.i.i.i263, %spec.select.i.i.i.i271
  br label %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i264

_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i264: ; preds = %bb.by, %bb.bx
  %.pn3.i.i.i265 = phi ptr [ %i.oi, %bb.by ], [ %.sroa.0.0.copyload1.i.i.i261, %bb.bx ]
  %.pn.i.i.i266 = phi i64 [ %i.oj, %bb.by ], [ %.sroa.4.0.copyload.i.i.i263, %bb.bx ] ; 2 uses
  %i.ok = call i64 @llvm.umin.i64(i64 %.sroa.6.018.i.i258, i64 %.pn.i.i.i266) ; 3 uses
  %.not.i.i.i267 = icmp eq i64 %.pn.i.i.i266, 0
  br i1 %.not.i.i.i267, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268, label %bb.bz

bb.bz:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i264
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.07.019.i.i257, ptr align 1 %.pn3.i.i.i265, i64 %i.ok, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268: ; preds = %bb.bz, %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i264
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i257, i64 %i.ok
  %i.om = sub nuw i64 %.sroa.6.018.i.i258, %i.ok  ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i259, i64 16
  %.not.i.i269 = icmp eq i64 %i.om, 0
  br i1 %.not.i.i269, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit272, label %.lr.ph.split.i.i255, !llvm.loop !86

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit272: ; preds = %.lr.ph.split.i.i255, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268
  %i.oo = load i64, ptr %i.mi, align 8, !tbaa !1764
  %.not.i.i.i273 = icmp eq i64 %i.oo, 0
  %.0.v.i.i.i274.sroa.sel = select i1 %.not.i.i.i273, ptr %.sroa.gep364, ptr %i.mb ; 2 uses
  %.promoted.i278 = load ptr, ptr %i.mb, align 8  ; 3 uses
  %.not11.i282.peel = icmp eq ptr %.promoted.i278, %.0.v.i.i.i274.sroa.sel
  br i1 %.not11.i282.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %bb.ca

bb.ca:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit272
  %.promoted16.i279 = load i64, ptr %i.mc, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i283.peel = getelementptr inbounds nuw i8, ptr %.promoted.i278, i64 8
  %.sroa.2.0.copyload.i284.peel = load i64, ptr %.sroa.2.0..sroa_idx.i283.peel, align 8, !tbaa !1265
  %i.op = sub i64 %.sroa.2.0.copyload.i284.peel, %.promoted16.i279 ; 2 uses
  %i.oq = icmp ult i64 %..i247, %i.op             ; 2 uses
  %i.or = add i64 %..i247, %.promoted16.i279
  %storemerge.i285.peel = select i1 %i.oq, i64 %i.or, i64 0
  store i64 %storemerge.i285.peel, ptr %i.mc, align 8, !tbaa !2205
  br i1 %i.oq, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.os = sub nuw i64 %..i247, %i.op              ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.promoted.i278, i64 16 ; 2 uses
  store ptr %i.ot, ptr %i.mb, align 8, !tbaa !2204
  %.not.i286.peel = icmp eq i64 %i.os, 0
  br i1 %.not.i286.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %.peel.next560

.peel.next560:                                    ; preds = %bb.cb, %bb.cd
  %.0813.i281 = phi i64 [ %i.ow, %bb.cd ], [ %i.os, %bb.cb ] ; 3 uses
  %i.ou = phi ptr [ %i.ox, %bb.cd ], [ %i.ot, %bb.cb ] ; 3 uses
  %.not11.i282 = icmp eq ptr %i.ou, %.0.v.i.i.i274.sroa.sel
  br i1 %.not11.i282, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %bb.cc

bb.cc:                                            ; preds = %.peel.next560
  %.sroa.2.0..sroa_idx.i283 = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %.sroa.2.0.copyload.i284 = load i64, ptr %.sroa.2.0..sroa_idx.i283, align 8, !tbaa !1265 ; 2 uses
  %i.ov = icmp ult i64 %.0813.i281, %.sroa.2.0.copyload.i284 ; 2 uses
  %storemerge.i285 = select i1 %i.ov, i64 %.0813.i281, i64 0
  store i64 %storemerge.i285, ptr %i.mc, align 8, !tbaa !2205
  br i1 %i.ov, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ow = sub nuw i64 %.0813.i281, %.sroa.2.0.copyload.i284 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 16 ; 2 uses
  store ptr %i.ox, ptr %i.mb, align 8, !tbaa !2204
  %.not.i286 = icmp eq i64 %i.ow, 0
  br i1 %.not.i286, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %.peel.next560, !llvm.loop !9251

_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287: ; preds = %.peel.next560, %bb.cc, %bb.cd, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit272, %bb.ca, %bb.cb, %bb.bw
  %i.oy = sub nuw i64 %.1128, %..i247
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 1 dereferenceable(4) %22)
  %i.oz = load ptr, ptr %i.ng, align 8, !tbaa !1469, !nonnull !1298, !align !1301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.pa = load ptr, ptr %27, align 8, !tbaa !1765
  %i.pb = load i64, ptr %i.ny, align 8, !tbaa !1764 ; 3 uses
  %.not17.not.i.i.i = icmp eq i64 %i.pb, 0
  br i1 %.not17.not.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit, label %.lr.ph.i.i.i288

.lr.ph.i.i.i288:                                  ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i
  %.sroa.7.018.i.i.i = phi i64 [ %i.pj, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i ], [ 0, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287 ] ; 3 uses
  %i.pc = load i64, ptr %i.nz, align 8, !tbaa !1278 ; 2 uses
  %i.pd = and i64 %i.pc, 1
  %.not.i.i.i.i.i.i289 = icmp eq i64 %i.pd, 0
  br i1 %.not.i.i.i.i.i.i289, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i.i288
  %i.pe = icmp eq i64 %i.pc, 1
  %i.pf = load i32, ptr %3, align 8
  %.fr.i.i.i.i = freeze i32 %i.pf
  %.not.i.i.i.i290 = icmp eq i32 %.fr.i.i.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.pe, %.not.i.i.i.i290
  br i1 %or.cond.i.i.i.i, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit

_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i: ; preds = %bb.ce, %.lr.ph.i.i.i288
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 %.sroa.7.018.i.i.i
  %i.ph = sub nuw i64 %i.pb, %.sroa.7.018.i.i.i
  %spec.select.i1.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ph, i64 65536)
  store ptr %i.pg, ptr %5, align 8
  store i64 %spec.select.i1.i.i.i.i, ptr %i.oa, align 8
  %i.pi = call noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE10write_someINS3_12const_bufferEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.oz, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.pj = add i64 %i.pi, %.sroa.7.018.i.i.i       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.not.i.i.i291 = icmp ult i64 %i.pj, %i.pb
  br i1 %.not.i.i.i291, label %.lr.ph.i.i.i288, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit: ; preds = %bb.ce, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287
  %34 = load i64, ptr %i.f, align 8, !tbaa !1265
  %i.pk = add i64 %34, %..i247
  store i64 %i.pk, ptr %i.f, align 8, !tbaa !1265
  %i.pl = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %35 = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  br i1 %i.pl, label %.thread495, label %bb.bv, !llvm.loop !9252

.thread495:                                       ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit246
  %.10.ph = phi i64 [ %i.nx, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit246 ], [ %35, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  br label %bb.da

bb.cf:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  br label %bb.cz

bb.cg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !2103
  %i.pm = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 8 uses
  store ptr %28, ptr %i.pm, align 8, !tbaa !2204
  %i.pn = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 5 uses
  store i64 0, ptr %i.pn, align 8, !tbaa !2205
  %i.po = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  %i.pp = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  %i.pq = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %31, i64 40
  %.2..2..2..2.gep.sroa_idx707 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4..4..4..4.gep27.sroa_idx709 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.10..10..10..10.gep28.sroa_idx710 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.pt = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.pu = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.pw = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %32, i64 24
  %.ptr4.i.i.i.i.i.i341 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.qb = shl nsw i8 %.sroa.29.0634, 4            ; 2 uses
  %i.qc = shl nuw i8 %i.bn, 6                     ; 3 uses
  %i.qd = or disjoint i8 %i.qc, 127
  %i.qe = or disjoint i8 %i.qc, 126
  %i.qf = or i8 %i.bd, %i.qb
  %.1..1..1..1..sroa_idx703 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx706 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx704 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx708 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx705 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, %bb.cg
  %.sroa.20.5 = phi i8 [ %i.qf, %bb.cg ], [ %i.qb, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357 ]
  %.2129 = phi i64 [ %.lcssa677, %bb.cg ], [ %i.qz, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357 ] ; 2 uses
  %i.qg = load ptr, ptr %0, align 8, !tbaa !1466
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 2385
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !1619, !range !1297, !noundef !1298
  %i.qj = trunc nuw i8 %i.qi to i1
  %i.qk = call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.qj)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %i.ql = call noundef i32 %i.qk(), !inline_history !71 ; 3 uses
  %.not.i292 = icmp eq i32 %i.ql, 0
  br i1 %.not.i292, label %bb.ci, label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit293, !llvm.loop !72

_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit293: ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %29, i32 noundef %i.ql)
  %i.qm = load i64, ptr %i.po, align 8, !tbaa !2117
  %..i294 = call noundef i64 @llvm.umin.i64(i64 %.2129, i64 %i.qm) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  %i.qn = load ptr, ptr %i.pp, align 8, !tbaa !1490 ; 2 uses
  store ptr %i.qn, ptr %30, align 8
  store i64 %..i294, ptr %i.pq, align 8
  %i.qo = load i64, ptr %i.pr, align 8, !tbaa !1764
  %.not.i.i.i.i.i297 = icmp eq i64 %i.qo, 0
  %.0.v.i.i.i.i.i298.sroa.sel = select i1 %.not.i.i.i.i.i297, ptr %.sroa.gep, ptr %i.pm
  %.not16.i.i300 = icmp eq i64 %..i294, 0         ; 2 uses
  br i1 %.not16.i.i300, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319, label %.lr.ph.i.i301

.lr.ph.i.i301:                                    ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit293
  %i.qp = load ptr, ptr %i.pm, align 8, !tbaa !2204
  br label %.lr.ph.split.i.i302

.lr.ph.split.i.i302:                              ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315, %.lr.ph.i.i301
  %.sroa.07.019.i.i304 = phi ptr [ %i.qw, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315 ], [ %i.qn, %.lr.ph.i.i301 ] ; 2 uses
  %.sroa.6.018.i.i305 = phi i64 [ %i.qx, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315 ], [ %..i294, %.lr.ph.i.i301 ] ; 2 uses
  %.sroa.011.017.i.i306 = phi ptr [ %i.qy, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315 ], [ %i.qp, %.lr.ph.i.i301 ] ; 5 uses
  %.not23.i.i307 = icmp eq ptr %.sroa.011.017.i.i306, %.0.v.i.i.i.i.i298.sroa.sel
  br i1 %.not23.i.i307, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.split.i.i302
  %i.qq = load ptr, ptr %i.pm, align 8, !tbaa !2204
  %i.qr = icmp eq ptr %.sroa.011.017.i.i306, %i.qq
  %.sroa.0.0.copyload1.i.i.i308 = load ptr, ptr %.sroa.011.017.i.i306, align 8, !tbaa !1302 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i309 = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i306, i64 8
  %.sroa.4.0.copyload.i.i.i310 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i309, align 8, !tbaa !1265 ; 3 uses
  br i1 %i.qr, label %bb.ck, label %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i311

bb.ck:                                            ; preds = %bb.cj
  %i.qs = load i64, ptr %i.pn, align 8, !tbaa !2205
  %spec.select.i.i.i.i318 = call i64 @llvm.umin.i64(i64 %i.qs, i64 %.sroa.4.0.copyload.i.i.i310) ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i308, i64 %spec.select.i.i.i.i318
  %i.qu = sub i64 %.sroa.4.0.copyload.i.i.i310, %spec.select.i.i.i.i318
  br label %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i311

_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i311: ; preds = %bb.ck, %bb.cj
  %.pn3.i.i.i312 = phi ptr [ %i.qt, %bb.ck ], [ %.sroa.0.0.copyload1.i.i.i308, %bb.cj ]
  %.pn.i.i.i313 = phi i64 [ %i.qu, %bb.ck ], [ %.sroa.4.0.copyload.i.i.i310, %bb.cj ] ; 2 uses
  %i.qv = call i64 @llvm.umin.i64(i64 %.sroa.6.018.i.i305, i64 %.pn.i.i.i313) ; 3 uses
  %.not.i.i.i314 = icmp eq i64 %.pn.i.i.i313, 0
  br i1 %.not.i.i.i314, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315, label %bb.cl

bb.cl:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i311
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.07.019.i.i304, ptr align 1 %.pn3.i.i.i312, i64 %i.qv, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315: ; preds = %bb.cl, %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i311
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i304, i64 %i.qv
  %i.qx = sub nuw i64 %.sroa.6.018.i.i305, %i.qv  ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i306, i64 16
  %.not.i.i316 = icmp eq i64 %i.qx, 0
  br i1 %.not.i.i316, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319, label %.lr.ph.split.i.i302, !llvm.loop !86

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319: ; preds = %.lr.ph.split.i.i302, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315, %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit293
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 1 dereferenceable(4) %29)
  %i.qz = sub nuw i64 %.2129, %..i294             ; 2 uses
  %i.ra = icmp eq i64 %i.qz, 0                    ; 2 uses
  %i.rb = select i1 %1, i1 %i.ra, i1 false        ; 2 uses
  %i.rc = xor i1 %i.rb, true
  %i.rd = zext i1 %i.rc to i8
  store i8 %i.rd, ptr %i.i, align 1, !tbaa !1722
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %31, ptr noundef nonnull %i.ps, i64 noundef 14) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.re = select i1 %i.rb, i8 -128, i8 0
  %spec.select37.i325 = or i8 %.sroa.20.5, %i.re
  store i8 %spec.select37.i325, ptr %i.a, align 1, !tbaa !1268
  %i.rf = icmp ult i64 %..i294, 126
  br i1 %i.rf, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319
  %i.rg = trunc nuw nsw i64 %..i294 to i8
  %i.rh = or disjoint i8 %i.qc, %i.rg
  store i8 %i.rh, ptr %.1..1..1..1..sroa_idx705, align 1, !tbaa !1268
  br label %bb.cq

bb.cn:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319
  %i.ri = icmp ult i64 %..i294, 65536
  br i1 %i.ri, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i8 %i.qe, ptr %.1..1..1..1..sroa_idx704, align 1, !tbaa !1268
  %i.rj = trunc nuw i64 %..i294 to i16
  %i.rk = call noundef i16 @llvm.bswap.i16(i16 %i.rj)
  store i16 %i.rk, ptr %.2..2..2..2.gep.sroa_idx708, align 1
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  store i8 %i.qd, ptr %.1..1..1..1..sroa_idx703, align 1, !tbaa !1268
  %i.rl = call noundef i64 @llvm.bswap.i64(i64 %..i294)
  store i64 %i.rl, ptr %.2..2..2..2.gep.sroa_idx706, align 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cm
  %.0.sroa.phi.i327 = phi ptr [ %.2..2..2..2.gep.sroa_idx707, %bb.cm ], [ %.4..4..4..4.gep27.sroa_idx709, %bb.co ], [ %.10..10..10..10.gep28.sroa_idx710, %bb.cp ]
  %.0.i328 = phi i64 [ 6, %bb.cm ], [ 8, %bb.co ], [ 14, %bb.cp ]
  store i32 %i.ql, ptr %.0.sroa.phi.i327, align 1
  %i.rm = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %31, i64 noundef %.0.i328) ; 2 uses
  %i.rn = extractvalue { ptr, i64 } %i.rm, 1      ; 2 uses
  %i.ro = call i64 @llvm.umin.i64(i64 %i.rn, i64 14) ; 2 uses
  %.not.i.i.i.i331 = icmp eq i64 %i.rn, 0
  br i1 %.not.i.i.i.i331, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rp = extractvalue { ptr, i64 } %i.rm, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rp, ptr nonnull align 1 %i.a, i64 %i.ro, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333: ; preds = %bb.cq, %bb.cr
  %i.rq = load ptr, ptr %i.pt, align 8, !tbaa !2142
  %i.rr = load ptr, ptr %i.pu, align 8, !tbaa !2139 ; 2 uses
  %i.rs = ptrtoint ptr %i.rq to i64
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = sub i64 %i.rs, %i.rt
  %.sroa.speculated.i.i332 = call i64 @llvm.umin.i64(i64 %i.ru, i64 %i.ro)
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rr, i64 %.sroa.speculated.i.i332 ; 3 uses
  store ptr %i.rv, ptr %i.pu, align 8, !tbaa !2139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.rw = load ptr, ptr %i.pv, align 8, !tbaa !1469, !nonnull !1298, !align !1301
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  %i.rx = load ptr, ptr %i.pw, align 8, !tbaa !2138 ; 3 uses
  %i.ry = ptrtoint ptr %i.rv to i64
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = sub i64 %i.ry, %i.rz
  store ptr %i.rx, ptr %32, align 8, !tbaa !1302
  store i64 %i.sa, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.px, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !1861
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !9273)
  call void @llvm.experimental.noalias.scope.decl(metadata !9274)
  store ptr %32, ptr %4, align 8, !tbaa !2219, !alias.scope !9275
  store i64 1, ptr %i.pz, align 8, !alias.scope !9275
  store ptr %32, ptr %i.py, align 8, !tbaa !2220, !alias.scope !9275
  %.not.i.i.i.i.i.i336 = icmp eq ptr %i.rv, %i.rx
  br i1 %.not.i.i.i.i.i.i336, label %._crit_edge.i.i.i.i.i.i337, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342

._crit_edge.i.i.i.i.i.i337:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333
  store ptr %i.px, ptr %i.py, align 8, !tbaa !2220, !alias.scope !9275
  store i8 2, ptr %i.pz, align 8, !tbaa !2221, !alias.scope !9275
  %i.sb = load i64, ptr %i.qa, align 8, !tbaa !1764, !noalias !9275
  %.not.i.i.i.i.i.i.i339 = icmp eq i64 %i.sb, 0
  br i1 %.not.i.i.i.i.i.i.i339, label %._crit_edge.i.i.i.i.i.i.i340, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342

._crit_edge.i.i.i.i.i.i.i340:                     ; preds = %._crit_edge.i.i.i.i.i.i337
  store ptr %.ptr4.i.i.i.i.i.i341, ptr %i.py, align 8, !tbaa !2220, !alias.scope !9275
  store i8 0, ptr %i.py, align 8, !tbaa !1996, !alias.scope !9275
  store i8 3, ptr %i.pz, align 8, !tbaa !2221, !alias.scope !9275
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333, %._crit_edge.i.i.i.i.i.i337, %._crit_edge.i.i.i.i.i.i.i340
  %i.sc = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferES9_EEENSA_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.rw, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %36 = load i64, ptr %i.f, align 8, !tbaa !1265
  %i.sd = add i64 %36, %..i294
  store i64 %i.sd, ptr %i.f, align 8, !tbaa !1265
  %i.se = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.se, label %bb.cy, label %bb.cs

bb.cs:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342
  br i1 %i.ra, label %.thread507, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sf = load i64, ptr %i.pr, align 8, !tbaa !1764
  %.not.i.i.i343 = icmp eq i64 %i.sf, 0
  %.0.v.i.i.i344.sroa.sel = select i1 %.not.i.i.i343, ptr %.sroa.gep, ptr %i.pm ; 2 uses
  br i1 %.not16.i.i300, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %.lr.ph.i347

.lr.ph.i347:                                      ; preds = %bb.ct
  %.promoted.i348 = load ptr, ptr %i.pm, align 8  ; 3 uses
  %.not11.i352.peel = icmp eq ptr %.promoted.i348, %.0.v.i.i.i344.sroa.sel
  br i1 %.not11.i352.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i347
  %.promoted16.i349 = load i64, ptr %i.pn, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i353.peel = getelementptr inbounds nuw i8, ptr %.promoted.i348, i64 8
  %.sroa.2.0.copyload.i354.peel = load i64, ptr %.sroa.2.0..sroa_idx.i353.peel, align 8, !tbaa !1265
  %i.sg = sub i64 %.sroa.2.0.copyload.i354.peel, %.promoted16.i349 ; 2 uses
  %i.sh = icmp ult i64 %..i294, %i.sg             ; 2 uses
  %i.si = add i64 %..i294, %.promoted16.i349
  %storemerge.i355.peel = select i1 %i.sh, i64 %i.si, i64 0
  store i64 %storemerge.i355.peel, ptr %i.pn, align 8, !tbaa !2205
  br i1 %i.sh, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sj = sub nuw i64 %..i294, %i.sg              ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.promoted.i348, i64 16 ; 2 uses
  store ptr %i.sk, ptr %i.pm, align 8, !tbaa !2204
  %.not.i356.peel = icmp eq i64 %i.sj, 0
  br i1 %.not.i356.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %.peel.next563

.peel.next563:                                    ; preds = %bb.cv, %bb.cx
  %.0813.i351 = phi i64 [ %i.sn, %bb.cx ], [ %i.sj, %bb.cv ] ; 3 uses
  %i.sl = phi ptr [ %i.so, %bb.cx ], [ %i.sk, %bb.cv ] ; 3 uses
  %.not11.i352 = icmp eq ptr %i.sl, %.0.v.i.i.i344.sroa.sel
  br i1 %.not11.i352, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cw

bb.cw:                                            ; preds = %.peel.next563
  %.sroa.2.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %.sroa.2.0.copyload.i354 = load i64, ptr %.sroa.2.0..sroa_idx.i353, align 8, !tbaa !1265 ; 2 uses
  %i.sm = icmp ult i64 %.0813.i351, %.sroa.2.0.copyload.i354 ; 2 uses
  %storemerge.i355 = select i1 %i.sm, i64 %.0813.i351, i64 0
  store i64 %storemerge.i355, ptr %i.pn, align 8, !tbaa !2205
  br i1 %i.sm, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sn = sub nuw i64 %.0813.i351, %.sroa.2.0.copyload.i354 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 16 ; 2 uses
  store ptr %i.so, ptr %i.pm, align 8, !tbaa !2204
  %.not.i356 = icmp eq i64 %i.sn, 0
  br i1 %.not.i356, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %.peel.next563, !llvm.loop !9257

_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357: ; preds = %bb.cx, %bb.cw, %.peel.next563, %.lr.ph.i347, %bb.cu, %bb.cv, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %bb.ch

.thread507:                                       ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  br label %bb.cz

bb.cy:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342
  %37 = load i64, ptr %i.f, align 8, !tbaa !1265
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  br label %bb.da

bb.cz:                                            ; preds = %.thread507, %bb.cf, %.thread487, %bb.am, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread
  %i.sp = load i64, ptr %i.f, align 8, !tbaa !1265
  br label %bb.da

bb.da:                                            ; preds = %bb.a, %bb.cz, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit, %.thread476, %bb.be, %.thread495, %bb.cy
  %.14 = phi i64 [ %i.gx, %.thread476 ], [ %i.sp, %bb.cz ], [ %.3454, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit ], [ %37, %bb.cy ], [ %.10.ph, %.thread495 ], [ %i.kx, %bb.be ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  ret i64 %.14
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5beast9websocket6detail9impl_baseILb1EE7deflateINS0_6detail12buffers_pairILb1EEEEEbRNS_4asio14mutable_bufferERNS0_14buffers_suffixIT_EEbRmRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::optional", align 4   ; 5 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %8 = alloca %"class.boost::optional", align 4   ; 5 uses
  %9 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %10 = alloca %"class.boost::optional", align 4  ; 5 uses
  %11 = alloca %"struct.boost::beast::zlib::z_params", align 8 ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1625
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !2207
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !2208
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 2, ptr %i.e, align 8, !tbaa !2209
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1764
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !2211
  %i.j = load ptr, ptr %1, align 8, !tbaa !1765
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !2210
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2204 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1764
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  %.0.v.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 16, i64 32
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.0.v.i.i.i.i.i ; 3 uses
  %.not93 = icmp eq ptr %i.m, %.0.i.i.i.i.i
  br i1 %.not93, label %.thread78, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread74..backedge_crit_edge, %.lr.ph
  %.pre97.ph = phi ptr [ %.pre.pre, %_ZNK5boost6system10error_codecvbEv.exit.thread74..backedge_crit_edge ], [ %i.m, %.lr.ph ]
  %.sroa.067.094.ph = phi ptr [ %i.bn, %_ZNK5boost6system10error_codecvbEv.exit.thread74..backedge_crit_edge ], [ %i.m, %.lr.ph ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.p
  %.sroa.067.094 = phi ptr [ %.old, %bb.p ], [ %.sroa.067.094.ph, %.backedge.outer ] ; 5 uses
  %i.s = icmp eq ptr %.sroa.067.094, %.pre97.ph
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %.sroa.067.094, align 8, !tbaa !1302 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.067.094, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !1265 ; 3 uses
  br i1 %i.s, label %bb.b, label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEE14const_iteratordeEv.exit

bb.b:                                             ; preds = %.backedge
  %i.t = load i64, ptr %i.p, align 8, !tbaa !2205
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.t, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.v = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  br label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEE14const_iteratordeEv.exit

_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEE14const_iteratordeEv.exit: ; preds = %.backedge, %bb.b
  %.pn3.i.i = phi ptr [ %i.u, %bb.b ], [ %.sroa.0.0.copyload1.i.i, %.backedge ]
  %.pn.i.i = phi i64 [ %i.v, %bb.b ], [ %.sroa.4.0.copyload.i.i, %.backedge ] ; 2 uses
  store i64 %.pn.i.i, ptr %i.f, align 8, !tbaa !2212
  %i.w = icmp eq i64 %.pn.i.i, 0
  br i1 %i.w, label %bb.p, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEE14const_iteratordeEv.exit
  store ptr %.pn3.i.i, ptr %11, align 8, !tbaa !2213
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i8 1, ptr %10, align 4, !tbaa !2137
  store i32 0, ptr %i.q, align 4, !tbaa !1268
  call void @_ZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(5928) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 4 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.x = load i64, ptr %i.r, align 8, !tbaa !1278 ; 2 uses
  %i.y = and i64 %i.x, 1
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread74, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 1
  br i1 %i.z, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.d
  %i.aa = load i32, ptr %5, align 8, !tbaa !1488
  %.not90 = icmp eq i32 %i.aa, 0
  br i1 %.not90, label %_ZNK5boost6system10error_codecvbEv.exit.thread74, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.d, %_ZNK5boost6system10error_codecvbEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  invoke void @_ZN5boost5beast4zlib15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %9, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #37
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %.sroa.056.0.copyload = load i32, ptr %9, align 8 ; 3 uses
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.659.0.copyload = load ptr, ptr %.sroa.659.0..sroa_idx, align 8, !tbaa !1268 ; 3 uses
  %.sroa.962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.962.0.copyload = load i64, ptr %.sroa.962.0..sroa_idx, align 8, !tbaa !1265 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !1278 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 1                    ; 3 uses
  %i.af = icmp eq i64 %.sroa.962.0.copyload, 1    ; 3 uses
  %i.ag = xor i1 %i.af, %i.ae
  br i1 %i.ag, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  %or.cond.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i.i, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %5, align 8, !tbaa !1268  ; 2 uses
  br i1 %i.ae, label %bb.h, label %_ZNK5boost6system10error_code5valueEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1281
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = urem i64 %i.ak, 2097143
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 1000
  %i.ao = add i32 %i.an, %i.ah
  br label %_ZNK5boost6system10error_code5valueEv.exit.i.i

_ZNK5boost6system10error_code5valueEv.exit.i.i:   ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.ao, %bb.h ], [ %i.ah, %bb.g ]
  br i1 %i.af, label %bb.i, label %_ZNK5boost6system10error_code5valueEv.exit17.i.i

bb.i:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit.i.i
  %i.ap = ptrtoint ptr %.sroa.659.0.copyload to i64
  %i.aq = urem i64 %i.ap, 2097143
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = mul nuw nsw i32 %i.ar, 1000
  %i.at = add i32 %i.as, %.sroa.056.0.copyload
  br label %_ZNK5boost6system10error_code5valueEv.exit17.i.i

_ZNK5boost6system10error_code5valueEv.exit17.i.i: ; preds = %bb.i, %_ZNK5boost6system10error_code5valueEv.exit.i.i
  %.0.i16.i.i = phi i32 [ %i.at, %bb.i ], [ %.sroa.056.0.copyload, %_ZNK5boost6system10error_code5valueEv.exit.i.i ]
  %i.au = icmp eq i32 %.0.i.i.i, %.0.i16.i.i
  br i1 %i.au, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i.i
  switch i64 %i.ad, label %bb.l [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1268
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i.i

_ZNK5boost6system10error_code8categoryEv.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.i18.i.i = phi ptr [ %i.aw, %bb.l ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.k ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.j ] ; 2 uses
  switch i64 %.sroa.962.0.copyload, label %bb.n [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit20.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i.i

bb.n:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i.i

_ZNK5boost6system10error_code8categoryEv.exit20.i.i: ; preds = %bb.n, %bb.m, %_ZNK5boost6system10error_code8categoryEv.exit.i.i
  %.0.i19.i.i = phi ptr [ %.sroa.659.0.copyload, %bb.n ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.m ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %_ZNK5boost6system10error_code8categoryEv.exit.i.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !1276 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = icmp eq ptr %.0.i18.i.i, %.0.i19.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i18.i.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp eq i64 %i.bc, %i.ay
  %i.be = select i1 %i.az, i1 %i.ba, i1 %i.bd
  br i1 %i.be, label %bb.o, label %.critedge

_ZN5boost6systemneERKNS0_10error_codeES3_.exit:   ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1281
  %i.bh = icmp eq ptr %i.bg, %.sroa.659.0.copyload
  %i.bi = load i32, ptr %5, align 8
  %i.bj = icmp eq i32 %i.bi, %.sroa.056.0.copyload
  %i.bk = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %i.bk, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.thread78

_ZNK5boost6system10error_codecvbEv.exit.thread74: ; preds = %bb.c, %_ZNK5boost6system10error_codecvbEv.exit
  %i.bl = load i64, ptr %i.i, align 8, !tbaa !2211
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.067.094, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bn, %.0.i.i.i.i.i
  %or.cond95 = select i1 %i.bm, i1 true, i1 %.not
  br i1 %or.cond95, label %.thread78, label %_ZNK5boost6system10error_codecvbEv.exit.thread74..backedge_crit_edge

_ZNK5boost6system10error_codecvbEv.exit.thread74..backedge_crit_edge: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread74
  %.pre.pre = load ptr, ptr %i.l, align 8, !tbaa !2204
  br label %.backedge.outer

bb.p:                                             ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEE14const_iteratordeEv.exit
  %.old = getelementptr inbounds nuw i8, ptr %.sroa.067.094, i64 16 ; 2 uses
  %.not.old = icmp eq ptr %.old, %.0.i.i.i.i.i
  br i1 %.not.old, label %.thread78, label %.backedge

.thread78:                                        ; preds = %bb.p, %_ZNK5boost6system10error_codecvbEv.exit.thread74, %bb.a, %bb.o
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !2207 ; 5 uses
  store i64 %i.bo, ptr %4, align 8, !tbaa !1265
  %i.bp = load i64, ptr %i.n, align 8, !tbaa !1764
  %.not.i.i.i = icmp eq i64 %i.bp, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 16, i64 32
  %.0.i.i.i41 = getelementptr inbounds nuw i8, ptr %2, i64 %.0.v.i.i.i ; 5 uses
  %.not12.i = icmp eq i64 %i.bo, 0
  br i1 %.not12.i, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread78
  %.promoted.i = load ptr, ptr %i.l, align 8      ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not11.i.peel = icmp eq ptr %.promoted.i, %.0.i.i.i41
  br i1 %.not11.i.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %.promoted16.i = load i64, ptr %i.bq, align 8   ; 2 uses
  %.sroa.2.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 8
  %.sroa.2.0.copyload.i.peel = load i64, ptr %.sroa.2.0..sroa_idx.i.peel, align 8, !tbaa !1265
  %i.br = sub i64 %.sroa.2.0.copyload.i.peel, %.promoted16.i ; 2 uses
  %i.bs = icmp ult i64 %i.bo, %i.br               ; 2 uses
  %i.bt = add i64 %i.bo, %.promoted16.i
  %storemerge.i.peel = select i1 %i.bs, i64 %i.bt, i64 0
  store i64 %storemerge.i.peel, ptr %i.bq, align 8, !tbaa !2205
  br i1 %i.bs, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = sub nuw i64 %i.bo, %i.br                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 16 ; 2 uses
  store ptr %i.bv, ptr %i.l, align 8, !tbaa !2204
  %.not.i.peel = icmp eq i64 %i.bu, 0
  br i1 %.not.i.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %.peel.next

.peel.next:                                       ; preds = %bb.r, %bb.t
  %.0813.i = phi i64 [ %i.by, %bb.t ], [ %i.bu, %bb.r ] ; 3 uses
  %i.bw = phi ptr [ %i.bz, %bb.t ], [ %i.bv, %bb.r ] ; 3 uses
  %.not11.i = icmp eq ptr %i.bw, %.0.i.i.i41
  br i1 %.not11.i, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.s

bb.s:                                             ; preds = %.peel.next
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1265 ; 2 uses
  %i.bx = icmp ult i64 %.0813.i, %.sroa.2.0.copyload.i ; 2 uses
  %storemerge.i = select i1 %i.bx, i64 %.0813.i, i64 0
  store i64 %storemerge.i, ptr %i.bq, align 8, !tbaa !2205
  br i1 %i.bx, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = sub nuw i64 %.0813.i, %.sroa.2.0.copyload.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  store ptr %i.bz, ptr %i.l, align 8, !tbaa !2204
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %.peel.next, !llvm.loop !9276

_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit: ; preds = %.peel.next, %bb.s, %bb.t, %.lr.ph.i, %bb.q, %bb.r, %.thread78
  %i.ca = load i64, ptr %i.i, align 8, !tbaa !2211
  %i.cb = icmp ne i64 %i.ca, 0
  %or.cond = and i1 %3, %i.cb
  br i1 %or.cond, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !2204 ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.cc, %.0.i.i.i41
  br i1 %.not.i.i42, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ce = load i64, ptr %i.cd, align 8
  %.sroa.4.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !1265
  %i.cf = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i, i64 %i.ce) ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %.not.i.peel.i.i = icmp eq ptr %i.cg, %.0.i.i.i41
  br i1 %.not.i.peel.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  %.010.i.i.i = phi i64 [ %i.ch, %.lr.ph.split.i.i.i ], [ %i.cf, %.lr.ph.i.i.i ]
  %.sroa.03.09.i.i.i = phi ptr [ %i.ci, %.lr.ph.split.i.i.i ], [ %i.cg, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !1265
  %i.ch = add i64 %.sroa.4.0.copyload.i.i.i.i, %.010.i.i.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.ci, %.0.i.i.i41
  br i1 %.not.i.i.i43, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !83

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit: ; preds = %.lr.ph.split.i.i.i, %.lr.ph.i.i.i
  %.0.lcssa.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i ], [ %i.ch, %.lr.ph.split.i.i.i ]
  %i.cj = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %i.cj, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread, label %bb.ai

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread: ; preds = %bb.u, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i8 1, ptr %8, align 4, !tbaa !2137
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 1, ptr %i.ck, align 4, !tbaa !1268
  call void @_ZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(5928) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 4 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  invoke void @_ZN5boost5beast4zlib15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %7, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit44 unwind label %bb.v

bb.v:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #37
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit44: ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread
  %.sroa.0.0.copyload = load i32, ptr %7, align 8 ; 3 uses
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.652.0.copyload = load ptr, ptr %.sroa.652.0..sroa_idx, align 8, !tbaa !1268 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1265 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !1278 ; 5 uses
  %i.cp = icmp eq i64 %i.co, 1                    ; 3 uses
  %i.cq = icmp eq i64 %.sroa.9.0.copyload, 1      ; 3 uses
  %i.cr = xor i1 %i.cq, %i.cp
  br i1 %i.cr, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit44
  %or.cond.i = and i1 %i.cq, %i.cp
  br i1 %or.cond.i, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = load i32, ptr %5, align 8, !tbaa !1268  ; 2 uses
  br i1 %i.cp, label %bb.y, label %_ZNK5boost6system10error_code5valueEv.exit.i

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1281
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = urem i64 %i.cv, 2097143
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = mul nuw nsw i32 %i.cx, 1000
  %i.cz = add i32 %i.cy, %i.cs
  br label %_ZNK5boost6system10error_code5valueEv.exit.i

_ZNK5boost6system10error_code5valueEv.exit.i:     ; preds = %bb.y, %bb.x
  %.0.i.i45 = phi i32 [ %i.cz, %bb.y ], [ %i.cs, %bb.x ]
  br i1 %i.cq, label %bb.z, label %_ZNK5boost6system10error_code5valueEv.exit17.i

bb.z:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit.i
  %i.da = ptrtoint ptr %.sroa.652.0.copyload to i64
  %i.db = urem i64 %i.da, 2097143
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = mul nuw nsw i32 %i.dc, 1000
  %i.de = add i32 %i.dd, %.sroa.0.0.copyload
  br label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %bb.z, %_ZNK5boost6system10error_code5valueEv.exit.i
  %.0.i16.i = phi i32 [ %i.de, %bb.z ], [ %.sroa.0.0.copyload, %_ZNK5boost6system10error_code5valueEv.exit.i ]
  %i.df = icmp eq i32 %.0.i.i45, %.0.i16.i
  br i1 %i.df, label %bb.aa, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.aa:                                            ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  switch i64 %i.co, label %bb.ac [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1268
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i

_ZNK5boost6system10error_code8categoryEv.exit.i:  ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0.i18.i = phi ptr [ %i.dh, %bb.ac ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.ab ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.aa ] ; 2 uses
  switch i64 %.sroa.9.0.copyload, label %bb.ae [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit20.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i

bb.ae:                                            ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i

_ZNK5boost6system10error_code8categoryEv.exit20.i: ; preds = %bb.ae, %bb.ad, %_ZNK5boost6system10error_code8categoryEv.exit.i
  %.0.i19.i = phi ptr [ %.sroa.652.0.copyload, %bb.ae ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.ad ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %_ZNK5boost6system10error_code8categoryEv.exit.i ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i19.i, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1276 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = icmp eq ptr %.0.i18.i, %.0.i19.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = icmp eq i64 %i.dn, %i.dj
  %i.dp = select i1 %i.dk, i1 %i.dl, i1 %i.do
  br i1 %i.dp, label %bb.af, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1281
  %i.ds = icmp eq ptr %i.dr, %.sroa.652.0.copyload
end_hunk_1
