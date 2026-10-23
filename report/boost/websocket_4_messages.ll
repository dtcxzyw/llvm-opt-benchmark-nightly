Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/websocket_4_messages?download=true
inline.NumInlined: 5730
inline.NumDeleted: 2407
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN5boost15throw_exceptionINS_6system12system_errorEEEvRKT_RKNS_15source_locationE:bb.a
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6system12system_errorC2ERKNS0_10error_codeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZNK5boost6system10error_code4whatB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !86     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !87
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6system12system_errorE, i64 16), ptr %0, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !421
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !86     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !87
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.g
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS4_12const_bufferEEEmbRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.a = alloca [14 x i8], align 1                ; 12 uses
  %5 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.b = alloca [14 x i8], align 1                ; 12 uses
  %6 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>>::const_iterator::increment", align 8 ; 4 uses
  %7 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>>::const_iterator", align 8 ; 10 uses
  %i.c = alloca [14 x i8], align 1                ; 9 uses
  %8 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::const_buffer>::const_iterator", align 8 ; 6 uses
  %i.d = alloca [14 x i8], align 1                ; 9 uses
  %9 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.e = alloca [14 x i8], align 1                ; 12 uses
  %i.f = alloca i64, align 8                      ; 22 uses
  %10 = alloca %"class.boost::beast::buffers_suffix.102", align 8 ; 9 uses
  %11 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 13 uses
  %12 = alloca %"struct.std::array", align 1      ; 4 uses
  %13 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %14 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %15 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 9 uses
  %16 = alloca %"class.boost::beast::buffers_cat_view.104", align 8 ; 10 uses
  %17 = alloca %"class.boost::beast::buffers_suffix.102", align 8 ; 11 uses
  %18 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %19 = alloca %"class.boost::beast::buffers_cat_view.108", align 8 ; 14 uses
  %20 = alloca %"class.boost::beast::buffers_prefix_view.112", align 8 ; 12 uses
  %21 = alloca %"struct.std::array", align 1      ; 6 uses
  %22 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 9 uses
  %23 = alloca %"class.boost::beast::buffers_suffix.102", align 8 ; 9 uses
  %24 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %25 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %26 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %27 = alloca %"class.boost::beast::buffers_suffix.102", align 8 ; 7 uses
  %28 = alloca %"struct.std::array", align 1      ; 6 uses
  %29 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 8 uses
  %30 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %31 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !303    ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  store i64 0, ptr %i.f, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = tail call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.h, label %bb.cz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2245 ; 7 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !422, !range !119, !noundef !120
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread577, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.247.0.copyload = load i64, ptr %.sroa.247.0..sroa_idx, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 2247
  %i.m = load i8, ptr %i.l, align 1, !tbaa !413, !range !119, !noundef !120
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2246
  store i8 %i.m, ptr %i.n, align 2, !tbaa !423
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !420
  %.not2.i = icmp eq ptr %i.p, null
  br i1 %.not2.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 2249
  %i.r = load i8, ptr %i.q, align 1, !tbaa !414, !range !119, !noundef !120
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp uge i64 %.sroa.247.0.copyload, %i.u
  %narrow.i = select i1 %i.s, i1 %i.v, i1 false
  %.ph.i = zext i1 %narrow.i to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  store i8 %.ph.i, ptr %i.w, align 8, !tbaa !424
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  store i8 0, ptr %i.x, align 8, !tbaa !424
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 2232
  %i.z = load i32, ptr %i.y, align 8, !tbaa !425
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !236
  %.not3.i = icmp eq ptr %i.ac, null
  br i1 %.not3.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !415
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !426
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !415 ; 2 uses
  %.not.i = icmp eq i64 %i.ae, %i.ag
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.ah = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !426
  %i.aj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #39, !noalias !1182
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !236 ; 2 uses
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !236
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %i.am = load i64, ptr %i.al, align 8, !tbaa !415
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  store i64 %i.am, ptr %i.an, align 8, !tbaa !426
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !236 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !236
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i: ; preds = %bb.h, %bb.g
  %.sink.i = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %bb.h ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sink.i) #38
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i, %bb.h, %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !424, !range !119, !noundef !120
  %i.as = shl nuw nsw i8 %i.ar, 2                 ; 2 uses
  %.pre = load i8, ptr %i.i, align 1, !tbaa !422, !range !119
  %i.at = trunc nuw i8 %.pre to i1
  br i1 %i.at, label %.thread577, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 2250
  %i.av = load i8, ptr %i.au, align 2, !tbaa !351
  br label %.thread577

.thread577:                                       ; preds = %bb.b, %bb.i, %bb.j
  %.sroa.29.0579 = phi i8 [ %i.as, %bb.j ], [ %i.as, %bb.i ], [ 0, %bb.b ] ; 5 uses
  %i.aw = phi i8 [ %i.av, %bb.j ], [ 0, %bb.i ], [ 0, %bb.b ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 2232 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !425
  %.not.not.not = icmp eq i32 %i.ay, 0            ; 2 uses
  %i.az = select i1 %.not.not.not, i8 2, i8 0
  %i.ba = or disjoint i8 %i.az, %.sroa.29.0579    ; 2 uses
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.229.0.copyload = load i64, ptr %.sroa.229.0..sroa_idx, align 8, !tbaa !84 ; 15 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !424, !range !119, !noundef !120
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.k, label %bb.ae

bb.k:                                             ; preds = %.thread577
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !427
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %10, ptr %i.be, align 8, !tbaa !430
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 0, ptr %i.bf, align 8, !tbaa !431
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 2264 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !236
  %i.bl = load i64, ptr %i.bh, align 8, !tbaa !426
  store ptr %i.bk, ptr %11, align 8
  store i64 %i.bl, ptr %i.bi, align 8
  %i.bm = call noundef zeroext i1 @_ZN5boost5beast9websocket6detail9impl_baseILb1EE7deflateINS_4asio12const_bufferEEEbRNS6_14mutable_bufferERNS0_14buffers_suffixIT_EEbRmRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.bn = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.bn, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 40
  %.2..2..2..2.gep.sroa_idx614 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.4..4..4..4.gep27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.10..10..10..10.gep28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.br = xor i1 %1, true
  %i.bs = zext i1 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.4343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.ptr4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  %.1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.2..2..2..2.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.1..1..1..1..sroa_idx612 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.2..2..2..2.gep.sroa_idx615 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.1..1..1..1..sroa_idx613 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %bb.l

.thread:                                          ; preds = %bb.z, %bb.k
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !84
  br label %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit

bb.l:                                             ; preds = %.lr.ph, %bb.z
  %i.ca = phi i1 [ %i.bm, %.lr.ph ], [ %i.dx, %bb.z ] ; 3 uses
  %.sroa.12.0487 = phi i32 [ undef, %.lr.ph ], [ %.sroa.12.1, %bb.z ]
  %.sroa.20.0486 = phi i8 [ %i.aw, %.lr.ph ], [ 0, %bb.z ]
  %.sroa.29.1485 = phi i8 [ %i.ba, %.lr.ph ], [ %i.du, %bb.z ] ; 3 uses
  %.sroa.2.0.copyload = load i64, ptr %i.bi, align 8, !tbaa !84 ; 6 uses
  %i.cb = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.cb, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = and i8 %.sroa.29.1485, 2
  %.not148 = icmp eq i8 %i.cc, 0                  ; 2 uses
  br i1 %.not148, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %0, align 8, !tbaa !303
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2393
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !416, !range !119, !noundef !120
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.cg)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %i.ci = call noundef i32 %i.ch(), !inline_history !22 ; 3 uses
  %.not.i149 = icmp eq i32 %i.ci, 0
  br i1 %.not.i149, label %bb.o, label %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit, !llvm.loop !23

_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %12, i32 noundef %i.ci)
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(4) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit, %bb.m
  %.sroa.12.1 = phi i32 [ %.sroa.12.0487, %bb.m ], [ %i.ci, %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit ] ; 2 uses
  %i.cj = xor i1 %i.ca, true
  %i.ck = zext i1 %i.cj to i8
  %i.cl = and i8 %.sroa.29.1485, -2
  %i.cm = or disjoint i8 %i.cl, %i.ck             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %13, ptr noundef nonnull %i.bo, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cn = select i1 %i.ca, i8 0, i8 -128
  %i.co = shl nuw nsw i8 %.sroa.29.1485, 4
  %i.cp = and i8 %i.co, 64
  %spec.select.i = or i8 %.sroa.20.0486, %i.cp
  %spec.select37.i = or i8 %spec.select.i, %i.cn
  store i8 %spec.select37.i, ptr %i.e, align 1, !tbaa !87
  %i.cq = shl i8 %i.cm, 6                         ; 3 uses
  %i.cr = icmp ult i64 %.sroa.2.0.copyload, 126
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = and i8 %i.cq, -128
  %i.ct = trunc nuw nsw i64 %.sroa.2.0.copyload to i8
  %i.cu = or disjoint i8 %i.cs, %i.ct
  store i8 %i.cu, ptr %.1..1..1..1..sroa_idx613, align 1, !tbaa !87
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cv = icmp ult i64 %.sroa.2.0.copyload, 65536
  br i1 %i.cv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cw = or i8 %i.cq, 126
  store i8 %i.cw, ptr %.1..1..1..1..sroa_idx612, align 1, !tbaa !87
  %i.cx = trunc nuw i64 %.sroa.2.0.copyload to i16
  %i.cy = call noundef i16 @llvm.bswap.i16(i16 %i.cx)
  store i16 %i.cy, ptr %.2..2..2..2.gep.sroa_idx615, align 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cz = or i8 %i.cq, 127
  store i8 %i.cz, ptr %.1..1..1..1..sroa_idx, align 1, !tbaa !87
  %i.da = call noundef i64 @llvm.bswap.i64(i64 %.sroa.2.0.copyload)
  store i64 %i.da, ptr %.2..2..2..2.gep.sroa_idx, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.0.sroa.phi.i = phi ptr [ %.2..2..2..2.gep.sroa_idx614, %bb.q ], [ %.4..4..4..4.gep27.sroa_idx, %bb.s ], [ %.10..10..10..10.gep28.sroa_idx, %bb.t ]
  %.0.i = phi i64 [ 2, %bb.q ], [ 4, %bb.s ], [ 10, %bb.t ] ; 2 uses
  br i1 %.not148, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %.sroa.12.1, ptr %.0.sroa.phi.i, align 1
  %i.db = add nuw nsw i64 %.0.i, 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.i = phi i64 [ %i.db, %bb.v ], [ %.0.i, %bb.u ]
  %i.dc = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %13, i64 noundef %.1.i) ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.dc, 1      ; 2 uses
  %i.de = call i64 @llvm.umin.i64(i64 %i.dd, i64 14) ; 2 uses
  %.not.i.i.i.i150 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i150, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = extractvalue { ptr, i64 } %i.dc, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr nonnull align 1 %i.e, i64 %i.de, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit: ; preds = %bb.w, %bb.x
  %i.dg = load ptr, ptr %i.bp, align 8, !tbaa !432
  %i.dh = load ptr, ptr %i.bq, align 8, !tbaa !433 ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.de)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.speculated.i.i ; 3 uses
  store ptr %i.dl, ptr %i.bq, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 %i.bs, ptr %i.i, align 1, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.dm = load ptr, ptr %i.bu, align 8, !tbaa !434 ; 3 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  store ptr %i.dm, ptr %14, align 8, !tbaa !229
  store i64 %i.dp, ptr %.sroa.4343.0..sroa_idx, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !427
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  store ptr %14, ptr %9, align 8, !tbaa !439, !alias.scope !1185
  store i64 1, ptr %i.bx, align 8, !alias.scope !1185
  store ptr %14, ptr %i.bw, align 8, !tbaa !441, !alias.scope !1185
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !441, !alias.scope !1185
  store i8 2, ptr %i.bx, align 8, !tbaa !442, !alias.scope !1185
  %i.dq = load i64, ptr %i.by, align 8, !tbaa !444, !noalias !1185
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr %.ptr4.i.i.i.i.i.i, ptr %i.bw, align 8, !tbaa !441, !alias.scope !1185
  store i8 0, ptr %i.bw, align 8, !tbaa !446, !alias.scope !1185
  store i8 3, ptr %i.bx, align 8, !tbaa !442, !alias.scope !1185
  br label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit, %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS4_12const_bufferEEEmbRKT_RNS_6system10error_codeE:bb.a
  %i.ea = icmp eq i32 %i.dz, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 109
  %i.ec = load i8, ptr %i.eb, align 1, !range !119
  %i.ed = trunc nuw i8 %i.ec to i1
  %or.cond.i = select i1 %i.ea, i1 %i.ed, i1 false
  br i1 %or.cond.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = icmp eq i32 %i.dz, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.eg = load i8, ptr %i.ef, align 4, !range !119
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond6.i = select i1 %i.ee, i1 %i.eh, i1 false
  br i1 %or.cond6.i, label %bb.ad, label %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ei = load ptr, ptr %i.bj, align 8, !tbaa !420
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  call void @_ZN5boost5beast4zlib6detail14deflate_stream7doResetEv(ptr noundef nonnull align 8 dereferenceable(5928) %i.ej)
  br label %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread

_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread: ; preds = %bb.aa, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.cy

_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit: ; preds = %.thread423, %.thread
  %.3414 = phi i64 [ %i.dt, %.thread423 ], [ %i.bz, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.cz

bb.ae:                                            ; preds = %.thread577
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 2246
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !423, !range !119, !noundef !120
  %i.em = trunc nuw i8 %i.el to i1                ; 2 uses
  br i1 %.not.not.not, label %bb.bg, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.em, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %15, ptr noundef nonnull %i.en, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.eo = select i1 %1, i8 -128, i8 0
  %i.ep = shl nuw nsw i8 %.sroa.29.0579, 4
  %i.eq = or disjoint i8 %i.ep, %i.eo
  %spec.select37.i158 = or i8 %i.aw, %i.eq
  store i8 %spec.select37.i158, ptr %i.d, align 1, !tbaa !87
  %i.er = icmp ult i64 %.sroa.229.0.copyload, 126
  br i1 %i.er, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.es = trunc nuw nsw i64 %.sroa.229.0.copyload to i8
  %.1..1..1..1..sroa_idx616 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.es, ptr %.1..1..1..1..sroa_idx616, align 1, !tbaa !87
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.et = icmp ult i64 %.sroa.229.0.copyload, 65536
  br i1 %i.et, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.1..1..1..1..sroa_idx618 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 126, ptr %.1..1..1..1..sroa_idx618, align 1, !tbaa !87
  %i.eu = trunc nuw i64 %.sroa.229.0.copyload to i16
  %i.ev = call noundef i16 @llvm.bswap.i16(i16 %i.eu)
  %.2..2..2..2.gep.sroa_idx620 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.ev, ptr %.2..2..2..2.gep.sroa_idx620, align 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %.1..1..1..1..sroa_idx617 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 127, ptr %.1..1..1..1..sroa_idx617, align 1, !tbaa !87
  %i.ew = call noundef i64 @llvm.bswap.i64(i64 %.sroa.229.0.copyload)
  %.2..2..2..2.gep.sroa_idx619 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i64 %i.ew, ptr %.2..2..2..2.gep.sroa_idx619, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.aj, %bb.ak
  %.0.i161 = phi i64 [ 2, %bb.ah ], [ 4, %bb.aj ], [ 10, %bb.ak ]
  %i.ex = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %15, i64 noundef %.0.i161) ; 2 uses
  %i.ey = extractvalue { ptr, i64 } %i.ex, 1      ; 2 uses
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ey, i64 14) ; 2 uses
  %.not.i.i.i.i164 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i.i164, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = extractvalue { ptr, i64 } %i.ex, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr nonnull align 1 %i.d, i64 %i.ez, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166: ; preds = %bb.al, %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !432
  %i.fd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !433 ; 2 uses
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %.sroa.speculated.i.i165 = call i64 @llvm.umin.i64(i64 %i.fh, i64 %i.ez)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.speculated.i.i165 ; 3 uses
  store ptr %i.fi, ptr %i.fd, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fj = xor i1 %1, true
  %i.fk = zext i1 %i.fj to i8
  store i8 %i.fk, ptr %i.i, align 1, !tbaa !422
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !434 ; 3 uses
  %i.fo = ptrtoint ptr %i.fi to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  store ptr %i.fn, ptr %16, align 8, !tbaa !229
  %.sroa.4341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.fq, ptr %.sroa.4341.0..sroa_idx, align 8, !tbaa !84
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !427
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  store ptr %16, ptr %8, align 8, !tbaa !450, !alias.scope !1188
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i64 1, ptr %i.ft, align 8, !alias.scope !1188
  store ptr %16, ptr %i.fs, align 8, !tbaa !441, !alias.scope !1188
  %.not.i.i.i.i.i.i169 = icmp eq ptr %i.fi, %i.fn
  br i1 %.not.i.i.i.i.i.i169, label %._crit_edge.i.i.i.i.i.i170, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i170:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !451, !alias.scope !1188
  store i8 2, ptr %i.ft, align 8, !tbaa !452, !alias.scope !1188
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 24
  %.sroa.3.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !84, !noalias !1188
  %.not.i.i.i.i.i.i.i172 = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i172, label %._crit_edge.i.i.i.i.i.i.i173, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i.i173:                     ; preds = %._crit_edge.i.i.i.i.i.i170
  %.ptr4.i.i.i.i.i.i174 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %.ptr4.i.i.i.i.i.i174, ptr %i.fs, align 8, !tbaa !451, !alias.scope !1188
  store i8 0, ptr %i.fs, align 8, !tbaa !446, !alias.scope !1188
  store i8 3, ptr %i.ft, align 8, !tbaa !452, !alias.scope !1188
  br label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166, %._crit_edge.i.i.i.i.i.i170, %._crit_edge.i.i.i.i.i.i.i173
  %i.fu = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEENSD_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  %i.fv = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.fw = load i64, ptr %i.f, align 8, !tbaa !84  ; 2 uses
  br i1 %i.fv, label %.thread436, label %bb.an

.thread436:                                       ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.cz

bb.an:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit
  %i.fx = add i64 %i.fw, %.sroa.229.0.copyload
  store i64 %i.fx, ptr %i.f, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.cy

bb.ao:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !427
  %i.fy = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %17, ptr %i.fy, align 8, !tbaa !430
  %i.fz = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 5 uses
  store i64 0, ptr %i.fz, align 8, !tbaa !431
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.gb = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.gc = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.gd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ge = xor i1 %1, true
  %i.gf = zext i1 %i.ge to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gi = ptrtoint ptr %17 to i64
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.gm = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 56
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.gq = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.gr = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.gs = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gx = shl nsw i8 %.sroa.29.0579, 4            ; 2 uses
  %i.gy = or disjoint i8 0, 127
  %i.gz = or disjoint i8 0, 126
  %i.ha = shl nuw nsw i8 %i.ba, 1
  %i.hb = and i8 %i.ha, 4
  %i.hc = zext nneg i8 %i.hb to i64
  %i.hd = or i8 %i.aw, %i.gx
  %.1..1..1..1..sroa_idx621 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx624 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx622 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx625 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx623 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit, %bb.ao
  %.sroa.20.3 = phi i8 [ %i.hd, %bb.ao ], [ %i.gx, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit ]
  %.0143 = phi i64 [ %.sroa.229.0.copyload, %bb.ao ], [ %i.hf, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit ] ; 2 uses
  %i.he = load i64, ptr %i.ga, align 8, !tbaa !426
  %..i = call noundef i64 @llvm.umin.i64(i64 %.0143, i64 %i.he) ; 14 uses
  %i.hf = sub nuw i64 %.0143, %..i                ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 0                    ; 2 uses
  %i.hh = and i1 %1, %i.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %18, ptr noundef nonnull %i.gb, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.hi = select i1 %i.hh, i8 -128, i8 0
  %spec.select37.i180 = or i8 %.sroa.20.3, %i.hi
  store i8 %spec.select37.i180, ptr %i.c, align 1, !tbaa !87
  %i.hj = icmp ult i64 %..i, 126
  br i1 %i.hj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hk = trunc nuw nsw i64 %..i to i8
  %i.hl = or disjoint i8 0, %i.hk
  store i8 %i.hl, ptr %.1..1..1..1..sroa_idx623, align 1, !tbaa !87
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.hm = icmp ult i64 %..i, 65536
  br i1 %i.hm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i8 %i.gz, ptr %.1..1..1..1..sroa_idx622, align 1, !tbaa !87
  %i.hn = trunc nuw i64 %..i to i16
  %i.ho = call noundef i16 @llvm.bswap.i16(i16 %i.hn)
  store i16 %i.ho, ptr %.2..2..2..2.gep.sroa_idx625, align 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  store i8 %i.gy, ptr %.1..1..1..1..sroa_idx621, align 1, !tbaa !87
  %i.hp = call noundef i64 @llvm.bswap.i64(i64 %..i)
  store i64 %i.hp, ptr %.2..2..2..2.gep.sroa_idx624, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq
  %.0.i183 = phi i64 [ 2, %bb.aq ], [ 4, %bb.as ], [ 10, %bb.at ]
  %spec.select = add nuw nsw i64 %.0.i183, %i.hc
  %i.hq = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %18, i64 noundef %spec.select) ; 2 uses
  %i.hr = extractvalue { ptr, i64 } %i.hq, 1      ; 2 uses
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hr, i64 14) ; 2 uses
  %.not.i.i.i.i186 = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i.i.i186, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ht = extractvalue { ptr, i64 } %i.hq, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ht, ptr nonnull align 1 %i.c, i64 %i.hs, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188: ; preds = %bb.au, %bb.av
  %i.hu = load ptr, ptr %i.gc, align 8, !tbaa !432
  %i.hv = load ptr, ptr %i.gd, align 8, !tbaa !433 ; 2 uses
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %.sroa.speculated.i.i187 = call i64 @llvm.umin.i64(i64 %i.hy, i64 %i.hs)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.sroa.speculated.i.i187 ; 3 uses
  store ptr %i.hz, ptr %i.gd, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.gf, ptr %i.i, align 1, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  %i.ia = load ptr, ptr %i.gh, align 8, !tbaa !434 ; 3 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %i.ie = load ptr, ptr %i.fy, align 8, !tbaa !430, !noalias !1189 ; 2 uses
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = sub i64 %i.if, %i.gi                    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %20, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 16, i1 false), !tbaa.struct !427
  %.sink.i.i.i.ptr.i.i = getelementptr inbounds i8, ptr %20, i64 %i.ig ; 7 uses
  store ptr %.sink.i.i.i.ptr.i.i, ptr %.ptr.i.i, align 8, !tbaa !430, !alias.scope !1189
  %i.ih = load i64, ptr %i.fz, align 8, !tbaa !431, !noalias !1189 ; 3 uses
  store i64 %i.ih, ptr %i.gj, align 8, !tbaa !431, !alias.scope !1189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i8 0, i64 16, i1 false), !alias.scope !1189
  store ptr %.sink.i.i.i.ptr.i.i, ptr %i.gm, align 8, !tbaa !451, !alias.scope !1189
  store ptr %20, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !454, !alias.scope !1189
  %.not26.i.i.i = icmp eq i64 %i.ig, 16
  br i1 %.not26.i.i.i, label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit, label %.lr.ph.split.i.preheader.i.i

.lr.ph.split.i.preheader.i.i:                     ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188
  %i.ii = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.ptr.i.i, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.ptr.i.i, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !84, !alias.scope !1189
  %i.ij = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i, i64 %i.ih) ; 6 uses
  %.not.i.peel.i.i = icmp ult i64 %i.ij, %..i
  br i1 %.not.i.peel.i.i, label %bb.aw, label %.thread.i.i.i

bb.aw:                                            ; preds = %.lr.ph.split.i.preheader.i.i
  store i64 %i.ij, ptr %i.gk, align 8, !tbaa !457, !alias.scope !1189
  %.not27.i.peel.i.i = icmp eq ptr %i.ie, %17
  br i1 %.not27.i.peel.i.i, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.split.i.peel.next.i.i

.lr.ph.split.i.peel.next.i.i:                     ; preds = %bb.aw
  %i.ik = sub nuw i64 %..i, %i.ij
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.ax, %.lr.ph.split.i.peel.next.i.i
  %.01022.i.i.i = phi i64 [ %i.iq, %bb.ax ], [ %i.ik, %.lr.ph.split.i.peel.next.i.i ] ; 3 uses
  %i.il = phi ptr [ %i.in, %bb.ax ], [ %i.ii, %.lr.ph.split.i.peel.next.i.i ] ; 3 uses
  %i.im = phi i64 [ %i.ir, %bb.ax ], [ %i.ij, %.lr.ph.split.i.peel.next.i.i ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !84, !alias.scope !1189 ; 4 uses
  %.not.i.i.i = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i, %.01022.i.i.i
  br i1 %.not.i.i.i, label %bb.ax, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.i.preheader.i.i
  %.01022.i.lcssa.i.i = phi i64 [ %..i, %.lr.ph.split.i.preheader.i.i ], [ %.01022.i.i.i, %.lr.ph.split.i.i.i ] ; 2 uses
  %.lcssa11.i.i = phi i64 [ 0, %.lr.ph.split.i.preheader.i.i ], [ %i.im, %.lr.ph.split.i.i.i ]
  %.lcssa.i.i = phi ptr [ %i.ii, %.lr.ph.split.i.preheader.i.i ], [ %i.in, %.lr.ph.split.i.i.i ] ; 2 uses
  %.pn.i.i.lcssa.i.i = phi i64 [ %i.ij, %.lr.ph.split.i.preheader.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %.lr.ph.split.i.i.i ]
  store ptr %.lcssa.i.i, ptr %i.gm, align 8, !tbaa !458, !alias.scope !1189
  %i.io = add i64 %.lcssa11.i.i, %.01022.i.lcssa.i.i ; 2 uses
  store i64 %i.io, ptr %i.gk, align 8, !tbaa !457, !alias.scope !1189
  %i.ip = sub i64 %.01022.i.lcssa.i.i, %.pn.i.i.lcssa.i.i ; 2 uses
  store i64 %i.ip, ptr %i.gl, align 8, !tbaa !459, !alias.scope !1189
  br label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit

bb.ax:                                            ; preds = %.lr.ph.split.i.i.i
  %i.iq = sub nuw i64 %.01022.i.i.i, %.sroa.4.0.copyload.i.i.i.i
  %i.ir = add i64 %.sroa.4.0.copyload.i.i.i.i, %i.im ; 3 uses
  store i64 %i.ir, ptr %i.gk, align 8, !tbaa !457, !alias.scope !1189
  %.not27.i.i.i = icmp eq ptr %i.il, %20
  br i1 %.not27.i.i.i, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !1161

..loopexit_crit_edge.i.i.i:                       ; preds = %bb.ax, %bb.aw
  %i.is = phi i64 [ %i.ij, %bb.aw ], [ %i.ir, %bb.ax ]
  %.lcssa10.i.i = phi ptr [ %i.ii, %bb.aw ], [ %i.in, %bb.ax ] ; 2 uses
  store ptr %.lcssa10.i.i, ptr %i.gm, align 8, !tbaa !458, !alias.scope !1189
  br label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit

_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188, %.thread.i.i.i, %..loopexit_crit_edge.i.i.i
  %i.it = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188 ], [ %i.ip, %.thread.i.i.i ], [ 0, %..loopexit_crit_edge.i.i.i ]
  %i.iu = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188 ], [ %i.io, %.thread.i.i.i ], [ %i.is, %..loopexit_crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = phi ptr [ %.sink.i.i.i.ptr.i.i, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188 ], [ %.lcssa.i.i, %.thread.i.i.i ], [ %.lcssa10.i.i, %..loopexit_crit_edge.i.i.i ] ; 2 uses
  store ptr %i.ia, ptr %19, align 8, !tbaa !229
  store i64 %i.id, ptr %.sroa.4339.0..sroa_idx, align 8, !tbaa !84
  %.not = icmp eq ptr %.sink.i.i.i.ptr.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.iv = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  %i.iw = ptrtoaddr ptr %.sink.i.i.i.ptr.i.i to i64
  %reass.sub.i.i.i.i.i.i = sub i64 %i.iv, %i.iw
  %i.ix = and i64 %reass.sub.i.i.i.i.i.i, -16
  %.0.lcssa.i.i.i.i.i.i.i = select i1 %.not, i64 0, i64 %i.ix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %i.iy = getelementptr inbounds i8, ptr %i.gn, i64 %i.ig ; 3 uses
  store ptr %i.iy, ptr %i.go, align 8, !tbaa !430, !alias.scope !1190
  store i64 %i.ih, ptr %i.gp, align 8, !tbaa !431, !alias.scope !1190
  store i64 %i.iu, ptr %i.gq, align 8, !tbaa !457, !alias.scope !1190
  store i64 %i.it, ptr %i.gr, align 8, !tbaa !459, !alias.scope !1190
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.iy, i64 %.0.lcssa.i.i.i.i.i.i.i
  store ptr %scevgep.i.i.i.i.i.i.i.i, ptr %i.gs, align 8, !alias.scope !1190
  store ptr %i.gn, ptr %i.gt, align 8, !alias.scope !1190
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  store ptr %19, ptr %7, align 8, !tbaa !464, !alias.scope !1193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, i8 0, i64 32, i1 false), !alias.scope !1193
  store ptr %19, ptr %i.gu, align 8, !tbaa !441, !alias.scope !1193
  store i8 1, ptr %i.gv, align 8, !tbaa !465, !alias.scope !1193
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !1193
  store ptr %7, ptr %6, align 8, !tbaa !467, !noalias !1193
  %.not.i.i.i.i.i.i191 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i.i.i.i.i.i191, label %._crit_edge.i.i.i.i.i.i192, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i192:                       ; preds = %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit
  store ptr %i.gn, ptr %i.gu, align 8, !tbaa !469, !alias.scope !1193
  store i64 %i.iu, ptr %i.gw, align 8, !tbaa !84, !alias.scope !1193
  store ptr %i.iy, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !451, !alias.scope !1193
  store ptr %i.gn, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !454, !alias.scope !1193
  store i8 2, ptr %i.gv, align 8, !tbaa !465, !alias.scope !1193
  invoke void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_19buffers_prefix_viewINS0_14buffers_suffixINS2_12const_bufferEEEEEEE14const_iterator9increment4nextESt17integral_constantImLm2EE(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit unwind label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i.i.i192
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #36
  unreachable

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit, %._crit_edge.i.i.i.i.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !1193
  %i.jb = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferENS3_19buffers_prefix_viewINS3_14buffers_suffixINS0_12const_bufferEEEEEEEENSH_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(80) %19, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  %i.jc = load i64, ptr %i.f, align 8, !tbaa !84
  %i.jd = add i64 %i.jc, %..i
  store i64 %i.jd, ptr %i.f, align 8, !tbaa !84
  %i.je = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.je, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit
  br i1 %i.hg, label %.thread447, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not12.i = icmp eq i64 %..i, 0
  br i1 %.not12.i, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ba
  %.promoted.i = load ptr, ptr %i.fy, align 8     ; 3 uses
  %.not11.i.peel = icmp eq ptr %.promoted.i, %i.fy
  br i1 %.not11.i.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i
  %.promoted16.i = load i64, ptr %i.fz, align 8   ; 2 uses
  %.sroa.2.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 8
  %.sroa.2.0.copyload.i.peel = load i64, ptr %.sroa.2.0..sroa_idx.i.peel, align 8, !tbaa !84
  %i.jf = sub i64 %.sroa.2.0.copyload.i.peel, %.promoted16.i ; 2 uses
  %i.jg = icmp ult i64 %..i, %i.jf                ; 2 uses
  %i.jh = add i64 %..i, %.promoted16.i
  %storemerge.i.peel = select i1 %i.jg, i64 %i.jh, i64 0
  store i64 %storemerge.i.peel, ptr %i.fz, align 8, !tbaa !431
end_hunk_1
begin_hunk_2_@_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS4_12const_bufferEEEmbRKT_RNS_6system10error_codeE:bb.a
  %i.ma = add i64 %i.lz, %..i210
  store i64 %i.ma, ptr %i.f, align 8, !tbaa !84
  %i.mb = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.mc = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  br i1 %i.mb, label %.thread451, label %.preheader

.preheader:                                       ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit236
  %i.md = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.bu

bb.bu:                                            ; preds = %.preheader, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit
  %.1144 = phi i64 [ %i.na, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit ], [ %i.lj, %.preheader ] ; 3 uses
  %.not147 = icmp eq i64 %.1144, 0
  br i1 %.not147, label %bb.ce, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mf = load i64, ptr %i.ku, align 8, !tbaa !426 ; 2 uses
  %..i237 = call noundef i64 @llvm.umin.i64(i64 %.1144, i64 %i.mf) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #35
  %i.mg = load ptr, ptr %i.kw, align 8, !tbaa !236 ; 2 uses
  store ptr %i.mg, ptr %26, align 8
  store i64 %..i237, ptr %i.md, align 8
  %.not14.i.i240 = icmp eq i64 %i.mf, 0
  br i1 %.not14.i.i240, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %.lr.ph.i.i241

.lr.ph.i.i241:                                    ; preds = %bb.bv
  %i.mh = load ptr, ptr %i.ks, align 8, !tbaa !430
  br label %.lr.ph.split.i.i242

.lr.ph.split.i.i242:                              ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255, %.lr.ph.i.i241
  %.sroa.05.017.i.i244 = phi ptr [ %i.mo, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255 ], [ %i.mg, %.lr.ph.i.i241 ] ; 2 uses
  %.sroa.6.016.i.i245 = phi i64 [ %i.mp, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255 ], [ %..i237, %.lr.ph.i.i241 ] ; 2 uses
  %.sroa.09.015.i.i246 = phi ptr [ %i.mq, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255 ], [ %i.mh, %.lr.ph.i.i241 ] ; 5 uses
  %.not21.i.i247 = icmp eq ptr %.sroa.09.015.i.i246, %i.ks
  br i1 %.not21.i.i247, label %.lr.ph.i261, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.split.i.i242
  %i.mi = load ptr, ptr %i.ks, align 8, !tbaa !430
  %i.mj = icmp eq ptr %.sroa.09.015.i.i246, %i.mi
  %.sroa.0.0.copyload1.i.i.i248 = load ptr, ptr %.sroa.09.015.i.i246, align 8, !tbaa !229 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i249 = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i246, i64 8
  %.sroa.4.0.copyload.i.i.i250 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i249, align 8, !tbaa !84 ; 3 uses
  br i1 %i.mj, label %bb.bx, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i251

bb.bx:                                            ; preds = %bb.bw
  %i.mk = load i64, ptr %i.kt, align 8, !tbaa !431
  %spec.select.i.i.i.i258 = call i64 @llvm.umin.i64(i64 %i.mk, i64 %.sroa.4.0.copyload.i.i.i250) ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i248, i64 %spec.select.i.i.i.i258
  %i.mm = sub i64 %.sroa.4.0.copyload.i.i.i250, %spec.select.i.i.i.i258
  br label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i251

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i251: ; preds = %bb.bx, %bb.bw
  %.pn3.i.i.i252 = phi ptr [ %i.ml, %bb.bx ], [ %.sroa.0.0.copyload1.i.i.i248, %bb.bw ]
  %.pn.i.i.i253 = phi i64 [ %i.mm, %bb.bx ], [ %.sroa.4.0.copyload.i.i.i250, %bb.bw ] ; 2 uses
  %i.mn = call i64 @llvm.umin.i64(i64 %.sroa.6.016.i.i245, i64 %.pn.i.i.i253) ; 3 uses
  %.not.i.i.i254 = icmp eq i64 %.pn.i.i.i253, 0
  br i1 %.not.i.i.i254, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255, label %bb.by

bb.by:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i251
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.05.017.i.i244, ptr align 1 %.pn3.i.i.i252, i64 %i.mn, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255: ; preds = %bb.by, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i251
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i244, i64 %i.mn
  %i.mp = sub nuw i64 %.sroa.6.016.i.i245, %i.mn  ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i246, i64 16
  %.not.i.i256 = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i256, label %.lr.ph.i261, label %.lr.ph.split.i.i242, !llvm.loop !1174

.lr.ph.i261:                                      ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255, %.lr.ph.split.i.i242
  %.promoted.i262 = load ptr, ptr %i.ks, align 8  ; 3 uses
  %.not11.i266.peel = icmp eq ptr %.promoted.i262, %i.ks
  br i1 %.not11.i266.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i261
  %.promoted16.i263 = load i64, ptr %i.kt, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i267.peel = getelementptr inbounds nuw i8, ptr %.promoted.i262, i64 8
  %.sroa.2.0.copyload.i268.peel = load i64, ptr %.sroa.2.0..sroa_idx.i267.peel, align 8, !tbaa !84
  %i.mr = sub i64 %.sroa.2.0.copyload.i268.peel, %.promoted16.i263 ; 2 uses
  %i.ms = icmp ult i64 %..i237, %i.mr             ; 2 uses
  %i.mt = add i64 %..i237, %.promoted16.i263
  %storemerge.i269.peel = select i1 %i.ms, i64 %i.mt, i64 0
  store i64 %storemerge.i269.peel, ptr %i.kt, align 8, !tbaa !431
  br i1 %i.ms, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mu = sub nuw i64 %..i237, %i.mr              ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.promoted.i262, i64 16 ; 2 uses
  store ptr %i.mv, ptr %i.ks, align 8, !tbaa !430
  %.not.i270.peel = icmp eq i64 %i.mu, 0
  br i1 %.not.i270.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %.peel.next508

.peel.next508:                                    ; preds = %bb.ca, %bb.cc
  %.0813.i265 = phi i64 [ %i.my, %bb.cc ], [ %i.mu, %bb.ca ] ; 3 uses
  %i.mw = phi ptr [ %i.mz, %bb.cc ], [ %i.mv, %bb.ca ] ; 3 uses
  %.not11.i266 = icmp eq ptr %i.mw, %i.ks
  br i1 %.not11.i266, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %bb.cb

bb.cb:                                            ; preds = %.peel.next508
  %.sroa.2.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %.sroa.2.0.copyload.i268 = load i64, ptr %.sroa.2.0..sroa_idx.i267, align 8, !tbaa !84 ; 2 uses
  %i.mx = icmp ult i64 %.0813.i265, %.sroa.2.0.copyload.i268 ; 2 uses
  %storemerge.i269 = select i1 %i.mx, i64 %.0813.i265, i64 0
  store i64 %storemerge.i269, ptr %i.kt, align 8, !tbaa !431
  br i1 %i.mx, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.my = sub nuw i64 %.0813.i265, %.sroa.2.0.copyload.i268 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 16 ; 2 uses
  store ptr %i.mz, ptr %i.ks, align 8, !tbaa !430
  %.not.i270 = icmp eq i64 %i.my, 0
  br i1 %.not.i270, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %.peel.next508, !llvm.loop !1175

_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271: ; preds = %.peel.next508, %bb.cb, %bb.cc, %.lr.ph.i261, %bb.bz, %bb.ca, %bb.bv
  %i.na = sub nuw i64 %.1144, %..i237
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 1 dereferenceable(4) %21)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.nb = load ptr, ptr %26, align 8, !tbaa !470
  %i.nc = load i64, ptr %i.md, align 8, !tbaa !444 ; 3 uses
  %.not19.not.i.i.i = icmp eq i64 %i.nc, 0
  br i1 %.not19.not.i.i.i, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i
  %.sroa.7.020.i.i.i = phi i64 [ %i.np, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i ], [ 0, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271 ] ; 3 uses
  %i.nd = load i64, ptr %i.me, align 8, !tbaa !152 ; 2 uses
  %i.ne = and i64 %i.nd, 1
  %.not.i.i.i.i.i.i272 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i.i.i272, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i
  %i.nf = icmp eq i64 %i.nd, 1
  %i.ng = load i32, ptr %3, align 8
  %.fr.i.i.i.i = freeze i32 %i.ng
  %.not.i.i.i.i273 = icmp eq i32 %.fr.i.i.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.nf, %.not.i.i.i.i273
  br i1 %or.cond.i.i.i.i, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i: ; preds = %bb.cd, %.lr.ph.i.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 %.sroa.7.020.i.i.i
  %i.ni = sub nuw i64 %i.nc, %.sroa.7.020.i.i.i
  %spec.select.i1.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ni, i64 65536)
  %i.nj = load ptr, ptr %i.lm, align 8, !tbaa !95 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !471
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 28
  %i.nn = load i8, ptr %i.nm, align 4, !tbaa !472
  %i.no = call noundef i64 @_ZN5boost4asio6detail10socket_ops10sync_send1EihPKvmiRNS_6system10error_codeE(i32 noundef %i.nl, i8 noundef zeroext %i.nn, ptr noundef %i.nh, i64 noundef %spec.select.i1.i.i.i.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.np = add i64 %i.no, %.sroa.7.020.i.i.i       ; 2 uses
  %.not.i.i.i274 = icmp ult i64 %i.np, %i.nc
  br i1 %.not.i.i.i274, label %.lr.ph.i.i.i, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit: ; preds = %bb.cd, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271
  %i.nq = load i64, ptr %i.f, align 8, !tbaa !84
  %i.nr = add i64 %i.nq, %..i237
  store i64 %i.nr, ptr %i.f, align 8, !tbaa !84
  %i.ns = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.nt = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br i1 %i.ns, label %.thread451, label %bb.bu, !llvm.loop !1176

.thread451:                                       ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit236
  %.10.ph = phi i64 [ %i.mc, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit236 ], [ %i.nt, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  br label %bb.cz

bb.ce:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  br label %bb.cy

bb.cf:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !427
  %i.nu = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 9 uses
  store ptr %27, ptr %i.nu, align 8, !tbaa !430
  %i.nv = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 5 uses
  store i64 0, ptr %i.nv, align 8, !tbaa !431
  %i.nw = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.nx = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  %i.ny = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.nz = getelementptr inbounds nuw i8, ptr %30, i64 40
  %.2..2..2..2.gep.sroa_idx638 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4..4..4..4.gep27.sroa_idx640 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.10..10..10..10.gep28.sroa_idx641 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.oa = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.ob = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.od = getelementptr inbounds nuw i8, ptr %30, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %31, i64 24
  %.ptr4.i.i.i.i.i.i321 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.oi = shl nsw i8 %.sroa.29.0579, 4            ; 2 uses
  %i.oj = or disjoint i8 -128, 127
  %i.ok = or disjoint i8 -128, 126
  %i.ol = or i8 %i.aw, %i.oi
  %.1..1..1..1..sroa_idx634 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx637 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx635 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx639 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx636 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, %bb.cf
  %.sroa.20.5 = phi i8 [ %i.ol, %bb.cf ], [ %i.oi, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334 ]
  %.2145 = phi i64 [ %.sroa.229.0.copyload, %bb.cf ], [ %i.pe, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334 ] ; 2 uses
  %i.om = load ptr, ptr %0, align 8, !tbaa !303
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 2393
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !416, !range !119, !noundef !120
  %i.op = trunc nuw i8 %i.oo to i1
  %i.oq = call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.op)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %bb.cg
  %i.or = call noundef i32 %i.oq(), !inline_history !22 ; 3 uses
  %.not.i275 = icmp eq i32 %i.or, 0
  br i1 %.not.i275, label %bb.ch, label %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit276, !llvm.loop !23

_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit276: ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #35
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %28, i32 noundef %i.or)
  %i.os = load i64, ptr %i.nw, align 8, !tbaa !426
  %..i277 = call noundef i64 @llvm.umin.i64(i64 %.2145, i64 %i.os) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #35
  %i.ot = load ptr, ptr %i.nx, align 8, !tbaa !236 ; 2 uses
  store ptr %i.ot, ptr %29, align 8
  store i64 %..i277, ptr %i.ny, align 8
  %.not14.i.i280 = icmp eq i64 %..i277, 0         ; 2 uses
  br i1 %.not14.i.i280, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299, label %.lr.ph.i.i281

