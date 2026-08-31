Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read3?download=true
inline.NumInlined: 77476
inline.NumDeleted: 23382
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9read_someINS0_18basic_multi_bufferISaIcEEEEEmRT_mRNS_6system10error_codeE:bb.a
  %..i10.i.i = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 %i.l)
  %.1.i.i = select i1 %.not.i.i, i64 %.0.i.i, i64 %..i10.i.i ; 2 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %.1.i.i, i64 %2)
  %i.v = select i1 %.not, i64 %.1.i.i, i64 %i.u
  br label %_ZNK5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type17read_size_hint_dbINS0_18basic_multi_bufferISaIcEEEEEmRT_.exit

_ZNK5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type17read_size_hint_dbINS0_18basic_multi_bufferISaIcEEEEEmRT_.exit: ; preds = %bb.a, %_ZNK5boost5beast9websocket6detail9impl_baseILb1EE18read_size_hint_pmdEmbmmRKNS2_12frame_headerE.exit.i
  %.0.i = phi i64 [ %i.v, %_ZNK5boost5beast9websocket6detail9impl_baseILb1EE18read_size_hint_pmdEmbmmRKNS2_12frame_headerE.exit.i ], [ 1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8676)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35, !noalias !8676
  invoke void @_ZN5boost5beast18basic_multi_bufferISaIcEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::basic_multi_buffer<std::allocator<char>>::subrange") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.0.i)
          to label %bb.g unwind label %bb.h, !noalias !8676

bb.g:                                             ; preds = %_ZNK5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type17read_size_hint_dbINS0_18basic_multi_bufferISaIcEEEEEmRT_.exit
  %i.x = load <2 x ptr>, ptr %4, align 16, !tbaa !82, !noalias !8676
  store <2 x ptr> %i.x, ptr %i.w, align 8, !tbaa !82, !alias.scope !8676
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !6396, !noalias !8676
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !243, !alias.scope !8676
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  store i8 1, ptr %6, align 8, !tbaa !6398, !alias.scope !8676
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35, !noalias !8676
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !8676
  br label %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_18basic_multi_bufferISaIcEEENS0_9websocket5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS9_mRNS_6system10error_codeET0_.exit

bb.h:                                             ; preds = %_ZNK5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type17read_size_hint_dbINS0_18basic_multi_bufferISaIcEEEEEmRT_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12length_error         ; 3 uses
  %i.ae = extractvalue { ptr, i32 } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35, !noalias !8676
  %i.af = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12length_error) #35
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = extractvalue { ptr, i32 } %i.ad, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.ah) #35, !noalias !8676 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35, !noalias !8676
  call void @_ZN5boost6system10error_codeC2INS_5beast9websocket5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 4, ptr noundef null) #35, !noalias !8676
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.5.0.copyload4.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !tbaa !15, !noalias !8676 ; 3 uses
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload4.i.i, 2
  %i.aj = and i64 %.sroa.5.0.copyload4.i.i, 1
  %i.ak = or disjoint i64 %i.aj, ptrtoint (ptr @_ZZN5boost5beast6detail22dynamic_buffer_prepareINS0_18basic_multi_bufferISaIcEEENS0_9websocket5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS9_mRNS_6system10error_codeET0_E7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload4.i.i, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 16, i1 false), !noalias !8676
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !15, !noalias !8676
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !8676
  call void @__cxa_end_catch(), !noalias !8676
  store i8 0, ptr %6, align 8, !tbaa !6394, !alias.scope !8676
  store i8 0, ptr %i.w, align 8, !tbaa !19, !alias.scope !8676
  br label %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_18basic_multi_bufferISaIcEEENS0_9websocket5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS9_mRNS_6system10error_codeET0_.exit

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ad