.lr.ph.i.i281:                                    ; preds = %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit276
  %i.ou = load ptr, ptr %i.nu, align 8, !tbaa !430
  br label %.lr.ph.split.i.i282

.lr.ph.split.i.i282:                              ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295, %.lr.ph.i.i281
  %.sroa.05.017.i.i284 = phi ptr [ %i.pb, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295 ], [ %i.ot, %.lr.ph.i.i281 ] ; 2 uses
  %.sroa.6.016.i.i285 = phi i64 [ %i.pc, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295 ], [ %..i277, %.lr.ph.i.i281 ] ; 2 uses
  %.sroa.09.015.i.i286 = phi ptr [ %i.pd, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295 ], [ %i.ou, %.lr.ph.i.i281 ] ; 5 uses
  %.not21.i.i287 = icmp eq ptr %.sroa.09.015.i.i286, %i.nu
  br i1 %.not21.i.i287, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.split.i.i282
  %i.ov = load ptr, ptr %i.nu, align 8, !tbaa !430
  %i.ow = icmp eq ptr %.sroa.09.015.i.i286, %i.ov
  %.sroa.0.0.copyload1.i.i.i288 = load ptr, ptr %.sroa.09.015.i.i286, align 8, !tbaa !229 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i289 = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i286, i64 8
  %.sroa.4.0.copyload.i.i.i290 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i289, align 8, !tbaa !84 ; 3 uses
  br i1 %i.ow, label %bb.cj, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i291

bb.cj:                                            ; preds = %bb.ci
  %i.ox = load i64, ptr %i.nv, align 8, !tbaa !431
  %spec.select.i.i.i.i298 = call i64 @llvm.umin.i64(i64 %i.ox, i64 %.sroa.4.0.copyload.i.i.i290) ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i288, i64 %spec.select.i.i.i.i298
  %i.oz = sub i64 %.sroa.4.0.copyload.i.i.i290, %spec.select.i.i.i.i298
  br label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i291

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i291: ; preds = %bb.cj, %bb.ci
  %.pn3.i.i.i292 = phi ptr [ %i.oy, %bb.cj ], [ %.sroa.0.0.copyload1.i.i.i288, %bb.ci ]
  %.pn.i.i.i293 = phi i64 [ %i.oz, %bb.cj ], [ %.sroa.4.0.copyload.i.i.i290, %bb.ci ] ; 2 uses
  %i.pa = call i64 @llvm.umin.i64(i64 %.sroa.6.016.i.i285, i64 %.pn.i.i.i293) ; 3 uses
  %.not.i.i.i294 = icmp eq i64 %.pn.i.i.i293, 0
  br i1 %.not.i.i.i294, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295, label %bb.ck

bb.ck:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i291
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.05.017.i.i284, ptr align 1 %.pn3.i.i.i292, i64 %i.pa, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295: ; preds = %bb.ck, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i291
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i284, i64 %i.pa
  %i.pc = sub nuw i64 %.sroa.6.016.i.i285, %i.pa  ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i286, i64 16
  %.not.i.i296 = icmp eq i64 %i.pc, 0
  br i1 %.not.i.i296, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299, label %.lr.ph.split.i.i282, !llvm.loop !1174

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299: ; preds = %.lr.ph.split.i.i282, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295, %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit276
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 1 dereferenceable(4) %28)
  %i.pe = sub nuw i64 %.2145, %..i277             ; 2 uses
  %i.pf = icmp eq i64 %i.pe, 0                    ; 2 uses
  %i.pg = select i1 %1, i1 %i.pf, i1 false        ; 2 uses
  %i.ph = xor i1 %i.pg, true
  %i.pi = zext i1 %i.ph to i8
  store i8 %i.pi, ptr %i.i, align 1, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %30, ptr noundef nonnull %i.nz, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.pj = select i1 %i.pg, i8 -128, i8 0
  %spec.select37.i305 = or i8 %.sroa.20.5, %i.pj
  store i8 %spec.select37.i305, ptr %i.a, align 1, !tbaa !87
  %i.pk = icmp ult i64 %..i277, 126
  br i1 %i.pk, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299
  %i.pl = trunc nuw nsw i64 %..i277 to i8
  %i.pm = or disjoint i8 -128, %i.pl
  store i8 %i.pm, ptr %.1..1..1..1..sroa_idx636, align 1, !tbaa !87
  br label %bb.cp

bb.cm:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299
  %i.pn = icmp ult i64 %..i277, 65536
  br i1 %i.pn, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i8 %i.ok, ptr %.1..1..1..1..sroa_idx635, align 1, !tbaa !87
  %i.po = trunc nuw i64 %..i277 to i16
  %i.pp = call noundef i16 @llvm.bswap.i16(i16 %i.po)
  store i16 %i.pp, ptr %.2..2..2..2.gep.sroa_idx639, align 1
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  store i8 %i.oj, ptr %.1..1..1..1..sroa_idx634, align 1, !tbaa !87
  %i.pq = call noundef i64 @llvm.bswap.i64(i64 %..i277)
  store i64 %i.pq, ptr %.2..2..2..2.gep.sroa_idx637, align 1
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cl
  %.0.sroa.phi.i307 = phi ptr [ %.2..2..2..2.gep.sroa_idx638, %bb.cl ], [ %.4..4..4..4.gep27.sroa_idx640, %bb.cn ], [ %.10..10..10..10.gep28.sroa_idx641, %bb.co ]
  %.0.i308 = phi i64 [ 6, %bb.cl ], [ 8, %bb.cn ], [ 14, %bb.co ]
  store i32 %i.or, ptr %.0.sroa.phi.i307, align 1
  %i.pr = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %30, i64 noundef %.0.i308) ; 2 uses
  %i.ps = extractvalue { ptr, i64 } %i.pr, 1      ; 2 uses
  %i.pt = call i64 @llvm.umin.i64(i64 %i.ps, i64 14) ; 2 uses
  %.not.i.i.i.i311 = icmp eq i64 %i.ps, 0
  br i1 %.not.i.i.i.i311, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit313, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pu = extractvalue { ptr, i64 } %i.pr, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pu, ptr nonnull align 1 %i.a, i64 %i.pt, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit313

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit313: ; preds = %bb.cp, %bb.cq
  %i.pv = load ptr, ptr %i.oa, align 8, !tbaa !432
  %i.pw = load ptr, ptr %i.ob, align 8, !tbaa !433 ; 2 uses
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = sub i64 %i.px, %i.py
  %.sroa.speculated.i.i312 = call i64 @llvm.umin.i64(i64 %i.pz, i64 %i.pt)
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 %.sroa.speculated.i.i312 ; 3 uses
  store ptr %i.qa, ptr %i.ob, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  %i.qb = load ptr, ptr %i.od, align 8, !tbaa !434 ; 3 uses
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = sub i64 %i.qc, %i.qd
  store ptr %i.qb, ptr %31, align 8, !tbaa !229
  store i64 %i.qe, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !427
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  store ptr %31, ptr %4, align 8, !tbaa !439, !alias.scope !1199
  store i64 1, ptr %i.og, align 8, !alias.scope !1199
  store ptr %31, ptr %i.of, align 8, !tbaa !441, !alias.scope !1199
  %.not.i.i.i.i.i.i316 = icmp eq ptr %i.qa, %i.qb
  br i1 %.not.i.i.i.i.i.i316, label %._crit_edge.i.i.i.i.i.i317, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit322

._crit_edge.i.i.i.i.i.i317:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit313
  store ptr %i.oe, ptr %i.of, align 8, !tbaa !441, !alias.scope !1199
  store i8 2, ptr %i.og, align 8, !tbaa !442, !alias.scope !1199
  %i.qf = load i64, ptr %i.oh, align 8, !tbaa !444, !noalias !1199
  %.not.i.i.i.i.i.i.i319 = icmp eq i64 %i.qf, 0
  br i1 %.not.i.i.i.i.i.i.i319, label %._crit_edge.i.i.i.i.i.i.i320, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit322

._crit_edge.i.i.i.i.i.i.i320:                     ; preds = %._crit_edge.i.i.i.i.i.i317
  store ptr %.ptr4.i.i.i.i.i.i321, ptr %i.of, align 8, !tbaa !441, !alias.scope !1199
  store i8 0, ptr %i.of, align 8, !tbaa !446, !alias.scope !1199
  store i8 3, ptr %i.og, align 8, !tbaa !442, !alias.scope !1199
  br label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit322

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit322: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit313, %._crit_edge.i.i.i.i.i.i317, %._crit_edge.i.i.i.i.i.i.i320
  %i.qg = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferESB_EEENSC_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %i.oc, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  %i.qh = load i64, ptr %i.f, align 8, !tbaa !84
  %i.qi = add i64 %i.qh, %..i277
  store i64 %i.qi, ptr %i.f, align 8, !tbaa !84
  %i.qj = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.qj, label %bb.cx, label %bb.cr

bb.cr:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit322
  br i1 %i.pf, label %.thread463, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not14.i.i280, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %.lr.ph.i324

.lr.ph.i324:                                      ; preds = %bb.cs
  %.promoted.i325 = load ptr, ptr %i.nu, align 8  ; 3 uses
  %.not11.i329.peel = icmp eq ptr %.promoted.i325, %i.nu
  br i1 %.not11.i329.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i324
  %.promoted16.i326 = load i64, ptr %i.nv, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i330.peel = getelementptr inbounds nuw i8, ptr %.promoted.i325, i64 8
  %.sroa.2.0.copyload.i331.peel = load i64, ptr %.sroa.2.0..sroa_idx.i330.peel, align 8, !tbaa !84
  %i.qk = sub i64 %.sroa.2.0.copyload.i331.peel, %.promoted16.i326 ; 2 uses
  %i.ql = icmp ult i64 %..i277, %i.qk             ; 2 uses
  %i.qm = add i64 %..i277, %.promoted16.i326
  %storemerge.i332.peel = select i1 %i.ql, i64 %i.qm, i64 0
  store i64 %storemerge.i332.peel, ptr %i.nv, align 8, !tbaa !431
  br i1 %i.ql, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qn = sub nuw i64 %..i277, %i.qk              ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.promoted.i325, i64 16 ; 2 uses
  store ptr %i.qo, ptr %i.nu, align 8, !tbaa !430
  %.not.i333.peel = icmp eq i64 %i.qn, 0
  br i1 %.not.i333.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %.peel.next511

.peel.next511:                                    ; preds = %bb.cu, %bb.cw
  %.0813.i328 = phi i64 [ %i.qr, %bb.cw ], [ %i.qn, %bb.cu ] ; 3 uses
  %i.qp = phi ptr [ %i.qs, %bb.cw ], [ %i.qo, %bb.cu ] ; 3 uses
  %.not11.i329 = icmp eq ptr %i.qp, %i.nu
  br i1 %.not11.i329, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %bb.cv

bb.cv:                                            ; preds = %.peel.next511
  %.sroa.2.0..sroa_idx.i330 = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %.sroa.2.0.copyload.i331 = load i64, ptr %.sroa.2.0..sroa_idx.i330, align 8, !tbaa !84 ; 2 uses
  %i.qq = icmp ult i64 %.0813.i328, %.sroa.2.0.copyload.i331 ; 2 uses
  %storemerge.i332 = select i1 %i.qq, i64 %.0813.i328, i64 0
  store i64 %storemerge.i332, ptr %i.nv, align 8, !tbaa !431
  br i1 %i.qq, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qr = sub nuw i64 %.0813.i328, %.sroa.2.0.copyload.i331 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 16 ; 2 uses
  store ptr %i.qs, ptr %i.nu, align 8, !tbaa !430
  %.not.i333 = icmp eq i64 %i.qr, 0
  br i1 %.not.i333, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %.peel.next511, !llvm.loop !1181

_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334: ; preds = %bb.cw, %bb.cv, %.peel.next511, %.lr.ph.i324, %bb.ct, %bb.cu, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %bb.cg

.thread463:                                       ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  br label %bb.cy

bb.cx:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit322
  %i.qt = load i64, ptr %i.f, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  br label %bb.cz

bb.cy:                                            ; preds = %.thread463, %bb.ce, %.thread447, %bb.an, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread
  %i.qu = load i64, ptr %i.f, align 8, !tbaa !84
  br label %bb.cz

bb.cz:                                            ; preds = %bb.a, %bb.cy, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit, %.thread436, %bb.bf, %.thread451, %bb.cx
  %.14 = phi i64 [ %i.fw, %.thread436 ], [ %i.qu, %bb.cy ], [ %.3414, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit ], [ %i.qt, %bb.cx ], [ %.10.ph, %.thread451 ], [ %i.jo, %bb.bf ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  ret i64 %.14
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %.sroa.025 = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2395 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !418, !range !119, !noundef !120
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.025)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  invoke void @_ZN5boost5beast15make_error_codeENS0_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %2, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #36
  unreachable

_ZN5boost6system10error_codeC2INS_5beast5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !421
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.526.0.copyload = load i64, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !84 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %switch.i.i = icmp ult i64 %.sroa.526.0.copyload, 2
  %i.f = and i64 %.sroa.526.0.copyload, 1
  %i.g = or disjoint i64 %i.f, ptrtoint (ptr @_ZZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.526.0.copyload, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025, i64 16, i1 false)
end_hunk_2
begin_hunk_3_@_ZN5boost5beast9websocket8teardownINS_4asio2ip3tcpENS3_15any_io_executorEEEvNS0_9role_typeERNS3_19basic_stream_socketIT_T0_EERNS_6system10error_codeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN5boost4asio6detail28reactive_socket_service_base5closeERNS2_24base_implementation_typeERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %3, ptr noundef nonnull align 8 dereferenceable(33) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.m, %bb.d, %.thread, %.split, %_ZNK5boost6system10error_codecvbEv.exit27, %_ZNK5boost6system10error_codecvbEv.exit27.thread43
  ret void
}

declare noundef i32 @_ZN5boost4asio6detail10socket_ops8shutdownEiiRNS_6system10error_codeE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare noundef i64 @_ZN5boost4asio6detail10socket_ops10sync_recv1EihPvmiRNS_6system10error_codeE(i32 noundef, i8 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare noundef i64 @_ZN5boost4asio6detail10socket_ops9sync_recvEihP5iovecmibRNS_6system10error_codeE(i32 noundef, i8 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef %0) local_unnamed_addr #32 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr @.str.83, ptr %2, align 8, !tbaa !353
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.84, ptr %i.a, align 8, !tbaa !354
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1026, ptr %i.b, align 8, !tbaa !355
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 43, ptr %i.c, align 4, !tbaa !356
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #37
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %i.d
}

declare noundef zeroext i1 @_ZN5boost5beast9websocket6detail10check_utf8EPKcm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN5boost5beast9websocket6detail12utf8_checker5writeEPKhm(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(7104), ptr noundef nonnull align 8 dereferenceable(52), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare void @_ZN5boost5beast4zlib6detail14inflate_stream7doClearEv(ptr noundef nonnull align 8 dereferenceable(7104)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS4_14mutable_bufferEEEmbRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.a = alloca [14 x i8], align 1                ; 12 uses
  %5 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.b = alloca [14 x i8], align 1                ; 12 uses
  %6 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::mutable_buffer>>>::const_iterator::increment", align 8 ; 4 uses
  %7 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::mutable_buffer>>>::const_iterator", align 8 ; 10 uses
  %i.c = alloca [14 x i8], align 1                ; 9 uses
  %8 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.d = alloca [14 x i8], align 1                ; 9 uses
  %9 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.e = alloca [14 x i8], align 1                ; 12 uses
  %i.f = alloca i64, align 8                      ; 22 uses
  %10 = alloca %"class.boost::beast::buffers_suffix.139", align 8 ; 9 uses
  %11 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 13 uses
  %12 = alloca %"struct.std::array", align 1      ; 4 uses
  %13 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %14 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %15 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 9 uses
  %16 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %17 = alloca %"class.boost::beast::buffers_suffix.139", align 8 ; 11 uses
  %18 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %19 = alloca %"class.boost::beast::buffers_cat_view.153", align 8 ; 14 uses
  %20 = alloca %"class.boost::beast::buffers_prefix_view.157", align 8 ; 12 uses
  %21 = alloca %"struct.std::array", align 1      ; 6 uses
  %22 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 9 uses
  %23 = alloca %"class.boost::beast::buffers_suffix.139", align 8 ; 9 uses
  %24 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %25 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %26 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %27 = alloca %"class.boost::beast::buffers_suffix.139", align 8 ; 7 uses
  %28 = alloca %"struct.std::array", align 1      ; 6 uses
  %29 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 8 uses
  %30 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %31 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !303    ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  store i64 0, ptr %i.f, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = tail call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.h, label %bb.cz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2245 ; 7 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !422, !range !119, !noundef !120
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread578, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.247.0.copyload = load i64, ptr %.sroa.247.0..sroa_idx, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 2247
  %i.m = load i8, ptr %i.l, align 1, !tbaa !413, !range !119, !noundef !120
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2246
  store i8 %i.m, ptr %i.n, align 2, !tbaa !423
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !420
  %.not2.i = icmp eq ptr %i.p, null
  br i1 %.not2.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 2249
  %i.r = load i8, ptr %i.q, align 1, !tbaa !414, !range !119, !noundef !120
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp uge i64 %.sroa.247.0.copyload, %i.u
  %narrow.i = select i1 %i.s, i1 %i.v, i1 false
  %.ph.i = zext i1 %narrow.i to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  store i8 %.ph.i, ptr %i.w, align 8, !tbaa !424
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  store i8 0, ptr %i.x, align 8, !tbaa !424
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 2232
  %i.z = load i32, ptr %i.y, align 8, !tbaa !425
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !236
  %.not3.i = icmp eq ptr %i.ac, null
  br i1 %.not3.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !415
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !426
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !415 ; 2 uses
  %.not.i = icmp eq i64 %i.ae, %i.ag
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.ah = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !426
  %i.aj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #39, !noalias !1462
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !236 ; 2 uses
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !236
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %i.am = load i64, ptr %i.al, align 8, !tbaa !415
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  store i64 %i.am, ptr %i.an, align 8, !tbaa !426
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !236 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !236
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i: ; preds = %bb.h, %bb.g
  %.sink.i = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %bb.h ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sink.i) #38
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i, %bb.h, %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !424, !range !119, !noundef !120
  %i.as = shl nuw nsw i8 %i.ar, 2                 ; 2 uses
  %.pre = load i8, ptr %i.i, align 1, !tbaa !422, !range !119
  %i.at = trunc nuw i8 %.pre to i1
  br i1 %i.at, label %.thread578, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 2250
  %i.av = load i8, ptr %i.au, align 2, !tbaa !351
  br label %.thread578

.thread578:                                       ; preds = %bb.b, %bb.i, %bb.j
  %.sroa.29.0580 = phi i8 [ %i.as, %bb.j ], [ %i.as, %bb.i ], [ 0, %bb.b ] ; 5 uses
  %i.aw = phi i8 [ %i.av, %bb.j ], [ 0, %bb.i ], [ 0, %bb.b ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 2232 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !425
  %.not.not.not = icmp eq i32 %i.ay, 0            ; 2 uses
  %i.az = select i1 %.not.not.not, i8 2, i8 0
  %i.ba = or disjoint i8 %i.az, %.sroa.29.0580    ; 2 uses
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.229.0.copyload = load i64, ptr %.sroa.229.0..sroa_idx, align 8, !tbaa !84 ; 15 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !424, !range !119, !noundef !120
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.k, label %bb.ae

bb.k:                                             ; preds = %.thread578
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !427
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %10, ptr %i.be, align 8, !tbaa !570
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 0, ptr %i.bf, align 8, !tbaa !571
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 2264 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !236
  %i.bl = load i64, ptr %i.bh, align 8, !tbaa !426
  store ptr %i.bk, ptr %11, align 8
  store i64 %i.bl, ptr %i.bi, align 8
  %i.bm = call noundef zeroext i1 @_ZN5boost5beast9websocket6detail9impl_baseILb1EE7deflateINS_4asio14mutable_bufferEEEbRS7_RNS0_14buffers_suffixIT_EEbRmRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.bn = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.bn, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 40
  %.2..2..2..2.gep.sroa_idx615 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.4..4..4..4.gep27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.10..10..10..10.gep28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.br = xor i1 %1, true
  %i.bs = zext i1 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.4344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.ptr4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  %.1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.2..2..2..2.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.1..1..1..1..sroa_idx613 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.2..2..2..2.gep.sroa_idx616 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.1..1..1..1..sroa_idx614 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %bb.l

.thread:                                          ; preds = %bb.z, %bb.k
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !84
  br label %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit

bb.l:                                             ; preds = %.lr.ph, %bb.z
  %i.ca = phi i1 [ %i.bm, %.lr.ph ], [ %i.dx, %bb.z ] ; 3 uses
  %.sroa.12.0488 = phi i32 [ undef, %.lr.ph ], [ %.sroa.12.1, %bb.z ]
  %.sroa.20.0487 = phi i8 [ %i.aw, %.lr.ph ], [ 0, %bb.z ]
  %.sroa.29.1486 = phi i8 [ %i.ba, %.lr.ph ], [ %i.du, %bb.z ] ; 3 uses
  %.sroa.2.0.copyload = load i64, ptr %i.bi, align 8, !tbaa !84 ; 6 uses
  %i.cb = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.cb, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = and i8 %.sroa.29.1486, 2
  %.not148 = icmp eq i8 %i.cc, 0                  ; 2 uses
  br i1 %.not148, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %0, align 8, !tbaa !303
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2393
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !416, !range !119, !noundef !120
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.cg)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %i.ci = call noundef i32 %i.ch(), !inline_history !22 ; 3 uses
  %.not.i149 = icmp eq i32 %i.ci, 0
  br i1 %.not.i149, label %bb.o, label %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit, !llvm.loop !23

_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %12, i32 noundef %i.ci)
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(4) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit, %bb.m
  %.sroa.12.1 = phi i32 [ %.sroa.12.0488, %bb.m ], [ %i.ci, %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit ] ; 2 uses
  %i.cj = xor i1 %i.ca, true
  %i.ck = zext i1 %i.cj to i8
  %i.cl = and i8 %.sroa.29.1486, -2
  %i.cm = or disjoint i8 %i.cl, %i.ck             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %13, ptr noundef nonnull %i.bo, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cn = select i1 %i.ca, i8 0, i8 -128
  %i.co = shl nuw nsw i8 %.sroa.29.1486, 4
  %i.cp = and i8 %i.co, 64
  %spec.select.i = or i8 %.sroa.20.0487, %i.cp
  %spec.select37.i = or i8 %spec.select.i, %i.cn
  store i8 %spec.select37.i, ptr %i.e, align 1, !tbaa !87
  %i.cq = shl i8 %i.cm, 6                         ; 3 uses
  %i.cr = icmp ult i64 %.sroa.2.0.copyload, 126
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = and i8 %i.cq, -128
  %i.ct = trunc nuw nsw i64 %.sroa.2.0.copyload to i8
  %i.cu = or disjoint i8 %i.cs, %i.ct
  store i8 %i.cu, ptr %.1..1..1..1..sroa_idx614, align 1, !tbaa !87
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cv = icmp ult i64 %.sroa.2.0.copyload, 65536
  br i1 %i.cv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cw = or i8 %i.cq, 126
  store i8 %i.cw, ptr %.1..1..1..1..sroa_idx613, align 1, !tbaa !87
  %i.cx = trunc nuw i64 %.sroa.2.0.copyload to i16
  %i.cy = call noundef i16 @llvm.bswap.i16(i16 %i.cx)
  store i16 %i.cy, ptr %.2..2..2..2.gep.sroa_idx616, align 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cz = or i8 %i.cq, 127
  store i8 %i.cz, ptr %.1..1..1..1..sroa_idx, align 1, !tbaa !87
  %i.da = call noundef i64 @llvm.bswap.i64(i64 %.sroa.2.0.copyload)
  store i64 %i.da, ptr %.2..2..2..2.gep.sroa_idx, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.0.sroa.phi.i = phi ptr [ %.2..2..2..2.gep.sroa_idx615, %bb.q ], [ %.4..4..4..4.gep27.sroa_idx, %bb.s ], [ %.10..10..10..10.gep28.sroa_idx, %bb.t ]
  %.0.i = phi i64 [ 2, %bb.q ], [ 4, %bb.s ], [ 10, %bb.t ] ; 2 uses
  br i1 %.not148, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %.sroa.12.1, ptr %.0.sroa.phi.i, align 1
  %i.db = add nuw nsw i64 %.0.i, 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.i = phi i64 [ %i.db, %bb.v ], [ %.0.i, %bb.u ]
  %i.dc = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %13, i64 noundef %.1.i) ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.dc, 1      ; 2 uses
  %i.de = call i64 @llvm.umin.i64(i64 %i.dd, i64 14) ; 2 uses
  %.not.i.i.i.i150 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i150, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = extractvalue { ptr, i64 } %i.dc, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr nonnull align 1 %i.e, i64 %i.de, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit: ; preds = %bb.w, %bb.x
  %i.dg = load ptr, ptr %i.bp, align 8, !tbaa !432
  %i.dh = load ptr, ptr %i.bq, align 8, !tbaa !433 ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.de)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.speculated.i.i ; 3 uses
  store ptr %i.dl, ptr %i.bq, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 %i.bs, ptr %i.i, align 1, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.dm = load ptr, ptr %i.bu, align 8, !tbaa !434 ; 3 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  store ptr %i.dm, ptr %14, align 8, !tbaa !229
  store i64 %i.dp, ptr %.sroa.4344.0..sroa_idx, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !427
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  store ptr %14, ptr %9, align 8, !tbaa !439, !alias.scope !1465
  store i64 1, ptr %i.bx, align 8, !alias.scope !1465
  store ptr %14, ptr %i.bw, align 8, !tbaa !441, !alias.scope !1465
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !441, !alias.scope !1465
  store i8 2, ptr %i.bx, align 8, !tbaa !442, !alias.scope !1465
  %i.dq = load i64, ptr %i.by, align 8, !tbaa !444, !noalias !1465
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr %.ptr4.i.i.i.i.i.i, ptr %i.bw, align 8, !tbaa !441, !alias.scope !1465
  store i8 0, ptr %i.bw, align 8, !tbaa !446, !alias.scope !1465
  store i8 3, ptr %i.bx, align 8, !tbaa !442, !alias.scope !1465
  br label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit, %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS4_14mutable_bufferEEEmbRKT_RNS_6system10error_codeE:bb.a
  %i.ea = icmp eq i32 %i.dz, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 109
  %i.ec = load i8, ptr %i.eb, align 1, !range !119
  %i.ed = trunc nuw i8 %i.ec to i1
  %or.cond.i = select i1 %i.ea, i1 %i.ed, i1 false
  br i1 %or.cond.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = icmp eq i32 %i.dz, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.eg = load i8, ptr %i.ef, align 4, !range !119
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond6.i = select i1 %i.ee, i1 %i.eh, i1 false
  br i1 %or.cond6.i, label %bb.ad, label %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ei = load ptr, ptr %i.bj, align 8, !tbaa !420
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  call void @_ZN5boost5beast4zlib6detail14deflate_stream7doResetEv(ptr noundef nonnull align 8 dereferenceable(5928) %i.ej)
  br label %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread

_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread: ; preds = %bb.aa, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.cy

_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit: ; preds = %.thread424, %.thread
  %.3415 = phi i64 [ %i.dt, %.thread424 ], [ %i.bz, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.cz

bb.ae:                                            ; preds = %.thread578
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 2246
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !423, !range !119, !noundef !120
  %i.em = trunc nuw i8 %i.el to i1                ; 2 uses
  br i1 %.not.not.not, label %bb.bg, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.em, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %15, ptr noundef nonnull %i.en, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.eo = select i1 %1, i8 -128, i8 0
  %i.ep = shl nuw nsw i8 %.sroa.29.0580, 4
  %i.eq = or disjoint i8 %i.ep, %i.eo
  %spec.select37.i158 = or i8 %i.aw, %i.eq
  store i8 %spec.select37.i158, ptr %i.d, align 1, !tbaa !87
  %i.er = icmp ult i64 %.sroa.229.0.copyload, 126
  br i1 %i.er, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.es = trunc nuw nsw i64 %.sroa.229.0.copyload to i8
  %.1..1..1..1..sroa_idx617 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.es, ptr %.1..1..1..1..sroa_idx617, align 1, !tbaa !87
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.et = icmp ult i64 %.sroa.229.0.copyload, 65536
  br i1 %i.et, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.1..1..1..1..sroa_idx619 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 126, ptr %.1..1..1..1..sroa_idx619, align 1, !tbaa !87
  %i.eu = trunc nuw i64 %.sroa.229.0.copyload to i16
  %i.ev = call noundef i16 @llvm.bswap.i16(i16 %i.eu)
  %.2..2..2..2.gep.sroa_idx621 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.ev, ptr %.2..2..2..2.gep.sroa_idx621, align 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %.1..1..1..1..sroa_idx618 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 127, ptr %.1..1..1..1..sroa_idx618, align 1, !tbaa !87
  %i.ew = call noundef i64 @llvm.bswap.i64(i64 %.sroa.229.0.copyload)
  %.2..2..2..2.gep.sroa_idx620 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i64 %i.ew, ptr %.2..2..2..2.gep.sroa_idx620, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.aj, %bb.ak
  %.0.i161 = phi i64 [ 2, %bb.ah ], [ 4, %bb.aj ], [ 10, %bb.ak ]
  %i.ex = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %15, i64 noundef %.0.i161) ; 2 uses
  %i.ey = extractvalue { ptr, i64 } %i.ex, 1      ; 2 uses
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ey, i64 14) ; 2 uses
  %.not.i.i.i.i164 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i.i164, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = extractvalue { ptr, i64 } %i.ex, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr nonnull align 1 %i.d, i64 %i.ez, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166: ; preds = %bb.al, %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !432
  %i.fd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !433 ; 2 uses
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %.sroa.speculated.i.i165 = call i64 @llvm.umin.i64(i64 %i.fh, i64 %i.ez)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.speculated.i.i165 ; 3 uses
  store ptr %i.fi, ptr %i.fd, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fj = xor i1 %1, true
  %i.fk = zext i1 %i.fj to i8
  store i8 %i.fk, ptr %i.i, align 1, !tbaa !422
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !434 ; 3 uses
  %i.fo = ptrtoint ptr %i.fi to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  store ptr %i.fn, ptr %16, align 8, !tbaa !229
  %.sroa.4342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.fq, ptr %.sroa.4342.0..sroa_idx, align 8, !tbaa !84
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !427
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  store ptr %16, ptr %8, align 8, !tbaa !439, !alias.scope !1468
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i64 1, ptr %i.ft, align 8, !alias.scope !1468
  store ptr %16, ptr %i.fs, align 8, !tbaa !441, !alias.scope !1468
  %.not.i.i.i.i.i.i169 = icmp eq ptr %i.fi, %i.fn
  br i1 %.not.i.i.i.i.i.i169, label %._crit_edge.i.i.i.i.i.i170, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit175

._crit_edge.i.i.i.i.i.i170:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !441, !alias.scope !1468
  store i8 2, ptr %i.ft, align 8, !tbaa !442, !alias.scope !1468
  %i.fu = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !444, !noalias !1468
  %.not.i.i.i.i.i.i.i172 = icmp eq i64 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i.i172, label %._crit_edge.i.i.i.i.i.i.i173, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit175

._crit_edge.i.i.i.i.i.i.i173:                     ; preds = %._crit_edge.i.i.i.i.i.i170
  %.ptr4.i.i.i.i.i.i174 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %.ptr4.i.i.i.i.i.i174, ptr %i.fs, align 8, !tbaa !441, !alias.scope !1468
  store i8 0, ptr %i.fs, align 8, !tbaa !446, !alias.scope !1468
  store i8 3, ptr %i.ft, align 8, !tbaa !442, !alias.scope !1468
  br label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit175

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit175: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166, %._crit_edge.i.i.i.i.i.i170, %._crit_edge.i.i.i.i.i.i.i173
  %i.fw = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferESB_EEENSC_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  %i.fx = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.fy = load i64, ptr %i.f, align 8, !tbaa !84  ; 2 uses
  br i1 %i.fx, label %.thread437, label %bb.an

.thread437:                                       ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit175
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.cz

bb.an:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit175
  %i.fz = add i64 %i.fy, %.sroa.229.0.copyload
  store i64 %i.fz, ptr %i.f, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.cy

bb.ao:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !427
  %i.ga = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %17, ptr %i.ga, align 8, !tbaa !570
  %i.gb = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 5 uses
  store i64 0, ptr %i.gb, align 8, !tbaa !571
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.gd = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.ge = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.gf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gg = xor i1 %1, true
  %i.gh = zext i1 %i.gg to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.gj = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gk = ptrtoint ptr %17 to i64
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.go = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 56
  %.sroa.4340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.gs = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.gv = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gz = shl nsw i8 %.sroa.29.0580, 4            ; 2 uses
  %i.ha = or disjoint i8 0, 127
  %i.hb = or disjoint i8 0, 126
  %i.hc = shl nuw nsw i8 %i.ba, 1
  %i.hd = and i8 %i.hc, 4
  %i.he = zext nneg i8 %i.hd to i64
  %i.hf = or i8 %i.aw, %i.gz
  %.1..1..1..1..sroa_idx622 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx625 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx623 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx626 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx624 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit, %bb.ao
  %.sroa.20.3 = phi i8 [ %i.hf, %bb.ao ], [ %i.gz, %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit ]
  %.0143 = phi i64 [ %.sroa.229.0.copyload, %bb.ao ], [ %i.hh, %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit ] ; 2 uses
  %i.hg = load i64, ptr %i.gc, align 8, !tbaa !426
  %..i = call noundef i64 @llvm.umin.i64(i64 %.0143, i64 %i.hg) ; 14 uses
  %i.hh = sub nuw i64 %.0143, %..i                ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0                    ; 2 uses
  %i.hj = and i1 %1, %i.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %18, ptr noundef nonnull %i.gd, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.hk = select i1 %i.hj, i8 -128, i8 0
  %spec.select37.i181 = or i8 %.sroa.20.3, %i.hk
  store i8 %spec.select37.i181, ptr %i.c, align 1, !tbaa !87
  %i.hl = icmp ult i64 %..i, 126
  br i1 %i.hl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hm = trunc nuw nsw i64 %..i to i8
  %i.hn = or disjoint i8 0, %i.hm
  store i8 %i.hn, ptr %.1..1..1..1..sroa_idx624, align 1, !tbaa !87
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.ho = icmp ult i64 %..i, 65536
  br i1 %i.ho, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i8 %i.hb, ptr %.1..1..1..1..sroa_idx623, align 1, !tbaa !87
  %i.hp = trunc nuw i64 %..i to i16
  %i.hq = call noundef i16 @llvm.bswap.i16(i16 %i.hp)
  store i16 %i.hq, ptr %.2..2..2..2.gep.sroa_idx626, align 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  store i8 %i.ha, ptr %.1..1..1..1..sroa_idx622, align 1, !tbaa !87
  %i.hr = call noundef i64 @llvm.bswap.i64(i64 %..i)
  store i64 %i.hr, ptr %.2..2..2..2.gep.sroa_idx625, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq
  %.0.i184 = phi i64 [ 2, %bb.aq ], [ 4, %bb.as ], [ 10, %bb.at ]
  %spec.select = add nuw nsw i64 %.0.i184, %i.he
  %i.hs = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %18, i64 noundef %spec.select) ; 2 uses
  %i.ht = extractvalue { ptr, i64 } %i.hs, 1      ; 2 uses
  %i.hu = call i64 @llvm.umin.i64(i64 %i.ht, i64 14) ; 2 uses
  %.not.i.i.i.i187 = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i.i.i187, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit189, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hv = extractvalue { ptr, i64 } %i.hs, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hv, ptr nonnull align 1 %i.c, i64 %i.hu, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit189

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit189: ; preds = %bb.au, %bb.av
  %i.hw = load ptr, ptr %i.ge, align 8, !tbaa !432
  %i.hx = load ptr, ptr %i.gf, align 8, !tbaa !433 ; 2 uses
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %.sroa.speculated.i.i188 = call i64 @llvm.umin.i64(i64 %i.ia, i64 %i.hu)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.sroa.speculated.i.i188 ; 3 uses
  store ptr %i.ib, ptr %i.gf, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.gh, ptr %i.i, align 1, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  %i.ic = load ptr, ptr %i.gj, align 8, !tbaa !434 ; 3 uses
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.ig = load ptr, ptr %i.ga, align 8, !tbaa !570, !noalias !1469 ; 2 uses
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = sub i64 %i.ih, %i.gk                    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %20, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 16, i1 false), !tbaa.struct !427
  %.sink.i.i.i.ptr.i.i = getelementptr inbounds i8, ptr %20, i64 %i.ii ; 7 uses
  store ptr %.sink.i.i.i.ptr.i.i, ptr %.ptr.i.i, align 8, !tbaa !570, !alias.scope !1469
  %i.ij = load i64, ptr %i.gb, align 8, !tbaa !571, !noalias !1469 ; 3 uses
  store i64 %i.ij, ptr %i.gl, align 8, !tbaa !571, !alias.scope !1469
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false), !alias.scope !1469
  store ptr %.sink.i.i.i.ptr.i.i, ptr %i.go, align 8, !tbaa !441, !alias.scope !1469
  store ptr %20, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !579, !alias.scope !1469
  %.not26.i.i.i = icmp eq i64 %i.ii, 16
  br i1 %.not26.i.i.i, label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio14mutable_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit, label %.lr.ph.split.i.preheader.i.i

.lr.ph.split.i.preheader.i.i:                     ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit189
  %i.ik = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.ptr.i.i, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.ptr.i.i, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !84, !alias.scope !1469
  %i.il = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i, i64 %i.ij) ; 6 uses
  %.not.i.peel.i.i = icmp ult i64 %i.il, %..i
  br i1 %.not.i.peel.i.i, label %bb.aw, label %.thread.i.i.i

bb.aw:                                            ; preds = %.lr.ph.split.i.preheader.i.i
  store i64 %i.il, ptr %i.gm, align 8, !tbaa !582, !alias.scope !1469
  %.not27.i.peel.i.i = icmp eq ptr %i.ig, %17
  br i1 %.not27.i.peel.i.i, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.split.i.peel.next.i.i

.lr.ph.split.i.peel.next.i.i:                     ; preds = %bb.aw
  %i.im = sub nuw i64 %..i, %i.il
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.ax, %.lr.ph.split.i.peel.next.i.i
  %.01022.i.i.i = phi i64 [ %i.is, %bb.ax ], [ %i.im, %.lr.ph.split.i.peel.next.i.i ] ; 3 uses
  %i.in = phi ptr [ %i.ip, %bb.ax ], [ %i.ik, %.lr.ph.split.i.peel.next.i.i ] ; 3 uses
  %i.io = phi i64 [ %i.it, %bb.ax ], [ %i.il, %.lr.ph.split.i.peel.next.i.i ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !84, !alias.scope !1469 ; 4 uses
  %.not.i.i.i = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i, %.01022.i.i.i
  br i1 %.not.i.i.i, label %bb.ax, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.i.preheader.i.i
  %.01022.i.lcssa.i.i = phi i64 [ %..i, %.lr.ph.split.i.preheader.i.i ], [ %.01022.i.i.i, %.lr.ph.split.i.i.i ] ; 2 uses
  %.lcssa11.i.i = phi i64 [ 0, %.lr.ph.split.i.preheader.i.i ], [ %i.io, %.lr.ph.split.i.i.i ]
  %.lcssa.i.i = phi ptr [ %i.ik, %.lr.ph.split.i.preheader.i.i ], [ %i.ip, %.lr.ph.split.i.i.i ] ; 2 uses
  %.pn.i.i.lcssa.i.i = phi i64 [ %i.il, %.lr.ph.split.i.preheader.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %.lr.ph.split.i.i.i ]
  store ptr %.lcssa.i.i, ptr %i.go, align 8, !tbaa !583, !alias.scope !1469
  %i.iq = add i64 %.lcssa11.i.i, %.01022.i.lcssa.i.i ; 2 uses
  store i64 %i.iq, ptr %i.gm, align 8, !tbaa !582, !alias.scope !1469
  %i.ir = sub i64 %.01022.i.lcssa.i.i, %.pn.i.i.lcssa.i.i ; 2 uses
  store i64 %i.ir, ptr %i.gn, align 8, !tbaa !584, !alias.scope !1469
  br label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio14mutable_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit

bb.ax:                                            ; preds = %.lr.ph.split.i.i.i
  %i.is = sub nuw i64 %.01022.i.i.i, %.sroa.4.0.copyload.i.i.i.i
  %i.it = add i64 %.sroa.4.0.copyload.i.i.i.i, %i.io ; 3 uses
  store i64 %i.it, ptr %i.gm, align 8, !tbaa !582, !alias.scope !1469
  %.not27.i.i.i = icmp eq ptr %i.in, %20
  br i1 %.not27.i.i.i, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !1441

..loopexit_crit_edge.i.i.i:                       ; preds = %bb.ax, %bb.aw
  %i.iu = phi i64 [ %i.il, %bb.aw ], [ %i.it, %bb.ax ]
  %.lcssa10.i.i = phi ptr [ %i.ik, %bb.aw ], [ %i.ip, %bb.ax ] ; 2 uses
  store ptr %.lcssa10.i.i, ptr %i.go, align 8, !tbaa !583, !alias.scope !1469
  br label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio14mutable_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit

_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio14mutable_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit189, %.thread.i.i.i, %..loopexit_crit_edge.i.i.i
  %i.iv = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit189 ], [ %i.ir, %.thread.i.i.i ], [ 0, %..loopexit_crit_edge.i.i.i ]
  %i.iw = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit189 ], [ %i.iq, %.thread.i.i.i ], [ %i.iu, %..loopexit_crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = phi ptr [ %.sink.i.i.i.ptr.i.i, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit189 ], [ %.lcssa.i.i, %.thread.i.i.i ], [ %.lcssa10.i.i, %..loopexit_crit_edge.i.i.i ] ; 2 uses
  store ptr %i.ic, ptr %19, align 8, !tbaa !229
  store i64 %i.if, ptr %.sroa.4340.0..sroa_idx, align 8, !tbaa !84
  %.not = icmp eq ptr %.sink.i.i.i.ptr.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ix = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  %i.iy = ptrtoaddr ptr %.sink.i.i.i.ptr.i.i to i64
  %reass.sub.i.i.i.i.i.i = sub i64 %i.ix, %i.iy
  %i.iz = and i64 %reass.sub.i.i.i.i.i.i, -16
  %.0.lcssa.i.i.i.i.i.i.i = select i1 %.not, i64 0, i64 %i.iz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %i.ja = getelementptr inbounds i8, ptr %i.gp, i64 %i.ii ; 3 uses
  store ptr %i.ja, ptr %i.gq, align 8, !tbaa !570, !alias.scope !1470
  store i64 %i.ij, ptr %i.gr, align 8, !tbaa !571, !alias.scope !1470
  store i64 %i.iw, ptr %i.gs, align 8, !tbaa !582, !alias.scope !1470
  store i64 %i.iv, ptr %i.gt, align 8, !tbaa !584, !alias.scope !1470
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.ja, i64 %.0.lcssa.i.i.i.i.i.i.i
  store ptr %scevgep.i.i.i.i.i.i.i.i, ptr %i.gu, align 8, !alias.scope !1470
  store ptr %i.gp, ptr %i.gv, align 8, !alias.scope !1470
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  store ptr %19, ptr %7, align 8, !tbaa !588, !alias.scope !1473
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gy, i8 0, i64 32, i1 false), !alias.scope !1473
  store ptr %19, ptr %i.gw, align 8, !tbaa !441, !alias.scope !1473
  store i8 1, ptr %i.gx, align 8, !tbaa !589, !alias.scope !1473
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !1473
  store ptr %7, ptr %6, align 8, !tbaa !591, !noalias !1473
  %.not.i.i.i.i.i.i192 = icmp eq ptr %i.ib, %i.ic
  br i1 %.not.i.i.i.i.i.i192, label %._crit_edge.i.i.i.i.i.i193, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixISA_EEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISI_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i193:                       ; preds = %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio14mutable_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit
  store ptr %i.gp, ptr %i.gw, align 8, !tbaa !441, !alias.scope !1473
  store i64 %i.iw, ptr %i.gy, align 8, !tbaa !84, !alias.scope !1473
  store ptr %i.ja, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !441, !alias.scope !1473
  store ptr %i.gp, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !579, !alias.scope !1473
  store i8 2, ptr %i.gx, align 8, !tbaa !589, !alias.scope !1473
  invoke void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_19buffers_prefix_viewINS0_14buffers_suffixIS3_EEEEEE14const_iterator9increment4nextESt17integral_constantImLm2EE(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixISA_EEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISI_EE5valueEiE4typeE.exit unwind label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i.i.i193
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #36
  unreachable

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixISA_EEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISI_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio14mutable_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit, %._crit_edge.i.i.i.i.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !1473
  %i.jd = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferENS3_19buffers_prefix_viewINS3_14buffers_suffixISB_EEEEEEENSG_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(80) %19, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  %i.je = load i64, ptr %i.f, align 8, !tbaa !84
  %i.jf = add i64 %i.je, %..i
  store i64 %i.jf, ptr %i.f, align 8, !tbaa !84
  %i.jg = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.jg, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixISA_EEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISI_EE5valueEiE4typeE.exit
  br i1 %i.hi, label %.thread448, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not12.i = icmp eq i64 %..i, 0
  br i1 %.not12.i, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ba
  %.promoted.i = load ptr, ptr %i.ga, align 8     ; 3 uses
  %.not11.i.peel = icmp eq ptr %.promoted.i, %i.ga
  br i1 %.not11.i.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i
  %.promoted16.i = load i64, ptr %i.gb, align 8   ; 2 uses
  %.sroa.2.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 8
  %.sroa.2.0.copyload.i.peel = load i64, ptr %.sroa.2.0..sroa_idx.i.peel, align 8, !tbaa !84
  %i.jh = sub i64 %.sroa.2.0.copyload.i.peel, %.promoted16.i ; 2 uses
  %i.ji = icmp ult i64 %..i, %i.jh                ; 2 uses
  %i.jj = add i64 %..i, %.promoted16.i
  %storemerge.i.peel = select i1 %i.ji, i64 %i.jj, i64 0
  store i64 %storemerge.i.peel, ptr %i.gb, align 8, !tbaa !571
end_hunk_4
begin_hunk_5_@_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS4_14mutable_bufferEEEmbRKT_RNS_6system10error_codeE:bb.a
  %i.mc = add i64 %i.mb, %..i211
  store i64 %i.mc, ptr %i.f, align 8, !tbaa !84
  %i.md = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.me = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  br i1 %i.md, label %.thread452, label %.preheader

.preheader:                                       ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit237
  %i.mf = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.bu

bb.bu:                                            ; preds = %.preheader, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit
  %.1144 = phi i64 [ %i.nc, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit ], [ %i.ll, %.preheader ] ; 3 uses
  %.not147 = icmp eq i64 %.1144, 0
  br i1 %.not147, label %bb.ce, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mh = load i64, ptr %i.kw, align 8, !tbaa !426 ; 2 uses
  %..i238 = call noundef i64 @llvm.umin.i64(i64 %.1144, i64 %i.mh) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #35
  %i.mi = load ptr, ptr %i.ky, align 8, !tbaa !236 ; 2 uses
  store ptr %i.mi, ptr %26, align 8
  store i64 %..i238, ptr %i.mf, align 8
  %.not16.i.i241 = icmp eq i64 %i.mh, 0
  br i1 %.not16.i.i241, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit272, label %.lr.ph.i.i242

.lr.ph.i.i242:                                    ; preds = %bb.bv
  %i.mj = load ptr, ptr %i.ku, align 8, !tbaa !570
  br label %.lr.ph.split.i.i243

.lr.ph.split.i.i243:                              ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i256, %.lr.ph.i.i242
  %.sroa.07.019.i.i245 = phi ptr [ %i.mq, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i256 ], [ %i.mi, %.lr.ph.i.i242 ] ; 2 uses
  %.sroa.6.018.i.i246 = phi i64 [ %i.mr, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i256 ], [ %..i238, %.lr.ph.i.i242 ] ; 2 uses
  %.sroa.011.017.i.i247 = phi ptr [ %i.ms, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i256 ], [ %i.mj, %.lr.ph.i.i242 ] ; 5 uses
  %.not23.i.i248 = icmp eq ptr %.sroa.011.017.i.i247, %i.ku
  br i1 %.not23.i.i248, label %.lr.ph.i262, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.split.i.i243
  %i.mk = load ptr, ptr %i.ku, align 8, !tbaa !570
  %i.ml = icmp eq ptr %.sroa.011.017.i.i247, %i.mk
  %.sroa.0.0.copyload1.i.i.i249 = load ptr, ptr %.sroa.011.017.i.i247, align 8, !tbaa !229 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i250 = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i247, i64 8
  %.sroa.4.0.copyload.i.i.i251 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i250, align 8, !tbaa !84 ; 3 uses
  br i1 %i.ml, label %bb.bx, label %_ZNK5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE14const_iteratordeEv.exit.i.i252

bb.bx:                                            ; preds = %bb.bw
  %i.mm = load i64, ptr %i.kv, align 8, !tbaa !571
  %spec.select.i.i.i.i259 = call i64 @llvm.umin.i64(i64 %i.mm, i64 %.sroa.4.0.copyload.i.i.i251) ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i249, i64 %spec.select.i.i.i.i259
  %i.mo = sub i64 %.sroa.4.0.copyload.i.i.i251, %spec.select.i.i.i.i259
  br label %_ZNK5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE14const_iteratordeEv.exit.i.i252

_ZNK5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE14const_iteratordeEv.exit.i.i252: ; preds = %bb.bx, %bb.bw
  %.pn3.i.i.i253 = phi ptr [ %i.mn, %bb.bx ], [ %.sroa.0.0.copyload1.i.i.i249, %bb.bw ]
  %.pn.i.i.i254 = phi i64 [ %i.mo, %bb.bx ], [ %.sroa.4.0.copyload.i.i.i251, %bb.bw ] ; 2 uses
  %i.mp = call i64 @llvm.umin.i64(i64 %.sroa.6.018.i.i246, i64 %.pn.i.i.i254) ; 3 uses
  %.not.i.i.i255 = icmp eq i64 %.pn.i.i.i254, 0
  br i1 %.not.i.i.i255, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i256, label %bb.by

bb.by:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE14const_iteratordeEv.exit.i.i252
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.07.019.i.i245, ptr align 1 %.pn3.i.i.i253, i64 %i.mp, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i256

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i256: ; preds = %bb.by, %_ZNK5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE14const_iteratordeEv.exit.i.i252
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i245, i64 %i.mp
  %i.mr = sub nuw i64 %.sroa.6.018.i.i246, %i.mp  ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i247, i64 16
  %.not.i.i257 = icmp eq i64 %i.mr, 0
  br i1 %.not.i.i257, label %.lr.ph.i262, label %.lr.ph.split.i.i243, !llvm.loop !1454

.lr.ph.i262:                                      ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i256, %.lr.ph.split.i.i243
  %.promoted.i263 = load ptr, ptr %i.ku, align 8  ; 3 uses
  %.not11.i267.peel = icmp eq ptr %.promoted.i263, %i.ku
  br i1 %.not11.i267.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit272, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i262
  %.promoted16.i264 = load i64, ptr %i.kv, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i268.peel = getelementptr inbounds nuw i8, ptr %.promoted.i263, i64 8
  %.sroa.2.0.copyload.i269.peel = load i64, ptr %.sroa.2.0..sroa_idx.i268.peel, align 8, !tbaa !84
  %i.mt = sub i64 %.sroa.2.0.copyload.i269.peel, %.promoted16.i264 ; 2 uses
  %i.mu = icmp ult i64 %..i238, %i.mt             ; 2 uses
  %i.mv = add i64 %..i238, %.promoted16.i264
  %storemerge.i270.peel = select i1 %i.mu, i64 %i.mv, i64 0
  store i64 %storemerge.i270.peel, ptr %i.kv, align 8, !tbaa !571
  br i1 %i.mu, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit272, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mw = sub nuw i64 %..i238, %i.mt              ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.promoted.i263, i64 16 ; 2 uses
  store ptr %i.mx, ptr %i.ku, align 8, !tbaa !570
  %.not.i271.peel = icmp eq i64 %i.mw, 0
  br i1 %.not.i271.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit272, label %.peel.next509

.peel.next509:                                    ; preds = %bb.ca, %bb.cc
  %.0813.i266 = phi i64 [ %i.na, %bb.cc ], [ %i.mw, %bb.ca ] ; 3 uses
  %i.my = phi ptr [ %i.nb, %bb.cc ], [ %i.mx, %bb.ca ] ; 3 uses
  %.not11.i267 = icmp eq ptr %i.my, %i.ku
  br i1 %.not11.i267, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit272, label %bb.cb

bb.cb:                                            ; preds = %.peel.next509
  %.sroa.2.0..sroa_idx.i268 = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %.sroa.2.0.copyload.i269 = load i64, ptr %.sroa.2.0..sroa_idx.i268, align 8, !tbaa !84 ; 2 uses
  %i.mz = icmp ult i64 %.0813.i266, %.sroa.2.0.copyload.i269 ; 2 uses
  %storemerge.i270 = select i1 %i.mz, i64 %.0813.i266, i64 0
  store i64 %storemerge.i270, ptr %i.kv, align 8, !tbaa !571
  br i1 %i.mz, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit272, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.na = sub nuw i64 %.0813.i266, %.sroa.2.0.copyload.i269 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 16 ; 2 uses
  store ptr %i.nb, ptr %i.ku, align 8, !tbaa !570
  %.not.i271 = icmp eq i64 %i.na, 0
  br i1 %.not.i271, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit272, label %.peel.next509, !llvm.loop !1455

_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit272: ; preds = %.peel.next509, %bb.cb, %bb.cc, %.lr.ph.i262, %bb.bz, %bb.ca, %bb.bv
  %i.nc = sub nuw i64 %.1144, %..i238
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 1 dereferenceable(4) %21)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.nd = load ptr, ptr %26, align 8, !tbaa !470
  %i.ne = load i64, ptr %i.mf, align 8, !tbaa !444 ; 3 uses
  %.not19.not.i.i.i = icmp eq i64 %i.ne, 0
  br i1 %.not19.not.i.i.i, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit272, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i
  %.sroa.7.020.i.i.i = phi i64 [ %i.nr, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i ], [ 0, %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit272 ] ; 3 uses
  %i.nf = load i64, ptr %i.mg, align 8, !tbaa !152 ; 2 uses
  %i.ng = and i64 %i.nf, 1
  %.not.i.i.i.i.i.i273 = icmp eq i64 %i.ng, 0
  br i1 %.not.i.i.i.i.i.i273, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i
  %i.nh = icmp eq i64 %i.nf, 1
  %i.ni = load i32, ptr %3, align 8
  %.fr.i.i.i.i = freeze i32 %i.ni
  %.not.i.i.i.i274 = icmp eq i32 %.fr.i.i.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.nh, %.not.i.i.i.i274
  br i1 %or.cond.i.i.i.i, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i: ; preds = %bb.cd, %.lr.ph.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.sroa.7.020.i.i.i
  %i.nk = sub nuw i64 %i.ne, %.sroa.7.020.i.i.i
  %spec.select.i1.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.nk, i64 65536)
  %i.nl = load ptr, ptr %i.lo, align 8, !tbaa !95 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !471
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 28
  %i.np = load i8, ptr %i.no, align 4, !tbaa !472
  %i.nq = call noundef i64 @_ZN5boost4asio6detail10socket_ops10sync_send1EihPKvmiRNS_6system10error_codeE(i32 noundef %i.nn, i8 noundef zeroext %i.np, ptr noundef %i.nj, i64 noundef %spec.select.i1.i.i.i.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.nr = add i64 %i.nq, %.sroa.7.020.i.i.i       ; 2 uses
  %.not.i.i.i275 = icmp ult i64 %i.nr, %i.ne
  br i1 %.not.i.i.i275, label %.lr.ph.i.i.i, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit: ; preds = %bb.cd, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit272
  %i.ns = load i64, ptr %i.f, align 8, !tbaa !84
  %i.nt = add i64 %i.ns, %..i238
  store i64 %i.nt, ptr %i.f, align 8, !tbaa !84
  %i.nu = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.nv = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br i1 %i.nu, label %.thread452, label %bb.bu, !llvm.loop !1456

.thread452:                                       ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit237
  %.10.ph = phi i64 [ %i.me, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit237 ], [ %i.nv, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  br label %bb.cz

bb.ce:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  br label %bb.cy

bb.cf:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !427
  %i.nw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 9 uses
  store ptr %27, ptr %i.nw, align 8, !tbaa !570
  %i.nx = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 5 uses
  store i64 0, ptr %i.nx, align 8, !tbaa !571
  %i.ny = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.nz = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  %i.oa = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %30, i64 40
  %.2..2..2..2.gep.sroa_idx639 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4..4..4..4.gep27.sroa_idx641 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.10..10..10..10.gep28.sroa_idx642 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.oc = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.od = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.of = getelementptr inbounds nuw i8, ptr %30, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.og = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %31, i64 24
  %.ptr4.i.i.i.i.i.i322 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.ok = shl nsw i8 %.sroa.29.0580, 4            ; 2 uses
  %i.ol = or disjoint i8 -128, 127
  %i.om = or disjoint i8 -128, 126
  %i.on = or i8 %i.aw, %i.ok
  %.1..1..1..1..sroa_idx635 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx638 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx636 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx640 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx637 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit335, %bb.cf
  %.sroa.20.5 = phi i8 [ %i.on, %bb.cf ], [ %i.ok, %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit335 ]
  %.2145 = phi i64 [ %.sroa.229.0.copyload, %bb.cf ], [ %i.pg, %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit335 ] ; 2 uses
  %i.oo = load ptr, ptr %0, align 8, !tbaa !303
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 2393
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !416, !range !119, !noundef !120
  %i.or = trunc nuw i8 %i.oq to i1
  %i.os = call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.or)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %bb.cg
  %i.ot = call noundef i32 %i.os(), !inline_history !22 ; 3 uses
  %.not.i276 = icmp eq i32 %i.ot, 0
  br i1 %.not.i276, label %bb.ch, label %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit277, !llvm.loop !23

_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit277: ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #35
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %28, i32 noundef %i.ot)
  %i.ou = load i64, ptr %i.ny, align 8, !tbaa !426
  %..i278 = call noundef i64 @llvm.umin.i64(i64 %.2145, i64 %i.ou) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #35
  %i.ov = load ptr, ptr %i.nz, align 8, !tbaa !236 ; 2 uses
  store ptr %i.ov, ptr %29, align 8
  store i64 %..i278, ptr %i.oa, align 8
  %.not16.i.i281 = icmp eq i64 %..i278, 0         ; 2 uses
  br i1 %.not16.i.i281, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixIS2_EEEEmRKT_RKT0_.exit300, label %.lr.ph.i.i282

.lr.ph.i.i282:                                    ; preds = %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit277
  %i.ow = load ptr, ptr %i.nw, align 8, !tbaa !570
  br label %.lr.ph.split.i.i283