_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_18basic_multi_bufferISaIcEEENS0_9websocket5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS9_mRNS_6system10error_codeET0_.exit: ; preds = %bb.g, %bb.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !215
  %i.am = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.am, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_18basic_multi_bufferISaIcEEENS0_9websocket5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS9_mRNS_6system10error_codeET0_.exit
  %i.an = call noundef i64 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9read_someINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !241 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  %i.aq = icmp eq ptr %i.ap, %i.ao
  %i.ar = or i1 %.not.i.i.i, %i.aq
  br i1 %i.ar, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !6403 ; 5 uses
  %i.au = icmp eq ptr %i.at, %i.ao
  br i1 %i.au, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !242 ; 3 uses
  %.not1419.i = icmp eq ptr %i.at, %i.aw
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !6404 ; 3 uses
  %.pre31.i = load i64, ptr %i.c, align 8         ; 3 uses
  br i1 %.not1419.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !278
  %i.az = sub i64 %i.ay, %.pre.i                  ; 3 uses
  %.not.peel.i = icmp ult i64 %i.an, %i.az
  br i1 %.not.peel.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !241 ; 4 uses
  store ptr %i.ba, ptr %i.as, align 8, !tbaa !6403
  %i.bb = sub nuw i64 %i.an, %i.az                ; 2 uses
  %i.bc = add i64 %i.az, %.pre31.i                ; 2 uses
  %.not14.peel.i = icmp eq ptr %i.ba, %i.aw
  br i1 %.not14.peel.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.n, %bb.o
  %i.bd = phi i64 [ %i.bm, %bb.o ], [ %i.bc, %bb.n ] ; 2 uses
  %.020.i = phi i64 [ %i.bl, %bb.o ], [ %i.bb, %bb.n ] ; 3 uses
  %i.be = phi ptr [ %i.bk, %bb.o ], [ %i.ba, %bb.n ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !278 ; 3 uses
  %.not.i = icmp ult i64 %.020.i, %i.bg
  br i1 %.not.i, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %.peel.next.i, %.lr.ph.i
  %i.bh = phi i64 [ %.pre31.i, %.lr.ph.i ], [ %i.bd, %.peel.next.i ]
  %.lcssa25.i = phi i64 [ %.pre.i, %.lr.ph.i ], [ 0, %.peel.next.i ]
  %.020.lcssa.i = phi i64 [ %i.an, %.lr.ph.i ], [ %.020.i, %.peel.next.i ] ; 2 uses
  %i.bi = add i64 %.020.lcssa.i, %.lcssa25.i
  store i64 %i.bi, ptr %.phi.trans.insert.i, align 8, !tbaa !6404
  %i.bj = add i64 %.020.lcssa.i, %i.bh
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !6390
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit

bb.o:                                             ; preds = %.peel.next.i
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !241 ; 4 uses
  store ptr %i.bk, ptr %i.as, align 8, !tbaa !6403
  %i.bl = sub nuw i64 %.020.i, %i.bg              ; 2 uses
  %i.bm = add i64 %i.bg, %i.bd                    ; 2 uses
  %.not14.i = icmp eq ptr %i.bk, %i.aw
  br i1 %.not14.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !6405

._crit_edge.i:                                    ; preds = %bb.o, %bb.m, %bb.n
  %i.bn = phi i64 [ %.pre31.i, %bb.m ], [ %i.bc, %bb.n ], [ %i.bm, %bb.o ]
  %i.bo = phi i64 [ %.pre.i, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.an, %bb.m ], [ %i.bb, %bb.n ], [ %i.bl, %bb.o ]
  %.lcssa.i = phi ptr [ %i.at, %bb.m ], [ %i.ba, %bb.n ], [ %i.bk, %bb.o ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !6406
  %i.br = sub i64 %i.bq, %i.bo
  %.sroa.speculated.i14 = call i64 @llvm.umin.i64(i64 %i.br, i64 %.0.lcssa.i) ; 2 uses
  %i.bs = add i64 %.sroa.speculated.i14, %i.bo    ; 2 uses
  store i64 %i.bs, ptr %.phi.trans.insert.i, align 8, !tbaa !6404
  %i.bt = add i64 %.sroa.speculated.i14, %i.bn
  store i64 %i.bt, ptr %i.c, align 8, !tbaa !6390
  %i.bu = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !278
  %i.bw = icmp eq i64 %i.bs, %i.bv
  br i1 %i.bw, label %bb.p, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit

bb.p:                                             ; preds = %._crit_edge.i
  %i.bx = load ptr, ptr %.lcssa.i, align 8, !tbaa !241
  store ptr %i.bx, ptr %i.as, align 8, !tbaa !6403
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit

_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit: ; preds = %bb.p, %._crit_edge.i, %.thread.i, %bb.l, %bb.k, %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_18basic_multi_bufferISaIcEEENS0_9websocket5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS9_mRNS_6system10error_codeET0_.exit
  %.0 = phi i64 [ 0, %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_18basic_multi_bufferISaIcEEENS0_9websocket5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS9_mRNS_6system10error_codeET0_.exit ], [ %i.an, %bb.k ], [ %i.an, %bb.l ], [ %i.an, %.thread.i ], [ %i.an, %._crit_edge.i ], [ %i.an, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9read_someINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %4 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %5 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  %6 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %7 = alloca %"class.boost::core::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.boost::core::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.boost::asio::const_buffer", align 8 ; 5 uses
  %10 = alloca %"class.boost::core::basic_string_view", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  %12 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %13 = alloca %"class.boost::system::error_code", align 8 ; 19 uses
  %14 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 4 uses
  %15 = alloca %"class.boost::beast::buffers_prefix_view.328", align 8 ; 10 uses
  %16 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 4 uses
  %17 = alloca %"class.boost::beast::buffers_prefix_view.328", align 8 ; 17 uses
  %18 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 4 uses
  %19 = alloca %"class.boost::static_strings::basic_static_string.329", align 1 ; 8 uses
  %20 = alloca %"class.boost::beast::flat_static_buffer", align 8 ; 7 uses
  %21 = alloca %"class.boost::static_strings::basic_static_string.329", align 1 ; 6 uses
  %22 = alloca %"struct.boost::beast::websocket::close_reason", align 2 ; 6 uses
  %23 = alloca %"class.boost::system::error_code", align 8 ; 2 uses
  %24 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 4 uses
  %25 = alloca %"class.boost::beast::buffers_prefix_view.328", align 8 ; 4 uses
  %26 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 4 uses
  %27 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 6 uses
  %28 = alloca %"class.boost::beast::buffers_prefix_view.962", align 8 ; 14 uses
  %29 = alloca %"class.boost::system::error_code", align 8 ; 2 uses
  %30 = alloca %"class.boost::beast::buffers_prefix_view.962", align 16 ; 12 uses
  %31 = alloca %"class.boost::beast::buffers_prefix_view.962", align 8 ; 6 uses
  %32 = alloca %"class.boost::system::error_code", align 8 ; 2 uses
  %33 = alloca %"class.boost::beast::buffers_suffix.948", align 16 ; 13 uses
  %34 = alloca %"struct.boost::beast::zlib::z_params", align 8 ; 13 uses
  %35 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 5 uses
  %36 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 4 uses
  %37 = alloca %"class.boost::beast::buffers_prefix_view.328", align 8 ; 10 uses
  %38 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 4 uses
  %39 = alloca %"class.boost::beast::detail::buffers_pair", align 8 ; 5 uses
  %40 = alloca %"class.boost::system::error_code", align 8 ; 2 uses
  %41 = alloca %"class.boost::beast::buffers_prefix_view.962", align 16 ; 14 uses
  %42 = alloca %"class.boost::system::error_code", align 8 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !215    ; 59 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = tail call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.e, label %.thread456, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 424 ; 18 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !6107
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 432 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 445 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2242 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 664 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 680
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 24
  %.sroa.gep432 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 444 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 24
  %.sroa.gep430 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %21, i64 1 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 392 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 376 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 400 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %19, i64 1 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 2260
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.b

.critedge502:                                     ; preds = %_ZN5boost5beast9websocket6detail9read_pingINS0_19buffers_prefix_viewINS0_6detail12buffers_pairILb1EEEEEEEvRNS_14static_strings19basic_static_stringILm125EcSt11char_traitsIcEEERKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  br label %.backedge.sink.split.sink.split

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.an = load i8, ptr %i.j, align 1
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = load i8, ptr %i.k, align 2, !tbaa !300, !range !66, !noundef !67
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread441, %bb.d
  %i.ar = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type8parse_fhINS0_13static_bufferILm1536EEEEEbRNS1_6detail12frame_headerERT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(1576) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br i1 %i.ar, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load i64, ptr %i.m, align 8, !tbaa !31  ; 2 uses
  %i.at = and i64 %i.as, 1
  %.not.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread441, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = icmp ne i64 %i.as, 1
  %i.av = load i32, ptr %13, align 8
  %i.aw = icmp ne i32 %i.av, 0
  %or.cond = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread441

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  invoke void @_ZN5boost5beast9websocket15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %12, i32 noundef 6)
          to label %_ZN5boost6system10error_codeC2INS_5beast9websocket5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #36
  unreachable

_ZN5boost6system10error_codeC2INS_5beast9websocket5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %.sroa.0434.0.copyload = load i32, ptr %12, align 8 ; 3 uses
  %.sroa.6436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.6436.0.copyload = load ptr, ptr %.sroa.6436.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  %i.az = load i64, ptr %i.m, align 8, !tbaa !31  ; 2 uses
  %i.ba = icmp eq i64 %i.az, 1                    ; 3 uses
  %i.bb = icmp eq i64 %.sroa.9.0.copyload, 1      ; 3 uses
  %i.bc = xor i1 %i.bb, %i.ba
  br i1 %i.bc, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast9websocket5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  %or.cond.i = and i1 %i.bb, %i.ba
  br i1 %or.cond.i, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load i32, ptr %13, align 8, !tbaa !19   ; 2 uses
  br i1 %i.ba, label %bb.k, label %_ZNK5boost6system10error_code5valueEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !33
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = urem i64 %i.bg, 2097143
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = mul nuw nsw i32 %i.bi, 1000
  %i.bk = add i32 %i.bj, %i.bd
  br label %_ZNK5boost6system10error_code5valueEv.exit.i

_ZNK5boost6system10error_code5valueEv.exit.i:     ; preds = %bb.k, %bb.j
  %.0.i.i245 = phi i32 [ %i.bk, %bb.k ], [ %i.bd, %bb.j ]
  br i1 %i.bb, label %bb.l, label %_ZNK5boost6system10error_code5valueEv.exit17.i

bb.l:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit.i
  %i.bl = ptrtoint ptr %.sroa.6436.0.copyload to i64
  %i.bm = urem i64 %i.bl, 2097143
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = mul nuw nsw i32 %i.bn, 1000
  %i.bp = add i32 %i.bo, %.sroa.0434.0.copyload
  br label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %bb.l, %_ZNK5boost6system10error_code5valueEv.exit.i
  %.0.i16.i = phi i32 [ %i.bp, %bb.l ], [ %.sroa.0434.0.copyload, %_ZNK5boost6system10error_code5valueEv.exit.i ]
  %i.bq = icmp eq i32 %.0.i.i245, %.0.i16.i
  br i1 %i.bq, label %bb.m, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.m:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  switch i64 %i.az, label %bb.o [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !19
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i

_ZNK5boost6system10error_code8categoryEv.exit.i:  ; preds = %bb.o, %bb.n, %bb.m
  %.0.i18.i = phi ptr [ %i.bs, %bb.o ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.n ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.m ] ; 2 uses
  switch i64 %.sroa.9.0.copyload, label %bb.q [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit20.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i

bb.q:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i

_ZNK5boost6system10error_code8categoryEv.exit20.i: ; preds = %bb.q, %bb.p, %_ZNK5boost6system10error_code8categoryEv.exit.i
  %.0.i19.i = phi ptr [ %.sroa.6436.0.copyload, %bb.q ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.p ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %_ZNK5boost6system10error_code8categoryEv.exit.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i19.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = icmp eq ptr %.0.i18.i, %.0.i19.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = icmp eq i64 %i.by, %i.bu
  %i.ca = select i1 %i.bv, i1 %i.bw, i1 %i.bz
  %cond.fr445 = freeze i1 %i.ca
  br i1 %cond.fr445, label %bb.r, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.cd = icmp eq ptr %i.cc, %.sroa.6436.0.copyload
  %i.ce = load i32, ptr %13, align 8
  %i.cf = icmp eq i32 %i.ce, %.sroa.0434.0.copyload
  %i.cg = select i1 %i.cd, i1 %i.cf, i1 false
  %cond.fr = freeze i1 %i.cg
end_hunk_0
begin_hunk_1_@_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9read_someINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE:bb.a
bb.bi:                                            ; preds = %bb.be, %bb.bh
  call void @_ZN5boost6system10error_codeC2INS_5beast9websocket5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %29, i32 noundef 30, ptr noundef null) #35
  call void @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE7do_failEtNS_6system10error_codeERSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext 1007, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %29, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %.thread456

bb.bj:                                            ; preds = %.critedge
  %i.ku = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #35
  %i.kv = load i64, ptr %i.f, align 8, !tbaa !6107
  call void @llvm.experimental.noalias.scope.decl(metadata !8708)
  %i.kw = load ptr, ptr %i.ha, align 8, !tbaa !6396, !noalias !8708 ; 4 uses
  %i.kx = load <2 x ptr>, ptr %1, align 8, !tbaa !82, !noalias !8708
  store <2 x ptr> %i.kx, ptr %30, align 16, !tbaa !82, !alias.scope !8708
  %i.ky = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.kz = load ptr, ptr %i.hc, align 8, !tbaa !6396, !noalias !8708 ; 4 uses
  store ptr %i.kz, ptr %i.ky, align 16, !tbaa !243, !alias.scope !8708
  %i.la = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i64 16, i1 false)
  %i.lc = getelementptr inbounds nuw i8, ptr %30, i64 40 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.le = getelementptr inbounds nuw i8, ptr %30, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i8 0, i64 16, i1 false), !alias.scope !8708
  store ptr %30, ptr %i.le, align 8, !tbaa !6421, !alias.scope !8708
  %i.lf = getelementptr inbounds nuw i8, ptr %30, i64 64 ; 3 uses
  store ptr %i.kw, ptr %i.lf, align 16, !tbaa !6396, !alias.scope !8708
  %.not1821.i.i.i335 = icmp eq ptr %i.kw, %i.kz
  br i1 %.not1821.i.i.i335, label %_ZN5boost5beast14buffers_prefixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit346, label %.lr.ph.i.i.i336

.lr.ph.i.i.i336:                                  ; preds = %bb.bj
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !242
  %i.li = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.lj = load i64, ptr %i.la, align 8, !alias.scope !8708
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i337

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i337: ; preds = %bb.bk, %.lr.ph.i.i.i336
  %.0922.i.i.i338 = phi i64 [ %i.kv, %.lr.ph.i.i.i336 ], [ %i.lt, %bb.bk ] ; 4 uses
  %i.lk = phi ptr [ %i.kw, %.lr.ph.i.i.i336 ], [ %i.lm, %bb.bk ] ; 4 uses
  %i.ll = phi i64 [ 0, %.lr.ph.i.i.i336 ], [ %i.lu, %bb.bk ] ; 2 uses
  %i.lm = load ptr, ptr %i.lk, align 8, !tbaa !241, !noalias !8711 ; 4 uses
  %i.ln = icmp eq ptr %i.lk, %i.lh
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %.sroa.6.0.in.i.i.i.i339 = select i1 %i.ln, ptr %i.li, ptr %i.lo
  %.sroa.6.0.i.i.i.i340 = load i64, ptr %.sroa.6.0.in.i.i.i.i339, align 8, !tbaa !15 ; 2 uses
  %i.lp = icmp eq ptr %i.lk, %i.kw
  %i.lq = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i340, i64 %i.lj)
  %.sroa.6.1.i.i.i.i341 = select i1 %i.lp, i64 %i.lq, i64 %.sroa.6.0.i.i.i.i340 ; 4 uses
  %.not.i.i.i342 = icmp ult i64 %.sroa.6.1.i.i.i.i341, %.0922.i.i.i338
  br i1 %.not.i.i.i342, label %bb.bk, label %.thread.i.i.i343

.thread.i.i.i343:                                 ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i337
  store ptr %i.lm, ptr %i.lf, align 16, !tbaa !6396, !alias.scope !8708, !noalias !8711
  %i.lr = add i64 %i.ll, %.0922.i.i.i338
  store i64 %i.lr, ptr %i.lc, align 8, !tbaa !6781, !alias.scope !8708
  %i.ls = sub i64 %.0922.i.i.i338, %.sroa.6.1.i.i.i.i341
  store i64 %i.ls, ptr %i.ld, align 16, !tbaa !6790, !alias.scope !8708
  br label %_ZN5boost5beast14buffers_prefixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit346

bb.bk:                                            ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i337
  %i.lt = sub nuw i64 %.0922.i.i.i338, %.sroa.6.1.i.i.i.i341
  %i.lu = add i64 %.sroa.6.1.i.i.i.i341, %i.ll    ; 2 uses
  store i64 %i.lu, ptr %i.lc, align 8, !tbaa !6781, !alias.scope !8708
  %.not18.i.i.i344 = icmp eq ptr %i.lm, %i.kz
  br i1 %.not18.i.i.i344, label %..loopexit_crit_edge.i.i.i345, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i337

..loopexit_crit_edge.i.i.i345:                    ; preds = %bb.bk
  store ptr %i.lm, ptr %i.lf, align 16, !tbaa !6396, !alias.scope !8708, !noalias !8711
  br label %_ZN5boost5beast14buffers_prefixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit346

_ZN5boost5beast14buffers_prefixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit346: ; preds = %bb.bj, %.thread.i.i.i343, %..loopexit_crit_edge.i.i.i345
  %i.lv = call noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_19buffers_prefix_viewINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ku, ptr noundef nonnull align 8 dereferenceable(72) %30, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  %i.lw = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.lw, label %.thread456, label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost5beast14buffers_prefixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit346
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  call void @_ZN5boost5beast14buffers_prefixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEENS0_19buffers_prefix_viewIT_EEmRKS8_(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_prefix_view.962") align 8 %31, i64 noundef %i.lv, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.lx = load i64, ptr %i.f, align 8, !tbaa !6107
  %i.ly = sub i64 %i.lx, %i.lv
  store i64 %i.ly, ptr %i.f, align 8, !tbaa !6107
  %i.lz = getelementptr inbounds nuw i8, ptr %i.d, i64 445 ; 2 uses
  %i.ma = load i8, ptr %i.lz, align 1
  %i.mb = and i8 %i.ma, 2
  %.not238 = icmp eq i8 %i.mb, 0
  br i1 %.not238, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceINS0_19buffers_prefix_viewINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEvRKT_RSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(72) %31, ptr noundef nonnull align 1 dereferenceable(4) %i.mc)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.md = getelementptr inbounds nuw i8, ptr %i.d, i64 2240
  %i.me = load i8, ptr %i.md, align 8, !tbaa !6088
  %i.mf = icmp eq i8 %i.me, 1
  br i1 %i.mf, label %bb.bo, label %.thread459

bb.bo:                                            ; preds = %bb.bn
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 640 ; 2 uses
  %i.mh = call noundef zeroext i1 @_ZN5boost5beast9websocket6detail12utf8_checker5writeINS0_19buffers_prefix_viewINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(20) %i.mg, ptr noundef nonnull align 8 dereferenceable(72) %31)
  br i1 %i.mh, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.mi = load i64, ptr %i.f, align 8, !tbaa !6107
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %bb.bq, label %.thread459