.lr.ph.split.i.i283:                              ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i296, %.lr.ph.i.i282
  %.sroa.07.019.i.i285 = phi ptr [ %i.pd, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i296 ], [ %i.ov, %.lr.ph.i.i282 ] ; 2 uses
  %.sroa.6.018.i.i286 = phi i64 [ %i.pe, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i296 ], [ %..i278, %.lr.ph.i.i282 ] ; 2 uses
  %.sroa.011.017.i.i287 = phi ptr [ %i.pf, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i296 ], [ %i.ow, %.lr.ph.i.i282 ] ; 5 uses
  %.not23.i.i288 = icmp eq ptr %.sroa.011.017.i.i287, %i.nw
  br i1 %.not23.i.i288, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixIS2_EEEEmRKT_RKT0_.exit300, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.split.i.i283
  %i.ox = load ptr, ptr %i.nw, align 8, !tbaa !570
  %i.oy = icmp eq ptr %.sroa.011.017.i.i287, %i.ox
  %.sroa.0.0.copyload1.i.i.i289 = load ptr, ptr %.sroa.011.017.i.i287, align 8, !tbaa !229 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i290 = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i287, i64 8
  %.sroa.4.0.copyload.i.i.i291 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i290, align 8, !tbaa !84 ; 3 uses
  br i1 %i.oy, label %bb.cj, label %_ZNK5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE14const_iteratordeEv.exit.i.i292

bb.cj:                                            ; preds = %bb.ci
  %i.oz = load i64, ptr %i.nx, align 8, !tbaa !571
  %spec.select.i.i.i.i299 = call i64 @llvm.umin.i64(i64 %i.oz, i64 %.sroa.4.0.copyload.i.i.i291) ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i289, i64 %spec.select.i.i.i.i299
  %i.pb = sub i64 %.sroa.4.0.copyload.i.i.i291, %spec.select.i.i.i.i299
  br label %_ZNK5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE14const_iteratordeEv.exit.i.i292

_ZNK5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE14const_iteratordeEv.exit.i.i292: ; preds = %bb.cj, %bb.ci
  %.pn3.i.i.i293 = phi ptr [ %i.pa, %bb.cj ], [ %.sroa.0.0.copyload1.i.i.i289, %bb.ci ]
  %.pn.i.i.i294 = phi i64 [ %i.pb, %bb.cj ], [ %.sroa.4.0.copyload.i.i.i291, %bb.ci ] ; 2 uses
  %i.pc = call i64 @llvm.umin.i64(i64 %.sroa.6.018.i.i286, i64 %.pn.i.i.i294) ; 3 uses
  %.not.i.i.i295 = icmp eq i64 %.pn.i.i.i294, 0
  br i1 %.not.i.i.i295, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i296, label %bb.ck

bb.ck:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE14const_iteratordeEv.exit.i.i292
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.07.019.i.i285, ptr align 1 %.pn3.i.i.i293, i64 %i.pc, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i296

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i296: ; preds = %bb.ck, %_ZNK5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE14const_iteratordeEv.exit.i.i292
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i285, i64 %i.pc
  %i.pe = sub nuw i64 %.sroa.6.018.i.i286, %i.pc  ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i287, i64 16
  %.not.i.i297 = icmp eq i64 %i.pe, 0
  br i1 %.not.i.i297, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixIS2_EEEEmRKT_RKT0_.exit300, label %.lr.ph.split.i.i283, !llvm.loop !1454

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixIS2_EEEEmRKT_RKT0_.exit300: ; preds = %.lr.ph.split.i.i283, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i296, %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit277
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 1 dereferenceable(4) %28)
  %i.pg = sub nuw i64 %.2145, %..i278             ; 2 uses
  %i.ph = icmp eq i64 %i.pg, 0                    ; 2 uses
  %i.pi = select i1 %1, i1 %i.ph, i1 false        ; 2 uses
  %i.pj = xor i1 %i.pi, true
  %i.pk = zext i1 %i.pj to i8
  store i8 %i.pk, ptr %i.i, align 1, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %30, ptr noundef nonnull %i.ob, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.pl = select i1 %i.pi, i8 -128, i8 0
  %spec.select37.i306 = or i8 %.sroa.20.5, %i.pl
  store i8 %spec.select37.i306, ptr %i.a, align 1, !tbaa !87
  %i.pm = icmp ult i64 %..i278, 126
  br i1 %i.pm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixIS2_EEEEmRKT_RKT0_.exit300
  %i.pn = trunc nuw nsw i64 %..i278 to i8
  %i.po = or disjoint i8 -128, %i.pn
  store i8 %i.po, ptr %.1..1..1..1..sroa_idx637, align 1, !tbaa !87
  br label %bb.cp

bb.cm:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixIS2_EEEEmRKT_RKT0_.exit300
  %i.pp = icmp ult i64 %..i278, 65536
  br i1 %i.pp, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i8 %i.om, ptr %.1..1..1..1..sroa_idx636, align 1, !tbaa !87
  %i.pq = trunc nuw i64 %..i278 to i16
  %i.pr = call noundef i16 @llvm.bswap.i16(i16 %i.pq)
  store i16 %i.pr, ptr %.2..2..2..2.gep.sroa_idx640, align 1
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  store i8 %i.ol, ptr %.1..1..1..1..sroa_idx635, align 1, !tbaa !87
  %i.ps = call noundef i64 @llvm.bswap.i64(i64 %..i278)
  store i64 %i.ps, ptr %.2..2..2..2.gep.sroa_idx638, align 1
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cl
  %.0.sroa.phi.i308 = phi ptr [ %.2..2..2..2.gep.sroa_idx639, %bb.cl ], [ %.4..4..4..4.gep27.sroa_idx641, %bb.cn ], [ %.10..10..10..10.gep28.sroa_idx642, %bb.co ]
  %.0.i309 = phi i64 [ 6, %bb.cl ], [ 8, %bb.cn ], [ 14, %bb.co ]
  store i32 %i.ot, ptr %.0.sroa.phi.i308, align 1
  %i.pt = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %30, i64 noundef %.0.i309) ; 2 uses
  %i.pu = extractvalue { ptr, i64 } %i.pt, 1      ; 2 uses
  %i.pv = call i64 @llvm.umin.i64(i64 %i.pu, i64 14) ; 2 uses
  %.not.i.i.i.i312 = icmp eq i64 %i.pu, 0
  br i1 %.not.i.i.i.i312, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit314, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pw = extractvalue { ptr, i64 } %i.pt, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pw, ptr nonnull align 1 %i.a, i64 %i.pv, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit314

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit314: ; preds = %bb.cp, %bb.cq
  %i.px = load ptr, ptr %i.oc, align 8, !tbaa !432
  %i.py = load ptr, ptr %i.od, align 8, !tbaa !433 ; 2 uses
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %.sroa.speculated.i.i313 = call i64 @llvm.umin.i64(i64 %i.qb, i64 %i.pv)
  %i.qc = getelementptr inbounds nuw i8, ptr %i.py, i64 %.sroa.speculated.i.i313 ; 3 uses
  store ptr %i.qc, ptr %i.od, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  %i.qd = load ptr, ptr %i.of, align 8, !tbaa !434 ; 3 uses
  %i.qe = ptrtoint ptr %i.qc to i64
  %i.qf = ptrtoint ptr %i.qd to i64
  %i.qg = sub i64 %i.qe, %i.qf
  store ptr %i.qd, ptr %31, align 8, !tbaa !229
  store i64 %i.qg, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.og, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !427
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  store ptr %31, ptr %4, align 8, !tbaa !439, !alias.scope !1479
  store i64 1, ptr %i.oi, align 8, !alias.scope !1479
  store ptr %31, ptr %i.oh, align 8, !tbaa !441, !alias.scope !1479
  %.not.i.i.i.i.i.i317 = icmp eq ptr %i.qc, %i.qd
  br i1 %.not.i.i.i.i.i.i317, label %._crit_edge.i.i.i.i.i.i318, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit323

._crit_edge.i.i.i.i.i.i318:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit314
  store ptr %i.og, ptr %i.oh, align 8, !tbaa !441, !alias.scope !1479
  store i8 2, ptr %i.oi, align 8, !tbaa !442, !alias.scope !1479
  %i.qh = load i64, ptr %i.oj, align 8, !tbaa !444, !noalias !1479
  %.not.i.i.i.i.i.i.i320 = icmp eq i64 %i.qh, 0
  br i1 %.not.i.i.i.i.i.i.i320, label %._crit_edge.i.i.i.i.i.i.i321, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit323

._crit_edge.i.i.i.i.i.i.i321:                     ; preds = %._crit_edge.i.i.i.i.i.i318
  store ptr %.ptr4.i.i.i.i.i.i322, ptr %i.oh, align 8, !tbaa !441, !alias.scope !1479
  store i8 0, ptr %i.oh, align 8, !tbaa !446, !alias.scope !1479
  store i8 3, ptr %i.oi, align 8, !tbaa !442, !alias.scope !1479
  br label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit323

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit323: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit314, %._crit_edge.i.i.i.i.i.i318, %._crit_edge.i.i.i.i.i.i.i321
  %i.qi = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferESB_EEENSC_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %i.oe, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  %i.qj = load i64, ptr %i.f, align 8, !tbaa !84
  %i.qk = add i64 %i.qj, %..i278
  store i64 %i.qk, ptr %i.f, align 8, !tbaa !84
  %i.ql = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.ql, label %bb.cx, label %bb.cr

bb.cr:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit323
  br i1 %i.ph, label %.thread464, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not16.i.i281, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit335, label %.lr.ph.i325

.lr.ph.i325:                                      ; preds = %bb.cs
  %.promoted.i326 = load ptr, ptr %i.nw, align 8  ; 3 uses
  %.not11.i330.peel = icmp eq ptr %.promoted.i326, %i.nw
  br i1 %.not11.i330.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit335, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i325
  %.promoted16.i327 = load i64, ptr %i.nx, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i331.peel = getelementptr inbounds nuw i8, ptr %.promoted.i326, i64 8
  %.sroa.2.0.copyload.i332.peel = load i64, ptr %.sroa.2.0..sroa_idx.i331.peel, align 8, !tbaa !84
  %i.qm = sub i64 %.sroa.2.0.copyload.i332.peel, %.promoted16.i327 ; 2 uses
  %i.qn = icmp ult i64 %..i278, %i.qm             ; 2 uses
  %i.qo = add i64 %..i278, %.promoted16.i327
  %storemerge.i333.peel = select i1 %i.qn, i64 %i.qo, i64 0
  store i64 %storemerge.i333.peel, ptr %i.nx, align 8, !tbaa !571
  br i1 %i.qn, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit335, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qp = sub nuw i64 %..i278, %i.qm              ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.promoted.i326, i64 16 ; 2 uses
  store ptr %i.qq, ptr %i.nw, align 8, !tbaa !570
  %.not.i334.peel = icmp eq i64 %i.qp, 0
  br i1 %.not.i334.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit335, label %.peel.next512

.peel.next512:                                    ; preds = %bb.cu, %bb.cw
  %.0813.i329 = phi i64 [ %i.qt, %bb.cw ], [ %i.qp, %bb.cu ] ; 3 uses
  %i.qr = phi ptr [ %i.qu, %bb.cw ], [ %i.qq, %bb.cu ] ; 3 uses
  %.not11.i330 = icmp eq ptr %i.qr, %i.nw
  br i1 %.not11.i330, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit335, label %bb.cv

bb.cv:                                            ; preds = %.peel.next512
  %.sroa.2.0..sroa_idx.i331 = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %.sroa.2.0.copyload.i332 = load i64, ptr %.sroa.2.0..sroa_idx.i331, align 8, !tbaa !84 ; 2 uses
  %i.qs = icmp ult i64 %.0813.i329, %.sroa.2.0.copyload.i332 ; 2 uses
  %storemerge.i333 = select i1 %i.qs, i64 %.0813.i329, i64 0
  store i64 %storemerge.i333, ptr %i.nx, align 8, !tbaa !571
  br i1 %i.qs, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit335, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qt = sub nuw i64 %.0813.i329, %.sroa.2.0.copyload.i332 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 16 ; 2 uses
  store ptr %i.qu, ptr %i.nw, align 8, !tbaa !570
  %.not.i334 = icmp eq i64 %i.qt, 0
  br i1 %.not.i334, label %_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit335, label %.peel.next512, !llvm.loop !1461

_ZN5boost5beast14buffers_suffixINS_4asio14mutable_bufferEE7consumeEm.exit335: ; preds = %bb.cw, %bb.cv, %.peel.next512, %.lr.ph.i325, %bb.ct, %bb.cu, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %bb.cg

.thread464:                                       ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  br label %bb.cy

bb.cx:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit323
  %i.qv = load i64, ptr %i.f, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  br label %bb.cz

bb.cy:                                            ; preds = %.thread464, %bb.ce, %.thread448, %bb.an, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread
  %i.qw = load i64, ptr %i.f, align 8, !tbaa !84
  br label %bb.cz

bb.cz:                                            ; preds = %bb.a, %bb.cy, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit, %.thread437, %bb.bf, %.thread452, %bb.cx
  %.14 = phi i64 [ %i.fy, %.thread437 ], [ %i.qw, %bb.cy ], [ %.3415, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit ], [ %i.qv, %bb.cx ], [ %.10.ph, %.thread452 ], [ %i.jq, %bb.bf ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  ret i64 %.14
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5beast9websocket6detail9impl_baseILb1EE7deflateINS_4asio14mutable_bufferEEEbRS7_RNS0_14buffers_suffixIT_EEbRmRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::optional", align 4   ; 5 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %8 = alloca %"class.boost::optional", align 4   ; 5 uses
  %9 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %10 = alloca %"class.boost::optional", align 4  ; 5 uses
  %11 = alloca %"struct.boost::beast::zlib::z_params", align 8 ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !420
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !474
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !475
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 2, ptr %i.e, align 8, !tbaa !476
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !444
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !477
  %i.j = load ptr, ptr %1, align 8, !tbaa !470
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !478
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !570  ; 3 uses
  %.not91 = icmp eq ptr %i.m, %i.l
  br i1 %.not91, label %.thread76, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_5
begin_hunk_6_@_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEmbRKT_RNS_6system10error_codeE:bb.a
  %26 = alloca %"class.boost::beast::buffers_suffix.178", align 8 ; 33 uses
  %27 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %28 = alloca %"class.boost::beast::buffers_cat_view.183", align 8 ; 12 uses
  %29 = alloca %"class.boost::beast::buffers_prefix_view.187", align 8 ; 37 uses
  %30 = alloca %"struct.std::array", align 1      ; 6 uses
  %31 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 9 uses
  %32 = alloca %"class.boost::beast::buffers_suffix.178", align 8 ; 38 uses
  %33 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 8 uses
  %34 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %35 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 8 uses
  %36 = alloca %"class.boost::beast::buffers_suffix.178", align 8 ; 31 uses
  %37 = alloca %"struct.std::array", align 1      ; 6 uses
  %38 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 10 uses
  %39 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %40 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !303    ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  store i64 0, ptr %i.f, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = tail call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.h, label %bb.eg, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2245 ; 7 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !422, !range !119, !noundef !120
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread855, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !392, !noalias !1961 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !395, !noalias !1961 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !392, !noalias !1962
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !395, !noalias !1962 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !401, !noalias !1962
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.y = icmp ne ptr %2, %i.u
  %i.z = icmp ne ptr %i.m, %i.q
  %i.aa = load i64, ptr %i.x, align 8             ; 2 uses
  %i.ab = select i1 %i.y, i1 true, i1 %i.z        ; 2 uses
  %i.ac = icmp ne ptr %i.o, %i.s
  %or.cond.i1.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i1.i, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEvEEmRKT_.exit

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !403, !noalias !1963
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !395
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !375
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !395
  br label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i
  %.0.i.i4.i = phi i64 [ 0, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i ], [ %i.av, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i ]
  %.sroa.4.0.i.i3.i = phi i64 [ %i.ag, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i ], [ %i.aw, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i ] ; 2 uses
  %.sroa.11.0.in.i.sroa.speculated.i2.i = phi ptr [ %i.o, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i ], [ %.sroa.11.0.in.i.sroa.speculate.load._ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i ] ; 5 uses
  %i.al = icmp eq ptr %.sroa.11.0.in.i.sroa.speculated.i2.i, %i.o
  %i.am = icmp eq ptr %.sroa.11.0.in.i.sroa.speculated.i2.i, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.11.0.in.i.sroa.speculated.i2.i, i64 16
  %.sroa.6.0.in.i.i.i.i.i.i = select i1 %i.am, ptr %i.v, ptr %i.an
  %.sroa.6.0.i.i.i.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i.i.i.i, align 8, !tbaa !84 ; 4 uses
  %i.ao = icmp eq ptr %.sroa.11.0.in.i.sroa.speculated.i2.i, %i.ak ; 2 uses
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.i
  br i1 %i.ao, label %bb.g, label %bb.f

bb.e:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.i
  br i1 %i.ao, label %bb.h, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i.i.i, i64 %i.aa)
  br label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !396
  %i.ar = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i.i.i, i64 %i.aq)
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %i.aa)
  br label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.at = load i64, ptr %i.w, align 8, !tbaa !396
  %i.au = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i.i.i, i64 %i.at)
  br label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i

_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sink.i.i = phi i64 [ %i.ap, %bb.f ], [ %i.as, %bb.g ], [ %i.au, %bb.h ], [ %.sroa.6.0.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %spec.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i3.i, i64 %.sink.i.i)
  %i.av = add i64 %spec.select.i.i.i.i, %.0.i.i4.i ; 2 uses
  %i.aw = sub i64 %.sroa.4.0.i.i3.i, %.sink.i.i
  %.sroa.11.0.in.i.sroa.speculate.load._ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i = load ptr, ptr %.sroa.11.0.in.i.sroa.speculated.i2.i, align 8, !tbaa !397 ; 2 uses
  %i.ax = icmp ne ptr %.sroa.11.0.in.i.sroa.speculate.load._ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i, %i.s
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEvEEmRKT_.exit

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEvEEmRKT_.exit: ; preds = %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i, %bb.c
  %.0.i.i.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.av, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 2247
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !413, !range !119, !noundef !120
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 2246
  store i8 %i.az, ptr %i.ba, align 2, !tbaa !423
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !420
  %.not2.i = icmp eq ptr %i.bc, null
  br i1 %.not2.i, label %bb.i, label %.thread.i

.thread.i:                                        ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEvEEmRKT_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 2249
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !414, !range !119, !noundef !120
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = icmp uge i64 %.0.i.i.lcssa.i, %i.bh
  %narrow.i = select i1 %i.bf, i1 %i.bi, i1 false
  %.ph.i = zext i1 %narrow.i to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  store i8 %.ph.i, ptr %i.bj, align 8, !tbaa !424
  br label %bb.j

bb.i:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEvEEmRKT_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  store i8 0, ptr %i.bk, align 8, !tbaa !424
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 2232
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !425
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %.thread.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !236
  %.not3.i = icmp eq ptr %i.bp, null
  br i1 %.not3.i, label %._crit_edge.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.j
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !415
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !426
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !415 ; 2 uses
  %.not.i = icmp eq i64 %i.br, %i.bt
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.bu = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.bt, %bb.k ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !426
  %i.bw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #39, !noalias !1964
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !236 ; 2 uses
  store ptr %i.bw, ptr %i.bo, align 8, !tbaa !236
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %bb.n, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

bb.m:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !415
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !426
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !236 ; 2 uses
  store ptr null, ptr %i.cb, align 8, !tbaa !236
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i: ; preds = %bb.m, %bb.l
  %.sink.i = phi ptr [ %i.bx, %bb.l ], [ %i.cc, %bb.m ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sink.i) #38
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i, %bb.m, %bb.l, %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !424, !range !119, !noundef !120
  %i.cf = shl nuw nsw i8 %i.ce, 2                 ; 2 uses
  %.pre = load i8, ptr %i.i, align 1, !tbaa !422, !range !119
  %i.cg = trunc nuw i8 %.pre to i1
  br i1 %i.cg, label %.thread855, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 2250
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !351
  br label %.thread855

.thread855:                                       ; preds = %bb.b, %bb.n, %bb.o
  %.sroa.29.0857 = phi i8 [ %i.cf, %bb.o ], [ %i.cf, %bb.n ], [ 0, %bb.b ] ; 5 uses
  %i.cj = phi i8 [ %i.ci, %bb.o ], [ 0, %bb.n ], [ 0, %bb.b ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 2232 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !425
  %.not.not.not = icmp eq i32 %i.cl, 0            ; 2 uses
  %i.cm = select i1 %.not.not.not, i8 2, i8 0
  %i.cn = or disjoint i8 %i.cm, %.sroa.29.0857    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !392, !noalias !1965
  %.fr.i.i.i495 = freeze ptr %i.cp                ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !395, !noalias !1965 ; 12 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !392, !noalias !1966
  %.fr.i496 = freeze ptr %i.ct
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !395, !noalias !1966 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !401, !noalias !1966
  %i.cy = getelementptr inbounds nuw i8, ptr %.fr.i.i.i495, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %.fr.i.i.i495, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.db = icmp ne ptr %2, %i.cx                   ; 4 uses
  %i.dc = icmp ne ptr %.fr.i.i.i495, %.fr.i496    ; 7 uses
  %i.dd = load i64, ptr %i.da, align 8            ; 5 uses
  %i.de = or i1 %i.dc, %i.db                      ; 2 uses
  %i.df = icmp ne ptr %i.cr, %i.cv                ; 4 uses
  %or.cond.i1.i145 = select i1 %i.de, i1 true, i1 %i.df
  br i1 %or.cond.i1.i145, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i147, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEvEEmRKT_.exit159

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i147: ; preds = %.thread855
  %i.dg = getelementptr inbounds nuw i8, ptr %.fr.i.i.i495, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.fr.i.i.i495, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !403, !noalias !1967
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !395
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !375
  %i.dn = load ptr, ptr %i.dg, align 8, !tbaa !395
  br label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.i148

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.i148: ; preds = %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i154, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i147
  %.0.i.i4.i149 = phi i64 [ 0, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i147 ], [ %i.dy, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i154 ]
  %.sroa.4.0.i.i3.i150 = phi i64 [ %i.dj, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i147 ], [ %i.dz, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i154 ] ; 2 uses
  %.sroa.11.0.in.i.sroa.speculated.i2.i151 = phi ptr [ %i.cr, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.lr.ph.i147 ], [ %.sroa.11.0.in.i.sroa.speculate.load._ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i157, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i154 ] ; 5 uses
  %i.do = icmp eq ptr %.sroa.11.0.in.i.sroa.speculated.i2.i151, %i.cr
  %i.dp = icmp eq ptr %.sroa.11.0.in.i.sroa.speculated.i2.i151, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.11.0.in.i.sroa.speculated.i2.i151, i64 16
  %.sroa.6.0.in.i.i.i.i.i.i152 = select i1 %i.dp, ptr %i.cy, ptr %i.dq
  %.sroa.6.0.i.i.i.i.i.i153 = load i64, ptr %.sroa.6.0.in.i.i.i.i.i.i152, align 8, !tbaa !84 ; 4 uses
  %i.dr = icmp eq ptr %.sroa.11.0.in.i.sroa.speculated.i2.i151, %i.dn ; 2 uses
  br i1 %i.do, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.i148
  br i1 %i.dr, label %bb.s, label %bb.r

bb.q:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.i148
  br i1 %i.dr, label %bb.t, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i154

bb.r:                                             ; preds = %bb.p
  %i.ds = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i.i.i153, i64 %i.dd)
  br label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i154

bb.s:                                             ; preds = %bb.p
  %i.dt = load i64, ptr %i.cz, align 8, !tbaa !396
  %i.du = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i.i.i153, i64 %i.dt)
  %i.dv = tail call i64 @llvm.usub.sat.i64(i64 %i.du, i64 %i.dd)
  br label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i154

bb.t:                                             ; preds = %bb.q
  %i.dw = load i64, ptr %i.cz, align 8, !tbaa !396
  %i.dx = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i.i.i153, i64 %i.dw)
  br label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i154

_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i154: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sink.i.i155 = phi i64 [ %i.ds, %bb.r ], [ %i.dv, %bb.s ], [ %i.dx, %bb.t ], [ %.sroa.6.0.i.i.i.i.i.i153, %bb.q ] ; 2 uses
  %spec.select.i.i.i.i156 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i3.i150, i64 %.sink.i.i155)
  %i.dy = add i64 %spec.select.i.i.i.i156, %.0.i.i4.i149 ; 2 uses
  %i.dz = sub i64 %.sroa.4.0.i.i3.i150, %.sink.i.i155
  %.sroa.11.0.in.i.sroa.speculate.load._ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i157 = load ptr, ptr %.sroa.11.0.in.i.sroa.speculated.i2.i151, align 8, !tbaa !397 ; 2 uses
  %i.ea = icmp ne ptr %.sroa.11.0.in.i.sroa.speculate.load._ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i157, %i.cv
  %or.cond.i.i158 = select i1 %i.de, i1 true, i1 %i.ea
  br i1 %or.cond.i.i158, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.i.i148, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEvEEmRKT_.exit159

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEvEEmRKT_.exit159: ; preds = %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i154, %.thread855
  %.0.i.i.lcssa.i146 = phi i64 [ 0, %.thread855 ], [ %i.dy, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i.i.i154 ] ; 15 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !424, !range !119, !noundef !120
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.u, label %bb.ao

bb.u:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEvEEmRKT_.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  %.not835 = xor i1 %i.db, true
  tail call void @llvm.assume(i1 %.not835)
  %.not3.i.us4.i.i = select i1 %i.dc, i1 true, i1 %i.df
  br i1 %.not3.i.us4.i.i, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i, label %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i: ; preds = %bb.u
  %i.ee = xor i1 %i.dc, true
  tail call void @llvm.assume(i1 %i.ee)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i
  %i.ef = phi ptr [ %i.eg, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i ], [ %i.cr, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i ]
  %.0.us5.i.i = phi i64 [ %i.eh, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i ], [ 0, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i ]
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !374 ; 2 uses
  %i.eh = add nuw nsw i64 %.0.us5.i.i, 1          ; 2 uses
  %.not.i.i = icmp eq ptr %i.eg, %i.cv
  br i1 %.not.i.i, label %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i, !llvm.loop !48

_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i, %bb.u
  %.0.lcssa.us.i.i = phi i64 [ 0, %bb.u ], [ %i.eh, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i ] ; 10 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !395, !noalias !1968 ; 8 uses
  %i.ek = icmp ne ptr %2, %.fr.i.i.i495           ; 2 uses
  %i.el = icmp ne ptr %i.ej, %i.cr
  %.not3.i2.i.i.i.i = select i1 %i.ek, i1 true, i1 %i.el
  br i1 %.not3.i2.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i
  %i.em = xor i1 %i.ek, true
  tail call void @llvm.assume(i1 %i.em)
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i, %.lr.ph.i.i.i.i
  %i.en = phi ptr [ %i.eo, %.lr.ph.split.i.i.i.i ], [ %i.ej, %.lr.ph.i.i.i.i ]
  %.03.i.i.i.i = phi i64 [ %i.ep, %.lr.ph.split.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !374 ; 2 uses
  %i.ep = add nuw nsw i64 %.03.i.i.i.i, 1         ; 2 uses
  %.not.i.i.i.i344 = icmp eq ptr %i.eo, %i.cr
  br i1 %.not.i.i.i.i344, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !15

_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i, %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i ], [ %i.ep, %.lr.ph.split.i.i.i.i ] ; 10 uses
  %i.eq = load ptr, ptr %2, align 8, !tbaa !389
  store ptr %i.eq, ptr %19, align 8, !tbaa !389
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ej, ptr %i.er, align 8, !tbaa !376
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !395
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !376
  %i.ev = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i64 16, i1 false)
  %i.ex = icmp sgt i64 %.0.lcssa.i.i.i.i, 0
  br i1 %i.ex, label %.preheader.i.i.i.i.i.preheader, label %.preheader7.i.i.i.i.i

.preheader.i.i.i.i.i.preheader:                   ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i
  %xtraiter1111 = and i64 %.0.lcssa.i.i.i.i, 7    ; 2 uses
  %lcmp.mod1112.not = icmp eq i64 %xtraiter1111, 0
  br i1 %lcmp.mod1112.not, label %.preheader.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.prol

.preheader.i.i.i.i.i.prol:                        ; preds = %.preheader.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi i64 [ %i.ez, %.preheader.i.i.i.i.i.prol ], [ %.0.lcssa.i.i.i.i, %.preheader.i.i.i.i.i.preheader ]
  %i.ey = phi ptr [ %i.fa, %.preheader.i.i.i.i.i.prol ], [ %i.ej, %.preheader.i.i.i.i.i.preheader ]
  %prol.iter1113 = phi i64 [ %prol.iter1113.next, %.preheader.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.preheader ]
  %i.ez = add nsw i64 %.013.i.i.i.i.i.prol, -1    ; 2 uses
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !374, !noalias !1969 ; 3 uses
  %prol.iter1113.next = add i64 %prol.iter1113, 1 ; 2 uses
  %prol.iter1113.cmp.not = icmp eq i64 %prol.iter1113.next, %xtraiter1111
  br i1 %prol.iter1113.cmp.not, label %.preheader.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.prol, !llvm.loop !1730

.preheader.i.i.i.i.i.prol.loopexit:               ; preds = %.preheader.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.preheader
  %.lcssa977.unr = phi ptr [ poison, %.preheader.i.i.i.i.i.preheader ], [ %i.fa, %.preheader.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i.i.i, %.preheader.i.i.i.i.i.preheader ], [ %i.ez, %.preheader.i.i.i.i.i.prol ]
  %.unr1114 = phi ptr [ %i.ej, %.preheader.i.i.i.i.i.preheader ], [ %i.fa, %.preheader.i.i.i.i.i.prol ]
  %i.fb = icmp ult i64 %.0.lcssa.i.i.i.i, 8
  br i1 %i.fb, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i, label %.preheader.i.i.i.i.i

.preheader7.i.i.i.i.i:                            ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i
  %.not9.i.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.preheader7.i.i.i.i.i
  %i.fc = sub i64 0, %.0.lcssa.i.i.i.i
  %xtraiter1107 = and i64 %i.fc, 7                ; 2 uses
  %lcmp.mod1108.not = icmp eq i64 %xtraiter1107, 0
  br i1 %lcmp.mod1108.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.fd = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.prol ], [ %i.ej, %.lr.ph.i.i.i.i.i.preheader ]
  %.110.i.i.i.i.i.prol = phi i64 [ %i.fe, %.lr.ph.i.i.i.i.i.prol ], [ %.0.lcssa.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter1109 = phi i64 [ %prol.iter1109.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.fe = add nsw i64 %.110.i.i.i.i.i.prol, 1     ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !375, !noalias !1969 ; 3 uses
  %prol.iter1109.next = add i64 %prol.iter1109, 1 ; 2 uses
  %prol.iter1109.cmp.not = icmp eq i64 %prol.iter1109.next, %xtraiter1107
  br i1 %prol.iter1109.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1731

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa979.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fg, %.lr.ph.i.i.i.i.i.prol ]
  %.unr1110 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fg, %.lr.ph.i.i.i.i.i.prol ]
  %.110.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fe, %.lr.ph.i.i.i.i.i.prol ]
  %i.fh = icmp ugt i64 %.0.lcssa.i.i.i.i, -8
  br i1 %i.fh, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i, label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.fq, %.preheader.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.prol.loopexit ]
  %i.fi = phi ptr [ %i.fr, %.preheader.i.i.i.i.i ], [ %.unr1114, %.preheader.i.i.i.i.i.prol.loopexit ]
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !374, !noalias !1969
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !374, !noalias !1969
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !374, !noalias !1969
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !374, !noalias !1969
end_hunk_6
begin_hunk_7_@_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEmbRKT_RNS_6system10error_codeE:bb.a
  %i.tn = phi ptr [ %i.ue, %.lr.ph.i.i.i.i.i391 ], [ %.unr1046, %.lr.ph.i.i.i.i.i391.prol.loopexit ]
  %.110.i.i.i.i.i392 = phi i64 [ %i.uc, %.lr.ph.i.i.i.i.i391 ], [ %.110.i.i.i.i.i392.unr, %.lr.ph.i.i.i.i.i391.prol.loopexit ]
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !375, !noalias !1984
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !375, !noalias !1984
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !375, !noalias !1984
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !375, !noalias !1984
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !375, !noalias !1984
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !375, !noalias !1984
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !375, !noalias !1984
  %i.uc = add nsw i64 %.110.i.i.i.i.i392, 8       ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !375, !noalias !1984 ; 2 uses
  %.not.i.i.i.i.i393.7 = icmp eq i64 %i.uc, 0
  br i1 %.not.i.i.i.i.i393.7, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i394, label %.lr.ph.i.i.i.i.i391, !llvm.loop !17

_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i394: ; preds = %.lr.ph.i.i.i.i.i391.prol.loopexit, %.lr.ph.i.i.i.i.i391, %.preheader.i.i.i.i.i405.prol.loopexit, %.preheader.i.i.i.i.i405, %.preheader7.i.i.i.i.i389
  %.sroa.2.0.i.i.i.i395 = phi ptr [ %i.tm, %.preheader.i.i.i.i.i405 ], [ %i.se, %.preheader7.i.i.i.i.i389 ], [ %.lcssa1016.unr, %.preheader.i.i.i.i.i405.prol.loopexit ], [ %.lcssa1018.unr, %.lr.ph.i.i.i.i.i391.prol.loopexit ], [ %i.ue, %.lr.ph.i.i.i.i.i391 ] ; 7 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  store ptr %26, ptr %i.uf, align 8, !tbaa !392
  %i.ug = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 2 uses
  store ptr %.sroa.2.0.i.i.i.i395, ptr %i.ug, align 8, !tbaa !376
  %i.uh = getelementptr inbounds nuw i8, ptr %26, i64 56 ; 2 uses
  store i64 %i.dd, ptr %i.uh, align 8, !tbaa !394
  %i.ui = getelementptr inbounds nuw i8, ptr %26, i64 64 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.ul = load <2 x i64>, ptr %i.uj, align 8, !tbaa !84
  %i.um = load i64, ptr %i.uj, align 8, !tbaa !403
  store <2 x i64> %i.ul, ptr %i.ui, align 8, !tbaa !84
  %i.un = icmp sgt i64 %.0.lcssa.us.i.i385, 0
  br i1 %i.un, label %.preheader.i.i.i402.preheader, label %.preheader7.i.i.i396

.preheader.i.i.i402.preheader:                    ; preds = %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i394
  %xtraiter1055 = and i64 %.0.lcssa.us.i.i385, 7  ; 2 uses
  %lcmp.mod1056.not = icmp eq i64 %xtraiter1055, 0
  br i1 %lcmp.mod1056.not, label %.preheader.i.i.i402.prol.loopexit, label %.preheader.i.i.i402.prol

.preheader.i.i.i402.prol:                         ; preds = %.preheader.i.i.i402.preheader, %.preheader.i.i.i402.prol
  %.013.i.i.i403.prol = phi i64 [ %i.up, %.preheader.i.i.i402.prol ], [ %.0.lcssa.us.i.i385, %.preheader.i.i.i402.preheader ]
  %i.uo = phi ptr [ %i.uq, %.preheader.i.i.i402.prol ], [ %.sroa.2.0.i.i.i.i395, %.preheader.i.i.i402.preheader ]
  %prol.iter1057 = phi i64 [ %prol.iter1057.next, %.preheader.i.i.i402.prol ], [ 0, %.preheader.i.i.i402.preheader ]
  %i.up = add nsw i64 %.013.i.i.i403.prol, -1     ; 2 uses
  %i.uq = load ptr, ptr %i.uo, align 8, !tbaa !374, !noalias !1985 ; 3 uses
  %prol.iter1057.next = add i64 %prol.iter1057, 1 ; 2 uses
  %prol.iter1057.cmp.not = icmp eq i64 %prol.iter1057.next, %xtraiter1055
  br i1 %prol.iter1057.cmp.not, label %.preheader.i.i.i402.prol.loopexit, label %.preheader.i.i.i402.prol, !llvm.loop !1778

.preheader.i.i.i402.prol.loopexit:                ; preds = %.preheader.i.i.i402.prol, %.preheader.i.i.i402.preheader
  %.lcssa1013.unr = phi ptr [ poison, %.preheader.i.i.i402.preheader ], [ %i.uq, %.preheader.i.i.i402.prol ]
  %.013.i.i.i403.unr = phi i64 [ %.0.lcssa.us.i.i385, %.preheader.i.i.i402.preheader ], [ %i.up, %.preheader.i.i.i402.prol ]
  %.unr1058 = phi ptr [ %.sroa.2.0.i.i.i.i395, %.preheader.i.i.i402.preheader ], [ %i.uq, %.preheader.i.i.i402.prol ]
  %i.ur = icmp ult i64 %.0.lcssa.us.i.i385, 8
  br i1 %i.ur, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit416, label %.preheader.i.i.i402

.preheader7.i.i.i396:                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i394
  %.not9.i.i.i397 = icmp eq i64 %.0.lcssa.us.i.i385, 0
  br i1 %.not9.i.i.i397, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit416, label %.lr.ph.i.i.i398.preheader

.lr.ph.i.i.i398.preheader:                        ; preds = %.preheader7.i.i.i396
  %i.us = sub i64 0, %.0.lcssa.us.i.i385
  %xtraiter1051 = and i64 %i.us, 7                ; 2 uses
  %lcmp.mod1052.not = icmp eq i64 %xtraiter1051, 0
  br i1 %lcmp.mod1052.not, label %.lr.ph.i.i.i398.prol.loopexit, label %.lr.ph.i.i.i398.prol

.lr.ph.i.i.i398.prol:                             ; preds = %.lr.ph.i.i.i398.preheader, %.lr.ph.i.i.i398.prol
  %i.ut = phi ptr [ %i.uw, %.lr.ph.i.i.i398.prol ], [ %.sroa.2.0.i.i.i.i395, %.lr.ph.i.i.i398.preheader ]
  %.110.i.i.i399.prol = phi i64 [ %i.uu, %.lr.ph.i.i.i398.prol ], [ %.0.lcssa.us.i.i385, %.lr.ph.i.i.i398.preheader ]
  %prol.iter1053 = phi i64 [ %prol.iter1053.next, %.lr.ph.i.i.i398.prol ], [ 0, %.lr.ph.i.i.i398.preheader ]
  %i.uu = add nsw i64 %.110.i.i.i399.prol, 1      ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !375, !noalias !1985 ; 3 uses
  %prol.iter1053.next = add i64 %prol.iter1053, 1 ; 2 uses
  %prol.iter1053.cmp.not = icmp eq i64 %prol.iter1053.next, %xtraiter1051
  br i1 %prol.iter1053.cmp.not, label %.lr.ph.i.i.i398.prol.loopexit, label %.lr.ph.i.i.i398.prol, !llvm.loop !1779

.lr.ph.i.i.i398.prol.loopexit:                    ; preds = %.lr.ph.i.i.i398.prol, %.lr.ph.i.i.i398.preheader
  %.lcssa1015.unr = phi ptr [ poison, %.lr.ph.i.i.i398.preheader ], [ %i.uw, %.lr.ph.i.i.i398.prol ]
  %.unr1054 = phi ptr [ %.sroa.2.0.i.i.i.i395, %.lr.ph.i.i.i398.preheader ], [ %i.uw, %.lr.ph.i.i.i398.prol ]
  %.110.i.i.i399.unr = phi i64 [ %.0.lcssa.us.i.i385, %.lr.ph.i.i.i398.preheader ], [ %i.uu, %.lr.ph.i.i.i398.prol ]
  %i.ux = icmp ugt i64 %.0.lcssa.us.i.i385, -8
  br i1 %i.ux, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit416, label %.lr.ph.i.i.i398

.preheader.i.i.i402:                              ; preds = %.preheader.i.i.i402.prol.loopexit, %.preheader.i.i.i402
  %.013.i.i.i403 = phi i64 [ %i.vg, %.preheader.i.i.i402 ], [ %.013.i.i.i403.unr, %.preheader.i.i.i402.prol.loopexit ]
  %i.uy = phi ptr [ %i.vh, %.preheader.i.i.i402 ], [ %.unr1058, %.preheader.i.i.i402.prol.loopexit ]
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !374, !noalias !1985
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !374, !noalias !1985
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !374, !noalias !1985
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !374, !noalias !1985
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !374, !noalias !1985
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !374, !noalias !1985
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !374, !noalias !1985
  %i.vg = add nsw i64 %.013.i.i.i403, -8          ; 2 uses
  %i.vh = load ptr, ptr %i.vf, align 8, !tbaa !374, !noalias !1985 ; 2 uses
  %.not6.i.i.i404.7 = icmp eq i64 %i.vg, 0
  br i1 %.not6.i.i.i404.7, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit416, label %.preheader.i.i.i402, !llvm.loop !49

.lr.ph.i.i.i398:                                  ; preds = %.lr.ph.i.i.i398.prol.loopexit, %.lr.ph.i.i.i398
  %i.vi = phi ptr [ %i.vz, %.lr.ph.i.i.i398 ], [ %.unr1054, %.lr.ph.i.i.i398.prol.loopexit ]
  %.110.i.i.i399 = phi i64 [ %i.vx, %.lr.ph.i.i.i398 ], [ %.110.i.i.i399.unr, %.lr.ph.i.i.i398.prol.loopexit ]
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !375, !noalias !1985
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !375, !noalias !1985
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !375, !noalias !1985
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !375, !noalias !1985
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !375, !noalias !1985
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !375, !noalias !1985
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !375, !noalias !1985
  %i.vx = add nsw i64 %.110.i.i.i399, 8           ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !375, !noalias !1985 ; 2 uses
  %.not.i.i.i400.7 = icmp eq i64 %i.vx, 0
  br i1 %.not.i.i.i400.7, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit416, label %.lr.ph.i.i.i398, !llvm.loop !50

_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit416: ; preds = %.lr.ph.i.i.i398.prol.loopexit, %.lr.ph.i.i.i398, %.preheader.i.i.i402.prol.loopexit, %.preheader.i.i.i402, %.preheader7.i.i.i396
  %.sroa.2.0.i.i401 = phi ptr [ %i.vh, %.preheader.i.i.i402 ], [ %.sroa.2.0.i.i.i.i395, %.preheader7.i.i.i396 ], [ %.lcssa1013.unr, %.preheader.i.i.i402.prol.loopexit ], [ %.lcssa1015.unr, %.lr.ph.i.i.i398.prol.loopexit ], [ %i.vz, %.lr.ph.i.i.i398 ]
  %i.wa = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 3 uses
  store ptr %26, ptr %i.wa, align 8, !tbaa !392
  %i.wb = getelementptr inbounds nuw i8, ptr %26, i64 88 ; 3 uses
  store ptr %.sroa.2.0.i.i401, ptr %i.wb, align 8, !tbaa !376
  %i.wc = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 3 uses
  store ptr %26, ptr %i.wc, align 8, !tbaa !401
  %i.wd = getelementptr inbounds nuw i8, ptr %26, i64 104 ; 3 uses
  store ptr %26, ptr %i.wd, align 8, !tbaa !624, !alias.scope !1986
  %i.we = getelementptr inbounds nuw i8, ptr %26, i64 112 ; 3 uses
  store i64 %i.um, ptr %i.we, align 8, !tbaa !625, !alias.scope !1986
  %i.wf = getelementptr inbounds nuw i8, ptr %26, i64 120 ; 3 uses
  store ptr %26, ptr %i.wf, align 8, !tbaa !392, !alias.scope !1987
  %i.wg = getelementptr inbounds nuw i8, ptr %26, i64 128 ; 4 uses
  store ptr %.sroa.2.0.i.i.i.i395, ptr %i.wg, align 8, !tbaa !376, !alias.scope !1987
  %i.wh = getelementptr inbounds nuw i8, ptr %26, i64 136 ; 3 uses
  store ptr %26, ptr %i.wh, align 8, !tbaa !401, !alias.scope !1987
  %i.wi = getelementptr inbounds nuw i8, ptr %26, i64 144 ; 4 uses
  store i64 0, ptr %i.wi, align 8, !tbaa !627
  %i.wj = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.wk = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.wl = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.wm = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.wn = xor i1 %1, true
  %i.wo = zext i1 %i.wn to i8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.wq = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.wr = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ws = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.wt = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.wu = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.wv = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.ww = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.wx = getelementptr inbounds nuw i8, ptr %29, i64 72
  %i.wy = getelementptr inbounds nuw i8, ptr %29, i64 80 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %29, i64 88 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %29, i64 96 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %29, i64 104 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.xd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %29, i64 120 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %29, i64 128 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %29, i64 136
  %i.xj = getelementptr inbounds nuw i8, ptr %29, i64 144
  %i.xk = getelementptr inbounds nuw i8, ptr %29, i64 152 ; 5 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %29, i64 160
  %i.xm = getelementptr inbounds nuw i8, ptr %29, i64 168 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %29, i64 184 ; 4 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %29, i64 192 ; 5 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %29, i64 200 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %29, i64 208 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.xs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.xt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.xu = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.xv = getelementptr inbounds nuw i8, ptr %29, i64 176 ; 2 uses
  %.sroa.4535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %28, i64 168
  %i.yb = getelementptr inbounds nuw i8, ptr %28, i64 120
  %i.yc = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.yd = getelementptr inbounds nuw i8, ptr %28, i64 136
  %i.ye = getelementptr inbounds nuw i8, ptr %28, i64 152
  %i.yf = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.yg = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.yh = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.yi = shl nsw i8 %.sroa.29.0857, 4            ; 2 uses
  %i.yj = or disjoint i8 0, 127
  %i.yk = or disjoint i8 0, 126
  %i.yl = shl nuw nsw i8 %i.cn, 1
  %i.ym = and i8 %i.yl, 4
  %i.yn = zext nneg i8 %i.ym to i64
  %i.yo = or i8 %i.cj, %i.yi
  %.1..1..1..1..sroa_idx1132 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx1135 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx1133 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx1136 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx1134 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_19buffers_prefix_viewINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEE7consumeEm.exit, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit416
  %.sroa.20.3 = phi i8 [ %i.yo, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit416 ], [ %i.yi, %_ZN5boost5beast14buffers_suffixINS0_19buffers_prefix_viewINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEE7consumeEm.exit ]
  %.0127 = phi i64 [ %.0.i.i.lcssa.i146, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit416 ], [ %i.yq, %_ZN5boost5beast14buffers_suffixINS0_19buffers_prefix_viewINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEE7consumeEm.exit ] ; 2 uses
  %i.yp = load i64, ptr %i.wj, align 8, !tbaa !426
  %..i = call noundef i64 @llvm.umin.i64(i64 %.0127, i64 %i.yp) ; 10 uses
  %i.yq = sub nuw i64 %.0127, %..i                ; 2 uses
  %i.yr = icmp eq i64 %i.yq, 0                    ; 2 uses
  %i.ys = and i1 %1, %i.yr
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %27, ptr noundef nonnull %i.wk, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.yt = select i1 %i.ys, i8 -128, i8 0
  %spec.select37.i187 = or i8 %.sroa.20.3, %i.yt
  store i8 %spec.select37.i187, ptr %i.c, align 1, !tbaa !87
  %i.yu = icmp ult i64 %..i, 126
  br i1 %i.yu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.yv = trunc nuw nsw i64 %..i to i8
  %i.yw = or disjoint i8 0, %i.yv
  store i8 %i.yw, ptr %.1..1..1..1..sroa_idx1134, align 1, !tbaa !87
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.yx = icmp ult i64 %..i, 65536
  br i1 %i.yx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i8 %i.yk, ptr %.1..1..1..1..sroa_idx1133, align 1, !tbaa !87
  %i.yy = trunc nuw i64 %..i to i16
  %i.yz = call noundef i16 @llvm.bswap.i16(i16 %i.yy)
  store i16 %i.yz, ptr %.2..2..2..2.gep.sroa_idx1136, align 1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  store i8 %i.yj, ptr %.1..1..1..1..sroa_idx1132, align 1, !tbaa !87
  %i.za = call noundef i64 @llvm.bswap.i64(i64 %..i)
  store i64 %i.za, ptr %.2..2..2..2.gep.sroa_idx1135, align 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bb
  %.0.i190 = phi i64 [ 2, %bb.bb ], [ 4, %bb.bd ], [ 10, %bb.be ]
  %spec.select = add nuw nsw i64 %.0.i190, %i.yn
  %i.zb = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %27, i64 noundef %spec.select) ; 2 uses
  %i.zc = extractvalue { ptr, i64 } %i.zb, 1      ; 2 uses
  %i.zd = call i64 @llvm.umin.i64(i64 %i.zc, i64 14) ; 2 uses
  %.not.i.i.i.i193 = icmp eq i64 %i.zc, 0
  br i1 %.not.i.i.i.i193, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit195, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ze = extractvalue { ptr, i64 } %i.zb, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ze, ptr nonnull align 1 %i.c, i64 %i.zd, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit195

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit195: ; preds = %bb.bf, %bb.bg
  %i.zf = load ptr, ptr %i.wl, align 8, !tbaa !432
  %i.zg = load ptr, ptr %i.wm, align 8, !tbaa !433 ; 2 uses
  %i.zh = ptrtoint ptr %i.zf to i64
  %i.zi = ptrtoint ptr %i.zg to i64
  %i.zj = sub i64 %i.zh, %i.zi
  %.sroa.speculated.i.i194 = call i64 @llvm.umin.i64(i64 %i.zj, i64 %i.zd)
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zg, i64 %.sroa.speculated.i.i194 ; 2 uses
  store ptr %i.zk, ptr %i.wm, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.wo, ptr %i.i, align 1, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #35
  %i.zl = load ptr, ptr %i.wq, align 8, !tbaa !434 ; 2 uses
  %i.zm = ptrtoint ptr %i.zk to i64
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = sub i64 %i.zm, %i.zn
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  %i.zp = load ptr, ptr %i.uf, align 8, !tbaa !392, !noalias !1989
  %.fr.i.i.i423 = freeze ptr %i.zp                ; 3 uses
  %i.zq = load ptr, ptr %i.ug, align 8, !tbaa !395, !noalias !1989 ; 6 uses
  %.sroa.0.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.wd, align 8, !noalias !1988
  %i.zr = load ptr, ptr %i.wf, align 8, !tbaa !392, !noalias !1988
  %i.zs = load ptr, ptr %i.wg, align 8, !tbaa !395, !noalias !1988 ; 2 uses
  %i.zt = load ptr, ptr %i.wh, align 8, !tbaa !401, !noalias !1988
  %i.zu = icmp eq ptr %26, %.sroa.0.sroa.0.0.copyload.i.i.i
  %i.zv = icmp eq ptr %26, %i.zt
  %.fr = freeze ptr %i.zr
  %i.zw = icmp ne ptr %.fr.i.i.i423, %.fr         ; 2 uses
  call void @llvm.assume(i1 %i.zu)
  call void @llvm.assume(i1 %i.zv)
  %i.zx = icmp ne ptr %i.zq, %i.zs
  %.not3.i.i.us12.i.i.i = select i1 %i.zw, i1 true, i1 %i.zx
  br i1 %.not3.i.i.us12.i.i.i, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.lr.ph.i.i.i, label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_19buffers_prefix_viewINS2_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEEENS3_IT_EEmRKSC_.exit

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.lr.ph.i.i.i: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit195
  %i.zy = xor i1 %i.zw, true
  call void @llvm.assume(i1 %i.zy)
  br label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.i.i.i

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.i.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.lr.ph.i.i.i
  %.0.i.us14.i.i.i = phi i64 [ %i.aaa, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.i.i.i ], [ 0, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.lr.ph.i.i.i ]
  %.sroa.10.0.us13.i.i.i = phi ptr [ %i.zz, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.i.i.i ], [ %i.zq, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.lr.ph.i.i.i ]
  %i.zz = load ptr, ptr %.sroa.10.0.us13.i.i.i, align 8, !tbaa !374, !noalias !1990 ; 2 uses
  %i.aaa = add nuw nsw i64 %.0.i.us14.i.i.i, 1    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.zz, %i.zs
  br i1 %.not.i.i.i, label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_19buffers_prefix_viewINS2_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEEENS3_IT_EEmRKSC_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.i.i.i, !llvm.loop !51

_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_19buffers_prefix_viewINS2_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEEENS3_IT_EEmRKSC_.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.i.i.i, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit195
  %.0.i.lcssa.us.i.i.i = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit195 ], [ %i.aaa, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i.us.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !1988
  %i.aab = load ptr, ptr %i.wa, align 8, !tbaa !392
  %i.aac = load ptr, ptr %i.wb, align 8, !tbaa !395 ; 2 uses
  %i.aad = load ptr, ptr %i.wc, align 8, !tbaa !401
  %i.aae = icmp eq ptr %26, %i.aad
  call void @llvm.assume(i1 %i.aae)
  %.fr.i424 = freeze ptr %i.aab
  %i.aaf = icmp ne ptr %.fr.i.i.i423, %.fr.i424   ; 2 uses
  %i.aag = icmp ne ptr %i.zq, %i.aac
  %.not3.i.us4.i.i425 = select i1 %i.aaf, i1 true, i1 %i.aag
  br i1 %.not3.i.us4.i.i425, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i454, label %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i426

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i454: ; preds = %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_19buffers_prefix_viewINS2_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEEENS3_IT_EEmRKSC_.exit
  %i.aah = xor i1 %i.aaf, true
  call void @llvm.assume(i1 %i.aah)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i455

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i455: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i455, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i454
  %i.aai = phi ptr [ %i.aaj, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i455 ], [ %i.zq, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i454 ]
  %.0.us5.i.i456 = phi i64 [ %i.aak, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i455 ], [ 0, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i454 ]
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !374 ; 2 uses
  %i.aak = add nuw nsw i64 %.0.us5.i.i456, 1      ; 2 uses
  %.not.i.i457 = icmp eq ptr %i.aaj, %i.aac
  br i1 %.not.i.i457, label %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i426, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i455, !llvm.loop !48

_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i426: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i455, %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_19buffers_prefix_viewINS2_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEEENS3_IT_EEmRKSC_.exit
  %.0.lcssa.us.i.i427 = phi i64 [ 0, %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_19buffers_prefix_viewINS2_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEEENS3_IT_EEmRKSC_.exit ], [ %i.aak, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i455 ] ; 10 uses
  %i.aal = load ptr, ptr %i.sm, align 8, !tbaa !395, !noalias !1991 ; 8 uses
  %i.aam = icmp ne ptr %26, %.fr.i.i.i423         ; 2 uses
  %i.aan = icmp ne ptr %i.aal, %i.zq
  %.not3.i2.i.i.i.i428 = select i1 %i.aam, i1 true, i1 %i.aan
  br i1 %.not3.i2.i.i.i.i428, label %.lr.ph.i.i.i.i450, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i429

.lr.ph.i.i.i.i450:                                ; preds = %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i426
  %i.aao = xor i1 %i.aam, true
  call void @llvm.assume(i1 %i.aao)
  br label %.lr.ph.split.i.i.i.i451

.lr.ph.split.i.i.i.i451:                          ; preds = %.lr.ph.split.i.i.i.i451, %.lr.ph.i.i.i.i450
  %i.aap = phi ptr [ %i.aaq, %.lr.ph.split.i.i.i.i451 ], [ %i.aal, %.lr.ph.i.i.i.i450 ]
  %.03.i.i.i.i452 = phi i64 [ %i.aar, %.lr.ph.split.i.i.i.i451 ], [ 0, %.lr.ph.i.i.i.i450 ]
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !374 ; 2 uses
  %i.aar = add nuw nsw i64 %.03.i.i.i.i452, 1     ; 2 uses
  %.not.i.i.i.i453 = icmp eq ptr %i.aaq, %i.zq
  br i1 %.not.i.i.i.i453, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i429, label %.lr.ph.split.i.i.i.i451, !llvm.loop !15

_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i429: ; preds = %.lr.ph.split.i.i.i.i451, %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i426
  %.0.lcssa.i.i.i.i430 = phi i64 [ 0, %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i426 ], [ %i.aar, %.lr.ph.split.i.i.i.i451 ] ; 10 uses
  %i.aas = load ptr, ptr %26, align 8, !tbaa !389
  store ptr %i.aas, ptr %29, align 8, !tbaa !389
  store ptr %i.aal, ptr %i.wr, align 8, !tbaa !376
  %i.aat = load ptr, ptr %i.sn, align 8, !tbaa !395
  store ptr %i.aat, ptr %i.ws, align 8, !tbaa !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wt, ptr noundef nonnull align 8 dereferenceable(16) %i.sq, i64 16, i1 false)
  %i.aau = icmp sgt i64 %.0.lcssa.i.i.i.i430, 0
  br i1 %i.aau, label %.preheader.i.i.i.i.i447.preheader, label %.preheader7.i.i.i.i.i431

.preheader.i.i.i.i.i447.preheader:                ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i429
  %xtraiter1063 = and i64 %.0.lcssa.i.i.i.i430, 7 ; 2 uses
  %lcmp.mod1064.not = icmp eq i64 %xtraiter1063, 0
  br i1 %lcmp.mod1064.not, label %.preheader.i.i.i.i.i447.prol.loopexit, label %.preheader.i.i.i.i.i447.prol

.preheader.i.i.i.i.i447.prol:                     ; preds = %.preheader.i.i.i.i.i447.preheader, %.preheader.i.i.i.i.i447.prol
  %.013.i.i.i.i.i448.prol = phi i64 [ %i.aaw, %.preheader.i.i.i.i.i447.prol ], [ %.0.lcssa.i.i.i.i430, %.preheader.i.i.i.i.i447.preheader ]
  %i.aav = phi ptr [ %i.aax, %.preheader.i.i.i.i.i447.prol ], [ %i.aal, %.preheader.i.i.i.i.i447.preheader ]
  %prol.iter1065 = phi i64 [ %prol.iter1065.next, %.preheader.i.i.i.i.i447.prol ], [ 0, %.preheader.i.i.i.i.i447.preheader ]
  %i.aaw = add nsw i64 %.013.i.i.i.i.i448.prol, -1 ; 2 uses
  %i.aax = load ptr, ptr %i.aav, align 8, !tbaa !374, !noalias !1992 ; 3 uses
  %prol.iter1065.next = add i64 %prol.iter1065, 1 ; 2 uses
  %prol.iter1065.cmp.not = icmp eq i64 %prol.iter1065.next, %xtraiter1063
  br i1 %prol.iter1065.cmp.not, label %.preheader.i.i.i.i.i447.prol.loopexit, label %.preheader.i.i.i.i.i447.prol, !llvm.loop !1806

.preheader.i.i.i.i.i447.prol.loopexit:            ; preds = %.preheader.i.i.i.i.i447.prol, %.preheader.i.i.i.i.i447.preheader
  %.lcssa1007.unr = phi ptr [ poison, %.preheader.i.i.i.i.i447.preheader ], [ %i.aax, %.preheader.i.i.i.i.i447.prol ]
  %.013.i.i.i.i.i448.unr = phi i64 [ %.0.lcssa.i.i.i.i430, %.preheader.i.i.i.i.i447.preheader ], [ %i.aaw, %.preheader.i.i.i.i.i447.prol ]
  %.unr1066 = phi ptr [ %i.aal, %.preheader.i.i.i.i.i447.preheader ], [ %i.aax, %.preheader.i.i.i.i.i447.prol ]
  %i.aay = icmp ult i64 %.0.lcssa.i.i.i.i430, 8
  br i1 %i.aay, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i436, label %.preheader.i.i.i.i.i447

.preheader7.i.i.i.i.i431:                         ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i429
  %.not9.i.i.i.i.i432 = icmp eq i64 %.0.lcssa.i.i.i.i430, 0
  br i1 %.not9.i.i.i.i.i432, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i436, label %.lr.ph.i.i.i.i.i433.preheader

.lr.ph.i.i.i.i.i433.preheader:                    ; preds = %.preheader7.i.i.i.i.i431
  %i.aaz = sub i64 0, %.0.lcssa.i.i.i.i430
  %xtraiter1059 = and i64 %i.aaz, 7               ; 2 uses
  %lcmp.mod1060.not = icmp eq i64 %xtraiter1059, 0
  br i1 %lcmp.mod1060.not, label %.lr.ph.i.i.i.i.i433.prol.loopexit, label %.lr.ph.i.i.i.i.i433.prol

.lr.ph.i.i.i.i.i433.prol:                         ; preds = %.lr.ph.i.i.i.i.i433.preheader, %.lr.ph.i.i.i.i.i433.prol
  %i.aba = phi ptr [ %i.abd, %.lr.ph.i.i.i.i.i433.prol ], [ %i.aal, %.lr.ph.i.i.i.i.i433.preheader ]
  %.110.i.i.i.i.i434.prol = phi i64 [ %i.abb, %.lr.ph.i.i.i.i.i433.prol ], [ %.0.lcssa.i.i.i.i430, %.lr.ph.i.i.i.i.i433.preheader ]
  %prol.iter1061 = phi i64 [ %prol.iter1061.next, %.lr.ph.i.i.i.i.i433.prol ], [ 0, %.lr.ph.i.i.i.i.i433.preheader ]
  %i.abb = add nsw i64 %.110.i.i.i.i.i434.prol, 1 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !375, !noalias !1992 ; 3 uses
  %prol.iter1061.next = add i64 %prol.iter1061, 1 ; 2 uses
  %prol.iter1061.cmp.not = icmp eq i64 %prol.iter1061.next, %xtraiter1059
  br i1 %prol.iter1061.cmp.not, label %.lr.ph.i.i.i.i.i433.prol.loopexit, label %.lr.ph.i.i.i.i.i433.prol, !llvm.loop !1807

.lr.ph.i.i.i.i.i433.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i433.prol, %.lr.ph.i.i.i.i.i433.preheader
  %.lcssa1006.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i433.preheader ], [ %i.abd, %.lr.ph.i.i.i.i.i433.prol ]
  %.unr1062 = phi ptr [ %i.aal, %.lr.ph.i.i.i.i.i433.preheader ], [ %i.abd, %.lr.ph.i.i.i.i.i433.prol ]
  %.110.i.i.i.i.i434.unr = phi i64 [ %.0.lcssa.i.i.i.i430, %.lr.ph.i.i.i.i.i433.preheader ], [ %i.abb, %.lr.ph.i.i.i.i.i433.prol ]
  %i.abe = icmp ugt i64 %.0.lcssa.i.i.i.i430, -8
  br i1 %i.abe, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i436, label %.lr.ph.i.i.i.i.i433

.preheader.i.i.i.i.i447:                          ; preds = %.preheader.i.i.i.i.i447.prol.loopexit, %.preheader.i.i.i.i.i447
  %.013.i.i.i.i.i448 = phi i64 [ %i.abn, %.preheader.i.i.i.i.i447 ], [ %.013.i.i.i.i.i448.unr, %.preheader.i.i.i.i.i447.prol.loopexit ]
  %i.abf = phi ptr [ %i.abo, %.preheader.i.i.i.i.i447 ], [ %.unr1066, %.preheader.i.i.i.i.i447.prol.loopexit ]
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !374, !noalias !1992
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !374, !noalias !1992
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !374, !noalias !1992
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !374, !noalias !1992
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !374, !noalias !1992
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !374, !noalias !1992
end_hunk_7
begin_hunk_8_@_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEmbRKT_RNS_6system10error_codeE:bb.a
  %prol.iter1093.next = add i64 %prol.iter1093, 1 ; 2 uses
  %prol.iter1093.cmp.not = icmp eq i64 %prol.iter1093.next, %xtraiter1091
  br i1 %prol.iter1093.cmp.not, label %.lr.ph.i.i.i.i.i505.prol.loopexit, label %.lr.ph.i.i.i.i.i505.prol, !llvm.loop !1926

.lr.ph.i.i.i.i.i505.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i505.prol, %.lr.ph.i.i.i.i.i505.preheader
  %.lcssa988.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i505.preheader ], [ %i.axg, %.lr.ph.i.i.i.i.i505.prol ]
  %.unr1094 = phi ptr [ %i.awj, %.lr.ph.i.i.i.i.i505.preheader ], [ %i.axg, %.lr.ph.i.i.i.i.i505.prol ]
  %.110.i.i.i.i.i506.unr = phi i64 [ %.0.lcssa.i.i.i.i502, %.lr.ph.i.i.i.i.i505.preheader ], [ %i.axe, %.lr.ph.i.i.i.i.i505.prol ]
  %i.axh = icmp ugt i64 %.0.lcssa.i.i.i.i502, -8
  br i1 %i.axh, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i508, label %.lr.ph.i.i.i.i.i505

.preheader.i.i.i.i.i519:                          ; preds = %.preheader.i.i.i.i.i519.prol.loopexit, %.preheader.i.i.i.i.i519
  %.013.i.i.i.i.i520 = phi i64 [ %i.axq, %.preheader.i.i.i.i.i519 ], [ %.013.i.i.i.i.i520.unr, %.preheader.i.i.i.i.i519.prol.loopexit ]
  %i.axi = phi ptr [ %i.axr, %.preheader.i.i.i.i.i519 ], [ %.unr1098, %.preheader.i.i.i.i.i519.prol.loopexit ]
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !374, !noalias !2033
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !374, !noalias !2033
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !374, !noalias !2033
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !374, !noalias !2033
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !374, !noalias !2033
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !374, !noalias !2033
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !374, !noalias !2033
  %i.axq = add nsw i64 %.013.i.i.i.i.i520, -8     ; 2 uses
  %i.axr = load ptr, ptr %i.axp, align 8, !tbaa !374, !noalias !2033 ; 2 uses
  %.not6.i.i.i.i.i521.7 = icmp eq i64 %i.axq, 0
  br i1 %.not6.i.i.i.i.i521.7, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i508, label %.preheader.i.i.i.i.i519, !llvm.loop !16

.lr.ph.i.i.i.i.i505:                              ; preds = %.lr.ph.i.i.i.i.i505.prol.loopexit, %.lr.ph.i.i.i.i.i505
  %i.axs = phi ptr [ %i.ayj, %.lr.ph.i.i.i.i.i505 ], [ %.unr1094, %.lr.ph.i.i.i.i.i505.prol.loopexit ]
  %.110.i.i.i.i.i506 = phi i64 [ %i.ayh, %.lr.ph.i.i.i.i.i505 ], [ %.110.i.i.i.i.i506.unr, %.lr.ph.i.i.i.i.i505.prol.loopexit ]
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 8
  %i.axu = load ptr, ptr %i.axt, align 8, !tbaa !375, !noalias !2033
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 8
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !375, !noalias !2033
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 8
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !375, !noalias !2033
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 8
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !375, !noalias !2033
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 8
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !375, !noalias !2033
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 8
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !375, !noalias !2033
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 8
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !375, !noalias !2033
  %i.ayh = add nsw i64 %.110.i.i.i.i.i506, 8      ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayg, i64 8
  %i.ayj = load ptr, ptr %i.ayi, align 8, !tbaa !375, !noalias !2033 ; 2 uses
  %.not.i.i.i.i.i507.7 = icmp eq i64 %i.ayh, 0
  br i1 %.not.i.i.i.i.i507.7, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i508, label %.lr.ph.i.i.i.i.i505, !llvm.loop !17

_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i508: ; preds = %.lr.ph.i.i.i.i.i505.prol.loopexit, %.lr.ph.i.i.i.i.i505, %.preheader.i.i.i.i.i519.prol.loopexit, %.preheader.i.i.i.i.i519, %.preheader7.i.i.i.i.i503
  %.sroa.2.0.i.i.i.i509 = phi ptr [ %i.axr, %.preheader.i.i.i.i.i519 ], [ %i.awj, %.preheader7.i.i.i.i.i503 ], [ %.lcssa986.unr, %.preheader.i.i.i.i.i519.prol.loopexit ], [ %.lcssa988.unr, %.lr.ph.i.i.i.i.i505.prol.loopexit ], [ %i.ayj, %.lr.ph.i.i.i.i.i505 ] ; 7 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %36, i64 40
  store ptr %36, ptr %i.ayk, align 8, !tbaa !392
  %i.ayl = getelementptr inbounds nuw i8, ptr %36, i64 48
  store ptr %.sroa.2.0.i.i.i.i509, ptr %i.ayl, align 8, !tbaa !376
  %i.aym = getelementptr inbounds nuw i8, ptr %36, i64 56
  store i64 %i.dd, ptr %i.aym, align 8, !tbaa !394
  %i.ayn = getelementptr inbounds nuw i8, ptr %36, i64 64
  %i.ayo = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %36, i64 72
  %i.ayq = load <2 x i64>, ptr %i.ayo, align 8, !tbaa !84
  %i.ayr = load i64, ptr %i.ayo, align 8, !tbaa !403
  store <2 x i64> %i.ayq, ptr %i.ayn, align 8, !tbaa !84
  %i.ays = icmp sgt i64 %.0.lcssa.us.i.i499, 0
  br i1 %i.ays, label %.preheader.i.i.i516.preheader, label %.preheader7.i.i.i510

.preheader.i.i.i516.preheader:                    ; preds = %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i508
  %xtraiter1103 = and i64 %.0.lcssa.us.i.i499, 7  ; 2 uses
  %lcmp.mod1104.not = icmp eq i64 %xtraiter1103, 0
  br i1 %lcmp.mod1104.not, label %.preheader.i.i.i516.prol.loopexit, label %.preheader.i.i.i516.prol