bb.bq:                                            ; preds = %bb.bp
  %i.mk = load i8, ptr %i.lz, align 1
  %i.ml = trunc i8 %i.mk to i1
  br i1 %i.ml, label %bb.br, label %.thread459

bb.br:                                            ; preds = %bb.bq
  %i.mm = call noundef zeroext i1 @_ZN5boost5beast9websocket6detail12utf8_checker6finishEv(ptr noundef nonnull align 8 dereferenceable(20) %i.mg)
  br i1 %i.mm, label %.thread459, label %bb.bs

.thread459:                                       ; preds = %bb.bn, %bb.br, %bb.bq, %bb.bp
  %i.mn = getelementptr inbounds nuw i8, ptr %i.d, i64 416 ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !6572
  %i.mp = add i64 %i.mo, %i.lv
  store i64 %i.mp, ptr %i.mn, align 8, !tbaa !6572
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bo, %bb.br
  call void @_ZN5boost6system10error_codeC2INS_5beast9websocket5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %32, i32 noundef 30, ptr noundef null) #35
  call void @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE7do_failEtNS_6system10error_codeERSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext 1007, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %32, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %.thread456

bb.bt:                                            ; preds = %.thread459, %.thread453
  %.3214.ph = phi i64 [ %i.lv, %.thread459 ], [ %.023.lcssa.i.i, %.thread453 ] ; 2 uses
  %.pr461 = load i64, ptr %i.f, align 8, !tbaa !6107
  %i.mq = icmp eq i64 %.pr461, 0
  br i1 %i.mq, label %.thread462, label %.thread456

.thread462:                                       ; preds = %_ZNK5boost5beast9websocket6detail9impl_baseILb1EE11rd_deflatedEv.exit.thread, %bb.bt
  %.3214464 = phi i64 [ %.3214.ph, %bb.bt ], [ 0, %_ZNK5boost5beast9websocket6detail9impl_baseILb1EE11rd_deflatedEv.exit.thread ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 445
  %i.ms = load i8, ptr %i.mr, align 1
  %i.mt = trunc i8 %i.ms to i1
  br i1 %i.mt, label %bb.bu, label %.thread456

bb.bu:                                            ; preds = %.thread462
  %i.mu = getelementptr inbounds nuw i8, ptr %i.d, i64 2242
  store i8 1, ptr %i.mu, align 2, !tbaa !300
  br label %.thread456

bb.bv:                                            ; preds = %_ZNK5boost5beast9websocket6detail9impl_baseILb1EE11rd_deflatedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #35
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !6396 ; 3 uses
  %i.mx = load <2 x ptr>, ptr %1, align 8, !tbaa !82
  store <2 x ptr> %i.mx, ptr %33, align 16, !tbaa !82
  %i.my = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !6396 ; 3 uses
  store ptr %i.na, ptr %i.my, align 16, !tbaa !243
  %i.nb = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull align 8 dereferenceable(16) %i.nc, i64 16, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %33, i64 40 ; 2 uses
  store ptr %33, ptr %i.nd, align 8, !tbaa !6421, !alias.scope !8714
  %i.ne = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 7 uses
  store ptr %i.mw, ptr %i.ne, align 16, !tbaa !243, !alias.scope !8714
  %i.nf = getelementptr inbounds nuw i8, ptr %33, i64 56 ; 7 uses
  store i64 0, ptr %i.nf, align 8, !tbaa !6589
  %.not579 = icmp eq ptr %i.mw, %i.na
  br i1 %.not579, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit.thread, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.lr.ph

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.lr.ph: ; preds = %bb.bv
  %i.ng = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %34, i64 40 ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.nj = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.nk = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.nl = getelementptr inbounds nuw i8, ptr %i.d, i64 664 ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.d, i64 680
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.d, i64 445 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %37, i64 32 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.ns = getelementptr inbounds nuw i8, ptr %37, i64 48 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %37, i64 24
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.nu = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.nv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.3.0..sroa_idx.i385 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %i.nx = getelementptr inbounds nuw i8, ptr %i.d, i64 416 ; 3 uses
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.lr.ph, %.loopexit
  %i.ny = phi ptr [ %i.na, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.lr.ph ], [ %i.ri, %.loopexit ] ; 2 uses
  %i.nz = phi ptr [ %i.mw, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.lr.ph ], [ %i.te, %.loopexit ] ; 7 uses
  %.fr.i.i577 = phi ptr [ %33, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.lr.ph ], [ %.fr13.i, %.loopexit ] ; 4 uses
  %.0576 = phi i1 [ false, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.lr.ph ], [ %.3, %.loopexit ] ; 3 uses
  %.4215575 = phi i64 [ 0, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i.lr.ph ], [ %i.th, %.loopexit ] ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.fr.i.i577, i64 32 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.fr.i.i577, i64 24 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.fr.i.i577, i64 8 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.fr.i.i577, i64 16 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !6396
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !242
  %i.oh = load ptr, ptr %i.oc, align 8, !tbaa !6396
  %i.oi = load i64, ptr %i.nf, align 8            ; 2 uses
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i
  %.sroa.5.0.us21.i.i.i = phi ptr [ %.sroa.5.0.us.i.i.i, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i ], [ %i.nz, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i ] ; 5 uses
  %.0.us20.i.i.i = phi i64 [ %i.os, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i ], [ 0, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.lr.ph.i.i.i ]
  %i.oj = icmp eq ptr %.sroa.5.0.us21.i.i.i, %i.nz
  %i.ok = icmp eq ptr %.sroa.5.0.us21.i.i.i, %i.og
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.5.0.us21.i.i.i, i64 16
  %.sroa.6.0.in.i.i.us.i.i.i = select i1 %i.ok, ptr %i.oa, ptr %i.ol
  %.sroa.6.0.i.i.us.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.us.i.i.i, align 8, !tbaa !15 ; 4 uses
  %i.om = icmp eq ptr %.sroa.5.0.us21.i.i.i, %i.oh ; 2 uses
  br i1 %i.oj, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i
  br i1 %i.om, label %bb.bx, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.on = load i64, ptr %i.ob, align 8, !tbaa !6445
  %i.oo = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i, i64 %i.on)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i