.preheader.i.i.i516.prol:                         ; preds = %.preheader.i.i.i516.preheader, %.preheader.i.i.i516.prol
  %.013.i.i.i517.prol = phi i64 [ %i.ayu, %.preheader.i.i.i516.prol ], [ %.0.lcssa.us.i.i499, %.preheader.i.i.i516.preheader ]
  %i.ayt = phi ptr [ %i.ayv, %.preheader.i.i.i516.prol ], [ %.sroa.2.0.i.i.i.i509, %.preheader.i.i.i516.preheader ]
  %prol.iter1105 = phi i64 [ %prol.iter1105.next, %.preheader.i.i.i516.prol ], [ 0, %.preheader.i.i.i516.preheader ]
  %i.ayu = add nsw i64 %.013.i.i.i517.prol, -1    ; 2 uses
  %i.ayv = load ptr, ptr %i.ayt, align 8, !tbaa !374, !noalias !2034 ; 3 uses
  %prol.iter1105.next = add i64 %prol.iter1105, 1 ; 2 uses
  %prol.iter1105.cmp.not = icmp eq i64 %prol.iter1105.next, %xtraiter1103
  br i1 %prol.iter1105.cmp.not, label %.preheader.i.i.i516.prol.loopexit, label %.preheader.i.i.i516.prol, !llvm.loop !1929

.preheader.i.i.i516.prol.loopexit:                ; preds = %.preheader.i.i.i516.prol, %.preheader.i.i.i516.preheader
  %.lcssa983.unr = phi ptr [ poison, %.preheader.i.i.i516.preheader ], [ %i.ayv, %.preheader.i.i.i516.prol ]
  %.013.i.i.i517.unr = phi i64 [ %.0.lcssa.us.i.i499, %.preheader.i.i.i516.preheader ], [ %i.ayu, %.preheader.i.i.i516.prol ]
  %.unr1106 = phi ptr [ %.sroa.2.0.i.i.i.i509, %.preheader.i.i.i516.preheader ], [ %i.ayv, %.preheader.i.i.i516.prol ]
  %i.ayw = icmp ult i64 %.0.lcssa.us.i.i499, 8
  br i1 %i.ayw, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit530, label %.preheader.i.i.i516

.preheader7.i.i.i510:                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i508
  %.not9.i.i.i511 = icmp eq i64 %.0.lcssa.us.i.i499, 0
  br i1 %.not9.i.i.i511, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit530, label %.lr.ph.i.i.i512.preheader

.lr.ph.i.i.i512.preheader:                        ; preds = %.preheader7.i.i.i510
  %i.ayx = sub i64 0, %.0.lcssa.us.i.i499
  %xtraiter1099 = and i64 %i.ayx, 7               ; 2 uses
  %lcmp.mod1100.not = icmp eq i64 %xtraiter1099, 0
  br i1 %lcmp.mod1100.not, label %.lr.ph.i.i.i512.prol.loopexit, label %.lr.ph.i.i.i512.prol

.lr.ph.i.i.i512.prol:                             ; preds = %.lr.ph.i.i.i512.preheader, %.lr.ph.i.i.i512.prol
  %i.ayy = phi ptr [ %i.azb, %.lr.ph.i.i.i512.prol ], [ %.sroa.2.0.i.i.i.i509, %.lr.ph.i.i.i512.preheader ]
  %.110.i.i.i513.prol = phi i64 [ %i.ayz, %.lr.ph.i.i.i512.prol ], [ %.0.lcssa.us.i.i499, %.lr.ph.i.i.i512.preheader ]
  %prol.iter1101 = phi i64 [ %prol.iter1101.next, %.lr.ph.i.i.i512.prol ], [ 0, %.lr.ph.i.i.i512.preheader ]
  %i.ayz = add nsw i64 %.110.i.i.i513.prol, 1     ; 2 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayy, i64 8
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !375, !noalias !2034 ; 3 uses
  %prol.iter1101.next = add i64 %prol.iter1101, 1 ; 2 uses
  %prol.iter1101.cmp.not = icmp eq i64 %prol.iter1101.next, %xtraiter1099
  br i1 %prol.iter1101.cmp.not, label %.lr.ph.i.i.i512.prol.loopexit, label %.lr.ph.i.i.i512.prol, !llvm.loop !1930

.lr.ph.i.i.i512.prol.loopexit:                    ; preds = %.lr.ph.i.i.i512.prol, %.lr.ph.i.i.i512.preheader
  %.lcssa985.unr = phi ptr [ poison, %.lr.ph.i.i.i512.preheader ], [ %i.azb, %.lr.ph.i.i.i512.prol ]
  %.unr1102 = phi ptr [ %.sroa.2.0.i.i.i.i509, %.lr.ph.i.i.i512.preheader ], [ %i.azb, %.lr.ph.i.i.i512.prol ]
  %.110.i.i.i513.unr = phi i64 [ %.0.lcssa.us.i.i499, %.lr.ph.i.i.i512.preheader ], [ %i.ayz, %.lr.ph.i.i.i512.prol ]
  %i.azc = icmp ugt i64 %.0.lcssa.us.i.i499, -8
  br i1 %i.azc, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit530, label %.lr.ph.i.i.i512

.preheader.i.i.i516:                              ; preds = %.preheader.i.i.i516.prol.loopexit, %.preheader.i.i.i516
  %.013.i.i.i517 = phi i64 [ %i.azl, %.preheader.i.i.i516 ], [ %.013.i.i.i517.unr, %.preheader.i.i.i516.prol.loopexit ]
  %i.azd = phi ptr [ %i.azm, %.preheader.i.i.i516 ], [ %.unr1106, %.preheader.i.i.i516.prol.loopexit ]
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !374, !noalias !2034
  %i.azf = load ptr, ptr %i.aze, align 8, !tbaa !374, !noalias !2034
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !374, !noalias !2034
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !374, !noalias !2034
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !374, !noalias !2034
  %i.azj = load ptr, ptr %i.azi, align 8, !tbaa !374, !noalias !2034
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !374, !noalias !2034
  %i.azl = add nsw i64 %.013.i.i.i517, -8         ; 2 uses
  %i.azm = load ptr, ptr %i.azk, align 8, !tbaa !374, !noalias !2034 ; 2 uses
  %.not6.i.i.i518.7 = icmp eq i64 %i.azl, 0
  br i1 %.not6.i.i.i518.7, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit530, label %.preheader.i.i.i516, !llvm.loop !49

.lr.ph.i.i.i512:                                  ; preds = %.lr.ph.i.i.i512.prol.loopexit, %.lr.ph.i.i.i512
  %i.azn = phi ptr [ %i.bae, %.lr.ph.i.i.i512 ], [ %.unr1102, %.lr.ph.i.i.i512.prol.loopexit ]
  %.110.i.i.i513 = phi i64 [ %i.bac, %.lr.ph.i.i.i512 ], [ %.110.i.i.i513.unr, %.lr.ph.i.i.i512.prol.loopexit ]
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 8
  %i.azp = load ptr, ptr %i.azo, align 8, !tbaa !375, !noalias !2034
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 8
  %i.azr = load ptr, ptr %i.azq, align 8, !tbaa !375, !noalias !2034
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !375, !noalias !2034
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 8
  %i.azv = load ptr, ptr %i.azu, align 8, !tbaa !375, !noalias !2034
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 8
  %i.azx = load ptr, ptr %i.azw, align 8, !tbaa !375, !noalias !2034
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 8
  %i.azz = load ptr, ptr %i.azy, align 8, !tbaa !375, !noalias !2034
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 8
  %i.bab = load ptr, ptr %i.baa, align 8, !tbaa !375, !noalias !2034
  %i.bac = add nsw i64 %.110.i.i.i513, 8          ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bab, i64 8
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !375, !noalias !2034 ; 2 uses
  %.not.i.i.i514.7 = icmp eq i64 %i.bac, 0
  br i1 %.not.i.i.i514.7, label %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit530, label %.lr.ph.i.i.i512, !llvm.loop !50

_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit530: ; preds = %.lr.ph.i.i.i512.prol.loopexit, %.lr.ph.i.i.i512, %.preheader.i.i.i516.prol.loopexit, %.preheader.i.i.i516, %.preheader7.i.i.i510
  %.sroa.2.0.i.i515 = phi ptr [ %i.azm, %.preheader.i.i.i516 ], [ %.sroa.2.0.i.i.i.i509, %.preheader7.i.i.i510 ], [ %.lcssa983.unr, %.preheader.i.i.i516.prol.loopexit ], [ %.lcssa985.unr, %.lr.ph.i.i.i512.prol.loopexit ], [ %i.bae, %.lr.ph.i.i.i512 ]
  %i.baf = getelementptr inbounds nuw i8, ptr %36, i64 80 ; 3 uses
  store ptr %36, ptr %i.baf, align 8, !tbaa !392
  %i.bag = getelementptr inbounds nuw i8, ptr %36, i64 88 ; 2 uses
  store ptr %.sroa.2.0.i.i515, ptr %i.bag, align 8, !tbaa !376
  %i.bah = getelementptr inbounds nuw i8, ptr %36, i64 96 ; 3 uses
  store ptr %36, ptr %i.bah, align 8, !tbaa !401
  %i.bai = getelementptr inbounds nuw i8, ptr %36, i64 104 ; 3 uses
  store ptr %36, ptr %i.bai, align 8, !tbaa !624, !alias.scope !2035
  %i.baj = getelementptr inbounds nuw i8, ptr %36, i64 112 ; 3 uses
  store i64 %i.ayr, ptr %i.baj, align 8, !tbaa !625, !alias.scope !2035
  %i.bak = getelementptr inbounds nuw i8, ptr %36, i64 120 ; 3 uses
  store ptr %36, ptr %i.bak, align 8, !tbaa !392, !alias.scope !2036
  %i.bal = getelementptr inbounds nuw i8, ptr %36, i64 128 ; 3 uses
  store ptr %.sroa.2.0.i.i.i.i509, ptr %i.bal, align 8, !tbaa !376, !alias.scope !2036
  %i.bam = getelementptr inbounds nuw i8, ptr %36, i64 136 ; 3 uses
  store ptr %36, ptr %i.bam, align 8, !tbaa !401, !alias.scope !2036
  %i.ban = getelementptr inbounds nuw i8, ptr %36, i64 144 ; 3 uses
  store i64 0, ptr %i.ban, align 8, !tbaa !627
  %i.bao = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.bap = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  %i.baq = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.bar = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.bas = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bat = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bau = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.2.0..sroa_idx.i.i.i292 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bav = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.baw = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bax = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bay = getelementptr inbounds nuw i8, ptr %39, i64 40
  %.2..2..2..2.gep.sroa_idx1149 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4..4..4..4.gep27.sroa_idx1151 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.10..10..10..10.gep28.sroa_idx1152 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.baz = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.bba = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bbc = getelementptr inbounds nuw i8, ptr %39, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bbd = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %40, i64 24
  %.ptr4.i.i.i.i.i.i314 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.bbh = shl nsw i8 %.sroa.29.0857, 4           ; 2 uses
  %i.bbi = or disjoint i8 -128, 127
  %i.bbj = or disjoint i8 -128, 126
  %i.bbk = or i8 %i.cj, %i.bbh
  %.1..1..1..1..sroa_idx1145 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx1148 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx1146 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx1150 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx1147 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_19buffers_prefix_viewINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEE7consumeEm.exit339, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit530
  %.sroa.20.5 = phi i8 [ %i.bbk, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit530 ], [ %i.bbh, %_ZN5boost5beast14buffers_suffixINS0_19buffers_prefix_viewINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEE7consumeEm.exit339 ]
  %.2129 = phi i64 [ %.0.i.i.lcssa.i146, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS9_.exit530 ], [ %i.bbz, %_ZN5boost5beast14buffers_suffixINS0_19buffers_prefix_viewINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEE7consumeEm.exit339 ] ; 2 uses
  %i.bbl = load ptr, ptr %0, align 8, !tbaa !303
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbl, i64 2393
  %i.bbn = load i8, ptr %i.bbm, align 1, !tbaa !416, !range !119, !noundef !120
  %i.bbo = trunc nuw i8 %i.bbn to i1
  %i.bbp = call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.bbo)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dl, %bb.dk
  %i.bbq = call noundef i32 %i.bbp(), !inline_history !22 ; 3 uses
  %.not.i287 = icmp eq i32 %i.bbq, 0
  br i1 %.not.i287, label %bb.dl, label %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit288, !llvm.loop !23

_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit288: ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #35
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %37, i32 noundef %i.bbq)
  %i.bbr = load i64, ptr %i.bao, align 8, !tbaa !426
  %..i289 = call noundef i64 @llvm.umin.i64(i64 %.2129, i64 %i.bbr) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #35
  %i.bbs = load ptr, ptr %i.bap, align 8, !tbaa !236
  store ptr %i.bbs, ptr %38, align 8
  store i64 %..i289, ptr %i.baq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.bai, i64 16, i1 false)
  %i.bbt = load ptr, ptr %i.bam, align 8, !tbaa !401, !noalias !2039
  %i.bbu = load <2 x ptr>, ptr %i.bak, align 8, !tbaa !229, !noalias !2039
  store <2 x ptr> %i.bbu, ptr %i.bas, align 8, !tbaa !229, !alias.scope !2039
  store ptr %i.bbt, ptr %i.bat, align 8, !tbaa !401, !alias.scope !2039
  store ptr %36, ptr %i.bau, align 8, !tbaa !638, !alias.scope !2039
  call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  %i.bbv = load i64, ptr %i.ayp, align 8, !tbaa !404, !noalias !2042
  %i.bbw = load ptr, ptr %i.bah, align 8, !tbaa !401, !noalias !2042
  store ptr %36, ptr %7, align 8, !alias.scope !2043
  store i64 %i.bbv, ptr %.sroa.2.0..sroa_idx.i.i.i292, align 8, !alias.scope !2043
  %i.bbx = load <2 x ptr>, ptr %i.baf, align 8, !tbaa !229, !noalias !2042
  store <2 x ptr> %i.bbx, ptr %i.bav, align 8, !tbaa !229, !alias.scope !2043
  store ptr %i.bbw, ptr %i.baw, align 8, !tbaa !401, !alias.scope !2043
  store ptr %36, ptr %i.bax, align 8, !tbaa !638, !alias.scope !2043
  %i.bby = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast14buffers_suffixINS6_19buffers_prefix_viewINS7_INS6_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SK_T0_SL_m(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull %i.bar, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef -1) #35 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 1 dereferenceable(4) %37)
  %i.bbz = sub nuw i64 %.2129, %..i289            ; 2 uses
  %i.bca = icmp eq i64 %i.bbz, 0                  ; 2 uses
  %i.bcb = select i1 %1, i1 %i.bca, i1 false      ; 2 uses
  %i.bcc = xor i1 %i.bcb, true
  %i.bcd = zext i1 %i.bcc to i8
  store i8 %i.bcd, ptr %i.i, align 1, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %39, ptr noundef nonnull %i.bay, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bce = select i1 %i.bcb, i8 -128, i8 0
  %spec.select37.i298 = or i8 %.sroa.20.5, %i.bce
  store i8 %spec.select37.i298, ptr %i.a, align 1, !tbaa !87
  %i.bcf = icmp ult i64 %..i289, 126
  br i1 %i.bcf, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit288
  %i.bcg = trunc nuw nsw i64 %..i289 to i8
  %i.bch = or disjoint i8 -128, %i.bcg
  store i8 %i.bch, ptr %.1..1..1..1..sroa_idx1147, align 1, !tbaa !87
  br label %bb.dq

bb.dn:                                            ; preds = %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit288
  %i.bci = icmp ult i64 %..i289, 65536
  br i1 %i.bci, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i8 %i.bbj, ptr %.1..1..1..1..sroa_idx1146, align 1, !tbaa !87
  %i.bcj = trunc nuw i64 %..i289 to i16
  %i.bck = call noundef i16 @llvm.bswap.i16(i16 %i.bcj)
  store i16 %i.bck, ptr %.2..2..2..2.gep.sroa_idx1150, align 1
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  store i8 %i.bbi, ptr %.1..1..1..1..sroa_idx1145, align 1, !tbaa !87
  %i.bcl = call noundef i64 @llvm.bswap.i64(i64 %..i289)
  store i64 %i.bcl, ptr %.2..2..2..2.gep.sroa_idx1148, align 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dm
  %.0.sroa.phi.i300 = phi ptr [ %.2..2..2..2.gep.sroa_idx1149, %bb.dm ], [ %.4..4..4..4.gep27.sroa_idx1151, %bb.do ], [ %.10..10..10..10.gep28.sroa_idx1152, %bb.dp ]
  %.0.i301 = phi i64 [ 6, %bb.dm ], [ 8, %bb.do ], [ 14, %bb.dp ]
  store i32 %i.bbq, ptr %.0.sroa.phi.i300, align 1
  %i.bcm = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %39, i64 noundef %.0.i301) ; 2 uses
  %i.bcn = extractvalue { ptr, i64 } %i.bcm, 1    ; 2 uses
  %i.bco = call i64 @llvm.umin.i64(i64 %i.bcn, i64 14) ; 2 uses
  %.not.i.i.i.i304 = icmp eq i64 %i.bcn, 0
  br i1 %.not.i.i.i.i304, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit306, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.bcp = extractvalue { ptr, i64 } %i.bcm, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bcp, ptr nonnull align 1 %i.a, i64 %i.bco, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit306

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit306: ; preds = %bb.dq, %bb.dr
  %i.bcq = load ptr, ptr %i.baz, align 8, !tbaa !432
  %i.bcr = load ptr, ptr %i.bba, align 8, !tbaa !433 ; 2 uses
  %i.bcs = ptrtoint ptr %i.bcq to i64
  %i.bct = ptrtoint ptr %i.bcr to i64
  %i.bcu = sub i64 %i.bcs, %i.bct
  %.sroa.speculated.i.i305 = call i64 @llvm.umin.i64(i64 %i.bcu, i64 %i.bco)
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcr, i64 %.sroa.speculated.i.i305 ; 3 uses
  store ptr %i.bcv, ptr %i.bba, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #35
  %i.bcw = load ptr, ptr %i.bbc, align 8, !tbaa !434 ; 3 uses
  %i.bcx = ptrtoint ptr %i.bcv to i64
  %i.bcy = ptrtoint ptr %i.bcw to i64
  %i.bcz = sub i64 %i.bcx, %i.bcy
  store ptr %i.bcw, ptr %40, align 8, !tbaa !229
  store i64 %i.bcz, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bbd, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !427
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  store ptr %40, ptr %5, align 8, !tbaa !439, !alias.scope !2046
  store i64 1, ptr %i.bbf, align 8, !alias.scope !2046
  store ptr %40, ptr %i.bbe, align 8, !tbaa !441, !alias.scope !2046
  %.not.i.i.i.i.i.i309 = icmp eq ptr %i.bcv, %i.bcw
  br i1 %.not.i.i.i.i.i.i309, label %._crit_edge.i.i.i.i.i.i310, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit315

._crit_edge.i.i.i.i.i.i310:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit306
  store ptr %i.bbd, ptr %i.bbe, align 8, !tbaa !441, !alias.scope !2046
  store i8 2, ptr %i.bbf, align 8, !tbaa !442, !alias.scope !2046
  %i.bda = load i64, ptr %i.bbg, align 8, !tbaa !444, !noalias !2046
  %.not.i.i.i.i.i.i.i312 = icmp eq i64 %i.bda, 0
  br i1 %.not.i.i.i.i.i.i.i312, label %._crit_edge.i.i.i.i.i.i.i313, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit315

._crit_edge.i.i.i.i.i.i.i313:                     ; preds = %._crit_edge.i.i.i.i.i.i310
  store ptr %.ptr4.i.i.i.i.i.i314, ptr %i.bbe, align 8, !tbaa !441, !alias.scope !2046
  store i8 0, ptr %i.bbe, align 8, !tbaa !446, !alias.scope !2046
  store i8 3, ptr %i.bbf, align 8, !tbaa !442, !alias.scope !2046
  br label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit315

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit315: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit306, %._crit_edge.i.i.i.i.i.i310, %._crit_edge.i.i.i.i.i.i.i313
  %i.bdb = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferESB_EEENSC_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bbb, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #35
  %i.bdc = load i64, ptr %i.f, align 8, !tbaa !84
  %i.bdd = add i64 %i.bdc, %..i289
  store i64 %i.bdd, ptr %i.f, align 8, !tbaa !84
  %i.bde = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.bde, label %bb.ee, label %bb.ds

bb.ds:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit315
  br i1 %i.bca, label %.thread659, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.bdf = load ptr, ptr %i.bag, align 8, !tbaa !395, !noalias !2047
  %.not14.i316 = icmp eq i64 %..i289, 0
  br i1 %.not14.i316, label %_ZN5boost5beast14buffers_suffixINS0_19buffers_prefix_viewINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEE7consumeEm.exit339, label %.lr.ph.i317

.lr.ph.i317:                                      ; preds = %bb.dt
  %i.bdg = load ptr, ptr %i.bah, align 8, !tbaa !401, !noalias !2047
  %i.bdh = load ptr, ptr %i.baf, align 8, !tbaa !392, !noalias !2047
  %i.bdi = load ptr, ptr %i.bai, align 8, !tbaa !624
  %i.bdj = icmp ne ptr %i.bdi, %36
  %i.bdk = load ptr, ptr %i.bam, align 8          ; 4 uses
  %i.bdl = icmp ne ptr %i.bdk, %i.bdg
  %i.bdm = load ptr, ptr %i.bak, align 8          ; 6 uses
  %i.bdn = icmp ne ptr %i.bdm, %i.bdh
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdk, i64 40
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdk, i64 48 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdm, i64 16 ; 2 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdm, i64 32 ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdm, i64 8 ; 2 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdm, i64 24 ; 4 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdk, i64 56 ; 2 uses
  %.pre.pre.i318 = load ptr, ptr %i.bal, align 8
  %brmerge.i319 = select i1 %i.bdj, i1 true, i1 %i.bdl
  %i.bdv = select i1 %brmerge.i319, i1 true, i1 %i.bdn
  br label %bb.du

bb.du:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i332, %.lr.ph.i317
  %.pre.i320 = phi ptr [ %.pre.pre.i318, %.lr.ph.i317 ], [ %i.bev, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i332 ] ; 9 uses
  %.0715.i321 = phi i64 [ %..i289, %.lr.ph.i317 ], [ %i.bet, %_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorppEv.exit.i332 ] ; 3 uses
  %i.bdw = icmp ne ptr %.pre.i320, %i.bdf
  %or.cond.i322 = select i1 %i.bdv, i1 true, i1 %i.bdw
  br i1 %or.cond.i322, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i323, label %_ZN5boost5beast14buffers_suffixINS0_19buffers_prefix_viewINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEE7consumeEm.exit339

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i323: ; preds = %bb.du
  %i.bdx = load ptr, ptr %i.bdo, align 8, !tbaa !392
  %i.bdy = icmp eq ptr %i.bdm, %i.bdx             ; 2 uses
  %i.bdz = load ptr, ptr %i.bdp, align 8
  %i.bea = icmp eq ptr %.pre.i320, %i.bdz
  %i.beb = select i1 %i.bdy, i1 %i.bea, i1 false
  %i.bec = load ptr, ptr %i.bdq, align 8, !tbaa !395
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 8
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !375
  %i.bef = icmp eq ptr %.pre.i320, %i.bee
  %i.beg = getelementptr inbounds nuw i8, ptr %.pre.i320, i64 16 ; 2 uses
  %.sroa.6.0.in.i.i.i.i324 = select i1 %i.bef, ptr %i.bdr, ptr %i.beg
  %.sroa.6.0.i.i.i.i325 = load i64, ptr %.sroa.6.0.in.i.i.i.i324, align 8, !tbaa !84 ; 4 uses
  %i.beh = load ptr, ptr %i.bds, align 8, !tbaa !395
  %i.bei = icmp eq ptr %.pre.i320, %i.beh         ; 2 uses
  br i1 %i.beb, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i323
  br i1 %i.bei, label %bb.dw, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i.i337

bb.dw:                                            ; preds = %bb.dv
  %i.bej = load i64, ptr %i.bdt, align 8, !tbaa !396
  %i.bek = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i325, i64 %i.bej)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i.i337

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i.i337: ; preds = %bb.dw, %bb.dv
  %.sroa.6.1.i.i.i.i338 = phi i64 [ %i.bek, %bb.dw ], [ %.sroa.6.0.i.i.i.i325, %bb.dv ]
  %i.bel = load i64, ptr %i.bdu, align 8, !tbaa !394
  %i.bem = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.1.i.i.i.i338, i64 %i.bel)
  br label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratordeEv.exit.i326

bb.dx:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKSA_.exit.thread.i323
  br i1 %i.bei, label %bb.dy, label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratordeEv.exit.i326

bb.dy:                                            ; preds = %bb.dx
  %i.ben = load i64, ptr %i.bdt, align 8, !tbaa !396
  %i.beo = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i325, i64 %i.ben)
  br label %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratordeEv.exit.i326

_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratordeEv.exit.i326: ; preds = %bb.dy, %bb.dx, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i.i337
  %.pn13.i.i.i327 = phi i64 [ %i.bem, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i.i337 ], [ %i.beo, %bb.dy ], [ %.sroa.6.0.i.i.i.i325, %bb.dx ]
  %i.bep = load i64, ptr %i.baj, align 8, !tbaa !625 ; 2 uses
  %spec.select.i.i328 = call i64 @llvm.umin.i64(i64 %i.bep, i64 %.pn13.i.i.i327)
  %i.beq = load i64, ptr %i.ban, align 8, !tbaa !627 ; 2 uses
  %i.ber = sub i64 %spec.select.i.i328, %i.beq    ; 2 uses
  %i.bes = icmp ult i64 %.0715.i321, %i.ber       ; 2 uses
  %i.bet = sub nuw i64 %.0715.i321, %i.ber        ; 2 uses
  %i.beu = add i64 %i.beq, %.0715.i321
  %storemerge.i329 = select i1 %i.bes, i64 %i.beu, i64 0
  store i64 %storemerge.i329, ptr %i.ban, align 8, !tbaa !627
  br i1 %i.bes, label %_ZN5boost5beast14buffers_suffixINS0_19buffers_prefix_viewINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEE7consumeEm.exit339, label %bb.dz

bb.dz:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratordeEv.exit.i326
  %i.bev = load ptr, ptr %.pre.i320, align 8, !tbaa !374, !noalias !2048 ; 2 uses
  store ptr %i.bev, ptr %i.bal, align 8, !tbaa !395, !noalias !2048
  %i.bew = load ptr, ptr %i.bdp, align 8
  %i.bex = icmp eq ptr %.pre.i320, %i.bew
  %i.bey = select i1 %i.bdy, i1 %i.bex, i1 false
  %i.bez = load ptr, ptr %i.bdq, align 8, !tbaa !395
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 8
  %i.bfb = load ptr, ptr %i.bfa, align 8, !tbaa !375
  %i.bfc = icmp eq ptr %.pre.i320, %i.bfb
  %.sroa.6.0.in.i.i.i9.i330 = select i1 %i.bfc, ptr %i.bdr, ptr %i.beg
  %.sroa.6.0.i.i.i10.i331 = load i64, ptr %.sroa.6.0.in.i.i.i9.i330, align 8, !tbaa !84 ; 4 uses
  %i.bfd = load ptr, ptr %i.bds, align 8, !tbaa !395
  %i.bfe = icmp eq ptr %.pre.i320, %i.bfd         ; 2 uses
  br i1 %i.bey, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  br i1 %i.bfe, label %bb.eb, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i12.i335

bb.eb:                                            ; preds = %bb.ea
  %i.bff = load i64, ptr %i.bdt, align 8, !tbaa !396
  %i.bfg = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i10.i331, i64 %i.bff)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i12.i335

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i12.i335: ; preds = %bb.eb, %bb.ea
  %.sroa.6.1.i.i.i13.i336 = phi i64 [ %i.bfg, %bb.eb ], [ %.sroa.6.0.i.i.i10.i331, %bb.ea ]
  %i.bfh = load i64, ptr %i.bdu, align 8, !tbaa !394
end_hunk_8
begin_hunk_9_@_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEmbRKT_RNS_6system10error_codeE:bb.a
  %i.e = alloca [14 x i8], align 1                ; 12 uses
  %i.f = alloca i64, align 8                      ; 22 uses
  %15 = alloca %"class.boost::beast::buffers_suffix.200", align 8 ; 19 uses
  %16 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 13 uses
  %17 = alloca %"struct.std::array", align 1      ; 4 uses
  %18 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %19 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %20 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 9 uses
  %21 = alloca %"class.boost::beast::buffers_cat_view.201", align 8 ; 14 uses
  %22 = alloca %"class.boost::beast::buffers_suffix.200", align 8 ; 22 uses
  %23 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %24 = alloca %"class.boost::beast::buffers_cat_view.205", align 8 ; 24 uses
  %25 = alloca %"class.boost::beast::buffers_prefix_view.209", align 8 ; 32 uses
  %26 = alloca %"struct.std::array", align 1      ; 6 uses
  %27 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 9 uses
  %28 = alloca %"class.boost::beast::buffers_suffix.200", align 8 ; 31 uses
  %29 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %30 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %31 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %32 = alloca %"class.boost::beast::buffers_suffix.200", align 8 ; 23 uses
  %33 = alloca %"struct.std::array", align 1      ; 6 uses
  %34 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 8 uses
  %35 = alloca %"class.boost::beast::flat_static_buffer.96", align 8 ; 10 uses
  %36 = alloca %"class.boost::beast::buffers_cat_view", align 8 ; 10 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !303    ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  store i64 0, ptr %i.f, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = tail call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.h, label %bb.dn, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2245 ; 7 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !422, !range !119, !noundef !120
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread756, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !392, !noalias !2603
  %.fr.i.i = freeze ptr %i.m                      ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !395, !noalias !2603 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !395, !noalias !2604 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.fr.i.i, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.fr.i.i, i64 24 ; 2 uses
  %i.t = icmp ne ptr %.fr.i.i, %2                 ; 2 uses
  %i.u = icmp ne ptr %i.o, %i.q
  %.not3.i.us18.i.i.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %.not3.i.us18.i.i.i, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %.fr.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.fr.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !395
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !375
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !395
  %i.ac = xor i1 %i.t, true
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = load i64, ptr %i.v, align 8
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i
  %.sroa.5.0.us20.i.i.i = phi ptr [ %.sroa.5.0.us.i.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i ], [ %i.o, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i ] ; 5 uses
  %.0.us19.i.i.i = phi i64 [ %i.an, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i ], [ 0, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i ]
  %i.ae = icmp eq ptr %.sroa.5.0.us20.i.i.i, %i.o
  %i.af = icmp eq ptr %.sroa.5.0.us20.i.i.i, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.5.0.us20.i.i.i, i64 16
  %.sroa.6.0.in.i.i.us.i.i.i = select i1 %i.af, ptr %i.r, ptr %i.ag
  %.sroa.6.0.i.i.us.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.us.i.i.i, align 8, !tbaa !84 ; 4 uses
  %i.ah = icmp eq ptr %.sroa.5.0.us20.i.i.i, %i.ab ; 2 uses
  br i1 %i.ae, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i
  br i1 %i.ah, label %bb.e, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !396
  %i.aj = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i, i64 %i.ai)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i