bb.by:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i
  br i1 %i.om, label %bb.bz, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.op = load i64, ptr %i.ob, align 8, !tbaa !6445
  %i.oq = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.us.i.i.i, i64 %i.op)
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i: ; preds = %bb.bz, %bb.by
  %.sroa.6.1.i.i.us.i.i.i = phi i64 [ %i.oq, %bb.bz ], [ %.sroa.6.0.i.i.us.i.i.i, %bb.by ]
  %i.or = call i64 @llvm.usub.sat.i64(i64 %.sroa.6.1.i.i.us.i.i.i, i64 %i.oi)
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i: ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i, %bb.bx, %bb.bw
  %.pn13.i.us.i.i.i = phi i64 [ %i.or, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.us.i.i.i ], [ %i.oo, %bb.bx ], [ %.sroa.6.0.i.i.us.i.i.i, %bb.bw ]
  %i.os = add i64 %.pn13.i.us.i.i.i, %.0.us20.i.i.i ; 2 uses
  %.sroa.5.0.us.i.i.i = load ptr, ptr %.sroa.5.0.us21.i.i.i, align 8, !tbaa !1338 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %.sroa.5.0.us.i.i.i, %i.ny
  br i1 %.not34.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratorneERKS8_.exit.thread.us.i.i.i, !llvm.loop !6605

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit: ; preds = %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.us.i.i.i
  %.not239 = icmp eq i64 %i.os, 0
  br i1 %.not239, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #35
  store i64 0, ptr %i.ng, align 8, !tbaa !2888
  store i64 0, ptr %i.nh, align 8, !tbaa !2890
  store i32 2, ptr %i.ni, align 8, !tbaa !2891
  %i.ot = icmp eq ptr %i.nz, %i.ny
  br i1 %i.ot, label %_ZN5boost5beast13buffers_frontINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENSt11conditionalIXsr26is_mutable_buffer_sequenceIT_EE5valueENS_4asio14mutable_bufferENSB_12const_bufferEE4typeERKSA_.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ou = load ptr, ptr %i.od, align 8, !tbaa !6396
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !242
  %i.ox = icmp eq ptr %i.nz, %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %.sroa.6.0.in.i.i.i347 = select i1 %i.ox, ptr %i.oa, ptr %i.oy
  %.sroa.6.0.i.i.i348 = load i64, ptr %.sroa.6.0.in.i.i.i347, align 8, !tbaa !15 ; 3 uses
  %.sroa.07.0.i.i.i349 = getelementptr inbounds nuw i8, ptr %i.nz, i64 24 ; 2 uses
  %i.oz = load ptr, ptr %i.oc, align 8, !tbaa !6396
  %i.pa = icmp eq ptr %i.nz, %i.oz
  br i1 %i.pa, label %bb.cc, label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.pb = load i64, ptr %i.ob, align 8, !tbaa !6445
  %..i.i.i.i355 = call i64 @llvm.umin.i64(i64 %i.pb, i64 %.sroa.6.0.i.i.i348) ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i349, i64 %..i.i.i.i355
  %i.pd = sub i64 %.sroa.6.0.i.i.i348, %..i.i.i.i355
  br label %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.i

_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.i: ; preds = %bb.cc, %bb.cb
  %.sroa.07.1.i.i.i350 = phi ptr [ %i.pc, %bb.cc ], [ %.sroa.07.0.i.i.i349, %bb.cb ]
  %.sroa.6.1.i.i.i351 = phi i64 [ %i.pd, %bb.cc ], [ %.sroa.6.0.i.i.i348, %bb.cb ] ; 2 uses
  %spec.select.i.i.i352 = call i64 @llvm.umin.i64(i64 %i.oi, i64 %.sroa.6.1.i.i.i351) ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i350, i64 %spec.select.i.i.i352
  %i.pf = sub i64 %.sroa.6.1.i.i.i351, %spec.select.i.i.i352
  br label %_ZN5boost5beast13buffers_frontINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENSt11conditionalIXsr26is_mutable_buffer_sequenceIT_EE5valueENS_4asio14mutable_bufferENSB_12const_bufferEE4typeERKSA_.exit

_ZN5boost5beast13buffers_frontINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENSt11conditionalIXsr26is_mutable_buffer_sequenceIT_EE5valueENS_4asio14mutable_bufferENSB_12const_bufferEE4typeERKSA_.exit: ; preds = %bb.ca, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.i
  %.sroa.06.0.i = phi ptr [ %i.pe, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.i ], [ null, %bb.ca ]
  %.sroa.3.0.i = phi i64 [ %i.pf, %_ZNK5boost5beast14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEE14const_iteratordeEv.exit.i ], [ 0, %bb.ca ]
  store ptr %.sroa.06.0.i, ptr %i.nj, align 8, !tbaa !2892
  store i64 %.sroa.3.0.i, ptr %i.nk, align 8, !tbaa !2893
  %i.pg = load i64, ptr %i.f, align 8, !tbaa !6107 ; 2 uses
  %.not240 = icmp eq i64 %i.pg, 0
  br i1 %.not240, label %bb.co, label %bb.cd