bb.f:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i
  br i1 %i.ah, label %bb.g, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !396
  %i.al = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i, i64 %i.ak)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.6.1.i.i.us.i.i.i = phi i64 [ %i.al, %bb.g ], [ %.sroa.6.0.i.i.us.i.i.i, %bb.f ]
  %i.am = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.1.i.i.us.i.i.i, i64 %i.ad)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i: ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i, %bb.e, %bb.d
  %.pn13.i.us.i.i.i = phi i64 [ %i.am, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i ], [ %i.aj, %bb.e ], [ %.sroa.6.0.i.i.us.i.i.i, %bb.d ]
  %i.an = add i64 %.pn13.i.us.i.i.i, %.0.us19.i.i.i ; 2 uses
  %.sroa.5.0.us.i.i.i = load ptr, ptr %.sroa.5.0.us20.i.i.i, align 8, !tbaa !397 ; 2 uses
  %.not33.i.i.i = icmp eq ptr %.sroa.5.0.us.i.i.i, %i.q
  br i1 %.not33.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i, !llvm.loop !14

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i, %bb.c
  %.0.lcssa.us.i.i.i = phi i64 [ 0, %bb.c ], [ %i.an, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 2247
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !413, !range !119, !noundef !120
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 2246
  store i8 %i.ap, ptr %i.aq, align 2, !tbaa !423
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !420
  %.not2.i = icmp eq ptr %i.as, null
  br i1 %.not2.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 2249
  %i.au = load i8, ptr %i.at, align 1, !tbaa !414, !range !119, !noundef !120
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp uge i64 %.0.lcssa.us.i.i.i, %i.ax
  %narrow.i = select i1 %i.av, i1 %i.ay, i1 false
  %.ph.i = zext i1 %narrow.i to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  store i8 %.ph.i, ptr %i.az, align 8, !tbaa !424
  br label %bb.i

bb.h:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  store i8 0, ptr %i.ba, align 8, !tbaa !424
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 2232
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !425
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h, %.thread.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !236
  %.not3.i = icmp eq ptr %i.bf, null
  br i1 %.not3.i, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !415
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !426
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !415 ; 2 uses
  %.not.i = icmp eq i64 %i.bh, %i.bj
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.bk = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.bj, %bb.j ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !426
  %i.bm = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #39, !noalias !2605
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !236 ; 2 uses
  store ptr %i.bm, ptr %i.be, align 8, !tbaa !236
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i, label %bb.m, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !415
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !426
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !236 ; 2 uses
  store ptr null, ptr %i.br, align 8, !tbaa !236
  %.not.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i: ; preds = %bb.l, %bb.k
  %.sink.i = phi ptr [ %i.bn, %bb.k ], [ %i.bs, %bb.l ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sink.i) #38
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i, %bb.l, %bb.k, %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !424, !range !119, !noundef !120
  %i.bv = shl nuw nsw i8 %i.bu, 2                 ; 2 uses
  %.pre = load i8, ptr %i.i, align 1, !tbaa !422, !range !119
  %i.bw = trunc nuw i8 %.pre to i1
  br i1 %i.bw, label %.thread756, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 2250
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !351
  br label %.thread756

.thread756:                                       ; preds = %bb.b, %bb.m, %bb.n
  %.sroa.29.0758 = phi i8 [ %i.bv, %bb.n ], [ %i.bv, %bb.m ], [ 0, %bb.b ] ; 5 uses
  %i.bz = phi i8 [ %i.by, %bb.n ], [ 0, %bb.m ], [ 0, %bb.b ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 2232 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !425
  %.not.not.not = icmp eq i32 %i.cb, 0            ; 2 uses
  %i.cc = select i1 %.not.not.not, i8 2, i8 0
  %i.cd = or disjoint i8 %i.cc, %.sroa.29.0758    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !392, !noalias !2606
  %.fr.i.i145 = freeze ptr %i.cf                  ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !395, !noalias !2606 ; 9 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !395, !noalias !2607 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.fr.i.i145, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %.fr.i.i145, i64 24 ; 2 uses
  %i.cm = icmp ne ptr %.fr.i.i145, %2             ; 8 uses
  %i.cn = icmp ne ptr %i.ch, %i.cj
  %.not3.i.us18.i.i.i146 = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %.not3.i.us18.i.i.i146, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i148, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit160

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i148: ; preds = %.thread756
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %.fr.i.i145, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.fr.i.i145, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !395
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !375
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !395
  %i.cv = xor i1 %i.cm, true
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = load i64, ptr %i.co, align 8
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i149

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i149: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i154, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i148
  %.sroa.5.0.us20.i.i.i150 = phi ptr [ %.sroa.5.0.us.i.i.i156, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i154 ], [ %i.ch, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i148 ] ; 5 uses
  %.0.us19.i.i.i151 = phi i64 [ %i.dg, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i154 ], [ 0, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i148 ]
  %i.cx = icmp eq ptr %.sroa.5.0.us20.i.i.i150, %i.ch
  %i.cy = icmp eq ptr %.sroa.5.0.us20.i.i.i150, %i.ct
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.5.0.us20.i.i.i150, i64 16
  %.sroa.6.0.in.i.i.us.i.i.i152 = select i1 %i.cy, ptr %i.ck, ptr %i.cz
  %.sroa.6.0.i.i.us.i.i.i153 = load i64, ptr %.sroa.6.0.in.i.i.us.i.i.i152, align 8, !tbaa !84 ; 4 uses
  %i.da = icmp eq ptr %.sroa.5.0.us20.i.i.i150, %i.cu ; 2 uses
  br i1 %i.cx, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i149
  br i1 %i.da, label %bb.p, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i154

bb.p:                                             ; preds = %bb.o
  %i.db = load i64, ptr %i.cl, align 8, !tbaa !396
  %i.dc = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i153, i64 %i.db)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i154

bb.q:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i149
  br i1 %i.da, label %bb.r, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i158

bb.r:                                             ; preds = %bb.q
  %i.dd = load i64, ptr %i.cl, align 8, !tbaa !396
  %i.de = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i153, i64 %i.dd)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i158

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i158: ; preds = %bb.r, %bb.q
  %.sroa.6.1.i.i.us.i.i.i159 = phi i64 [ %i.de, %bb.r ], [ %.sroa.6.0.i.i.us.i.i.i153, %bb.q ]
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.1.i.i.us.i.i.i159, i64 %i.cw)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i154

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i154: ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i158, %bb.p, %bb.o
  %.pn13.i.us.i.i.i155 = phi i64 [ %i.df, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.us.i.i.i158 ], [ %i.dc, %bb.p ], [ %.sroa.6.0.i.i.us.i.i.i153, %bb.o ]
  %i.dg = add i64 %.pn13.i.us.i.i.i155, %.0.us19.i.i.i151 ; 2 uses
  %.sroa.5.0.us.i.i.i156 = load ptr, ptr %.sroa.5.0.us20.i.i.i150, align 8, !tbaa !397 ; 2 uses
  %.not33.i.i.i157 = icmp eq ptr %.sroa.5.0.us.i.i.i156, %i.cj
  br i1 %.not33.i.i.i157, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit160, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i149, !llvm.loop !14

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit160: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i154, %.thread756
  %.0.lcssa.us.i.i.i147 = phi i64 [ 0, %.thread756 ], [ %i.dg, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.us.i.i.i154 ] ; 15 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !424, !range !119, !noundef !120
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.s, label %bb.am

bb.s:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvEEmRKT_.exit160
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !395, !noalias !2608 ; 8 uses
  %i.dm = icmp ne ptr %i.dl, %i.ch
  %.not3.i2.i.i.i = select i1 %i.cm, i1 true, i1 %i.dm
  br i1 %.not3.i2.i.i.i, label %.lr.ph.i.i.i, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s
  %i.dn = xor i1 %i.cm, true
  tail call void @llvm.assume(i1 %i.dn)
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i, %.lr.ph.i.i.i
  %i.do = phi ptr [ %i.dp, %.lr.ph.split.i.i.i ], [ %i.dl, %.lr.ph.i.i.i ]
  %.03.i.i.i = phi i64 [ %i.dq, %.lr.ph.split.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !374 ; 2 uses
  %i.dq = add nuw nsw i64 %.03.i.i.i, 1           ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dp, %i.ch
  br i1 %.not.i.i.i, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !15

_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.split.i.i.i, %bb.s
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.s ], [ %i.dq, %.lr.ph.split.i.i.i ] ; 10 uses
  %i.dr = load ptr, ptr %2, align 8, !tbaa !389
  store ptr %i.dr, ptr %15, align 8, !tbaa !389
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.dl, ptr %i.ds, align 8, !tbaa !376
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.cj, ptr %i.dt, align 8, !tbaa !376
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false)
  %i.dw = icmp sgt i64 %.0.lcssa.i.i.i, 0
  br i1 %i.dw, label %.preheader.i.i.i.i.preheader, label %.preheader7.i.i.i.i

.preheader.i.i.i.i.preheader:                     ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i
  %xtraiter980 = and i64 %.0.lcssa.i.i.i, 7       ; 2 uses
  %lcmp.mod981.not = icmp eq i64 %xtraiter980, 0
  br i1 %lcmp.mod981.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol

.preheader.i.i.i.i.prol:                          ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i.prol
  %.013.i.i.i.i.prol = phi i64 [ %i.dy, %.preheader.i.i.i.i.prol ], [ %.0.lcssa.i.i.i, %.preheader.i.i.i.i.preheader ]
  %i.dx = phi ptr [ %i.dz, %.preheader.i.i.i.i.prol ], [ %i.dl, %.preheader.i.i.i.i.preheader ]
  %prol.iter982 = phi i64 [ %prol.iter982.next, %.preheader.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.preheader ]
  %i.dy = add nsw i64 %.013.i.i.i.i.prol, -1      ; 2 uses
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !374, !noalias !2609 ; 3 uses
  %prol.iter982.next = add i64 %prol.iter982, 1   ; 2 uses
  %prol.iter982.cmp.not = icmp eq i64 %prol.iter982.next, %xtraiter980
  br i1 %prol.iter982.cmp.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol, !llvm.loop !2419

.preheader.i.i.i.i.prol.loopexit:                 ; preds = %.preheader.i.i.i.i.prol, %.preheader.i.i.i.i.preheader
  %.lcssa859.unr = phi ptr [ poison, %.preheader.i.i.i.i.preheader ], [ %i.dz, %.preheader.i.i.i.i.prol ]
  %.013.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i.i, %.preheader.i.i.i.i.preheader ], [ %i.dy, %.preheader.i.i.i.i.prol ]
  %.unr983 = phi ptr [ %i.dl, %.preheader.i.i.i.i.preheader ], [ %i.dz, %.preheader.i.i.i.i.prol ]
  %i.ea = icmp ult i64 %.0.lcssa.i.i.i, 8
  br i1 %i.ea, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit, label %.preheader.i.i.i.i

.preheader7.i.i.i.i:                              ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i
  %.not9.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.preheader7.i.i.i.i
  %i.eb = sub i64 0, %.0.lcssa.i.i.i
  %xtraiter976 = and i64 %i.eb, 7                 ; 2 uses
  %lcmp.mod977.not = icmp eq i64 %xtraiter976, 0
  br i1 %lcmp.mod977.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.ec = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.prol ], [ %i.dl, %.lr.ph.i.i.i.i.preheader ]
  %.110.i.i.i.i.prol = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.prol ], [ %.0.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter978 = phi i64 [ %prol.iter978.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ed = add nsw i64 %.110.i.i.i.i.prol, 1       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !375, !noalias !2609 ; 3 uses
  %prol.iter978.next = add i64 %prol.iter978, 1   ; 2 uses
  %prol.iter978.cmp.not = icmp eq i64 %prol.iter978.next, %xtraiter976
  br i1 %prol.iter978.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !2420

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa861.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.ef, %.lr.ph.i.i.i.i.prol ]
  %.unr979 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.preheader ], [ %i.ef, %.lr.ph.i.i.i.i.prol ]
  %.110.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.i.i.prol ]
  %i.eg = icmp ugt i64 %.0.lcssa.i.i.i, -8
  br i1 %i.eg, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit, label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i
  %.013.i.i.i.i = phi i64 [ %i.ep, %.preheader.i.i.i.i ], [ %.013.i.i.i.i.unr, %.preheader.i.i.i.i.prol.loopexit ]
  %i.eh = phi ptr [ %i.eq, %.preheader.i.i.i.i ], [ %.unr983, %.preheader.i.i.i.i.prol.loopexit ]
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !374, !noalias !2609
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !374, !noalias !2609
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !374, !noalias !2609
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !374, !noalias !2609
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !374, !noalias !2609
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !374, !noalias !2609
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !374, !noalias !2609
  %i.ep = add nsw i64 %.013.i.i.i.i, -8           ; 2 uses
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !374, !noalias !2609 ; 2 uses
  %.not6.i.i.i.i.7 = icmp eq i64 %i.ep, 0
  br i1 %.not6.i.i.i.i.7, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit, label %.preheader.i.i.i.i, !llvm.loop !16

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.er = phi ptr [ %i.fi, %.lr.ph.i.i.i.i ], [ %.unr979, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.110.i.i.i.i = phi i64 [ %i.fg, %.lr.ph.i.i.i.i ], [ %.110.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !375, !noalias !2609
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !375, !noalias !2609
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !375, !noalias !2609
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !375, !noalias !2609
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !375, !noalias !2609
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !375, !noalias !2609
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !375, !noalias !2609
  %i.fg = add nsw i64 %.110.i.i.i.i, 8            ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !375, !noalias !2609 ; 2 uses
  %.not.i.i.i.i162.7 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i162.7, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i, %.preheader7.i.i.i.i
  %.sroa.2.0.i.i.i = phi ptr [ %i.eq, %.preheader.i.i.i.i ], [ %i.dl, %.preheader7.i.i.i.i ], [ %.lcssa859.unr, %.preheader.i.i.i.i.prol.loopexit ], [ %.lcssa861.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.fi, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %15, i64 40
end_hunk_9
begin_hunk_10_@_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEmbRKT_RNS_6system10error_codeE:bb.a
.thread552:                                       ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_14buffers_suffixINS2_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  br label %bb.dn

bb.aw:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_14buffers_suffixINS2_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISL_EE5valueEiE4typeE.exit
  %i.mu = add i64 %i.mt, %.0.lcssa.us.i.i.i147
  store i64 %i.mu, ptr %i.f, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  br label %bb.dm

bb.ax:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #35
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !395, !noalias !2620 ; 8 uses
  %i.mx = icmp ne ptr %i.mw, %i.ch
  %.not3.i2.i.i.i185 = select i1 %i.cm, i1 true, i1 %i.mx
  br i1 %.not3.i2.i.i.i185, label %.lr.ph.i.i.i197, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i186

.lr.ph.i.i.i197:                                  ; preds = %bb.ax
  %i.my = xor i1 %i.cm, true
  tail call void @llvm.assume(i1 %i.my)
  br label %.lr.ph.split.i.i.i198

.lr.ph.split.i.i.i198:                            ; preds = %.lr.ph.split.i.i.i198, %.lr.ph.i.i.i197
  %i.mz = phi ptr [ %i.na, %.lr.ph.split.i.i.i198 ], [ %i.mw, %.lr.ph.i.i.i197 ]
  %.03.i.i.i199 = phi i64 [ %i.nb, %.lr.ph.split.i.i.i198 ], [ 0, %.lr.ph.i.i.i197 ]
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !374 ; 2 uses
  %i.nb = add nuw nsw i64 %.03.i.i.i199, 1        ; 2 uses
  %.not.i.i.i200 = icmp eq ptr %i.na, %i.ch
  br i1 %.not.i.i.i200, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i186, label %.lr.ph.split.i.i.i198, !llvm.loop !15

_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i186: ; preds = %.lr.ph.split.i.i.i198, %bb.ax
  %.0.lcssa.i.i.i187 = phi i64 [ 0, %bb.ax ], [ %i.nb, %.lr.ph.split.i.i.i198 ] ; 10 uses
  %i.nc = load ptr, ptr %2, align 8, !tbaa !389
  store ptr %i.nc, ptr %22, align 8, !tbaa !389
  %i.nd = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr %i.mw, ptr %i.nd, align 8, !tbaa !376
  %i.ne = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.cj, ptr %i.ne, align 8, !tbaa !376
  %i.nf = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, ptr noundef nonnull align 8 dereferenceable(16) %i.ng, i64 16, i1 false)
  %i.nh = icmp sgt i64 %.0.lcssa.i.i.i187, 0
  br i1 %i.nh, label %.preheader.i.i.i.i194.preheader, label %.preheader7.i.i.i.i188

.preheader.i.i.i.i194.preheader:                  ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i186
  %xtraiter916 = and i64 %.0.lcssa.i.i.i187, 7    ; 2 uses
  %lcmp.mod917.not = icmp eq i64 %xtraiter916, 0
  br i1 %lcmp.mod917.not, label %.preheader.i.i.i.i194.prol.loopexit, label %.preheader.i.i.i.i194.prol

.preheader.i.i.i.i194.prol:                       ; preds = %.preheader.i.i.i.i194.preheader, %.preheader.i.i.i.i194.prol
  %.013.i.i.i.i195.prol = phi i64 [ %i.nj, %.preheader.i.i.i.i194.prol ], [ %.0.lcssa.i.i.i187, %.preheader.i.i.i.i194.preheader ]
  %i.ni = phi ptr [ %i.nk, %.preheader.i.i.i.i194.prol ], [ %i.mw, %.preheader.i.i.i.i194.preheader ]
  %prol.iter918 = phi i64 [ %prol.iter918.next, %.preheader.i.i.i.i194.prol ], [ 0, %.preheader.i.i.i.i194.preheader ]
  %i.nj = add nsw i64 %.013.i.i.i.i195.prol, -1   ; 2 uses
  %i.nk = load ptr, ptr %i.ni, align 8, !tbaa !374, !noalias !2621 ; 3 uses
  %prol.iter918.next = add i64 %prol.iter918, 1   ; 2 uses
  %prol.iter918.cmp.not = icmp eq i64 %prol.iter918.next, %xtraiter916
  br i1 %prol.iter918.cmp.not, label %.preheader.i.i.i.i194.prol.loopexit, label %.preheader.i.i.i.i194.prol, !llvm.loop !2449

.preheader.i.i.i.i194.prol.loopexit:              ; preds = %.preheader.i.i.i.i194.prol, %.preheader.i.i.i.i194.preheader
  %.lcssa898.unr = phi ptr [ poison, %.preheader.i.i.i.i194.preheader ], [ %i.nk, %.preheader.i.i.i.i194.prol ]
  %.013.i.i.i.i195.unr = phi i64 [ %.0.lcssa.i.i.i187, %.preheader.i.i.i.i194.preheader ], [ %i.nj, %.preheader.i.i.i.i194.prol ]
  %.unr919 = phi ptr [ %i.mw, %.preheader.i.i.i.i194.preheader ], [ %i.nk, %.preheader.i.i.i.i194.prol ]
  %i.nl = icmp ult i64 %.0.lcssa.i.i.i187, 8
  br i1 %i.nl, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit201, label %.preheader.i.i.i.i194

.preheader7.i.i.i.i188:                           ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i186
  %.not9.i.i.i.i189 = icmp eq i64 %.0.lcssa.i.i.i187, 0
  br i1 %.not9.i.i.i.i189, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit201, label %.lr.ph.i.i.i.i190.preheader

.lr.ph.i.i.i.i190.preheader:                      ; preds = %.preheader7.i.i.i.i188
  %i.nm = sub i64 0, %.0.lcssa.i.i.i187
  %xtraiter912 = and i64 %i.nm, 7                 ; 2 uses
  %lcmp.mod913.not = icmp eq i64 %xtraiter912, 0
  br i1 %lcmp.mod913.not, label %.lr.ph.i.i.i.i190.prol.loopexit, label %.lr.ph.i.i.i.i190.prol

.lr.ph.i.i.i.i190.prol:                           ; preds = %.lr.ph.i.i.i.i190.preheader, %.lr.ph.i.i.i.i190.prol
  %i.nn = phi ptr [ %i.nq, %.lr.ph.i.i.i.i190.prol ], [ %i.mw, %.lr.ph.i.i.i.i190.preheader ]
  %.110.i.i.i.i191.prol = phi i64 [ %i.no, %.lr.ph.i.i.i.i190.prol ], [ %.0.lcssa.i.i.i187, %.lr.ph.i.i.i.i190.preheader ]
  %prol.iter914 = phi i64 [ %prol.iter914.next, %.lr.ph.i.i.i.i190.prol ], [ 0, %.lr.ph.i.i.i.i190.preheader ]
  %i.no = add nsw i64 %.110.i.i.i.i191.prol, 1    ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !375, !noalias !2621 ; 3 uses
  %prol.iter914.next = add i64 %prol.iter914, 1   ; 2 uses
  %prol.iter914.cmp.not = icmp eq i64 %prol.iter914.next, %xtraiter912
  br i1 %prol.iter914.cmp.not, label %.lr.ph.i.i.i.i190.prol.loopexit, label %.lr.ph.i.i.i.i190.prol, !llvm.loop !2450

.lr.ph.i.i.i.i190.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i190.prol, %.lr.ph.i.i.i.i190.preheader
  %.lcssa900.unr = phi ptr [ poison, %.lr.ph.i.i.i.i190.preheader ], [ %i.nq, %.lr.ph.i.i.i.i190.prol ]
  %.unr915 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i190.preheader ], [ %i.nq, %.lr.ph.i.i.i.i190.prol ]
  %.110.i.i.i.i191.unr = phi i64 [ %.0.lcssa.i.i.i187, %.lr.ph.i.i.i.i190.preheader ], [ %i.no, %.lr.ph.i.i.i.i190.prol ]
  %i.nr = icmp ugt i64 %.0.lcssa.i.i.i187, -8
  br i1 %i.nr, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit201, label %.lr.ph.i.i.i.i190

.preheader.i.i.i.i194:                            ; preds = %.preheader.i.i.i.i194.prol.loopexit, %.preheader.i.i.i.i194
  %.013.i.i.i.i195 = phi i64 [ %i.oa, %.preheader.i.i.i.i194 ], [ %.013.i.i.i.i195.unr, %.preheader.i.i.i.i194.prol.loopexit ]
  %i.ns = phi ptr [ %i.ob, %.preheader.i.i.i.i194 ], [ %.unr919, %.preheader.i.i.i.i194.prol.loopexit ]
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !374, !noalias !2621
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !374, !noalias !2621
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !374, !noalias !2621
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !374, !noalias !2621
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !374, !noalias !2621
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !374, !noalias !2621
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !374, !noalias !2621
  %i.oa = add nsw i64 %.013.i.i.i.i195, -8        ; 2 uses
  %i.ob = load ptr, ptr %i.nz, align 8, !tbaa !374, !noalias !2621 ; 2 uses
  %.not6.i.i.i.i196.7 = icmp eq i64 %i.oa, 0
  br i1 %.not6.i.i.i.i196.7, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit201, label %.preheader.i.i.i.i194, !llvm.loop !16

.lr.ph.i.i.i.i190:                                ; preds = %.lr.ph.i.i.i.i190.prol.loopexit, %.lr.ph.i.i.i.i190
  %i.oc = phi ptr [ %i.ot, %.lr.ph.i.i.i.i190 ], [ %.unr915, %.lr.ph.i.i.i.i190.prol.loopexit ]
  %.110.i.i.i.i191 = phi i64 [ %i.or, %.lr.ph.i.i.i.i190 ], [ %.110.i.i.i.i191.unr, %.lr.ph.i.i.i.i190.prol.loopexit ]
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !375, !noalias !2621
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !375, !noalias !2621
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !375, !noalias !2621
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !375, !noalias !2621
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !375, !noalias !2621
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !375, !noalias !2621
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !375, !noalias !2621
  %i.or = add nsw i64 %.110.i.i.i.i191, 8         ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !375, !noalias !2621 ; 2 uses
  %.not.i.i.i.i192.7 = icmp eq i64 %i.or, 0
  br i1 %.not.i.i.i.i192.7, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit201, label %.lr.ph.i.i.i.i190, !llvm.loop !17

_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit201: ; preds = %.lr.ph.i.i.i.i190.prol.loopexit, %.lr.ph.i.i.i.i190, %.preheader.i.i.i.i194.prol.loopexit, %.preheader.i.i.i.i194, %.preheader7.i.i.i.i188
  %.sroa.2.0.i.i.i193 = phi ptr [ %i.ob, %.preheader.i.i.i.i194 ], [ %i.mw, %.preheader7.i.i.i.i188 ], [ %.lcssa898.unr, %.preheader.i.i.i.i194.prol.loopexit ], [ %.lcssa900.unr, %.lr.ph.i.i.i.i190.prol.loopexit ], [ %i.ot, %.lr.ph.i.i.i.i190 ] ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  store ptr %22, ptr %i.ou, align 8, !tbaa !392
  %i.ov = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  store ptr %.sroa.2.0.i.i.i193, ptr %i.ov, align 8, !tbaa !376
  %i.ow = getelementptr inbounds nuw i8, ptr %22, i64 56 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !394
  store i64 %i.oy, ptr %i.ow, align 8, !tbaa !394
  %i.oz = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 3 uses
  store ptr %22, ptr %i.oz, align 8, !tbaa !392, !alias.scope !2622
  %i.pa = getelementptr inbounds nuw i8, ptr %22, i64 72 ; 4 uses
  store ptr %.sroa.2.0.i.i.i193, ptr %i.pa, align 8, !tbaa !376, !alias.scope !2622
  %i.pb = getelementptr inbounds nuw i8, ptr %22, i64 80 ; 3 uses
  store ptr %22, ptr %i.pb, align 8, !tbaa !401, !alias.scope !2622
  %i.pc = getelementptr inbounds nuw i8, ptr %22, i64 88 ; 4 uses
  store i64 0, ptr %i.pc, align 8, !tbaa !680
  %i.pd = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.pe = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.pf = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.pg = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ph = xor i1 %1, true
  %i.pi = zext i1 %i.ph to i8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.pk = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %25, i64 56 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %25, i64 64 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %25, i64 72 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %25, i64 80
  %i.pu = getelementptr inbounds nuw i8, ptr %25, i64 88 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %25, i64 96 ; 5 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %25, i64 104 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %25, i64 112 ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %25, i64 120 ; 5 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %25, i64 128 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %25, i64 136 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.qc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.qd = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.4455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.qg = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.qh = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.qi = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.qj = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.qk = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.ql = getelementptr inbounds nuw i8, ptr %24, i64 80
  %i.qm = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.qn = getelementptr inbounds nuw i8, ptr %24, i64 96
  %i.qo = getelementptr inbounds nuw i8, ptr %24, i64 104
  %i.qp = getelementptr inbounds nuw i8, ptr %24, i64 112
  %i.qq = getelementptr inbounds nuw i8, ptr %24, i64 120
  %i.qr = getelementptr inbounds nuw i8, ptr %24, i64 128
  %i.qs = getelementptr inbounds nuw i8, ptr %24, i64 136
  %i.qt = getelementptr inbounds nuw i8, ptr %24, i64 144
  %i.qu = getelementptr inbounds nuw i8, ptr %24, i64 152
  %i.qv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.qx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.qy = shl nsw i8 %.sroa.29.0758, 4            ; 2 uses
  %i.qz = or disjoint i8 0, 127
  %i.ra = or disjoint i8 0, 126
  %i.rb = shl nuw nsw i8 %i.cd, 1
  %i.rc = and i8 %i.rb, 4
  %i.rd = zext nneg i8 %i.rc to i64
  %i.re = or i8 %i.bz, %i.qy
  %.1..1..1..1..sroa_idx993 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx996 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx994 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx997 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx995 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit, %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit201
  %.sroa.20.3 = phi i8 [ %i.re, %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit201 ], [ %i.qy, %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit ]
  %.0127 = phi i64 [ %.0.lcssa.us.i.i.i147, %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit201 ], [ %i.rg, %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit ] ; 2 uses
  %i.rf = load i64, ptr %i.pd, align 8, !tbaa !426
  %..i = call noundef i64 @llvm.umin.i64(i64 %.0127, i64 %i.rf) ; 10 uses
  %i.rg = sub nuw i64 %.0127, %..i                ; 2 uses
  %i.rh = icmp eq i64 %i.rg, 0                    ; 2 uses
  %i.ri = and i1 %1, %i.rh
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %23, ptr noundef nonnull %i.pe, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.rj = select i1 %i.ri, i8 -128, i8 0
  %spec.select37.i207 = or i8 %.sroa.20.3, %i.rj
  store i8 %spec.select37.i207, ptr %i.c, align 1, !tbaa !87
  %i.rk = icmp ult i64 %..i, 126
  br i1 %i.rk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.rl = trunc nuw nsw i64 %..i to i8
  %i.rm = or disjoint i8 0, %i.rl
  store i8 %i.rm, ptr %.1..1..1..1..sroa_idx995, align 1, !tbaa !87
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  %i.rn = icmp ult i64 %..i, 65536
  br i1 %i.rn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i8 %i.ra, ptr %.1..1..1..1..sroa_idx994, align 1, !tbaa !87
  %i.ro = trunc nuw i64 %..i to i16
  %i.rp = call noundef i16 @llvm.bswap.i16(i16 %i.ro)
  store i16 %i.rp, ptr %.2..2..2..2.gep.sroa_idx997, align 1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  store i8 %i.qz, ptr %.1..1..1..1..sroa_idx993, align 1, !tbaa !87
  %i.rq = call noundef i64 @llvm.bswap.i64(i64 %..i)
  store i64 %i.rq, ptr %.2..2..2..2.gep.sroa_idx996, align 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.az
  %.0.i210 = phi i64 [ 2, %bb.az ], [ 4, %bb.bb ], [ 10, %bb.bc ]
  %spec.select = add nuw nsw i64 %.0.i210, %i.rd
  %i.rr = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %23, i64 noundef %spec.select) ; 2 uses
  %i.rs = extractvalue { ptr, i64 } %i.rr, 1      ; 2 uses
  %i.rt = call i64 @llvm.umin.i64(i64 %i.rs, i64 14) ; 2 uses
  %.not.i.i.i.i213 = icmp eq i64 %i.rs, 0
  br i1 %.not.i.i.i.i213, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit215, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ru = extractvalue { ptr, i64 } %i.rr, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ru, ptr nonnull align 1 %i.c, i64 %i.rt, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit215

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit215: ; preds = %bb.bd, %bb.be
  %i.rv = load ptr, ptr %i.pf, align 8, !tbaa !432
  %i.rw = load ptr, ptr %i.pg, align 8, !tbaa !433 ; 2 uses
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = ptrtoint ptr %i.rw to i64
  %i.rz = sub i64 %i.rx, %i.ry
  %.sroa.speculated.i.i214 = call i64 @llvm.umin.i64(i64 %i.rz, i64 %i.rt)
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rw, i64 %.sroa.speculated.i.i214 ; 2 uses
  store ptr %i.sa, ptr %i.pg, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.pi, ptr %i.i, align 1, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #35
  %i.sb = load ptr, ptr %i.pk, align 8, !tbaa !434 ; 2 uses
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  %i.sf = load ptr, ptr %i.ou, align 8, !tbaa !392, !noalias !2624
  %.fr.i.i.i = freeze ptr %i.sf                   ; 2 uses
  %i.sg = load ptr, ptr %i.ov, align 8, !tbaa !395, !noalias !2624 ; 4 uses
  %i.sh = load ptr, ptr %i.oz, align 8, !tbaa !392
  %i.si = load ptr, ptr %i.pa, align 8, !tbaa !395 ; 2 uses
  %i.sj = load ptr, ptr %i.pb, align 8, !tbaa !401
  %i.sk = icmp eq ptr %22, %i.sj
  call void @llvm.assume(i1 %i.sk)
  %.fr.i = freeze ptr %i.sh
  %i.sl = icmp ne ptr %.fr.i.i.i, %.fr.i          ; 2 uses
  %i.sm = icmp ne ptr %i.sg, %i.si
  %.not3.i.us4.i.i = select i1 %i.sl, i1 true, i1 %i.sm
  br i1 %.not3.i.us4.i.i, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i, label %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit215
  %i.sn = xor i1 %i.sl, true
  call void @llvm.assume(i1 %i.sn)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i
  %i.so = phi ptr [ %i.sp, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i ], [ %i.sg, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i ]
  %.0.us5.i.i = phi i64 [ %i.sq, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i ], [ 0, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i ]
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !374 ; 2 uses
  %i.sq = add nuw nsw i64 %.0.us5.i.i, 1          ; 2 uses
  %.not.i.i414 = icmp eq ptr %i.sp, %i.si
  br i1 %.not.i.i414, label %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i, !llvm.loop !48

_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit215
  %.0.lcssa.us.i.i = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit215 ], [ %i.sq, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.us.i.i ] ; 10 uses
  %i.sr = load ptr, ptr %i.nd, align 8, !tbaa !395, !noalias !2625 ; 8 uses
  %i.ss = icmp ne ptr %22, %.fr.i.i.i             ; 2 uses
  %i.st = icmp ne ptr %i.sr, %i.sg
  %.not3.i2.i.i.i.i = select i1 %i.ss, i1 true, i1 %i.st
  br i1 %.not3.i2.i.i.i.i, label %.lr.ph.i.i.i.i412, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i

.lr.ph.i.i.i.i412:                                ; preds = %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i
  %i.su = xor i1 %i.ss, true
  call void @llvm.assume(i1 %i.su)
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i, %.lr.ph.i.i.i.i412
  %i.sv = phi ptr [ %i.sw, %.lr.ph.split.i.i.i.i ], [ %i.sr, %.lr.ph.i.i.i.i412 ]
  %.03.i.i.i.i = phi i64 [ %i.sx, %.lr.ph.split.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i412 ]
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !374 ; 2 uses
  %i.sx = add nuw nsw i64 %.03.i.i.i.i, 1         ; 2 uses
  %.not.i.i.i.i413 = icmp eq ptr %i.sw, %i.sg
  br i1 %.not.i.i.i.i413, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !15

_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i.i, %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %_ZSt10__distanceIN5boost5beast14buffers_suffixINS1_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i ], [ %i.sx, %.lr.ph.split.i.i.i.i ] ; 10 uses
  %i.sy = load ptr, ptr %22, align 8, !tbaa !389
  store ptr %i.sy, ptr %25, align 8, !tbaa !389
  store ptr %i.sr, ptr %i.pl, align 8, !tbaa !376
  %i.sz = load ptr, ptr %i.ne, align 8, !tbaa !395 ; 3 uses
  store ptr %i.sz, ptr %i.pm, align 8, !tbaa !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, ptr noundef nonnull align 8 dereferenceable(16) %i.nf, i64 16, i1 false)
  %i.ta = icmp sgt i64 %.0.lcssa.i.i.i.i, 0
  br i1 %i.ta, label %.preheader.i.i.i.i.i.preheader, label %.preheader7.i.i.i.i.i

.preheader.i.i.i.i.i.preheader:                   ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i
  %xtraiter924 = and i64 %.0.lcssa.i.i.i.i, 7     ; 2 uses
  %lcmp.mod925.not = icmp eq i64 %xtraiter924, 0
  br i1 %lcmp.mod925.not, label %.preheader.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.prol

.preheader.i.i.i.i.i.prol:                        ; preds = %.preheader.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi i64 [ %i.tc, %.preheader.i.i.i.i.i.prol ], [ %.0.lcssa.i.i.i.i, %.preheader.i.i.i.i.i.preheader ]
  %i.tb = phi ptr [ %i.td, %.preheader.i.i.i.i.i.prol ], [ %i.sr, %.preheader.i.i.i.i.i.preheader ]
  %prol.iter926 = phi i64 [ %prol.iter926.next, %.preheader.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.preheader ]
  %i.tc = add nsw i64 %.013.i.i.i.i.i.prol, -1    ; 2 uses
  %i.td = load ptr, ptr %i.tb, align 8, !tbaa !374, !noalias !2626 ; 3 uses
  %prol.iter926.next = add i64 %prol.iter926, 1   ; 2 uses
  %prol.iter926.cmp.not = icmp eq i64 %prol.iter926.next, %xtraiter924
  br i1 %prol.iter926.cmp.not, label %.preheader.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.prol, !llvm.loop !2467

.preheader.i.i.i.i.i.prol.loopexit:               ; preds = %.preheader.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.preheader
  %.lcssa882.unr = phi ptr [ poison, %.preheader.i.i.i.i.i.preheader ], [ %i.td, %.preheader.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i.i.i, %.preheader.i.i.i.i.i.preheader ], [ %i.tc, %.preheader.i.i.i.i.i.prol ]
  %.unr927 = phi ptr [ %i.sr, %.preheader.i.i.i.i.i.preheader ], [ %i.td, %.preheader.i.i.i.i.i.prol ]
  %i.te = icmp ult i64 %.0.lcssa.i.i.i.i, 8
  br i1 %i.te, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i, label %.preheader.i.i.i.i.i