bb.cd:                                            ; preds = %_ZN5boost5beast13buffers_frontINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENSt11conditionalIXsr26is_mutable_buffer_sequenceIT_EE5valueENS_4asio14mutable_bufferENSB_12const_bufferEE4typeERKSA_.exit
  %i.ph = load i64, ptr %i.nm, align 8, !tbaa !972
  %.not241 = icmp eq i64 %i.ph, 0
  br i1 %.not241, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #35
  call void @_ZN5boost5beast18static_buffer_base4dataEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair") align 8 %35, ptr noundef nonnull align 8 dereferenceable(40) %i.nl) #35
  %.sroa.0.0.copyload.i = load ptr, ptr %35, align 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.copyload.i, i64 %i.pg)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35
  br label %bb.cm

bb.cf:                                            ; preds = %bb.cd
  br i1 %.0576, label %.thread479, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #35
  call void @_ZN5boost5beast18static_buffer_base7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair") align 8 %36, ptr noundef nonnull align 8 dereferenceable(40) %i.nl, i64 noundef 1536)
  %i.pi = call noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.no, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  %i.pj = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.pj, label %.thread473, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(40) %i.nl, i64 noundef %i.pi) #35
  %i.pk = load i8, ptr %i.np, align 1
  %i.pl = and i8 %i.pk, 2
  %.not242 = icmp eq i8 %i.pl, 0
  br i1 %.not242, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #35
  %i.pm = load i64, ptr %i.f, align 8, !tbaa !6107
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #35
  call void @_ZN5boost5beast18static_buffer_base4dataEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair") align 8 %38, ptr noundef nonnull align 8 dereferenceable(40) %i.nl) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %37, ptr noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !tbaa.struct !995
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nq, i8 0, i64 24, i1 false), !alias.scope !8719
  %i.pn = load i64, ptr %i.nt, align 8, !tbaa !400, !alias.scope !8719
  %.not.i.i.i.i361 = icmp eq i64 %i.pn, 0
  %.0.v.i.i.i.i362.sroa.sel = select i1 %.not.i.i.i.i361, ptr %.sroa.gep, ptr %i.nq ; 3 uses
  br label %.lr.ph.i.i.i364

.lr.ph.i.i.i364:                                  ; preds = %bb.cj, %bb.ci
  %.01020.i.i.i365 = phi i64 [ %i.pt, %bb.cj ], [ %i.pm, %bb.ci ] ; 4 uses
  %i.po = phi ptr [ %i.pq, %bb.cj ], [ %37, %bb.ci ] ; 2 uses
  %i.pp = phi i64 [ %i.pu, %bb.cj ], [ 0, %bb.ci ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i366 = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %.sroa.2.0.copyload.i.i.i367 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i366, align 8, !tbaa !15, !alias.scope !8719 ; 4 uses
  %.not14.i.i.i368 = icmp ult i64 %.sroa.2.0.copyload.i.i.i367, %.01020.i.i.i365
  br i1 %.not14.i.i.i368, label %bb.cj, label %.thread.i.i.i369

.thread.i.i.i369:                                 ; preds = %.lr.ph.i.i.i364
  store ptr %i.pq, ptr %i.ns, align 8, !tbaa !2854, !alias.scope !8719
  %i.pr = add i64 %i.pp, %.01020.i.i.i365         ; 2 uses
  store i64 %i.pr, ptr %i.nq, align 8, !tbaa !2858, !alias.scope !8719
  %i.ps = sub i64 %.01020.i.i.i365, %.sroa.2.0.copyload.i.i.i367
  store i64 %i.ps, ptr %i.nr, align 8, !tbaa !2859, !alias.scope !8719
  br label %.lr.ph.i374

bb.cj:                                            ; preds = %.lr.ph.i.i.i364
  %i.pt = sub nuw i64 %.01020.i.i.i365, %.sroa.2.0.copyload.i.i.i367
  %i.pu = add i64 %.sroa.2.0.copyload.i.i.i367, %i.pp ; 3 uses
  store i64 %i.pu, ptr %i.nq, align 8, !tbaa !2858, !alias.scope !8719
  %.not.i.i.i370 = icmp eq ptr %i.pq, %.0.v.i.i.i.i362.sroa.sel
  br i1 %.not.i.i.i370, label %..loopexit_crit_edge.i.i.i371, label %.lr.ph.i.i.i364

..loopexit_crit_edge.i.i.i371:                    ; preds = %bb.cj
  store ptr %.0.v.i.i.i.i362.sroa.sel, ptr %i.ns, align 8, !tbaa !2854, !alias.scope !8719
  br label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %..loopexit_crit_edge.i.i.i371, %.thread.i.i.i369
  %i.pv = phi i64 [ %i.pr, %.thread.i.i.i369 ], [ %i.pu, %..loopexit_crit_edge.i.i.i371 ]
  %i.pw = phi ptr [ %i.pq, %.thread.i.i.i369 ], [ %.0.v.i.i.i.i362.sroa.sel, %..loopexit_crit_edge.i.i.i371 ]
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph.i374
  %.sroa.47.015.i375 = phi i64 [ %i.pv, %.lr.ph.i374 ], [ %i.py, %bb.ck ] ; 2 uses
  %.sroa.8.014.i376 = phi ptr [ %37, %.lr.ph.i374 ], [ %i.px, %bb.ck ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %.sroa.0.0.copyload.i.i.i377 = load ptr, ptr %.sroa.8.014.i376, align 8, !tbaa !82
  %.sroa.5.0..sroa_idx.i.i.i378 = getelementptr inbounds nuw i8, ptr %.sroa.8.014.i376, i64 8 ; 2 uses
  %.sroa.5.0.copyload.i.i.i379 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i378, align 8, !tbaa !15
  %spec.select.i.i.i380 = call i64 @llvm.umin.i64(i64 %.sroa.47.015.i375, i64 %.sroa.5.0.copyload.i.i.i379)
  store ptr %.sroa.0.0.copyload.i.i.i377, ptr %5, align 8
  store i64 %spec.select.i.i.i380, ptr %i.nv, align 8
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(4) %i.nu)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.8.014.i376, i64 16 ; 2 uses
  %.sroa.3.0.copyload.i.i.i381 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i378, align 8, !tbaa !15
  %i.py = sub i64 %.sroa.47.015.i375, %.sroa.3.0.copyload.i.i.i381
  %.not.i382 = icmp eq ptr %i.px, %i.pw
  br i1 %.not.i382, label %_ZN5boost5beast9websocket6detail12mask_inplaceINS0_19buffers_prefix_viewINS0_6detail12buffers_pairILb1EEEEEEEvRKT_RSt5arrayIhLm4EE.exit383, label %bb.ck

_ZN5boost5beast9websocket6detail12mask_inplaceINS0_19buffers_prefix_viewINS0_6detail12buffers_pairILb1EEEEEEEvRKT_RSt5arrayIhLm4EE.exit383: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #35
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ch, %_ZN5boost5beast9websocket6detail12mask_inplaceINS0_19buffers_prefix_viewINS0_6detail12buffers_pairILb1EEEEEEEvRKT_RSt5arrayIhLm4EE.exit383
  %i.pz = load i64, ptr %i.f, align 8, !tbaa !6107
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #35
  call void @_ZN5boost5beast18static_buffer_base4dataEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair") align 8 %39, ptr noundef nonnull align 8 dereferenceable(40) %i.nl) #35
  %.sroa.0.0.copyload.i384 = load ptr, ptr %39, align 8
  %.sroa.3.0.copyload.i386 = load i64, ptr %.sroa.3.0..sroa_idx.i385, align 8
  %.sroa.speculated.i.i392 = call i64 @llvm.umin.i64(i64 %.sroa.3.0.copyload.i386, i64 %i.pz)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #35
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ce
  %storemerge685 = phi i64 [ %.sroa.speculated.i.i, %bb.ce ], [ %.sroa.speculated.i.i392, %bb.cl ]
  %storemerge = phi ptr [ %.sroa.0.0.copyload.i, %bb.ce ], [ %.sroa.0.0.copyload.i384, %bb.cl ]
  %.2 = phi i1 [ %.0576, %bb.ce ], [ true, %bb.cl ]
  store i64 %storemerge685, ptr %i.nn, align 8, !tbaa !2897
  store ptr %storemerge, ptr %34, align 8, !tbaa !2898
  %i.qa = load ptr, ptr %i.gr, align 8, !tbaa !858
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 5944
  call void @_ZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(7104) %i.qb, ptr noundef nonnull align 8 dereferenceable(52) %34, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.qc = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.qc, label %.thread473, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.qd = load i64, ptr %i.ng, align 8, !tbaa !2888 ; 2 uses
  %i.qe = load i64, ptr %i.f, align 8, !tbaa !6107
  %i.qf = sub i64 %i.qe, %i.qd
  store i64 %i.qf, ptr %i.f, align 8, !tbaa !6107
  call void @_ZN5boost5beast18static_buffer_base7consumeEm(ptr noundef nonnull align 8 dereferenceable(40) %i.nl, i64 noundef %i.qd) #35
  br label %bb.cu

bb.co:                                            ; preds = %_ZN5boost5beast13buffers_frontINS0_14buffers_suffixINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEEENSt11conditionalIXsr26is_mutable_buffer_sequenceIT_EE5valueENS_4asio14mutable_bufferENSB_12const_bufferEE4typeERKSA_.exit
  %i.qg = load i8, ptr %i.np, align 1
  %i.qh = trunc i8 %i.qg to i1
  br i1 %i.qh, label %bb.cp, label %.thread479

bb.cp:                                            ; preds = %bb.co
  call void @_ZN5boost5beast9websocket6detail9impl_baseILb1EE15inflate_with_ebERNS0_4zlib8z_paramsERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %i.gr, ptr noundef nonnull align 8 dereferenceable(52) %34, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.qi = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.qi, label %.thread473, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qj = load i64, ptr %i.nh, align 8, !tbaa !2890
  %i.qk = icmp eq i64 %i.qj, 0
  br i1 %i.qk, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.ql = getelementptr inbounds nuw i8, ptr %i.d, i64 2248
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !6365 ; 2 uses
  %i.qn = icmp eq i32 %i.qm, 0
  %i.qo = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.qp = load i8, ptr %i.qo, align 4, !range !66
  %i.qq = trunc nuw i8 %i.qp to i1
  %or.cond.i395 = select i1 %i.qn, i1 %i.qq, i1 false
  br i1 %or.cond.i395, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qr = icmp eq i32 %i.qm, 1
  %i.qs = getelementptr inbounds nuw i8, ptr %i.d, i64 125
  %i.qt = load i8, ptr %i.qs, align 1, !range !66
  %i.qu = trunc nuw i8 %i.qt to i1
  %or.cond6.i = select i1 %i.qr, i1 %i.qu, i1 false
end_hunk_1