.preheader7.i.i.i.i.i:                            ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i.i
  %.not9.i.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.preheader7.i.i.i.i.i
  %i.tf = sub i64 0, %.0.lcssa.i.i.i.i
  %xtraiter920 = and i64 %i.tf, 7                 ; 2 uses
  %lcmp.mod921.not = icmp eq i64 %xtraiter920, 0
  br i1 %lcmp.mod921.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.tg = phi ptr [ %i.tj, %.lr.ph.i.i.i.i.i.prol ], [ %i.sr, %.lr.ph.i.i.i.i.i.preheader ]
  %.110.i.i.i.i.i.prol = phi i64 [ %i.th, %.lr.ph.i.i.i.i.i.prol ], [ %.0.lcssa.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter922 = phi i64 [ %prol.iter922.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.th = add nsw i64 %.110.i.i.i.i.i.prol, 1     ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !375, !noalias !2626 ; 3 uses
  %prol.iter922.next = add i64 %prol.iter922, 1   ; 2 uses
  %prol.iter922.cmp.not = icmp eq i64 %prol.iter922.next, %xtraiter920
  br i1 %prol.iter922.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2468

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa881.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.tj, %.lr.ph.i.i.i.i.i.prol ]
  %.unr923 = phi ptr [ %i.sr, %.lr.ph.i.i.i.i.i.preheader ], [ %i.tj, %.lr.ph.i.i.i.i.i.prol ]
  %.110.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.th, %.lr.ph.i.i.i.i.i.prol ]
  %i.tk = icmp ugt i64 %.0.lcssa.i.i.i.i, -8
  br i1 %i.tk, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i, label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.tt, %.preheader.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.prol.loopexit ]
  %i.tl = phi ptr [ %i.tu, %.preheader.i.i.i.i.i ], [ %.unr927, %.preheader.i.i.i.i.i.prol.loopexit ]
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !374, !noalias !2626
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !374, !noalias !2626
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !374, !noalias !2626
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !374, !noalias !2626
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !374, !noalias !2626
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !374, !noalias !2626
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !374, !noalias !2626
  %i.tt = add nsw i64 %.013.i.i.i.i.i, -8         ; 2 uses
  %i.tu = load ptr, ptr %i.ts, align 8, !tbaa !374, !noalias !2626 ; 2 uses
  %.not6.i.i.i.i.i.7 = icmp eq i64 %i.tt, 0
  br i1 %.not6.i.i.i.i.i.7, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !16

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.tv = phi ptr [ %i.um, %.lr.ph.i.i.i.i.i ], [ %.unr923, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.110.i.i.i.i.i = phi i64 [ %i.uk, %.lr.ph.i.i.i.i.i ], [ %.110.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !375, !noalias !2626
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !375, !noalias !2626
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !375, !noalias !2626
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !375, !noalias !2626
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !375, !noalias !2626
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !375, !noalias !2626
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !375, !noalias !2626
  %i.uk = add nsw i64 %.110.i.i.i.i.i, 8          ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !375, !noalias !2626 ; 2 uses
  %.not.i.i.i.i.i409.7 = icmp eq i64 %i.uk, 0
  br i1 %.not.i.i.i.i.i409.7, label %_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZN5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEC2ERKS7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i, %.preheader7.i.i.i.i.i
end_hunk_10
begin_hunk_11_@_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE10write_someINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEmbRKT_RNS_6system10error_codeE:bb.a
  br i1 %or.cond.i.i.i.i, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i: ; preds = %bb.cr, %.lr.ph.i.i.i329
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anp, i64 %.sroa.7.020.i.i.i
  %i.anw = sub nuw i64 %i.anq, %.sroa.7.020.i.i.i
  %spec.select.i1.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.anw, i64 65536)
  %i.anx = load ptr, ptr %i.akk, align 8, !tbaa !95 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 24
  %i.anz = load i32, ptr %i.any, align 8, !tbaa !471
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anx, i64 28
  %i.aob = load i8, ptr %i.aoa, align 4, !tbaa !472
  %i.aoc = call noundef i64 @_ZN5boost4asio6detail10socket_ops10sync_send1EihPKvmiRNS_6system10error_codeE(i32 noundef %i.anz, i8 noundef zeroext %i.aob, ptr noundef %i.anv, i64 noundef %spec.select.i1.i.i.i.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.aod = add i64 %i.aoc, %.sroa.7.020.i.i.i     ; 2 uses
  %.not.i.i.i332 = icmp ult i64 %i.aod, %i.anq
  br i1 %.not.i.i.i332, label %.lr.ph.i.i.i329, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit: ; preds = %bb.cr, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit328
  %i.aoe = load i64, ptr %i.f, align 8, !tbaa !84
  %i.aof = add i64 %i.aoe, %..i296
  store i64 %i.aof, ptr %i.f, align 8, !tbaa !84
  %i.aog = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.aoh = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br i1 %i.aog, label %.thread567, label %bb.ci, !llvm.loop !2562

.thread567:                                       ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit295
  %.10.ph = phi i64 [ %i.ala, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit295 ], [ %i.aoh, %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br label %bb.dn

bb.cs:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br label %bb.dm

bb.ct:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #35
  %i.aoi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !395, !noalias !2650 ; 8 uses
  %i.aok = icmp ne ptr %i.aoj, %i.ch
  %.not3.i2.i.i.i334 = select i1 %i.cm, i1 true, i1 %i.aok
  br i1 %.not3.i2.i.i.i334, label %.lr.ph.i.i.i346, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i335

.lr.ph.i.i.i346:                                  ; preds = %bb.ct
  %i.aol = xor i1 %i.cm, true
  tail call void @llvm.assume(i1 %i.aol)
  br label %.lr.ph.split.i.i.i347

.lr.ph.split.i.i.i347:                            ; preds = %.lr.ph.split.i.i.i347, %.lr.ph.i.i.i346
  %i.aom = phi ptr [ %i.aon, %.lr.ph.split.i.i.i347 ], [ %i.aoj, %.lr.ph.i.i.i346 ]
  %.03.i.i.i348 = phi i64 [ %i.aoo, %.lr.ph.split.i.i.i347 ], [ 0, %.lr.ph.i.i.i346 ]
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !374 ; 2 uses
  %i.aoo = add nuw nsw i64 %.03.i.i.i348, 1       ; 2 uses
  %.not.i.i.i349 = icmp eq ptr %i.aon, %i.ch
  br i1 %.not.i.i.i349, label %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i335, label %.lr.ph.split.i.i.i347, !llvm.loop !15

_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i335: ; preds = %.lr.ph.split.i.i.i347, %bb.ct
  %.0.lcssa.i.i.i336 = phi i64 [ 0, %bb.ct ], [ %i.aoo, %.lr.ph.split.i.i.i347 ] ; 10 uses
  %i.aop = load ptr, ptr %2, align 8, !tbaa !389
  store ptr %i.aop, ptr %32, align 8, !tbaa !389
  %i.aoq = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %i.aoj, ptr %i.aoq, align 8, !tbaa !376
  %i.aor = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  store ptr %i.cj, ptr %i.aor, align 8, !tbaa !376
  %i.aos = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.aot = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aos, ptr noundef nonnull align 8 dereferenceable(16) %i.aot, i64 16, i1 false)
  %i.aou = icmp sgt i64 %.0.lcssa.i.i.i336, 0
  br i1 %i.aou, label %.preheader.i.i.i.i343.preheader, label %.preheader7.i.i.i.i337

.preheader.i.i.i.i343.preheader:                  ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i335
  %xtraiter972 = and i64 %.0.lcssa.i.i.i336, 7    ; 2 uses
  %lcmp.mod973.not = icmp eq i64 %xtraiter972, 0
  br i1 %lcmp.mod973.not, label %.preheader.i.i.i.i343.prol.loopexit, label %.preheader.i.i.i.i343.prol

.preheader.i.i.i.i343.prol:                       ; preds = %.preheader.i.i.i.i343.preheader, %.preheader.i.i.i.i343.prol
  %.013.i.i.i.i344.prol = phi i64 [ %i.aow, %.preheader.i.i.i.i343.prol ], [ %.0.lcssa.i.i.i336, %.preheader.i.i.i.i343.preheader ]
  %i.aov = phi ptr [ %i.aox, %.preheader.i.i.i.i343.prol ], [ %i.aoj, %.preheader.i.i.i.i343.preheader ]
  %prol.iter974 = phi i64 [ %prol.iter974.next, %.preheader.i.i.i.i343.prol ], [ 0, %.preheader.i.i.i.i343.preheader ]
  %i.aow = add nsw i64 %.013.i.i.i.i344.prol, -1  ; 2 uses
  %i.aox = load ptr, ptr %i.aov, align 8, !tbaa !374, !noalias !2651 ; 3 uses
  %prol.iter974.next = add i64 %prol.iter974, 1   ; 2 uses
  %prol.iter974.cmp.not = icmp eq i64 %prol.iter974.next, %xtraiter972
  br i1 %prol.iter974.cmp.not, label %.preheader.i.i.i.i343.prol.loopexit, label %.preheader.i.i.i.i343.prol, !llvm.loop !2569

.preheader.i.i.i.i343.prol.loopexit:              ; preds = %.preheader.i.i.i.i343.prol, %.preheader.i.i.i.i343.preheader
  %.lcssa864.unr = phi ptr [ poison, %.preheader.i.i.i.i343.preheader ], [ %i.aox, %.preheader.i.i.i.i343.prol ]
  %.013.i.i.i.i344.unr = phi i64 [ %.0.lcssa.i.i.i336, %.preheader.i.i.i.i343.preheader ], [ %i.aow, %.preheader.i.i.i.i343.prol ]
  %.unr975 = phi ptr [ %i.aoj, %.preheader.i.i.i.i343.preheader ], [ %i.aox, %.preheader.i.i.i.i343.prol ]
  %i.aoy = icmp ult i64 %.0.lcssa.i.i.i336, 8
  br i1 %i.aoy, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit350, label %.preheader.i.i.i.i343

.preheader7.i.i.i.i337:                           ; preds = %_ZSt10__distanceIN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeES9_S9_St18input_iterator_tag.exit.i.i335
  %.not9.i.i.i.i338 = icmp eq i64 %.0.lcssa.i.i.i336, 0
  br i1 %.not9.i.i.i.i338, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit350, label %.lr.ph.i.i.i.i339.preheader

.lr.ph.i.i.i.i339.preheader:                      ; preds = %.preheader7.i.i.i.i337
  %i.aoz = sub i64 0, %.0.lcssa.i.i.i336
  %xtraiter968 = and i64 %i.aoz, 7                ; 2 uses
  %lcmp.mod969.not = icmp eq i64 %xtraiter968, 0
  br i1 %lcmp.mod969.not, label %.lr.ph.i.i.i.i339.prol.loopexit, label %.lr.ph.i.i.i.i339.prol

.lr.ph.i.i.i.i339.prol:                           ; preds = %.lr.ph.i.i.i.i339.preheader, %.lr.ph.i.i.i.i339.prol
  %i.apa = phi ptr [ %i.apd, %.lr.ph.i.i.i.i339.prol ], [ %i.aoj, %.lr.ph.i.i.i.i339.preheader ]
  %.110.i.i.i.i340.prol = phi i64 [ %i.apb, %.lr.ph.i.i.i.i339.prol ], [ %.0.lcssa.i.i.i336, %.lr.ph.i.i.i.i339.preheader ]
  %prol.iter970 = phi i64 [ %prol.iter970.next, %.lr.ph.i.i.i.i339.prol ], [ 0, %.lr.ph.i.i.i.i339.preheader ]
  %i.apb = add nsw i64 %.110.i.i.i.i340.prol, 1   ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apa, i64 8
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !375, !noalias !2651 ; 3 uses
  %prol.iter970.next = add i64 %prol.iter970, 1   ; 2 uses
  %prol.iter970.cmp.not = icmp eq i64 %prol.iter970.next, %xtraiter968
  br i1 %prol.iter970.cmp.not, label %.lr.ph.i.i.i.i339.prol.loopexit, label %.lr.ph.i.i.i.i339.prol, !llvm.loop !2570

.lr.ph.i.i.i.i339.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i339.prol, %.lr.ph.i.i.i.i339.preheader
  %.lcssa866.unr = phi ptr [ poison, %.lr.ph.i.i.i.i339.preheader ], [ %i.apd, %.lr.ph.i.i.i.i339.prol ]
  %.unr971 = phi ptr [ %i.aoj, %.lr.ph.i.i.i.i339.preheader ], [ %i.apd, %.lr.ph.i.i.i.i339.prol ]
  %.110.i.i.i.i340.unr = phi i64 [ %.0.lcssa.i.i.i336, %.lr.ph.i.i.i.i339.preheader ], [ %i.apb, %.lr.ph.i.i.i.i339.prol ]
  %i.ape = icmp ugt i64 %.0.lcssa.i.i.i336, -8
  br i1 %i.ape, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit350, label %.lr.ph.i.i.i.i339

.preheader.i.i.i.i343:                            ; preds = %.preheader.i.i.i.i343.prol.loopexit, %.preheader.i.i.i.i343
  %.013.i.i.i.i344 = phi i64 [ %i.apn, %.preheader.i.i.i.i343 ], [ %.013.i.i.i.i344.unr, %.preheader.i.i.i.i343.prol.loopexit ]
  %i.apf = phi ptr [ %i.apo, %.preheader.i.i.i.i343 ], [ %.unr975, %.preheader.i.i.i.i343.prol.loopexit ]
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !374, !noalias !2651
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !374, !noalias !2651
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !374, !noalias !2651
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !374, !noalias !2651
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !374, !noalias !2651
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !374, !noalias !2651
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !374, !noalias !2651
  %i.apn = add nsw i64 %.013.i.i.i.i344, -8       ; 2 uses
  %i.apo = load ptr, ptr %i.apm, align 8, !tbaa !374, !noalias !2651 ; 2 uses
  %.not6.i.i.i.i345.7 = icmp eq i64 %i.apn, 0
  br i1 %.not6.i.i.i.i345.7, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit350, label %.preheader.i.i.i.i343, !llvm.loop !16

.lr.ph.i.i.i.i339:                                ; preds = %.lr.ph.i.i.i.i339.prol.loopexit, %.lr.ph.i.i.i.i339
  %i.app = phi ptr [ %i.aqg, %.lr.ph.i.i.i.i339 ], [ %.unr971, %.lr.ph.i.i.i.i339.prol.loopexit ]
  %.110.i.i.i.i340 = phi i64 [ %i.aqe, %.lr.ph.i.i.i.i339 ], [ %.110.i.i.i.i340.unr, %.lr.ph.i.i.i.i339.prol.loopexit ]
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !375, !noalias !2651
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 8
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !375, !noalias !2651
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 8
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !375, !noalias !2651
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 8
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !375, !noalias !2651
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 8
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !375, !noalias !2651
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 8
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !375, !noalias !2651
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 8
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !375, !noalias !2651
  %i.aqe = add nsw i64 %.110.i.i.i.i340, 8        ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !375, !noalias !2651 ; 2 uses
  %.not.i.i.i.i341.7 = icmp eq i64 %i.aqe, 0
  br i1 %.not.i.i.i.i341.7, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit350, label %.lr.ph.i.i.i.i339, !llvm.loop !17

_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit350: ; preds = %.lr.ph.i.i.i.i339.prol.loopexit, %.lr.ph.i.i.i.i339, %.preheader.i.i.i.i343.prol.loopexit, %.preheader.i.i.i.i343, %.preheader7.i.i.i.i337
  %.sroa.2.0.i.i.i342 = phi ptr [ %i.apo, %.preheader.i.i.i.i343 ], [ %i.aoj, %.preheader7.i.i.i.i337 ], [ %.lcssa864.unr, %.preheader.i.i.i.i343.prol.loopexit ], [ %.lcssa866.unr, %.lr.ph.i.i.i.i339.prol.loopexit ], [ %i.aqg, %.lr.ph.i.i.i.i339 ] ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %32, i64 40
  store ptr %32, ptr %i.aqh, align 8, !tbaa !392
  %i.aqi = getelementptr inbounds nuw i8, ptr %32, i64 48
  store ptr %.sroa.2.0.i.i.i342, ptr %i.aqi, align 8, !tbaa !376
  %i.aqj = getelementptr inbounds nuw i8, ptr %32, i64 56
  %i.aqk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aql = load i64, ptr %i.aqk, align 8, !tbaa !394
  store i64 %i.aql, ptr %i.aqj, align 8, !tbaa !394
  %i.aqm = getelementptr inbounds nuw i8, ptr %32, i64 64 ; 3 uses
  store ptr %32, ptr %i.aqm, align 8, !tbaa !392, !alias.scope !2652
  %i.aqn = getelementptr inbounds nuw i8, ptr %32, i64 72 ; 4 uses
  store ptr %.sroa.2.0.i.i.i342, ptr %i.aqn, align 8, !tbaa !376, !alias.scope !2652
  %i.aqo = getelementptr inbounds nuw i8, ptr %32, i64 80 ; 3 uses
  store ptr %32, ptr %i.aqo, align 8, !tbaa !401, !alias.scope !2652
  %i.aqp = getelementptr inbounds nuw i8, ptr %32, i64 88 ; 3 uses
  store i64 0, ptr %i.aqp, align 8, !tbaa !680
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  %i.aqs = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.aqt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %35, i64 40
  %.2..2..2..2.gep.sroa_idx1010 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4..4..4..4.gep27.sroa_idx1012 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.10..10..10..10.gep28.sroa_idx1013 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.aqx = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.aqy = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ara = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.arb = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.are = getelementptr inbounds nuw i8, ptr %36, i64 24
  %.ptr4.i.i.i.i.i.i391 = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.arf = shl nsw i8 %.sroa.29.0758, 4           ; 2 uses
  %i.arg = or disjoint i8 -128, 127
  %i.arh = or disjoint i8 -128, 126
  %i.ari = or i8 %i.bz, %i.arf
  %.1..1..1..1..sroa_idx1006 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx1009 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx1007 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx1011 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx1008 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit408, %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit350
  %.sroa.20.5 = phi i8 [ %i.ari, %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit350 ], [ %i.arf, %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit408 ]
  %.2129 = phi i64 [ %.0.lcssa.us.i.i.i147, %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEC2ERKS7_.exit350 ], [ %i.asl, %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit408 ] ; 2 uses
  %i.arj = load ptr, ptr %0, align 8, !tbaa !303
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 2393
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !416, !range !119, !noundef !120
  %i.arm = trunc nuw i8 %i.arl to i1
  %i.arn = call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.arm)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %i.aro = call noundef i32 %i.arn(), !inline_history !22 ; 3 uses
  %.not.i351 = icmp eq i32 %i.aro, 0
  br i1 %.not.i351, label %bb.cv, label %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit352, !llvm.loop !23

_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit352: ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #35
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %33, i32 noundef %i.aro)
  %i.arp = load i64, ptr %i.aqq, align 8, !tbaa !426
  %..i353 = call noundef i64 @llvm.umin.i64(i64 %.2129, i64 %i.arp) ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #35
  %i.arq = load ptr, ptr %i.aqr, align 8, !tbaa !236 ; 2 uses
  store ptr %i.arq, ptr %34, align 8
  store i64 %..i353, ptr %i.aqs, align 8
  %i.arr = load ptr, ptr %i.aqo, align 8, !tbaa !401, !noalias !2653
  %i.ars = load ptr, ptr %i.aor, align 8, !tbaa !395, !noalias !2654
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.art = load ptr, ptr %i.aqn, align 8, !tbaa !395, !noalias !2653
  %i.aru = load <2 x ptr>, ptr %i.aqm, align 8, !tbaa !229, !noalias !2653
  store <2 x ptr> %i.aru, ptr %5, align 16, !tbaa !229
  store ptr %i.arr, ptr %i.aqu, align 16, !tbaa !401
  store ptr %32, ptr %i.aqv, align 8, !tbaa !691
  %.not9.i.i356 = icmp eq i64 %..i353, 0          ; 2 uses
  br i1 %.not9.i.i356, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS4_INS3_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEmRKT_RKT0_.exit369, label %.lr.ph.i.i357

.lr.ph.i.i357:                                    ; preds = %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit352, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i364
  %i.arv = phi ptr [ %i.ask, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i364 ], [ %i.art, %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit352 ]
  %.sroa.05.011.i.i359 = phi ptr [ %i.ash, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i364 ], [ %i.arq, %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit352 ] ; 2 uses
  %.sroa.6.010.i.i360 = phi i64 [ %i.asi, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i364 ], [ %..i353, %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit352 ] ; 2 uses
  %i.arw = load ptr, ptr %i.aqv, align 8, !tbaa !691
  %i.arx = icmp eq ptr %i.arw, %32
  %i.ary = load ptr, ptr %i.aqu, align 16
  %i.arz = icmp eq ptr %i.ary, %32
  %or.cond.i361 = select i1 %i.arx, i1 %i.arz, i1 false
  br i1 %or.cond.i361, label %_ZNK5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKS9_.exit.i.i367, label %_ZNK5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKS9_.exit.thread.i.i362

_ZNK5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKS9_.exit.i.i367: ; preds = %.lr.ph.i.i357
  %i.asa = load ptr, ptr %5, align 16, !tbaa !392
  %i.asb = icmp ne ptr %i.asa, %32
  %i.asc = icmp ne ptr %i.arv, %i.ars
  %.not3.i.i.i368 = select i1 %i.asb, i1 true, i1 %i.asc
  br i1 %.not3.i.i.i368, label %_ZNK5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKS9_.exit.thread.i.i362, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS4_INS3_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEmRKT_RKT0_.exit369

_ZNK5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKS9_.exit.thread.i.i362: ; preds = %_ZNK5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKS9_.exit.i.i367, %.lr.ph.i.i357
  %i.asd = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  %i.ase = extractvalue { ptr, i64 } %i.asd, 1    ; 2 uses
  %i.asf = call i64 @llvm.umin.i64(i64 %.sroa.6.010.i.i360, i64 %i.ase) ; 3 uses
  %.not.i.i.i363 = icmp eq i64 %i.ase, 0
  br i1 %.not.i.i.i363, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i364, label %bb.cw

bb.cw:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKS9_.exit.thread.i.i362
  %i.asg = extractvalue { ptr, i64 } %i.asd, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.05.011.i.i359, ptr align 1 %i.asg, i64 %i.asf, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i364

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i364: ; preds = %bb.cw, %_ZNK5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKS9_.exit.thread.i.i362
  %i.ash = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i359, i64 %i.asf
  %i.asi = sub nuw i64 %.sroa.6.010.i.i360, %i.asf ; 2 uses
  %i.asj = load ptr, ptr %i.aqt, align 8, !tbaa !395
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !374 ; 2 uses
  store ptr %i.ask, ptr %i.aqt, align 8, !tbaa !395
  %.not.i.i365 = icmp eq i64 %i.asi, 0
  br i1 %.not.i.i365, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS4_INS3_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEmRKT_RKT0_.exit369, label %.lr.ph.i.i357, !llvm.loop !2525

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS4_INS3_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEmRKT_RKT0_.exit369: ; preds = %_ZNK5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE14const_iteratorneERKS9_.exit.i.i367, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i364, %_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type11create_maskEv.exit352
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 1 dereferenceable(4) %33)
  %i.asl = sub nuw i64 %.2129, %..i353            ; 2 uses
  %i.asm = icmp eq i64 %i.asl, 0                  ; 2 uses
  %i.asn = select i1 %1, i1 %i.asm, i1 false      ; 2 uses
  %i.aso = xor i1 %i.asn, true
  %i.asp = zext i1 %i.aso to i8
  store i8 %i.asp, ptr %i.i, align 1, !tbaa !422
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %35, ptr noundef nonnull %i.aqw, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.asq = select i1 %i.asn, i8 -128, i8 0
  %spec.select37.i375 = or i8 %.sroa.20.5, %i.asq
  store i8 %spec.select37.i375, ptr %i.a, align 1, !tbaa !87
  %i.asr = icmp ult i64 %..i353, 126
  br i1 %i.asr, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS4_INS3_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEmRKT_RKT0_.exit369
  %i.ass = trunc nuw nsw i64 %..i353 to i8
  %i.ast = or disjoint i8 -128, %i.ass
  store i8 %i.ast, ptr %.1..1..1..1..sroa_idx1008, align 1, !tbaa !87
  br label %bb.db

bb.cy:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS4_INS3_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEEEEEmRKT_RKT0_.exit369
  %i.asu = icmp ult i64 %..i353, 65536
  br i1 %i.asu, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i8 %i.arh, ptr %.1..1..1..1..sroa_idx1007, align 1, !tbaa !87
  %i.asv = trunc nuw i64 %..i353 to i16
  %i.asw = call noundef i16 @llvm.bswap.i16(i16 %i.asv)
  store i16 %i.asw, ptr %.2..2..2..2.gep.sroa_idx1011, align 1
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  store i8 %i.arg, ptr %.1..1..1..1..sroa_idx1006, align 1, !tbaa !87
  %i.asx = call noundef i64 @llvm.bswap.i64(i64 %..i353)
  store i64 %i.asx, ptr %.2..2..2..2.gep.sroa_idx1009, align 1
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cx
  %.0.sroa.phi.i377 = phi ptr [ %.2..2..2..2.gep.sroa_idx1010, %bb.cx ], [ %.4..4..4..4.gep27.sroa_idx1012, %bb.cz ], [ %.10..10..10..10.gep28.sroa_idx1013, %bb.da ]
  %.0.i378 = phi i64 [ 6, %bb.cx ], [ 8, %bb.cz ], [ 14, %bb.da ]
  store i32 %i.aro, ptr %.0.sroa.phi.i377, align 1
  %i.asy = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %35, i64 noundef %.0.i378) ; 2 uses
  %i.asz = extractvalue { ptr, i64 } %i.asy, 1    ; 2 uses
  %i.ata = call i64 @llvm.umin.i64(i64 %i.asz, i64 14) ; 2 uses
  %.not.i.i.i.i381 = icmp eq i64 %i.asz, 0
  br i1 %.not.i.i.i.i381, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit383, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.atb = extractvalue { ptr, i64 } %i.asy, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.atb, ptr nonnull align 1 %i.a, i64 %i.ata, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit383

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit383: ; preds = %bb.db, %bb.dc
  %i.atc = load ptr, ptr %i.aqx, align 8, !tbaa !432
  %i.atd = load ptr, ptr %i.aqy, align 8, !tbaa !433 ; 2 uses
  %i.ate = ptrtoint ptr %i.atc to i64
  %i.atf = ptrtoint ptr %i.atd to i64
  %i.atg = sub i64 %i.ate, %i.atf
  %.sroa.speculated.i.i382 = call i64 @llvm.umin.i64(i64 %i.atg, i64 %i.ata)
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atd, i64 %.sroa.speculated.i.i382 ; 3 uses
  store ptr %i.ath, ptr %i.aqy, align 8, !tbaa !433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #35
  %i.ati = load ptr, ptr %i.ara, align 8, !tbaa !434 ; 3 uses
  %i.atj = ptrtoint ptr %i.ath to i64
  %i.atk = ptrtoint ptr %i.ati to i64
  %i.atl = sub i64 %i.atj, %i.atk
  store ptr %i.ati, ptr %36, align 8, !tbaa !229
  store i64 %i.atl, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.arb, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !427
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  store ptr %36, ptr %4, align 8, !tbaa !439, !alias.scope !2657
  store i64 1, ptr %i.ard, align 8, !alias.scope !2657
  store ptr %36, ptr %i.arc, align 8, !tbaa !441, !alias.scope !2657
  %.not.i.i.i.i.i.i386 = icmp eq ptr %i.ath, %i.ati
  br i1 %.not.i.i.i.i.i.i386, label %._crit_edge.i.i.i.i.i.i387, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit392

._crit_edge.i.i.i.i.i.i387:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit383
  store ptr %i.arb, ptr %i.arc, align 8, !tbaa !441, !alias.scope !2657
  store i8 2, ptr %i.ard, align 8, !tbaa !442, !alias.scope !2657
  %i.atm = load i64, ptr %i.are, align 8, !tbaa !444, !noalias !2657
  %.not.i.i.i.i.i.i.i389 = icmp eq i64 %i.atm, 0
  br i1 %.not.i.i.i.i.i.i.i389, label %._crit_edge.i.i.i.i.i.i.i390, label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit392

._crit_edge.i.i.i.i.i.i.i390:                     ; preds = %._crit_edge.i.i.i.i.i.i387
  store ptr %.ptr4.i.i.i.i.i.i391, ptr %i.arc, align 8, !tbaa !441, !alias.scope !2657
  store i8 0, ptr %i.arc, align 8, !tbaa !446, !alias.scope !2657
  store i8 3, ptr %i.ard, align 8, !tbaa !442, !alias.scope !2657
  br label %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit392

_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit392: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit383, %._crit_edge.i.i.i.i.i.i387, %._crit_edge.i.i.i.i.i.i.i390
  %i.atn = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS3_21unlimited_rate_policyEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferESB_EEENSC_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %i.aqz, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  %i.ato = load i64, ptr %i.f, align 8, !tbaa !84
  %i.atp = add i64 %i.ato, %..i353
  store i64 %i.atp, ptr %i.f, align 8, !tbaa !84
  %i.atq = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_12basic_streamINS_4asio2ip3tcpENS4_15any_io_executorENS0_21unlimited_rate_policyEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2472) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.atq, label %bb.dl, label %bb.dd

bb.dd:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit392
  br i1 %i.asm, label %.thread579, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.atr = load ptr, ptr %i.aor, align 8, !tbaa !395, !noalias !2658
  br i1 %.not9.i.i356, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit408, label %.lr.ph.i394

.lr.ph.i394:                                      ; preds = %bb.de
  %i.ats = load ptr, ptr %i.aqo, align 8, !tbaa !401 ; 4 uses
  %i.att = icmp ne ptr %i.ats, %32
  %i.atu = load ptr, ptr %i.aqm, align 8          ; 6 uses
  %i.atv = icmp ne ptr %i.atu, %32
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ats, i64 40
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ats, i64 48
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atu, i64 16
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atu, i64 32
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atu, i64 8
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atu, i64 24 ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.ats, i64 56
  %.pre.pre.i395 = load ptr, ptr %i.aqn, align 8
  %i.aud = select i1 %i.att, i1 true, i1 %i.atv
  br label %bb.df

bb.df:                                            ; preds = %bb.dk, %.lr.ph.i394
  %.pre.i396 = phi ptr [ %.pre.pre.i395, %.lr.ph.i394 ], [ %i.avc, %bb.dk ] ; 6 uses
  %.0710.i397 = phi i64 [ %..i353, %.lr.ph.i394 ], [ %i.avb, %bb.dk ] ; 3 uses
  %i.aue = icmp ne ptr %.pre.i396, %i.atr
  %or.cond.i398 = select i1 %i.aud, i1 true, i1 %i.aue
  br i1 %or.cond.i398, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.i399, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit408

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.i399: ; preds = %bb.df
  %i.auf = load ptr, ptr %i.atw, align 8, !tbaa !392
  %i.aug = icmp eq ptr %i.atu, %i.auf
  %i.auh = load ptr, ptr %i.atx, align 8
  %i.aui = icmp eq ptr %.pre.i396, %i.auh
  %i.auj = select i1 %i.aug, i1 %i.aui, i1 false
  %i.auk = load ptr, ptr %i.aty, align 8, !tbaa !395
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 8
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !375
  %i.aun = icmp eq ptr %.pre.i396, %i.aum
  %i.auo = getelementptr inbounds nuw i8, ptr %.pre.i396, i64 16
  %.sroa.6.0.in.i.i.i400 = select i1 %i.aun, ptr %i.atz, ptr %i.auo
  %.sroa.6.0.i.i.i401 = load i64, ptr %.sroa.6.0.in.i.i.i400, align 8, !tbaa !84 ; 4 uses
  %i.aup = load ptr, ptr %i.aua, align 8, !tbaa !395
  %i.auq = icmp eq ptr %.pre.i396, %i.aup         ; 2 uses
  br i1 %i.auj, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.i399
  br i1 %i.auq, label %bb.dh, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i406

bb.dh:                                            ; preds = %bb.dg
  %i.aur = load i64, ptr %i.aub, align 8, !tbaa !396
  %i.aus = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i401, i64 %i.aur)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i406

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i406: ; preds = %bb.dh, %bb.dg
  %.sroa.6.1.i.i.i407 = phi i64 [ %i.aus, %bb.dh ], [ %.sroa.6.0.i.i.i401, %bb.dg ]
  %i.aut = load i64, ptr %i.auc, align 8, !tbaa !394
  %i.auu = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.1.i.i.i407, i64 %i.aut)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.i402

bb.di:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratorneERKS8_.exit.thread.i399
  br i1 %i.auq, label %bb.dj, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.i402

bb.dj:                                            ; preds = %bb.di
  %i.auv = load i64, ptr %i.aub, align 8, !tbaa !396
  %i.auw = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i401, i64 %i.auv)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.i402

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.i402: ; preds = %bb.dj, %bb.di, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i406
  %.pn13.i.i403 = phi i64 [ %i.auu, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb0EE14const_iteratordeEv.exit.i.i406 ], [ %i.auw, %bb.dj ], [ %.sroa.6.0.i.i.i401, %bb.di ]
  %i.aux = load i64, ptr %i.aqp, align 8, !tbaa !680 ; 2 uses
  %i.auy = sub i64 %.pn13.i.i403, %i.aux          ; 2 uses
  %i.auz = icmp ult i64 %.0710.i397, %i.auy       ; 2 uses
  %i.ava = add i64 %i.aux, %.0710.i397
  %storemerge.i404 = select i1 %i.auz, i64 %i.ava, i64 0
  store i64 %storemerge.i404, ptr %i.aqp, align 8, !tbaa !680
  br i1 %i.auz, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit408, label %bb.dk

bb.dk:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.i402
  %i.avb = sub nuw i64 %.0710.i397, %i.auy        ; 2 uses
  %i.avc = load ptr, ptr %.pre.i396, align 8, !tbaa !374 ; 2 uses
  store ptr %i.avc, ptr %i.aqn, align 8, !tbaa !395
  %.not.i405 = icmp eq i64 %i.avb, 0
  br i1 %.not.i405, label %_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit408, label %bb.df, !llvm.loop !61

_ZN5boost5beast14buffers_suffixINS1_INS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEE7consumeEm.exit408: ; preds = %bb.dk, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEE14const_iteratordeEv.exit.i402, %bb.df, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #35
  br label %bb.cu

.thread579:                                       ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #35
  br label %bb.dm

bb.dl:                                            ; preds = %_ZN5boost4asio5writeINS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS2_21unlimited_rate_policyEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferESA_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISE_EE5valueEiE4typeE.exit392
  %i.avd = load i64, ptr %i.f, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #35
  br label %bb.dn

bb.dm:                                            ; preds = %.thread579, %bb.cs, %.thread563, %bb.aw, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread
  %i.ave = load i64, ptr %i.f, align 8, !tbaa !84
  br label %bb.dn

bb.dn:                                            ; preds = %bb.a, %bb.dm, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit, %.thread552, %bb.br, %.thread567, %bb.dl
  %.14 = phi i64 [ %i.mt, %.thread552 ], [ %i.ave, %bb.dm ], [ %.3530, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit ], [ %i.avd, %bb.dl ], [ %.10.ph, %.thread567 ], [ %i.aeh, %bb.br ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  ret i64 %.14
end_hunk_11
