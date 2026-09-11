Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/basic_stream?download=true
inline.NumInlined: 19842
inline.NumDeleted: 6964
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_:bb.a
bb.g:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.f, align 8, !tbaa !1572
  %i.m = icmp eq ptr %i.k, %i.i
  br i1 %i.m, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !5243

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %.ptr5.i.i, ptr %i.f, align 8, !tbaa !1572
  store i8 2, ptr %i.n, align 8, !tbaa !1619
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !277
  %.not.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.o, ptr %i.f, align 8, !tbaa !1572
  store i8 3, ptr %i.n, align 8, !tbaa !1619
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !tbaa !277
  %.not.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1621, !noalias !5258
  store ptr %i.q, ptr %i.f, align 8, !tbaa !1563
  store i8 4, ptr %i.n, align 8, !tbaa !1619
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.h:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !1630, !nonnull !310, !align !313 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1572
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !1572
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !1616 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %._crit_edge.i.i11, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %bb.h, %bb.i
  %i.y = phi ptr [ %i.z, %bb.i ], [ %i.u, %bb.h ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.3.0.copyload.i.i9 = load i64, ptr %.sroa.3.0..sroa_idx.i.i8, align 8, !tbaa !277
  %.not.i.i10 = icmp eq i64 %.sroa.3.0.copyload.i.i9, 0
  br i1 %.not.i.i10, label %bb.i, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.i:                                             ; preds = %.lr.ph.i.i7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.s, align 8, !tbaa !1572
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %._crit_edge.i.i11, label %.lr.ph.i.i7, !llvm.loop !5248

._crit_edge.i.i11:                                ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !1572
  store i8 3, ptr %i.ab, align 8, !tbaa !1619
  %.sroa.3.0..sroa_idx.i.i.i12 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.3.0.copyload.i.i.i13 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i12, align 8, !tbaa !277
  %.not.i.i.i14 = icmp eq i64 %.sroa.3.0.copyload.i.i.i13, 0
  br i1 %.not.i.i.i14, label %._crit_edge.i.i.i15, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

._crit_edge.i.i.i15:                              ; preds = %._crit_edge.i.i11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1621, !noalias !5259
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1563
  store i8 4, ptr %i.ab, align 8, !tbaa !1619
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !1630, !nonnull !310, !align !313 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1572
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !1572
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !1616
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 3 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %._crit_edge.i.i20, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %bb.j, %bb.k
  %i.al = phi ptr [ %i.am, %bb.k ], [ %i.ah, %bb.j ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i17 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.3.0.copyload.i.i18 = load i64, ptr %.sroa.3.0..sroa_idx.i.i17, align 8, !tbaa !277
  %.not.i.i19 = icmp eq i64 %.sroa.3.0.copyload.i.i18, 0
  br i1 %.not.i.i19, label %bb.k, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.k:                                             ; preds = %.lr.ph.i.i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  store ptr %i.am, ptr %i.af, align 8, !tbaa !1572
  %i.an = icmp eq ptr %i.am, %i.aj
  br i1 %i.an, label %._crit_edge.i.i20, label %.lr.ph.i.i16, !llvm.loop !5253

._crit_edge.i.i20:                                ; preds = %bb.k, %bb.j
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !1621, !noalias !5260
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !1563
  store i8 4, ptr %i.ap, align 8, !tbaa !1619
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.l:                                             ; preds = %bb.a
  %i.aq = load ptr, ptr %1, align 8, !tbaa !1630, !nonnull !310, !align !313
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1621
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1284
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !1621
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.m:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %1, align 8, !tbaa !1630, !nonnull !310, !align !313
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1572
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.pn.i = phi ptr [ %i.aw, %bb.m ], [ %i.bc, %bb.q ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  store ptr %storemerge.i, ptr %i.av, align 8, !tbaa !1572
  %i.ax = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.o, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i, !prof !1579

bb.o:                                             ; preds = %bb.n
  %i.az = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #36
  %.not.i.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr @.str.112, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, align 8, !tbaa !470
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 8), align 8, !tbaa !471
  %i.ba = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #36
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i

_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bb = icmp eq ptr %.pn.i, @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb
  br i1 %i.bb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !1572 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.3.0.copyload.i.i22 = load i64, ptr %.sroa.3.0..sroa_idx.i.i21, align 8, !tbaa !277
  %.not.i.i23 = icmp eq i64 %.sroa.3.0.copyload.i.i22, 0
  br i1 %.not.i.i23, label %bb.n, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit, !llvm.loop !147

bb.r:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1630, !nonnull !310, !align !313 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i8 0, ptr %i.be, align 8, !tbaa !1628
  store i8 6, ptr %i.bf, align 8, !tbaa !1619
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.118)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr @.str.115, ptr %3, align 8, !tbaa !405
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.68, ptr %i.bg, align 8, !tbaa !406
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 266, ptr %i.bh, align 8, !tbaa !407
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 59, ptr %i.bi, align 4, !tbaa !408
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #38
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit: ; preds = %bb.q, %.lr.ph.i.i16, %.lr.ph.i.i7, %.lr.ph.i.i, %bb.r, %._crit_edge.i.i20, %._crit_edge.i.i.i15, %._crit_edge.i.i11, %._crit_edge.i.i.i.i, %._crit_edge.i.i.i, %._crit_edge.i.i, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>::const_iterator::increment", align 8 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>>::const_iterator", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !1633, !nonnull !310, !align !313 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1624, !noalias !5265 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1626, !noalias !5265 ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !1624
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !1626
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !1616, !noalias !5265 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !1619, !noalias !5265 ; 2 uses
  switch i8 %i.o, label %bb.d [
    i8 0, label %.thread
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.p, align 8, !tbaa !1624
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !1626
  store ptr %i.l, ptr %i.q, align 8, !tbaa !1616
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !1619
  br label %.sink.split.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !1572, !noalias !5265
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.u, align 8, !tbaa !1624
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !1626
  store ptr %i.l, ptr %i.v, align 8, !tbaa !1616
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.x, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !1572, !noalias !5265
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.z, align 8, !tbaa !1624
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !1626
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !1616
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !1572, !noalias !5265
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !1624
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !1626
  store ptr %i.l, ptr %i.af, align 8, !tbaa !1616
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !1621, !noalias !5265
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !1624
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.al, align 8, !tbaa !1626
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !1616
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !1563
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !1572, !noalias !5265
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !1624
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !1626
  store ptr %i.l, ptr %i.ap, align 8, !tbaa !1616
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.m, align 8, !tbaa !280, !noalias !5265
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.at, align 8, !tbaa !1624
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !1626
  store ptr %i.l, ptr %i.au, align 8, !tbaa !1616
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.as, ptr %i.aw, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.av, %bb.j ], [ %i.aq, %bb.i ], [ %i.al, %bb.h ], [ %i.ag, %bb.g ], [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ay = phi ptr [ %i.au, %bb.j ], [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.af, %bb.g ], [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.az = phi ptr [ %i.at, %bb.j ], [ %i.ao, %bb.i ], [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.o, ptr %i.ba, align 8, !tbaa !1619
  br label %.sink.split.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !1572, !noalias !5265
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bc, align 8, !tbaa !1624
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !1626
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bf = load i8, ptr %i.f, align 8, !tbaa !280, !noalias !5265
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !1624
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !1626
  store i8 %i.bf, ptr %i.bh, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %.thread, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = phi ptr [ %i.bi, %bb.l ], [ %i.be, %bb.k ], [ %i.ax, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %.thread ] ; 2 uses
  %i.bk = phi ptr [ %i.bh, %bb.l ], [ %i.bd, %bb.k ], [ %i.ay, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.thread ]
  %i.bl = phi ptr [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.thread ]
  store i8 %i.h, ptr %i.bj, align 8, !tbaa !1626
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i.i.i.i.i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59
  %i.bm = phi ptr [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59 ], [ %i.bj, %.sink.split.i.i.i.i.i.i ] ; 2 uses
  %i.bn = phi ptr [ %i.j, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59 ], [ %i.bk, %.sink.split.i.i.i.i.i.i ] ; 3 uses
  %i.bo = phi ptr [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59 ], [ %i.bl, %.sink.split.i.i.i.i.i.i ] ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.bp, align 8, !tbaa !1634
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.ah, %bb.m
  %i.bx = phi ptr [ %i.c, %bb.m ], [ %.pre, %bb.ah ] ; 2 uses
  %.011 = phi i64 [ %1, %bb.m ], [ %i.du, %bb.ah ] ; 4 uses
  %i.by = icmp eq ptr %i.bx, %i.c
  br i1 %i.by, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.n
  %6 = load ptr, ptr %i.bo, align 8, !tbaa !1624
  %7 = icmp eq ptr %6, %i.c
  br i1 %7, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %.pre49 = load i8, ptr %i.bm, align 8, !tbaa !1626
  %.not.i.i.i.i = icmp eq i8 %.pre49, 3
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.n, %._crit_edge, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !5266)
  %8 = load ptr, ptr %i.bo, align 8, !tbaa !1624, !noalias !5266
  store ptr %8, ptr %5, align 8, !tbaa !1624, !alias.scope !5266
  store i8 0, ptr %i.br, align 8, !tbaa !1626, !alias.scope !5266
  %9 = load i8, ptr %i.bm, align 8, !tbaa !1626, !noalias !5266 ; 3 uses
  switch i8 %9, label %bb.q [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i
    i8 1, label %bb.r
    i8 2, label %bb.z
    i8 3, label %bb.aa
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !1616, !noalias !5266
  store ptr %i.bz, ptr %i.bq, align 8, !tbaa !1616, !alias.scope !5266
  store i8 0, ptr %i.bu, align 8, !tbaa !1619, !alias.scope !5266
  %i.ca = load i8, ptr %i.bv, align 8, !tbaa !1619, !noalias !5266 ; 2 uses
  switch i8 %i.ca, label %bb.s [
    i8 0, label %.sink.split.i.i.i.i.i.i.i
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
    i8 5, label %bb.x
    i8 6, label %bb.y
  ]

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !1572, !noalias !5266
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !1572, !alias.scope !5266
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !1572, !noalias !5266
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !1572, !alias.scope !5266
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.bt, align 8, !tbaa !1572, !noalias !5266
  store ptr %i.cd, ptr %i.bs, align 8, !tbaa !1572, !alias.scope !5266
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !1621, !noalias !5266
  store ptr %i.ce, ptr %i.bs, align 8, !tbaa !1563, !alias.scope !5266
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.bt, align 8, !tbaa !1572, !noalias !5266
  store ptr %i.cf, ptr %i.bs, align 8, !tbaa !1572, !alias.scope !5266
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.r
  %i.cg = load i8, ptr %i.bt, align 8, !tbaa !280, !noalias !5266
  store i8 %i.cg, ptr %i.bs, align 8, !tbaa !280, !alias.scope !5266
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  store i8 %i.ca, ptr %i.bu, align 8, !tbaa !1619, !alias.scope !5266
  br label %.sink.split.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !1572, !noalias !5266
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !1572, !alias.scope !5266
  br label %.sink.split.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.p
  %i.ci = load i8, ptr %i.bn, align 1, !tbaa !280, !noalias !5266
  store i8 %i.ci, ptr %i.bq, align 8, !tbaa !280, !alias.scope !5266
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.aa, %bb.z, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r
  store i8 %9, ptr %i.br, align 8, !tbaa !1626, !alias.scope !5266
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.p
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !1634, !alias.scope !5266
  %i.cj = zext nneg i8 %9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !5266
  store ptr %i.bo, ptr %4, align 8, !tbaa !1636, !noalias !5266
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !5266
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !1634 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %5, align 8, !tbaa !1624
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !1624
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.ab, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i
  %.pre.i = load i8, ptr %i.br, align 8, !tbaa !1626
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.ab:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.cq = load i8, ptr %i.br, align 8, !tbaa !1626 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !1626
  %.not.i.i.i = icmp eq i8 %i.cq, %i.cs
  br i1 %.not.i.i.i, label %bb.ac, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.ac:                                            ; preds = %bb.ab
  switch i8 %i.cq, label %bb.ad [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
    i8 1, label %bb.ae
    i8 2, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i
    i8 3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
  ]

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.bq, align 8, !tbaa !1616
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !1616
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %bb.af, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cx = load i8, ptr %i.bu, align 8, !tbaa !1619 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !1619
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cx, %i.cz
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.da = add i8 %i.cx, -1
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.da, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ag
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !314
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !314
  %i.dc = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, %i.db
  br i1 %i.dc, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i: ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.bq, align 8, !tbaa !1572
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !1572
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ac, %bb.ac
  %i.dg = zext nneg i8 %i.cq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %5, ptr %3, align 8, !tbaa !1636
  %i.dh = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.di = extractvalue { ptr, i64 } %i.dh, 1
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !1634
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !1612
  %i.dm = call i64 @llvm.usub.sat.i64(i64 %i.di, i64 %i.dl)
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.af, %bb.ae, %bb.ab, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i
  %i.dn = phi i8 [ %.pre.i, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i ], [ 1, %bb.af ], [ 1, %bb.ae ], [ %i.cq, %bb.ab ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ 2, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i ]
  %i.do = zext i8 %i.dn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %5, ptr %2, align 8, !tbaa !1636
  %i.dp = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.do, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.dq = extractvalue { ptr, i64 } %i.dp, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
  %.pn.i = phi i64 [ %i.dm, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i ], [ %i.dq, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.not = icmp ult i64 %.pn.i, %.011
  br i1 %.not, label %bb.ah, label %.thread36

.thread36:                                        ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !1637
  %i.ds = add i64 %i.dr, %.011
  store i64 %i.ds, ptr %i.a, align 8, !tbaa !1637
  %i.dt = sub i64 %.011, %.pn.i
  store i64 %i.dt, ptr %i.b, align 8, !tbaa !1638
  br label %.loopexit

bb.ah:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit
  %i.du = sub nuw i64 %.011, %.pn.i
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !1637
  %i.dw = add i64 %i.dv, %.pn.i
  store i64 %i.dw, ptr %i.a, align 8, !tbaa !1637
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !1634
  br label %bb.n

.loopexit:                                        ; preds = %bb.o, %.thread36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1634 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %0, align 8, !tbaa !1624
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !1624
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !1626
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !1626  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1626
  %.not.i.i = icmp eq i8 %i.j, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread

bb.c:                                             ; preds = %bb.b
  switch i8 %i.j, label %bb.d [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3
    i8 1, label %bb.e
    i8 2, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit
    i8 3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !1616
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !1616
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1619  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = load i8, ptr %i.t, align 8, !tbaa !1619
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !314
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !314
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit: ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !1572
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !1572
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit
  %i.ab = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %0, ptr %2, align 8, !tbaa !1636
  %i.ac = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !1634
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1612
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ae) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %spec.select.i
  %i.aj = sub i64 %i.ae, %spec.select.i
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.ai, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.aj, 1
  br label %bb.h

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread: ; preds = %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge, %bb.f, %bb.e, %bb.b, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit
  %i.ak = phi i8 [ %.pre, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge ], [ 1, %bb.f ], [ 1, %bb.e ], [ %i.j, %bb.b ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i ], [ 2, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit ]
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  store ptr %0, ptr %1, align 8, !tbaa !1636
  %i.am = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3 ], [ %i.am, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %4 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  switch i64 %0, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.117)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr @.str.115, ptr %5, align 8, !tbaa !405
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.68, ptr %i.a, align 8, !tbaa !406
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 205, ptr %i.b, align 8, !tbaa !407
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 62, ptr %i.c, align 4, !tbaa !408
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #38
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.s, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.g:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1640, !nonnull !310, !align !313 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1572
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !1572
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !1624
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %i.l = phi ptr [ %i.m, %bb.h ], [ %i.h, %bb.g ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !277
  %.not.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !1572
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !148

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !1628
  store i8 3, ptr %i.o, align 8, !tbaa !1626
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.118)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr @.str.115, ptr %3, align 8, !tbaa !405
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.68, ptr %i.p, align 8, !tbaa !406
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 266, ptr %i.q, align 8, !tbaa !407
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
end_hunk_0
begin_hunk_1_@_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS5_6detail11buffers_refINS5_19buffers_prefix_viewIRKNS5_14buffers_suffixINS5_16buffers_cat_viewIJNSF_INSI_IJNS0_12const_bufferESJ_SJ_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSK_10chunk_crlfEEEEEESJ_EEEEEEEEENSK_6detail13write_some_opINSZ_8write_opINSZ_12write_msg_opINS1_13spawn_handlerIS9_FvNS_6system10error_codeEmEvEESB_Lb0ENSK_17basic_string_bodyIcSt11char_traitsIcESM_EESN_EESB_NSZ_18serializer_is_doneELb0ES1B_SN_EESB_Lb0ES1B_SN_EEEES15_mEESaIvEE3ptr5resetEv:bb.a

bb.i:                                             ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.af) #36, !inline_history !1642
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS5_6detail11buffers_refINS5_19buffers_prefix_viewIRKNS5_14buffers_suffixINS5_16buffers_cat_viewIJNSF_INSI_IJNS0_12const_bufferESJ_SJ_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSK_10chunk_crlfEEEEEESJ_EEEEEEEEENSK_6detail13write_some_opINSZ_8write_opINSZ_12write_msg_opINS1_13spawn_handlerIS9_FvNS_6system10error_codeEmEvEESB_Lb0ENSK_17basic_string_bodyIcSt11char_traitsIcESM_EESN_EESB_NSZ_18serializer_is_doneELb0ES1B_SN_EESB_Lb0ES1B_SN_EEEES15_mEESaIvEED2Ev.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS5_6detail11buffers_refINS5_19buffers_prefix_viewIRKNS5_14buffers_suffixINS5_16buffers_cat_viewIJNSF_INSI_IJNS0_12const_bufferESJ_SJ_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSK_10chunk_crlfEEEEEESJ_EEEEEEEEENSK_6detail13write_some_opINSZ_8write_opINSZ_12write_msg_opINS1_13spawn_handlerIS9_FvNS_6system10error_codeEmEvEESB_Lb0ENSK_17basic_string_bodyIcSt11char_traitsIcESM_EESN_EESB_NSZ_18serializer_is_doneELb0ES1B_SN_EESB_Lb0ES1B_SN_EEEES15_mEESaIvEED2Ev.exit: ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.ag) #36, !inline_history !1642
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS_4asio6detail13spawn_handlerINS5_15any_io_executorEFvNS_6system10error_codeEmEvEENS0_12basic_streamINS5_2ip3tcpES8_NS0_21unlimited_rate_policyEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISL_EEEES8_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.ah) #36, !inline_history !1642
  store ptr null, ptr %i.a, align 8, !tbaa !1794
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS5_6detail11buffers_refINS5_19buffers_prefix_viewIRKNS5_14buffers_suffixINS5_16buffers_cat_viewIJNSF_INSI_IJNS0_12const_bufferESJ_SJ_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSK_10chunk_crlfEEEEEESJ_EEEEEEEEENSK_6detail13write_some_opINSZ_8write_opINSZ_12write_msg_opINS1_13spawn_handlerIS9_FvNS_6system10error_codeEmEvEESB_Lb0ENSK_17basic_string_bodyIcSt11char_traitsIcESM_EESN_EESB_NSZ_18serializer_is_doneELb0ES1B_SN_EESB_Lb0ES1B_SN_EEEES15_mEESaIvEED2Ev.exit, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1793 ; 5 uses
  %.not1 = icmp eq ptr %i.aj, null
  br i1 %.not1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not3 = icmp eq ptr %i.ak, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !314
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.l, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !314
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.l, label %.thread.i.i

bb.l:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.lcssa.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 728
  %i.at = load i8, ptr %i.as, align 1, !tbaa !280
  store i8 %i.at, ptr %i.aj, align 1, !tbaa !280
  store ptr %i.aj, ptr %i.ar, align 8, !tbaa !314
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS6_6detail11buffers_refINS6_19buffers_prefix_viewIRKNS6_14buffers_suffixINS6_16buffers_cat_viewIJNSG_INSJ_IJNS0_12const_bufferESK_SK_NS6_4http12basic_fieldsISaIcEE6writer11field_rangeENSL_10chunk_crlfEEEEEESK_EEEEEEEEENSL_6detail13write_some_opINS10_8write_opINS10_12write_msg_opINS1_13spawn_handlerISA_FvNS_6system10error_codeEmEvEESC_Lb0ENSL_17basic_string_bodyIcSt11char_traitsIcESN_EESO_EESC_NS10_18serializer_is_doneELb0ES1C_SO_EESC_Lb0ES1C_SO_EEEES16_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS1K_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.k
  tail call void @free(ptr noundef nonnull %i.aj) #36
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS6_6detail11buffers_refINS6_19buffers_prefix_viewIRKNS6_14buffers_suffixINS6_16buffers_cat_viewIJNSG_INSJ_IJNS0_12const_bufferESK_SK_NS6_4http12basic_fieldsISaIcEE6writer11field_rangeENSL_10chunk_crlfEEEEEESK_EEEEEEEEENSL_6detail13write_some_opINS10_8write_opINS10_12write_msg_opINS1_13spawn_handlerISA_FvNS_6system10error_codeEmEvEESC_Lb0ENSL_17basic_string_bodyIcSt11char_traitsIcESN_EESO_EESC_NS10_18serializer_is_doneELb0ES1C_SO_EESC_Lb0ES1C_SO_EEEES16_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS1K_m.exit

_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS6_6detail11buffers_refINS6_19buffers_prefix_viewIRKNS6_14buffers_suffixINS6_16buffers_cat_viewIJNSG_INSJ_IJNS0_12const_bufferESK_SK_NS6_4http12basic_fieldsISaIcEE6writer11field_rangeENSL_10chunk_crlfEEEEEESK_EEEEEEEEENSL_6detail13write_some_opINS10_8write_opINS10_12write_msg_opINS1_13spawn_handlerISA_FvNS_6system10error_codeEmEvEESC_Lb0ENSL_17basic_string_bodyIcSt11char_traitsIcESN_EESO_EESC_NS10_18serializer_is_doneELb0ES1C_SO_EESC_Lb0ES1C_SO_EEEES16_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS1K_m.exit: ; preds = %bb.l, %.thread.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !1793
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS6_6detail11buffers_refINS6_19buffers_prefix_viewIRKNS6_14buffers_suffixINS6_16buffers_cat_viewIJNSG_INSJ_IJNS0_12const_bufferESK_SK_NS6_4http12basic_fieldsISaIcEE6writer11field_rangeENSL_10chunk_crlfEEEEEESK_EEEEEEEEENSL_6detail13write_some_opINS10_8write_opINS10_12write_msg_opINS1_13spawn_handlerISA_FvNS_6system10error_codeEmEvEESC_Lb0ENSL_17basic_string_bodyIcSt11char_traitsIcESN_EESO_EESC_NS10_18serializer_is_doneELb0ES1C_SO_EESC_Lb0ES1C_SO_EEEES16_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS1K_m.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast19buffers_prefix_viewINS3_6detail11buffers_refINS4_IRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS6_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEES9_EEEEEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #5 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.1031", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS4_6detail11buffers_refINS5_IRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS7_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEES3_EEEEEEEEEEEEC2ERKSP_(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1772
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1796
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1774
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %i.k = zext i1 %i.j to i32
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i8, ptr %i.l, align 4, !tbaa !1773
  %i.n = and i8 %i.m, 16
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.i, align 8, !tbaa !765
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1797
  %i.r = icmp ult i64 %i.o, %i.q
  %spec.select = select i1 %i.r, i32 2, i32 %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEEEEC2ERKSN_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %4 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %7 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %8 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %9 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %10 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %11 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %12 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %13 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %14 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %15 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %16 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %17 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %18 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %19 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %20 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %21 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %22 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %23 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %24 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %25 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>>::const_iterator", align 8 ; 8 uses
  %26 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>> &>::const_iterator", align 8 ; 13 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1650, !noalias !5767 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1637, !noalias !5768
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1633, !noalias !5768, !nonnull !310, !align !313 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1624, !noalias !5769 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !1626, !noalias !5769 ; 4 uses
  switch i8 %i.i, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !1616, !noalias !5769 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1619, !noalias !5769 ; 2 uses
  switch i8 %i.m, label %bb.d [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !1572, !noalias !5769
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.f:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !1572, !noalias !5769
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.g:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !1572, !noalias !5769
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.h:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !1621, !noalias !5769
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.i:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !1572, !noalias !5769
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.j:                                             ; preds = %bb.c
  %i.s = load i8, ptr %i.k, align 8, !tbaa !280, !noalias !5769
  %.sroa.26.32.insert.ext = zext i8 %i.s to i64
  %i.t = inttoptr i64 %.sroa.26.32.insert.ext to ptr
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.k:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !1572, !noalias !5769
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.l:                                             ; preds = %bb.a
  %i.v = load i8, ptr %i.g, align 8, !tbaa !280, !noalias !5769
  %.sroa.14.24.insert.ext = zext i8 %i.v to i64
  %i.w = inttoptr i64 %.sroa.14.24.insert.ext to ptr
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit: ; preds = %bb.a, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.c, %bb.l, %bb.k
  %.sroa.38.1 = phi i8 [ undef, %bb.a ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ %i.m, %bb.c ], [ undef, %bb.l ], [ undef, %bb.k ] ; 2 uses
  %.sroa.26.2 = phi ptr [ undef, %bb.a ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ %i.q, %bb.h ], [ %i.r, %bb.i ], [ %i.t, %bb.j ], [ undef, %bb.c ], [ undef, %bb.l ], [ undef, %bb.k ] ; 6 uses
  %.sroa.14.2 = phi ptr [ undef, %bb.a ], [ %i.j, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ], [ %i.j, %bb.c ], [ %i.w, %bb.l ], [ %i.u, %bb.k ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1624
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !1626 ; 4 uses
  switch i8 %i.ac, label %bb.m [
    i8 0, label %bb.x
    i8 1, label %bb.n
    i8 2, label %bb.v
    i8 3, label %bb.w
  ]

bb.m:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  unreachable

bb.n:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !1616 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !1619 ; 2 uses
  switch i8 %i.ag, label %bb.o [
    i8 0, label %bb.x
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !1572
  br label %bb.x

bb.q:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !1572
  br label %bb.x

bb.r:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !1572
  br label %bb.x

bb.s:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !1621
  br label %bb.x

bb.t:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !1572
  br label %bb.x

bb.u:                                             ; preds = %bb.n
  %i.am = load i8, ptr %i.ae, align 8, !tbaa !280
  %.sroa.10.32.insert.ext = zext i8 %i.am to i64
  %i.an = inttoptr i64 %.sroa.10.32.insert.ext to ptr
  br label %bb.x

bb.v:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !1572
  br label %bb.x

bb.w:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  %i.ap = load i8, ptr %i.aa, align 8, !tbaa !280
  %.sroa.4.24.insert.ext = zext i8 %i.ap to i64
  %i.aq = inttoptr i64 %.sroa.4.24.insert.ext to ptr
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.w, %bb.v, %bb.n
  %.sroa.22.1 = phi i8 [ undef, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 6, %bb.u ], [ undef, %bb.w ], [ undef, %bb.v ], [ %i.ag, %bb.n ] ; 2 uses
  %.sroa.10.2 = phi ptr [ undef, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit ], [ %i.ah, %bb.p ], [ %i.ai, %bb.q ], [ %i.aj, %bb.r ], [ %i.ak, %bb.s ], [ %i.al, %bb.t ], [ %i.an, %bb.u ], [ undef, %bb.w ], [ undef, %bb.v ], [ undef, %bb.n ] ; 2 uses
  %.sroa.4.1 = phi ptr [ undef, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit ], [ %i.ad, %bb.p ], [ %i.ad, %bb.q ], [ %i.ad, %bb.r ], [ %i.ad, %bb.s ], [ %i.ad, %bb.t ], [ %i.ad, %bb.u ], [ %i.aq, %bb.w ], [ %i.ao, %bb.v ], [ %i.ad, %bb.n ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1634
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  store ptr %i.a, ptr %26, align 8
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  store i64 %i.c, ptr %.sroa.295.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr %i.f, ptr %i.at, align 8, !tbaa !1624
  %i.au = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 17 uses
  %i.av = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 5 uses
  store i8 0, ptr %i.av, align 8, !tbaa !1626
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %.noexc
    i8 1, label %bb.y
    i8 2, label %bb.ag
    i8 3, label %bb.ah
  ]

default.unreachable:                              ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  store ptr %.sroa.14.2, ptr %i.au, align 8, !tbaa !1616
  %i.aw = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  store i8 0, ptr %i.ax, align 8, !tbaa !1619
  switch i8 %.sroa.38.1, label %bb.z [
    i8 0, label %.sink.split.i.i.i.i.i.i.i7
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ac
    i8 4, label %bb.ad
    i8 5, label %bb.ae
    i8 6, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  store ptr %.sroa.26.2, ptr %i.aw, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i8

bb.ab:                                            ; preds = %bb.y
  store ptr %.sroa.26.2, ptr %i.aw, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i8

bb.ac:                                            ; preds = %bb.y
  store ptr %.sroa.26.2, ptr %i.aw, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i8

bb.ad:                                            ; preds = %bb.y
  store ptr %.sroa.26.2, ptr %i.aw, align 8, !tbaa !1563
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i8

bb.ae:                                            ; preds = %bb.y
  store ptr %.sroa.26.2, ptr %i.aw, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i8

bb.af:                                            ; preds = %bb.y
  %i.ay = ptrtoint ptr %.sroa.26.2 to i64
  %.sroa.26.32.extract.trunc = trunc i64 %i.ay to i8
  store i8 %.sroa.26.32.extract.trunc, ptr %i.aw, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i8

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i8:           ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  store i8 %.sroa.38.1, ptr %i.ax, align 8, !tbaa !1619
  br label %.sink.split.i.i.i.i.i.i.i7

bb.ag:                                            ; preds = %bb.x
  store ptr %.sroa.14.2, ptr %i.au, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i7

bb.ah:                                            ; preds = %bb.x
  %i.az = ptrtoint ptr %.sroa.14.2 to i64
  %.sroa.14.24.extract.trunc = trunc i64 %i.az to i8
  store i8 %.sroa.14.24.extract.trunc, ptr %i.au, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i.i7

.sink.split.i.i.i.i.i.i.i7:                       ; preds = %bb.ah, %bb.ag, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i8, %bb.y
  store i8 %i.i, ptr %i.av, align 8, !tbaa !1626
  br label %.noexc

.noexc:                                           ; preds = %.sink.split.i.i.i.i.i.i.i7, %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %26, i64 56 ; 2 uses
  store ptr %i.d, ptr %i.ba, align 8, !tbaa !1634
  switch i8 %i.ac, label %bb.ai [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit12
    i8 1, label %bb.aj
    i8 2, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit12
    i8 3, label %bb.al
  ]

bb.ai:                                            ; preds = %.noexc
  unreachable

bb.aj:                                            ; preds = %.noexc
  %i.bb = icmp eq i8 %.sroa.22.1, 6
  br i1 %i.bb, label %bb.ak, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit12

bb.ak:                                            ; preds = %bb.aj
  %i.bc = ptrtoint ptr %.sroa.10.2 to i64
  %.sroa.11.32.insert.ext = and i64 %i.bc, 255
  %i.bd = inttoptr i64 %.sroa.11.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit12

bb.al:                                            ; preds = %.noexc
  %i.be = ptrtoint ptr %.sroa.4.1 to i64
  %.sroa.6.24.insert.ext = and i64 %i.be, 255
  %i.bf = inttoptr i64 %.sroa.6.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit12

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit12: ; preds = %bb.aj, %.noexc, %.noexc, %bb.ak, %bb.al
  %.sroa.18.1 = phi i8 [ undef, %.noexc ], [ 6, %bb.ak ], [ undef, %bb.al ], [ undef, %.noexc ], [ %.sroa.22.1, %bb.aj ] ; 2 uses
  %.sroa.11.2 = phi ptr [ undef, %.noexc ], [ %i.bd, %bb.ak ], [ undef, %bb.al ], [ undef, %.noexc ], [ %.sroa.10.2, %bb.aj ]
  %.sroa.6.1 = phi ptr [ %.sroa.4.1, %.noexc ], [ %.sroa.4.1, %bb.ak ], [ %i.bf, %bb.al ], [ %.sroa.4.1, %.noexc ], [ %.sroa.4.1, %bb.aj ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 5 uses
  %i.bn = add nsw i8 %.sroa.18.1, -6
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bn, -5
end_hunk_1
begin_hunk_2_@_ZN5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEEEE5setupEm:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1624, !noalias !5896 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.k = load i8, ptr %i.j, align 8, !tbaa !1626, !noalias !5896 ; 2 uses
  switch i8 %i.k, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit.thread59
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit.thread59: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.l, align 8
  %.sroa.530.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.530.0..sroa_idx63, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.m, align 8, !tbaa !1624
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.o, align 8, !tbaa !1626
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !1616, !noalias !5896 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1619, !noalias !5896 ; 2 uses
  switch i8 %i.s, label %bb.d [
    i8 0, label %.thread70
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

.thread70:                                        ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.t, align 8
  %.sroa.530.0..sroa_idx5573 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.530.0..sroa_idx5573, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.u, align 8, !tbaa !1624
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !1626
  store ptr %i.p, ptr %i.v, align 8, !tbaa !1616
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.x, align 8, !tbaa !1619
  br label %.sink.split.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !1572, !noalias !5896
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.z, align 8
  %.sroa.530.0..sroa_idx5577 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.530.0..sroa_idx5577, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.aa, align 8, !tbaa !1624
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.ac, align 8, !tbaa !1626
  store ptr %i.p, ptr %i.ab, align 8, !tbaa !1616
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !1572, !noalias !5896
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.af, align 8
  %.sroa.530.0..sroa_idx5584 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.530.0..sroa_idx5584, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.ag, align 8, !tbaa !1624
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !1626
  store ptr %i.p, ptr %i.ah, align 8, !tbaa !1616
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ae, ptr %i.aj, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !1572, !noalias !5896
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.al, align 8
  %.sroa.530.0..sroa_idx5590 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.530.0..sroa_idx5590, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.am, align 8, !tbaa !1624
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.ao, align 8, !tbaa !1626
  store ptr %i.p, ptr %i.an, align 8, !tbaa !1616
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !1621, !noalias !5896
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.ar, align 8
  %.sroa.530.0..sroa_idx5596 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.530.0..sroa_idx5596, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.as, align 8, !tbaa !1624
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.au, align 8, !tbaa !1626
  store ptr %i.p, ptr %i.at, align 8, !tbaa !1616
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !1563
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !1572, !noalias !5896
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.ax, align 8
  %.sroa.530.0..sroa_idx55102 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.530.0..sroa_idx55102, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.ay, align 8, !tbaa !1624
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.ba, align 8, !tbaa !1626
  store ptr %i.p, ptr %i.az, align 8, !tbaa !1616
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.bc = load i8, ptr %i.q, align 8, !tbaa !280, !noalias !5896
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.bd, align 8
  %.sroa.530.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.530.0..sroa_idx55, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.be, align 8, !tbaa !1624
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.bg, align 8, !tbaa !1626
  store ptr %i.p, ptr %i.bf, align 8, !tbaa !1616
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.bc, ptr %i.bh, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bi = phi ptr [ %i.bg, %bb.j ], [ %i.ba, %bb.i ], [ %i.au, %bb.h ], [ %i.ao, %bb.g ], [ %i.ai, %bb.f ], [ %i.ac, %bb.e ]
  %i.bj = phi ptr [ %i.bf, %bb.j ], [ %i.az, %bb.i ], [ %i.at, %bb.h ], [ %i.an, %bb.g ], [ %i.ah, %bb.f ], [ %i.ab, %bb.e ]
  %i.bk = phi ptr [ %i.be, %bb.j ], [ %i.ay, %bb.i ], [ %i.as, %bb.h ], [ %i.am, %bb.g ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ]
  %i.bl = phi ptr [ %i.bd, %bb.j ], [ %i.ax, %bb.i ], [ %i.ar, %bb.h ], [ %i.al, %bb.g ], [ %i.af, %bb.f ], [ %i.z, %bb.e ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.s, ptr %i.bm, align 8, !tbaa !1619
  br label %.sink.split.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !1572, !noalias !5896
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.bo, align 8
  %.sroa.530.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.530.0..sroa_idx68, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.bp, align 8, !tbaa !1624
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.br, align 8, !tbaa !1626
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bs = load i8, ptr %i.i, align 8, !tbaa !280, !noalias !5896
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.bt, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.530.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.bu, align 8, !tbaa !1624
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.bw, align 8, !tbaa !1626
  store i8 %i.bs, ptr %i.bv, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %.thread70, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = phi ptr [ %i.bw, %bb.l ], [ %i.br, %bb.k ], [ %i.bi, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %.thread70 ] ; 2 uses
  %i.by = phi ptr [ %i.bv, %bb.l ], [ %i.bq, %bb.k ], [ %i.bj, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %.thread70 ]
  %i.bz = phi ptr [ %i.bu, %bb.l ], [ %i.bp, %bb.k ], [ %i.bk, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.u, %.thread70 ]
  %i.ca = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %bb.k ], [ %i.bl, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %.thread70 ]
  store i8 %i.k, ptr %i.bx, align 8, !tbaa !1626
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i.i.i.i.i.i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit.thread59
  %i.cb = phi ptr [ %i.o, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit.thread59 ], [ %i.bx, %.sink.split.i.i.i.i.i.i.i ]
  %i.cc = phi ptr [ %i.n, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit.thread59 ], [ %i.by, %.sink.split.i.i.i.i.i.i.i ] ; 2 uses
  %i.cd = phi ptr [ %i.m, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit.thread59 ], [ %i.bz, %.sink.split.i.i.i.i.i.i.i ]
  %i.ce = phi ptr [ %i.l, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit.thread59 ], [ %i.ca, %.sink.split.i.i.i.i.i.i.i ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56 ; 2 uses
  store ptr %i.f, ptr %i.cf, align 8, !tbaa !1634
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1624, !noalias !5897
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !1626, !noalias !5897 ; 3 uses
  switch i8 %i.ck, label %bb.n [
    i8 0, label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit
    i8 1, label %bb.o
    i8 2, label %bb.w
    i8 3, label %bb.x
  ]

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !1616, !noalias !5897 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !1619, !noalias !5897 ; 2 uses
  switch i8 %i.co, label %bb.p [
    i8 0, label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
    i8 5, label %bb.u
    i8 6, label %bb.v
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !1572, !noalias !5897
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit

bb.r:                                             ; preds = %bb.o
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !1572, !noalias !5897
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit

bb.s:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !1572, !noalias !5897
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit

bb.t:                                             ; preds = %bb.o
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !1621, !noalias !5897
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit

bb.u:                                             ; preds = %bb.o
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !1572, !noalias !5897
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit

bb.v:                                             ; preds = %bb.o
  %i.cu = load i8, ptr %i.cm, align 8, !tbaa !280, !noalias !5897
  %.sroa.13.32.insert.ext = zext i8 %i.cu to i64
  %i.cv = inttoptr i64 %.sroa.13.32.insert.ext to ptr
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit

bb.w:                                             ; preds = %bb.m
  %i.cw = load ptr, ptr %i.ci, align 8, !tbaa !1572, !noalias !5897
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit

bb.x:                                             ; preds = %bb.m
  %i.cx = load i8, ptr %i.ci, align 8, !tbaa !280, !noalias !5897
  %.sroa.8.24.insert.ext = zext i8 %i.cx to i64
  %i.cy = inttoptr i64 %.sroa.8.24.insert.ext to ptr
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit

_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit: ; preds = %bb.o, %bb.w, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.m
  %.sroa.20.1 = phi i8 [ undef, %bb.m ], [ 1, %bb.q ], [ 2, %bb.r ], [ 3, %bb.s ], [ 4, %bb.t ], [ 5, %bb.u ], [ 6, %bb.v ], [ undef, %bb.x ], [ undef, %bb.w ], [ %i.co, %bb.o ] ; 2 uses
  %.sroa.13.2 = phi ptr [ undef, %bb.m ], [ %i.cp, %bb.q ], [ %i.cq, %bb.r ], [ %i.cr, %bb.s ], [ %i.cs, %bb.t ], [ %i.ct, %bb.u ], [ %i.cv, %bb.v ], [ undef, %bb.x ], [ undef, %bb.w ], [ undef, %bb.o ]
  %.sroa.8.1 = phi ptr [ undef, %bb.m ], [ %i.cl, %bb.q ], [ %i.cl, %bb.r ], [ %i.cl, %bb.s ], [ %i.cl, %bb.t ], [ %i.cl, %bb.u ], [ %i.cl, %bb.v ], [ %i.cy, %bb.x ], [ %i.cw, %bb.w ], [ %i.cl, %bb.o ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1634, !noalias !5897
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dj = add nsw i8 %.sroa.20.1, -1
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.dj, 5
  br label %bb.y

bb.y:                                             ; preds = %bb.ap, %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit
  %i.dk = phi ptr [ %i.c, %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit ], [ %.pre, %bb.ap ]
  %.011 = phi i64 [ %1, %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv.exit ], [ %i.fi, %bb.ap ] ; 4 uses
  %i.dl = icmp eq ptr %i.dk, %i.c
  br i1 %i.dl, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.dm = load ptr, ptr %i.cf, align 8, !tbaa !1634
  %i.dn = icmp eq ptr %i.dm, %i.da
  br i1 %i.dn, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %i.cd, align 8, !tbaa !1624
  %i.dp = icmp eq ptr %i.do, %i.ch
  br i1 %i.dp, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dq = load i8, ptr %i.cb, align 8, !tbaa !1626
  %.not.i.i.i.i.i = icmp eq i8 %i.dq, %i.ck
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  switch i8 %i.ck, label %bb.ad [
    i8 0, label %.thread40
    i8 1, label %bb.ae
    i8 2, label %bb.ah
    i8 3, label %.thread40
  ]

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dr = load ptr, ptr %i.cc, align 8, !tbaa !1616
  %i.ds = icmp eq ptr %i.dr, %.sroa.8.1
  br i1 %i.ds, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.dt = load i8, ptr %i.dc, align 8, !tbaa !1619
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dt, %.sroa.20.1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread40

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ag
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !314
  %i.du = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.13.2
  br i1 %i.du, label %.thread40, label %.thread

bb.ah:                                            ; preds = %bb.ac
  %i.dv = load ptr, ptr %i.cc, align 8, !tbaa !1572
  %i.dw = icmp eq ptr %i.dv, %.sroa.8.1
  br i1 %i.dw, label %.thread40, label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorppEi(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>> &>::const_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.ce, i32 noundef 0)
  %i.dx = load ptr, ptr %i.de, align 8, !tbaa !1634 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dd, align 8, !tbaa !1624
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !1624
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %bb.ai, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i: ; preds = %.thread
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !1626
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.ai:                                            ; preds = %.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 32 ; 2 uses
  %i.ed = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !1626 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !1626
  %.not.i.i.i = icmp eq i8 %i.ed, %i.ef
  br i1 %.not.i.i.i, label %bb.aj, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.aj:                                            ; preds = %bb.ai
  switch i8 %i.ed, label %bb.ak [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
    i8 1, label %bb.al
    i8 2, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i
    i8 3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
  ]

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.eg = load ptr, ptr %i.df, align 8, !tbaa !1616
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !1616
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %bb.am, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.ek = load i8, ptr %i.dh, align 8, !tbaa !1619 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.em = load i8, ptr %i.el, align 8, !tbaa !1619
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ek, %i.em
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.an, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.en = add i8 %i.ek, -1
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.en, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i24, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i

.sink.split.i.i.i.i.i.i.i.i.i.i24:                ; preds = %bb.an
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dg, align 8, !tbaa !314
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !314
  %i.ep = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, %i.eo
  br i1 %i.ep, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i: ; preds = %bb.aj
  %i.eq = load ptr, ptr %i.df, align 8, !tbaa !1572
  %i.er = load ptr, ptr %i.ec, align 8, !tbaa !1572
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i24, %bb.an, %bb.aj, %bb.aj
  %i.et = zext nneg i8 %i.ed to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.dd, ptr %3, align 8, !tbaa !1636
  %i.eu = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.et, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.ev = extractvalue { ptr, i64 } %i.eu, 1
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !1634
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !1612
  %i.ez = call i64 @llvm.usub.sat.i64(i64 %i.ev, i64 %i.ey)
  br label %bb.ao

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i24, %bb.am, %bb.al, %bb.ai, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i
  %i.fa = phi i8 [ %.pre.i, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i ], [ 1, %bb.am ], [ 1, %bb.al ], [ %i.ed, %bb.ai ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i.i24 ], [ 2, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i ]
  %i.fb = zext i8 %i.fa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.dd, ptr %2, align 8, !tbaa !1636
  %i.fc = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.fd = extractvalue { ptr, i64 } %i.fc, 1
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i
  %.pn.i = phi i64 [ %i.ez, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i ], [ %i.fd, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i ]
  %i.fe = load i64, ptr %i.di, align 8, !tbaa !1653
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.fe, i64 %.pn.i) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.not = icmp ult i64 %spec.select.i, %.011
  br i1 %.not, label %bb.ap, label %.thread41

.thread41:                                        ; preds = %bb.ao
  %i.ff = load i64, ptr %i.a, align 8, !tbaa !1784
  %i.fg = add i64 %i.ff, %.011
  store i64 %i.fg, ptr %i.a, align 8, !tbaa !1784
  %i.fh = sub i64 %.011, %spec.select.i
  store i64 %i.fh, ptr %i.b, align 8, !tbaa !1786
  br label %.thread40

bb.ap:                                            ; preds = %bb.ao
  %i.fi = sub nuw i64 %.011, %spec.select.i
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !1784
  %i.fk = add i64 %i.fj, %spec.select.i
  store i64 %i.fk, ptr %i.a, align 8, !tbaa !1784
  %.pre = load ptr, ptr %i.ce, align 8, !tbaa !1652
  br label %bb.y

.thread40:                                        ; preds = %bb.ag, %bb.ac, %bb.ac, %bb.ah, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %.thread41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>>::const_iterator", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !1803, !nonnull !310, !align !313 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1616, !noalias !5910 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1619, !noalias !5910 ; 7 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISN_PKS7_EE5valueEiE4typeENSM_IXntsr14is_convertibleISJ_SO_EE5valueEiE4typeENSM_IXntsr14is_convertibleISJ_S7_EE5valueEiE4typeE.exit.thread
    i8 1, label %bb.c
end_hunk_2
begin_hunk_3_@_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iteratorC2ERKNS2_5tupleIJSE_SG_S5_SC_S5_SC_S5_S5_SC_EEESt17integral_constantIbLb0EE:bb.a

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !6591
  store i8 0, ptr %i.b, align 8, !tbaa !1723
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1616
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !1619
  br label %bb.d

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.a
  %.ptr5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.ptr5.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !1572, !alias.scope !6591
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.3.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !277, !noalias !6592
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread16

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread16: ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !6591
  store i8 0, ptr %i.b, align 8, !tbaa !1723
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1616
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !1619
  br label %bb.e

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.j, ptr %i.d, align 8, !tbaa !1572, !alias.scope !6591
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.3.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !277, !noalias !6592
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17: ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !6591
  store i8 0, ptr %i.b, align 8, !tbaa !1723
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1616
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !1619
  br label %bb.f

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1621, !noalias !6593
  store ptr %i.n, ptr %i.d, align 8, !tbaa !1563, !alias.scope !6591
  invoke void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #37
  unreachable

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %5, align 8, !tbaa !1616  ; 8 uses
  %.pre14 = load i8, ptr %i.e, align 8, !tbaa !1619 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !6591
  store ptr %.pre, ptr %i.a, align 8, !tbaa !1616
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  store i8 0, ptr %i.r, align 8, !tbaa !1619
  switch i8 %.pre14, label %bb.c [
    i8 0, label %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_SG_SG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
  ]

bb.c:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  unreachable

bb.d:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  %i.s = phi ptr [ %i.g, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread ], [ %i.r, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.t = phi ptr [ %i.f, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread ], [ %i.q, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.u = phi ptr [ %i.c, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread ], [ %.pre, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !1572
  store ptr %i.v, ptr %i.t, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread16, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  %i.w = phi ptr [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread16 ], [ %i.r, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.x = phi ptr [ %i.h, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread16 ], [ %i.q, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.y = phi ptr [ %i.c, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread16 ], [ %.pre, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !1572
  store ptr %i.z, ptr %i.x, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  %i.aa = phi ptr [ %i.l, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17 ], [ %i.r, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.ab = phi ptr [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17 ], [ %i.q, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.ac = phi ptr [ %i.c, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit.thread17 ], [ %.pre, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ]
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !1572
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !1621
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !1563
  br label %.sink.split.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !1572
  store ptr %i.af, ptr %i.q, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit
  %i.ag = load i8, ptr %i.d, align 8, !tbaa !280
  store i8 %i.ag, ptr %i.q, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ah = phi ptr [ %i.r, %bb.i ], [ %i.r, %bb.h ], [ %i.r, %bb.g ], [ %i.aa, %bb.f ], [ %i.w, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.ai = phi ptr [ %.pre, %bb.i ], [ %.pre, %bb.h ], [ %.pre, %bb.g ], [ %i.ac, %bb.f ], [ %i.y, %bb.e ], [ %i.u, %bb.d ]
  %i.aj = phi i8 [ 6, %bb.i ], [ 5, %bb.h ], [ 4, %bb.g ], [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.d ] ; 2 uses
  store i8 %i.aj, ptr %i.ah, align 8, !tbaa !1619
  br label %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_SG_SG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit

_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_SG_SG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit, %.sink.split.i.i.i.i.i.i
  %i.ak = phi ptr [ %i.r, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ], [ %i.ah, %.sink.split.i.i.i.i.i.i ] ; 2 uses
  %i.al = phi ptr [ %.pre, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ], [ %i.ai, %.sink.split.i.i.i.i.i.i ]
  %.pre14.i8 = phi i8 [ %.pre14, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE.exit ], [ %i.aj, %.sink.split.i.i.i.i.i.i ] ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !1723
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %0, ptr %6, align 8, !tbaa !1725
  %i.am = load ptr, ptr %0, align 8, !tbaa !1722  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1625, !noalias !6594
  %i.ao = icmp eq ptr %i.al, %i.an
  %.not.i.i.i9 = icmp eq i8 %.pre14.i8, 6
  %or.cond.i10 = and i1 %i.ao, %.not.i.i.i9
  br i1 %or.cond.i10, label %.lr.ph.i.i, label %.noexc

.noexc:                                           ; preds = %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_SG_SG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit, %.noexc3
  %.pre14.i11 = phi i8 [ %.pre14.i, %.noexc3 ], [ %.pre14.i8, %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_SG_SG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit ]
  %i.ap = zext i8 %.pre14.i11 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.a, ptr %3, align 8, !tbaa !1618
  %i.aq = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.ar = extractvalue { ptr, i64 } %i.aq, 1
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %.noexc3, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

.noexc3:                                          ; preds = %.noexc
  %i.as = load i8, ptr %i.ak, align 8, !tbaa !1619
  %i.at = zext i8 %i.as to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.a, ptr %2, align 8, !tbaa !1618
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.au = load ptr, ptr %0, align 8, !tbaa !1722  ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1625, !noalias !6594
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !1616
  %i.ax = icmp eq ptr %i.aw, %i.av
  %.pre14.i = load i8, ptr %i.ak, align 8, !tbaa !1619 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.pre14.i, 6
  %or.cond.i = select i1 %i.ax, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i.i, label %.noexc, !llvm.loop !164

.lr.ph.i.i:                                       ; preds = %.noexc3, %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_SG_SG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit
  %.lcssa = phi ptr [ %i.am, %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_SG_SG_SG_SG_SG_SG_SG_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit ], [ %i.au, %.noexc3 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1743 ; 2 uses
  store ptr %i.az, ptr %i.a, align 8, !tbaa !1572
  store i8 2, ptr %i.b, align 8, !tbaa !1723
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !277
  %.not.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !1572
  store i8 3, ptr %i.b, align 8, !tbaa !1723
  call void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iterator9increment4nextILm3EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_S5_S5_SC_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit: ; preds = %.noexc, %._crit_edge.i.i, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !1895, !nonnull !310, !align !313 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1669, !noalias !6599 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1670, !noalias !6599 ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !1669
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !1670
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !1616, !noalias !6599 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.o = load i8, ptr %i.n, align 8, !tbaa !1619, !noalias !6599 ; 2 uses
  switch i8 %i.o, label %bb.d [
    i8 0, label %.thread
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.p, align 8, !tbaa !1669
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !1670
  store ptr %i.l, ptr %i.q, align 8, !tbaa !1616
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !1619
  br label %.sink.split.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !1572, !noalias !6599
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.u, align 8, !tbaa !1669
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !1670
  store ptr %i.l, ptr %i.v, align 8, !tbaa !1616
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.x, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !1572, !noalias !6599
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.z, align 8, !tbaa !1669
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !1670
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !1616
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !1572, !noalias !6599
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !1669
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !1670
  store ptr %i.l, ptr %i.af, align 8, !tbaa !1616
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !1621, !noalias !6599
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !1669
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.al, align 8, !tbaa !1670
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !1616
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !1563
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !1572, !noalias !6599
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !1669
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !1670
  store ptr %i.l, ptr %i.ap, align 8, !tbaa !1616
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.m, align 8, !tbaa !280, !noalias !6599
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.at, align 8, !tbaa !1669
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !1670
  store ptr %i.l, ptr %i.au, align 8, !tbaa !1616
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.as, ptr %i.aw, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.av, %bb.j ], [ %i.aq, %bb.i ], [ %i.al, %bb.h ], [ %i.ag, %bb.g ], [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ay = phi ptr [ %i.au, %bb.j ], [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.af, %bb.g ], [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.az = phi ptr [ %i.at, %bb.j ], [ %i.ao, %bb.i ], [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.o, ptr %i.ba, align 8, !tbaa !1619
  br label %.sink.split.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !1572, !noalias !6599
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bc, align 8, !tbaa !1669
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !1670
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !1572, !noalias !6599
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !1669
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !1670
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.a
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !1572, !noalias !6599
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bk, align 8, !tbaa !1669
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !1670
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i

bb.n:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !1572, !noalias !6599
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bo, align 8, !tbaa !1669
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bq, align 8, !tbaa !1670
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i

bb.o:                                             ; preds = %bb.a
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !1572, !noalias !6599
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bs, align 8, !tbaa !1669
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bu, align 8, !tbaa !1670
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i

bb.p:                                             ; preds = %bb.a
  %i.bv = load i8, ptr %i.f, align 8, !tbaa !280, !noalias !6599
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bw, align 8, !tbaa !1669
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.by, align 8, !tbaa !1670
  store i8 %i.bv, ptr %i.bx, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %.thread, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = phi ptr [ %i.by, %bb.p ], [ %i.bu, %bb.o ], [ %i.bq, %bb.n ], [ %i.bm, %bb.m ], [ %i.bi, %bb.l ], [ %i.be, %bb.k ], [ %i.ax, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %.thread ] ; 2 uses
  %i.ca = phi ptr [ %i.bx, %bb.p ], [ %i.bt, %bb.o ], [ %i.bp, %bb.n ], [ %i.bl, %bb.m ], [ %i.bh, %bb.l ], [ %i.bd, %bb.k ], [ %i.ay, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.thread ]
  %i.cb = phi ptr [ %i.bw, %bb.p ], [ %i.bs, %bb.o ], [ %i.bo, %bb.n ], [ %i.bk, %bb.m ], [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.thread ]
  store i8 %i.h, ptr %i.bz, align 8, !tbaa !1670
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i.i.i.i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64
  %i.cc = phi ptr [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64 ], [ %i.bz, %.sink.split.i.i.i.i.i ] ; 2 uses
  %i.cd = phi ptr [ %i.j, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64 ], [ %i.ca, %.sink.split.i.i.i.i.i ] ; 7 uses
  %i.ce = phi ptr [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64 ], [ %i.cb, %.sink.split.i.i.i.i.i ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.cf, align 8, !tbaa !1745
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.r

bb.r:                                             ; preds = %bb.aj, %bb.q
  %i.cn = phi ptr [ %i.c, %bb.q ], [ %.pre, %bb.aj ] ; 2 uses
  %.011 = phi i64 [ %1, %bb.q ], [ %i.dj, %bb.aj ] ; 4 uses
  %i.co = icmp eq ptr %i.cn, %i.c
  br i1 %i.co, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.r
  %4 = load ptr, ptr %i.ce, align 8, !tbaa !1669
  %5 = icmp eq ptr %4, %i.c
  br i1 %5, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %.pre55 = load i8, ptr %i.cc, align 8, !tbaa !1670
  %.not.i.i.i.i = icmp eq i8 %.pre55, 7
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.r, %._crit_edge, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !6600)
  %6 = load ptr, ptr %i.ce, align 8, !tbaa !1669, !noalias !6600
  store ptr %6, ptr %3, align 8, !tbaa !1669, !alias.scope !6600
  store i8 0, ptr %i.ch, align 8, !tbaa !1670, !alias.scope !6600
  %7 = load i8, ptr %i.cc, align 8, !tbaa !1670, !noalias !6600 ; 3 uses
  switch i8 %7, label %bb.u [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i
    i8 1, label %bb.v
    i8 2, label %bb.ad
    i8 3, label %bb.ae
    i8 4, label %bb.af
    i8 5, label %bb.ag
    i8 6, label %bb.ah
    i8 7, label %bb.ai
  ]

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !1616, !noalias !6600
  store ptr %i.cp, ptr %i.cg, align 8, !tbaa !1616, !alias.scope !6600
  store i8 0, ptr %i.ck, align 8, !tbaa !1619, !alias.scope !6600
  %i.cq = load i8, ptr %i.cl, align 8, !tbaa !1619, !noalias !6600 ; 2 uses
  switch i8 %i.cq, label %bb.w [
    i8 0, label %.sink.split.i.i.i.i.i.i
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
    i8 5, label %bb.ab
    i8 6, label %bb.ac
  ]

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !1572, !noalias !6600
  store ptr %i.cr, ptr %i.ci, align 8, !tbaa !1572, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.v
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !1572, !noalias !6600
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !1572, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !1572, !noalias !6600
  store ptr %i.ct, ptr %i.ci, align 8, !tbaa !1572, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.v
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !1621, !noalias !6600
  store ptr %i.cu, ptr %i.ci, align 8, !tbaa !1563, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.v
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !1572, !noalias !6600
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !1572, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.v
  %i.cw = load i8, ptr %i.cj, align 8, !tbaa !280, !noalias !6600
  store i8 %i.cw, ptr %i.ci, align 8, !tbaa !280, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  store i8 %i.cq, ptr %i.ck, align 8, !tbaa !1619, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.t
  %i.cx = load ptr, ptr %i.cd, align 8, !tbaa !1572, !noalias !6600
  store ptr %i.cx, ptr %i.cg, align 8, !tbaa !1572, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.t
  %i.cy = load ptr, ptr %i.cd, align 8, !tbaa !1572, !noalias !6600
  store ptr %i.cy, ptr %i.cg, align 8, !tbaa !1572, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cd, align 8, !tbaa !1572, !noalias !6600
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !1572, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.t
  %i.da = load ptr, ptr %i.cd, align 8, !tbaa !1572, !noalias !6600
  store ptr %i.da, ptr %i.cg, align 8, !tbaa !1572, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.t
  %i.db = load ptr, ptr %i.cd, align 8, !tbaa !1572, !noalias !6600
  store ptr %i.db, ptr %i.cg, align 8, !tbaa !1572, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.t
  %i.dc = load i8, ptr %i.cd, align 1, !tbaa !280, !noalias !6600
  store i8 %i.dc, ptr %i.cg, align 8, !tbaa !280, !alias.scope !6600
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  store i8 %7, ptr %i.ch, align 8, !tbaa !1670, !alias.scope !6600
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i, %bb.t
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !1745, !alias.scope !6600
  %i.dd = zext nneg i8 %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !6600
  store ptr %i.ce, ptr %2, align 8, !tbaa !1672, !noalias !6600
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !6600
  %i.de = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.df = extractvalue { ptr, i64 } %i.de, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.not = icmp ult i64 %i.df, %.011
  br i1 %.not, label %bb.aj, label %.thread44

.thread44:                                        ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !1896
  %i.dh = add i64 %i.dg, %.011
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !1896
  %i.di = sub i64 %.011, %i.df
  store i64 %i.di, ptr %i.b, align 8, !tbaa !1897
  br label %.loopexit

bb.aj:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i
  %i.dj = sub nuw i64 %.011, %i.df
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !1896
  %i.dl = add i64 %i.dk, %i.df
  store i64 %i.dl, ptr %i.a, align 8, !tbaa !1896
  %.pre = load ptr, ptr %i.cf, align 8, !tbaa !1745
  br label %bb.r

.loopexit:                                        ; preds = %bb.s, %.thread44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops12run_write_opclINS0_4http6detail13write_some_opINSC_8write_opINSC_12write_msg_opINS2_6detail13spawn_handlerIS5_FvNS_6system10error_codeEmEvEES7_Lb0ENSB_17basic_string_bodyIcSt11char_traitsIcESaIcEEENSB_12basic_fieldsISP_EEEES7_NSC_18serializer_is_doneELb0ESQ_SS_EES7_Lb0ESQ_SS_EENS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSY_INS11_IJNS2_12const_bufferES12_S12_NSS_6writer11field_rangeENSB_10chunk_crlfEEEEEENSC_10chunk_sizeES12_S15_S12_S15_EEEEEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.boost::beast::basic_stream<boost::asio::ip::tcp>::ops::transfer_op.1142", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1567
  call void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSB_INSE_IJNS2_12const_bufferESF_SF_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENSG_10chunk_crlfEEEEEENSG_6detail10chunk_sizeESF_SM_SF_SM_EEEEEEEEENSP_13write_some_opINSP_8write_opINSP_12write_msg_opINS2_6detail13spawn_handlerIS5_FvNS_6system10error_codeEmEvEES7_Lb0ENSG_17basic_string_bodyIcSt11char_traitsIcESI_EESJ_EES7_NSP_18serializer_is_doneELb0ES19_SJ_EES7_Lb0ES19_SJ_EEEC2IS1D_EEOT_RS7_RKSW_(ptr noundef nonnull align 8 dereferenceable(680) %3, ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSB_INSE_IJNS2_12const_bufferESF_SF_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENSG_10chunk_crlfEEEEEENSG_6detail10chunk_sizeESF_SM_SF_SM_EEEEEEEEENSP_13write_some_opINSP_8write_opINSP_12write_msg_opINS2_6detail13spawn_handlerIS5_FvNS_6system10error_codeEmEvEES7_Lb0ENSG_17basic_string_bodyIcSt11char_traitsIcESI_EESJ_EES7_NSP_18serializer_is_doneELb0ES19_SJ_EES7_Lb0ES19_SJ_EEEE, i64 16), ptr %3, align 8, !tbaa !271
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.c = load i8, ptr %i.b, align 8, !tbaa !776, !range !309, !noundef !310
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !777  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.f, align 1, !tbaa !375
  br label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i

_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 648
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !488  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !271
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #36, !inline_history !196
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.p = atomicrmw sub ptr %i.o, i32 1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !271
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #36, !inline_history !197
  br label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail13write_some_opINS3_8write_opINS3_12write_msg_opINS_4asio6detail13spawn_handlerINS7_15any_io_executorEFvNS_6system10error_codeEmEvEENS0_12basic_streamINS7_2ip3tcpESA_NS0_21unlimited_rate_policyEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISN_EEEESJ_NS3_18serializer_is_doneELb0ESO_SQ_EESJ_Lb0ESO_SQ_EESA_SaIvEEE, i64 16), ptr %3, align 8, !tbaa !271
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 624
  %i.w = load i8, ptr %i.v, align 8, !tbaa !1360, !range !309, !noundef !310
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i

bb.g:                                             ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 568
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.y) #36, !inline_history !1898
  br label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i

_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i: ; preds = %bb.g, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEED2Ev.exit.i
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.u) #36, !inline_history !1898
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4http6detail8write_opINS3_12write_msg_opINS_4asio6detail13spawn_handlerINS6_15any_io_executorEFvNS_6system10error_codeEmEvEENS0_12basic_streamINS6_2ip3tcpES9_NS0_21unlimited_rate_policyEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISM_EEEESI_NS3_18serializer_is_doneELb0ESN_SP_EES9_SaIvEEE, i64 16), ptr %i.z, align 8, !tbaa !271
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 480
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !1360, !range !309, !noundef !310
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSB_INSE_IJNS2_12const_bufferESF_SF_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENSG_10chunk_crlfEEEEEENSG_6detail10chunk_sizeESF_SM_SF_SM_EEEEEEEEENSP_13write_some_opINSP_8write_opINSP_12write_msg_opINS2_6detail13spawn_handlerIS5_FvNS_6system10error_codeEmEvEES7_Lb0ENSG_17basic_string_bodyIcSt11char_traitsIcESI_EESJ_EES7_NSP_18serializer_is_doneELb0ES19_SJ_EES7_Lb0ES19_SJ_EEED2Ev.exit

bb.h:                                             ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 424
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ad) #36, !inline_history !1899
  br label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSB_INSE_IJNS2_12const_bufferESF_SF_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENSG_10chunk_crlfEEEEEENSG_6detail10chunk_sizeESF_SM_SF_SM_EEEEEEEEENSP_13write_some_opINSP_8write_opINSP_12write_msg_opINS2_6detail13spawn_handlerIS5_FvNS_6system10error_codeEmEvEES7_Lb0ENSG_17basic_string_bodyIcSt11char_traitsIcESI_EESJ_EES7_NSP_18serializer_is_doneELb0ES19_SJ_EES7_Lb0ES19_SJ_EEED2Ev.exit

_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSB_INSE_IJNS2_12const_bufferESF_SF_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENSG_10chunk_crlfEEEEEENSG_6detail10chunk_sizeESF_SM_SF_SM_EEEEEEEEENSP_13write_some_opINSP_8write_opINSP_12write_msg_opINS2_6detail13spawn_handlerIS5_FvNS_6system10error_codeEmEvEES7_Lb0ENSG_17basic_string_bodyIcSt11char_traitsIcESI_EESJ_EES7_NSP_18serializer_is_doneELb0ES19_SJ_EES7_Lb0ES19_SJ_EEED2Ev.exit: ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 368
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.ae) #36, !inline_history !1899
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS_4asio6detail13spawn_handlerINS5_15any_io_executorEFvNS_6system10error_codeEmEvEENS0_12basic_streamINS5_2ip3tcpES8_NS0_21unlimited_rate_policyEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISL_EEEES8_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.af) #36, !inline_history !1899
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSB_INSE_IJNS2_12const_bufferESF_SF_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENSG_10chunk_crlfEEEEEENSG_6detail10chunk_sizeESF_SM_SF_SM_EEEEEEEEENSP_13write_some_opINSP_8write_opINSP_12write_msg_opINS2_6detail13spawn_handlerIS5_FvNS_6system10error_codeEmEvEES7_Lb0ENSG_17basic_string_bodyIcSt11char_traitsIcESI_EESJ_EES7_NSP_18serializer_is_doneELb0ES19_SJ_EES7_Lb0ES19_SJ_EEEC2IS1D_EEOT_RS7_RKSW_(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::asio::any_io_executor", align 8 ; 7 uses
  %5 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.boost::system::error_code", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.b = load ptr, ptr %2, align 8, !tbaa !393, !noalias !6603
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.c) #36
  invoke void @_ZN5boost5beast10async_baseINS0_4http6detail13write_some_opINS3_8write_opINS3_12write_msg_opINS_4asio6detail13spawn_handlerINS7_15any_io_executorEFvNS_6system10error_codeEmEvEENS0_12basic_streamINS7_2ip3tcpESA_NS0_21unlimited_rate_policyEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISN_EEEESJ_NS3_18serializer_is_doneELb0ESO_SQ_EESJ_Lb0ESO_SQ_EESA_SaIvEEC2ISU_vEEOT_RKSA_(ptr noundef nonnull align 8 dereferenceable(636) %0, ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i32 0, ptr %i.d, align 4, !tbaa !786
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSB_INSE_IJNS2_12const_bufferESF_SF_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENSG_10chunk_crlfEEEEEENSG_6detail10chunk_sizeESF_SM_SF_SM_EEEEEEEEENSP_13write_some_opINSP_8write_opINSP_12write_msg_opINS2_6detail13spawn_handlerIS5_FvNS_6system10error_codeEmEvEES7_Lb0ENSG_17basic_string_bodyIcSt11char_traitsIcESI_EESJ_EES7_NSP_18serializer_is_doneELb0ES19_SJ_EES7_Lb0ES19_SJ_EEEE, i64 16), ptr %0, align 8, !tbaa !271
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !488  ; 2 uses
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !314
  store <2 x ptr> %i.h, ptr %i.e, align 8, !tbaa !314
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEEC2ERKSA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = atomicrmw add ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEEC2ERKSA_.exit

_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEEC2ERKSA_.exit: ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !777
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  store i8 1, ptr %i.l, align 8, !tbaa !776
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.n = load i64, ptr %3, align 8, !tbaa !1901
  store i64 %i.n, ptr %i.m, align 8, !tbaa !1901
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 -1, ptr %i.o, align 8, !tbaa !1646
  %i.p = call noundef i64 @_ZN5boost4asio11buffer_sizeINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #36
  %i.q = icmp eq i64 %i.p, 0
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !393 ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEEC2ERKSA_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 368
  %i.s = load i8, ptr %i.r, align 8, !tbaa !599, !range !309, !noundef !310
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !277
  invoke void @_ZN5boost5beast10async_baseINS0_4http6detail13write_some_opINS3_8write_opINS3_12write_msg_opINS_4asio6detail13spawn_handlerINS7_15any_io_executorEFvNS_6system10error_codeEmEvEENS0_12basic_streamINS7_2ip3tcpESA_NS0_21unlimited_rate_policyEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISN_EEEESJ_NS3_18serializer_is_doneELb0ESO_SQ_EESJ_Lb0ESO_SQ_EESA_SaIvEE8completeIJSC_mEEEvbDpOT_(ptr noundef nonnull align 8 dereferenceable(636) %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.o

bb.h:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.l

bb.j:                                             ; preds = %bb.d, %_ZN5boost10shared_ptrINS_5beast12basic_streamINS_4asio2ip3tcpENS3_15any_io_executorENS1_21unlimited_rate_policyEE9impl_typeEEC2ERKSA_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 368 ; 2 uses
  store ptr %i.x, ptr %i.k, align 8, !tbaa !777
  store i8 1, ptr %i.x, align 1, !tbaa !375
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE3ops11transfer_opILb0ENS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSB_INSE_IJNS2_12const_bufferESF_SF_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENSG_10chunk_crlfEEEEEENSG_6detail10chunk_sizeESF_SM_SF_SM_EEEEEEEEENSP_13write_some_opINSP_8write_opINSP_12write_msg_opINS2_6detail13spawn_handlerIS5_FvNS_6system10error_codeEmEvEES7_Lb0ENSG_17basic_string_bodyIcSt11char_traitsIcESI_EESJ_EES7_NSP_18serializer_is_doneELb0ES19_SJ_EES7_Lb0ES19_SJ_EEEclES13_m(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %6, i64 noundef 0)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j, %bb.f
  ret void

bb.l:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.v, %bb.h ]
  %i.y = load i8, ptr %i.l, align 8, !tbaa !776, !range !309, !noundef !310
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.m, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !777 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN5boost5beast6detail11stream_base13pending_guardD2Ev.exit, label %bb.n

end_hunk_3
begin_hunk_4_@_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS5_6detail11buffers_refINS5_19buffers_prefix_viewIRKNS5_14buffers_suffixINS5_16buffers_cat_viewIJNSF_INSI_IJNS0_12const_bufferESJ_SJ_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSK_10chunk_crlfEEEEEENSK_6detail10chunk_sizeESJ_SQ_SJ_SQ_EEEEEEEEENST_13write_some_opINST_8write_opINST_12write_msg_opINS1_13spawn_handlerIS9_FvNS_6system10error_codeEmEvEESB_Lb0ENSK_17basic_string_bodyIcSt11char_traitsIcESM_EESN_EESB_NST_18serializer_is_doneELb0ES1C_SN_EESB_Lb0ES1C_SN_EEEES16_mEESaIvEE3ptr5resetEv:bb.a
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS5_6detail11buffers_refINS5_19buffers_prefix_viewIRKNS5_14buffers_suffixINS5_16buffers_cat_viewIJNSF_INSI_IJNS0_12const_bufferESJ_SJ_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSK_10chunk_crlfEEEEEENSK_6detail10chunk_sizeESJ_SQ_SJ_SQ_EEEEEEEEENST_13write_some_opINST_8write_opINST_12write_msg_opINS1_13spawn_handlerIS9_FvNS_6system10error_codeEmEvEESB_Lb0ENSK_17basic_string_bodyIcSt11char_traitsIcESM_EESN_EESB_NST_18serializer_is_doneELb0ES1C_SN_EESB_Lb0ES1C_SN_EEEES16_mEESaIvEED2Ev.exit

bb.i:                                             ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.af) #36, !inline_history !1899
  br label %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS5_6detail11buffers_refINS5_19buffers_prefix_viewIRKNS5_14buffers_suffixINS5_16buffers_cat_viewIJNSF_INSI_IJNS0_12const_bufferESJ_SJ_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSK_10chunk_crlfEEEEEENSK_6detail10chunk_sizeESJ_SQ_SJ_SQ_EEEEEEEEENST_13write_some_opINST_8write_opINST_12write_msg_opINS1_13spawn_handlerIS9_FvNS_6system10error_codeEmEvEESB_Lb0ENSK_17basic_string_bodyIcSt11char_traitsIcESM_EESN_EESB_NST_18serializer_is_doneELb0ES1C_SN_EESB_Lb0ES1C_SN_EEEES16_mEESaIvEED2Ev.exit

_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS5_6detail11buffers_refINS5_19buffers_prefix_viewIRKNS5_14buffers_suffixINS5_16buffers_cat_viewIJNSF_INSI_IJNS0_12const_bufferESJ_SJ_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSK_10chunk_crlfEEEEEENSK_6detail10chunk_sizeESJ_SQ_SJ_SQ_EEEEEEEEENST_13write_some_opINST_8write_opINST_12write_msg_opINS1_13spawn_handlerIS9_FvNS_6system10error_codeEmEvEESB_Lb0ENSK_17basic_string_bodyIcSt11char_traitsIcESM_EESN_EESB_NST_18serializer_is_doneELb0ES1C_SN_EESB_Lb0ES1C_SN_EEEES16_mEESaIvEED2Ev.exit: ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i.i.i.i, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.ag) #36, !inline_history !1899
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @_ZN5boost5beast10async_baseINS0_4http6detail12write_msg_opINS_4asio6detail13spawn_handlerINS5_15any_io_executorEFvNS_6system10error_codeEmEvEENS0_12basic_streamINS5_2ip3tcpES8_NS0_21unlimited_rate_policyEEELb0ENS2_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS2_12basic_fieldsISL_EEEES8_SaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.ah) #36, !inline_history !1899
  store ptr null, ptr %i.a, align 8, !tbaa !1941
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS5_21unlimited_rate_policyEE3ops11transfer_opILb0ENS5_6detail11buffers_refINS5_19buffers_prefix_viewIRKNS5_14buffers_suffixINS5_16buffers_cat_viewIJNSF_INSI_IJNS0_12const_bufferESJ_SJ_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSK_10chunk_crlfEEEEEENSK_6detail10chunk_sizeESJ_SQ_SJ_SQ_EEEEEEEEENST_13write_some_opINST_8write_opINST_12write_msg_opINS1_13spawn_handlerIS9_FvNS_6system10error_codeEmEvEESB_Lb0ENSK_17basic_string_bodyIcSt11char_traitsIcESM_EESN_EESB_NST_18serializer_is_doneELb0ES1C_SN_EESB_Lb0ES1C_SN_EEEES16_mEESaIvEED2Ev.exit, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1940 ; 5 uses
  %.not1 = icmp eq ptr %i.aj, null
  br i1 %.not1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv() ; 4 uses
  %.not3 = icmp eq ptr %i.ak, null
  br i1 %.not3, label %.thread.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !314
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.l, label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !314
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.l, label %.thread.i.i

bb.l:                                             ; preds = %.preheader.1.i.i, %.preheader.preheader.i.i
  %.lcssa.i.i = phi i64 [ 4, %.preheader.preheader.i.i ], [ 5, %.preheader.1.i.i ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.lcssa.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 728
  %i.at = load i8, ptr %i.as, align 1, !tbaa !280
  store i8 %i.at, ptr %i.aj, align 1, !tbaa !280
  store ptr %i.aj, ptr %i.ar, align 8, !tbaa !314
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS6_6detail11buffers_refINS6_19buffers_prefix_viewIRKNS6_14buffers_suffixINS6_16buffers_cat_viewIJNSG_INSJ_IJNS0_12const_bufferESK_SK_NS6_4http12basic_fieldsISaIcEE6writer11field_rangeENSL_10chunk_crlfEEEEEENSL_6detail10chunk_sizeESK_SR_SK_SR_EEEEEEEEENSU_13write_some_opINSU_8write_opINSU_12write_msg_opINS1_13spawn_handlerISA_FvNS_6system10error_codeEmEvEESC_Lb0ENSL_17basic_string_bodyIcSt11char_traitsIcESN_EESO_EESC_NSU_18serializer_is_doneELb0ES1D_SO_EESC_Lb0ES1D_SO_EEEES17_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS1L_m.exit

.thread.i.i:                                      ; preds = %.preheader.1.i.i, %bb.k
  tail call void @free(ptr noundef nonnull %i.aj) #36
  br label %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS6_6detail11buffers_refINS6_19buffers_prefix_viewIRKNS6_14buffers_suffixINS6_16buffers_cat_viewIJNSG_INSJ_IJNS0_12const_bufferESK_SK_NS6_4http12basic_fieldsISaIcEE6writer11field_rangeENSL_10chunk_crlfEEEEEENSL_6detail10chunk_sizeESK_SR_SK_SR_EEEEEEEEENSU_13write_some_opINSU_8write_opINSU_12write_msg_opINS1_13spawn_handlerISA_FvNS_6system10error_codeEmEvEESC_Lb0ENSL_17basic_string_bodyIcSt11char_traitsIcESN_EESO_EESC_NSU_18serializer_is_doneELb0ES1D_SO_EESC_Lb0ES1D_SO_EEEES17_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS1L_m.exit

_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS6_6detail11buffers_refINS6_19buffers_prefix_viewIRKNS6_14buffers_suffixINS6_16buffers_cat_viewIJNSG_INSJ_IJNS0_12const_bufferESK_SK_NS6_4http12basic_fieldsISaIcEE6writer11field_rangeENSL_10chunk_crlfEEEEEENSL_6detail10chunk_sizeESK_SR_SK_SR_EEEEEEEEENSU_13write_some_opINSU_8write_opINSU_12write_msg_opINS1_13spawn_handlerISA_FvNS_6system10error_codeEmEvEESC_Lb0ENSL_17basic_string_bodyIcSt11char_traitsIcESN_EESO_EESC_NSU_18serializer_is_doneELb0ES1D_SO_EESC_Lb0ES1D_SO_EEEES17_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS1L_m.exit: ; preds = %bb.l, %.thread.i.i
  store ptr null, ptr %i.ai, align 8, !tbaa !1940
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost4asio6detail19recycling_allocatorINS1_17executor_function4implINS1_7binder2INS_5beast12basic_streamINS0_2ip3tcpENS0_15any_io_executorENS6_21unlimited_rate_policyEE3ops11transfer_opILb0ENS6_6detail11buffers_refINS6_19buffers_prefix_viewIRKNS6_14buffers_suffixINS6_16buffers_cat_viewIJNSG_INSJ_IJNS0_12const_bufferESK_SK_NS6_4http12basic_fieldsISaIcEE6writer11field_rangeENSL_10chunk_crlfEEEEEENSL_6detail10chunk_sizeESK_SR_SK_SR_EEEEEEEEENSU_13write_some_opINSU_8write_opINSU_12write_msg_opINS1_13spawn_handlerISA_FvNS_6system10error_codeEmEvEESC_Lb0ENSL_17basic_string_bodyIcSt11char_traitsIcESN_EESO_EESC_NSU_18serializer_is_doneELb0ES1D_SO_EESC_Lb0ES1D_SO_EEEES17_mEESaIvEEENS1_16thread_info_base21executor_function_tagEE10deallocateEPS1L_m.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost4asio6detail28reactive_socket_send_op_baseINS_5beast19buffers_prefix_viewINS3_6detail11buffers_refINS4_IRKNS3_14buffers_suffixINS3_16buffers_cat_viewIJNS6_INS8_IJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES9_SG_S9_SG_EEEEEEEEEEEE10do_performEPNS1_10reactor_opE(ptr noundef %0) #5 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::buffer_sequence_adapter.1172", align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS4_6detail11buffers_refINS5_IRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS7_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_EEEEEEEEEEEEC2ERKSR_(ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1925
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1943
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1927
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = call noundef zeroext i1 @_ZN5boost4asio6detail10socket_ops17non_blocking_sendEiPK5iovecmiRNS_6system10error_codeERm(i32 noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %i.k = zext i1 %i.j to i32
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i8, ptr %i.l, align 4, !tbaa !1926
  %i.n = and i8 %i.m, 16
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.i, align 8, !tbaa !765
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1944
  %i.r = icmp ult i64 %i.o, %i.q
  %spec.select = select i1 %i.r, i32 2, i32 %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEEEEC2ERKSP_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 9 uses
  %4 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 13 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1903, !noalias !6857 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1896, !noalias !6858
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1895, !noalias !6858, !nonnull !310, !align !313 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1669, !noalias !6859 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.i = load i8, ptr %i.h, align 8, !tbaa !1670, !noalias !6859 ; 4 uses
  switch i8 %i.i, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !1616, !noalias !6859 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1619, !noalias !6859 ; 2 uses
  switch i8 %i.m, label %bb.d [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !1572, !noalias !6859
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.f:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !1572, !noalias !6859
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.g:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !1572, !noalias !6859
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.h:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !1621, !noalias !6859
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.i:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !1572, !noalias !6859
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.j:                                             ; preds = %bb.c
  %i.s = load i8, ptr %i.k, align 8, !tbaa !280, !noalias !6859
  %.sroa.38.32.insert.ext = zext i8 %i.s to i64
  %i.t = inttoptr i64 %.sroa.38.32.insert.ext to ptr
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.k:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !1572, !noalias !6859
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.l:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !1572, !noalias !6859
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.m:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !1572, !noalias !6859
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.n:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !1572, !noalias !6859
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.o:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !1572, !noalias !6859
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.p:                                             ; preds = %bb.a
  %i.z = load i8, ptr %i.g, align 8, !tbaa !280, !noalias !6859
  %.sroa.1830.24.insert.ext = zext i8 %i.z to i64
  %i.aa = inttoptr i64 %.sroa.1830.24.insert.ext to ptr
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit: ; preds = %bb.a, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.c, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.50.1 = phi i8 [ undef, %bb.a ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ %i.m, %bb.c ], [ undef, %bb.p ], [ undef, %bb.o ], [ undef, %bb.n ], [ undef, %bb.m ], [ undef, %bb.l ], [ undef, %bb.k ] ; 2 uses
  %.sroa.38.2 = phi ptr [ undef, %bb.a ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.p, %bb.g ], [ %i.q, %bb.h ], [ %i.r, %bb.i ], [ %i.t, %bb.j ], [ undef, %bb.c ], [ undef, %bb.p ], [ undef, %bb.o ], [ undef, %bb.n ], [ undef, %bb.m ], [ undef, %bb.l ], [ undef, %bb.k ] ; 6 uses
  %.sroa.1830.2 = phi ptr [ undef, %bb.a ], [ %i.j, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ], [ %i.j, %bb.c ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ], [ %i.x, %bb.n ], [ %i.w, %bb.m ], [ %i.v, %bb.l ], [ %i.u, %bb.k ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1669
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !1670 ; 4 uses
  switch i8 %i.ag, label %bb.q [
    i8 0, label %bb.af
    i8 1, label %bb.r
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.ab
    i8 5, label %bb.ac
    i8 6, label %bb.ad
    i8 7, label %bb.ae
  ]

bb.q:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  unreachable

bb.r:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !1616 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !1619 ; 2 uses
  switch i8 %i.ak, label %bb.s [
    i8 0, label %bb.af
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
    i8 5, label %bb.x
    i8 6, label %bb.y
  ]

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1572
  br label %bb.af

bb.u:                                             ; preds = %bb.r
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !1572
  br label %bb.af

bb.v:                                             ; preds = %bb.r
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !1572
  br label %bb.af

bb.w:                                             ; preds = %bb.r
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !1621
  br label %bb.af

bb.x:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !1572
  br label %bb.af

bb.y:                                             ; preds = %bb.r
  %i.aq = load i8, ptr %i.ai, align 8, !tbaa !280
  %.sroa.18.32.insert.ext = zext i8 %i.aq to i64
  %i.ar = inttoptr i64 %.sroa.18.32.insert.ext to ptr
  br label %bb.af

bb.z:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !1572
  br label %bb.af

bb.aa:                                            ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !1572
  br label %bb.af

bb.ab:                                            ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !1572
  br label %bb.af

bb.ac:                                            ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !1572
  br label %bb.af

bb.ad:                                            ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !1572
  br label %bb.af

bb.ae:                                            ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.ax = load i8, ptr %i.ae, align 8, !tbaa !280
  %.sroa.4.24.insert.ext = zext i8 %i.ax to i64
  %i.ay = inttoptr i64 %.sroa.4.24.insert.ext to ptr
  br label %bb.af

bb.af:                                            ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.r
  %.sroa.30.1 = phi i8 [ undef, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit ], [ 1, %bb.t ], [ 2, %bb.u ], [ 3, %bb.v ], [ 4, %bb.w ], [ 5, %bb.x ], [ 6, %bb.y ], [ undef, %bb.ae ], [ undef, %bb.ad ], [ undef, %bb.ac ], [ undef, %bb.ab ], [ undef, %bb.aa ], [ undef, %bb.z ], [ %i.ak, %bb.r ] ; 2 uses
  %.sroa.18.2 = phi ptr [ undef, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit ], [ %i.al, %bb.t ], [ %i.am, %bb.u ], [ %i.an, %bb.v ], [ %i.ao, %bb.w ], [ %i.ap, %bb.x ], [ %i.ar, %bb.y ], [ undef, %bb.ae ], [ undef, %bb.ad ], [ undef, %bb.ac ], [ undef, %bb.ab ], [ undef, %bb.aa ], [ undef, %bb.z ], [ undef, %bb.r ] ; 2 uses
  %.sroa.4.1 = phi ptr [ undef, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit ], [ %i.ah, %bb.t ], [ %i.ah, %bb.u ], [ %i.ah, %bb.v ], [ %i.ah, %bb.w ], [ %i.ah, %bb.x ], [ %i.ah, %bb.y ], [ %i.ay, %bb.ae ], [ %i.aw, %bb.ad ], [ %i.av, %bb.ac ], [ %i.au, %bb.ab ], [ %i.at, %bb.aa ], [ %i.as, %bb.z ], [ %i.ah, %bb.r ] ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1745
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.a, ptr %4, align 8
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.c, ptr %.sroa.229.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.bb, align 8, !tbaa !1669
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 20 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store i8 0, ptr %i.bd, align 8, !tbaa !1670
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %.noexc
    i8 1, label %bb.ag
    i8 2, label %bb.ao
    i8 3, label %bb.ap
    i8 4, label %bb.aq
    i8 5, label %bb.ar
    i8 6, label %bb.as
    i8 7, label %bb.at
  ]

default.unreachable:                              ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  store ptr %.sroa.1830.2, ptr %i.bc, align 8, !tbaa !1616
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i8 0, ptr %i.bf, align 8, !tbaa !1619
  switch i8 %.sroa.50.1, label %bb.ah [
    i8 0, label %.sink.split.i.i.i.i.i.i7
    i8 1, label %bb.ai
    i8 2, label %bb.aj
    i8 3, label %bb.ak
    i8 4, label %bb.al
    i8 5, label %bb.am
    i8 6, label %bb.an
  ]

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.ag
  store ptr %.sroa.38.2, ptr %i.be, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i8

bb.aj:                                            ; preds = %bb.ag
  store ptr %.sroa.38.2, ptr %i.be, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i8

bb.ak:                                            ; preds = %bb.ag
  store ptr %.sroa.38.2, ptr %i.be, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i8

bb.al:                                            ; preds = %bb.ag
  store ptr %.sroa.38.2, ptr %i.be, align 8, !tbaa !1563
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i8

bb.am:                                            ; preds = %bb.ag
  store ptr %.sroa.38.2, ptr %i.be, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i8

bb.an:                                            ; preds = %bb.ag
  %i.bg = ptrtoint ptr %.sroa.38.2 to i64
  %.sroa.38.32.extract.trunc = trunc i64 %i.bg to i8
  store i8 %.sroa.38.32.extract.trunc, ptr %i.be, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i8

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i8:             ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  store i8 %.sroa.50.1, ptr %i.bf, align 8, !tbaa !1619
  br label %.sink.split.i.i.i.i.i.i7

bb.ao:                                            ; preds = %bb.af
  store ptr %.sroa.1830.2, ptr %i.bc, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i7

bb.ap:                                            ; preds = %bb.af
  store ptr %.sroa.1830.2, ptr %i.bc, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i7

bb.aq:                                            ; preds = %bb.af
  store ptr %.sroa.1830.2, ptr %i.bc, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i7

bb.ar:                                            ; preds = %bb.af
  store ptr %.sroa.1830.2, ptr %i.bc, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i7

bb.as:                                            ; preds = %bb.af
  store ptr %.sroa.1830.2, ptr %i.bc, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i7

bb.at:                                            ; preds = %bb.af
  %i.bh = ptrtoint ptr %.sroa.1830.2 to i64
  %.sroa.1830.24.extract.trunc = trunc i64 %i.bh to i8
  store i8 %.sroa.1830.24.extract.trunc, ptr %i.bc, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i7

.sink.split.i.i.i.i.i.i7:                         ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i8, %bb.ag
  store i8 %i.i, ptr %i.bd, align 8, !tbaa !1670
  br label %.noexc

.noexc:                                           ; preds = %.sink.split.i.i.i.i.i.i7, %bb.af
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5boost4asio6detail23buffer_sequence_adapterINS0_12const_bufferENS_5beast19buffers_prefix_viewINS4_6detail11buffers_refINS5_IRKNS4_14buffers_suffixINS4_16buffers_cat_viewIJNS7_INS9_IJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEENSA_6detail10chunk_sizeES3_SG_S3_SG_EEEEEEEEEEEE9all_emptyINSR_14const_iteratorEEEbT_SV_:bb.a
  br label %.sink.split.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.a
  %i.ab = load i8, ptr %i.g, align 8, !tbaa !280
  store i8 %i.ab, ptr %i.f, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  store i8 %i.j, ptr %i.h, align 8, !tbaa !1670
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit: ; preds = %bb.a, %.sink.split.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1745
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !1745
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.noexc, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit
  %.05 = phi i64 [ 0, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit ], [ %i.co, %.noexc ] ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !1930
  %i.at = load ptr, ptr %1, align 8, !tbaa !1930
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.r, label %bb.af

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !1905
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !1905
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !1745
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !1745
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !1669
  %i.bc = load ptr, ptr %i.ah, align 8, !tbaa !1669
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.be = load i8, ptr %i.h, align 8, !tbaa !1670 ; 2 uses
  %i.bf = load i8, ptr %i.aj, align 8, !tbaa !1670
  %.not.i.i.i.i.i.i = icmp eq i8 %i.be, %i.bf
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  switch i8 %i.be, label %bb.w [
    i8 0, label %.thread
    i8 1, label %bb.x
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
    i8 5, label %bb.ad
    i8 6, label %bb.ae
    i8 7, label %.thread
  ]

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !1616
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !1616
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.bj = load i8, ptr %i.am, align 8, !tbaa !1619 ; 2 uses
  %i.bk = load i8, ptr %i.an, align 8, !tbaa !1619
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bj, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.bl = add i8 %i.bj, -1
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bl, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.z
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !314
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !314
  %i.bn = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bm
  br label %bb.af

bb.aa:                                            ; preds = %bb.v
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !1572
  %i.bp = load ptr, ptr %i.ai, align 8, !tbaa !1572
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br label %bb.af

bb.ab:                                            ; preds = %bb.v
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !1572
  %i.bs = load ptr, ptr %i.ai, align 8, !tbaa !1572
  %i.bt = icmp eq ptr %i.br, %i.bs
  br label %bb.af

bb.ac:                                            ; preds = %bb.v
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !1572
  %i.bv = load ptr, ptr %i.ai, align 8, !tbaa !1572
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br label %bb.af

bb.ad:                                            ; preds = %bb.v
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !1572
  %i.by = load ptr, ptr %i.ai, align 8, !tbaa !1572
  %i.bz = icmp eq ptr %i.bx, %i.by
  br label %bb.af

bb.ae:                                            ; preds = %bb.v
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !1572
  %i.cb = load ptr, ptr %i.ai, align 8, !tbaa !1572
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y, %bb.x, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.cd = phi i1 [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.y ], [ %i.bn, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.aa ], [ %i.bt, %bb.ab ], [ %i.bw, %bb.ac ], [ %i.bz, %bb.ad ], [ %i.cc, %bb.ae ], [ false, %bb.x ]
  %i.ce = icmp samesign ugt i64 %.05, 63
  %.not11 = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %.not11, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cf = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  %i.cg = extractvalue { ptr, i64 } %i.cf, 1
  %i.ch = load i64, ptr %i.ao, align 8, !tbaa !1906
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cg)
  %i.ci = load i64, ptr %i.ap, align 8, !tbaa !1932
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ci, i64 %spec.select.i.i)
  %.not = icmp eq i64 %spec.select.i, 0
  br i1 %.not, label %.noexc, label %.thread

.noexc:                                           ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorppEi(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef 0)
  %i.cj = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aq)
  %i.ck = extractvalue { ptr, i64 } %i.cj, 1
  %i.cl = load i64, ptr %i.ar, align 8, !tbaa !1906
  %spec.select.i.i8 = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.cm = load i64, ptr %i.ap, align 8, !tbaa !1932
  %i.cn = sub i64 %i.cm, %spec.select.i.i8
  store i64 %i.cn, ptr %i.ap, align 8, !tbaa !1932
  %i.co = add nuw nsw i64 %.05, 1
  br label %bb.q, !llvm.loop !6953

.thread:                                          ; preds = %bb.v, %bb.v, %bb.z, %bb.af, %bb.ag
  %.06 = phi i1 [ false, %bb.ag ], [ true, %bb.af ], [ true, %bb.z ], [ true, %bb.v ], [ true, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i1 %.06
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewINS0_6detail11buffers_refINS1_IRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS3_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !1903, !noalias !6964 ; 24 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1896, !noalias !6965 ; 14 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1895, !noalias !6965, !nonnull !310, !align !313 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1669, !noalias !6966 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.k = load i8, ptr %i.j, align 8, !tbaa !1670, !noalias !6966 ; 2 uses
  switch i8 %i.k, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit.thread63
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit.thread63: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.l, align 8
  %.sroa.533.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx67, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.m, align 8, !tbaa !1669
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.n, align 8, !tbaa !1670
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !1616, !noalias !6966 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1619, !noalias !6966 ; 2 uses
  switch i8 %i.r, label %bb.d [
    i8 0, label %.thread98
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ]

.thread98:                                        ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.s, align 8
  %.sroa.533.0..sroa_idx59101 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx59101, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.t, align 8, !tbaa !1669
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.v, align 8, !tbaa !1670
  store ptr %i.o, ptr %i.u, align 8, !tbaa !1616
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.w, align 8, !tbaa !1619
  br label %.sink.split.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !1572, !noalias !6966
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.y, align 8
  %.sroa.533.0..sroa_idx59105 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx59105, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.z, align 8, !tbaa !1669
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !1670
  store ptr %i.o, ptr %i.aa, align 8, !tbaa !1616
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !1572, !noalias !6966
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.ae, align 8
  %.sroa.533.0..sroa_idx59112 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx59112, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.af, align 8, !tbaa !1669
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.ah, align 8, !tbaa !1670
  store ptr %i.o, ptr %i.ag, align 8, !tbaa !1616
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ad, ptr %i.ai, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !1572, !noalias !6966
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.ak, align 8
  %.sroa.533.0..sroa_idx59118 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx59118, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.al, align 8, !tbaa !1669
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.an, align 8, !tbaa !1670
  store ptr %i.o, ptr %i.am, align 8, !tbaa !1616
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !1621, !noalias !6966
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.aq, align 8
  %.sroa.533.0..sroa_idx59124 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx59124, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.ar, align 8, !tbaa !1669
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !1670
  store ptr %i.o, ptr %i.as, align 8, !tbaa !1616
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !1563
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !1572, !noalias !6966
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.aw, align 8
  %.sroa.533.0..sroa_idx59130 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx59130, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.ax, align 8, !tbaa !1669
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.az, align 8, !tbaa !1670
  store ptr %i.o, ptr %i.ay, align 8, !tbaa !1616
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.av, ptr %i.ba, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.bb = load i8, ptr %i.p, align 8, !tbaa !280, !noalias !6966
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.bc, align 8
  %.sroa.533.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx59, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.bd, align 8, !tbaa !1669
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.bf, align 8, !tbaa !1670
  store ptr %i.o, ptr %i.be, align 8, !tbaa !1616
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.bb, ptr %i.bg, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bh = phi ptr [ %i.bf, %bb.j ], [ %i.az, %bb.i ], [ %i.at, %bb.h ], [ %i.an, %bb.g ], [ %i.ah, %bb.f ], [ %i.ab, %bb.e ]
  %i.bi = phi ptr [ %i.bd, %bb.j ], [ %i.ax, %bb.i ], [ %i.ar, %bb.h ], [ %i.al, %bb.g ], [ %i.af, %bb.f ], [ %i.z, %bb.e ]
  %i.bj = phi ptr [ %i.bc, %bb.j ], [ %i.aw, %bb.i ], [ %i.aq, %bb.h ], [ %i.ak, %bb.g ], [ %i.ae, %bb.f ], [ %i.y, %bb.e ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.r, ptr %i.bk, align 8, !tbaa !1619
  br label %.sink.split.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !1572, !noalias !6966
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.bm, align 8
  %.sroa.533.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx72, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.bn, align 8, !tbaa !1669
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.bp, align 8, !tbaa !1670
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !1572, !noalias !6966
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.br, align 8
  %.sroa.533.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx78, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.bs, align 8, !tbaa !1669
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.bu, align 8, !tbaa !1670
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.a
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !1572, !noalias !6966
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.bw, align 8
  %.sroa.533.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx84, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.bx, align 8, !tbaa !1669
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.bz, align 8, !tbaa !1670
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i

bb.n:                                             ; preds = %bb.a
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !1572, !noalias !6966
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.cb, align 8
  %.sroa.533.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx90, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.cc, align 8, !tbaa !1669
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.ce, align 8, !tbaa !1670
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i

bb.o:                                             ; preds = %bb.a
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !1572, !noalias !6966
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.cg, align 8
  %.sroa.533.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx96, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.ch, align 8, !tbaa !1669
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.cj, align 8, !tbaa !1670
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !1572
  br label %.sink.split.i.i.i.i.i

bb.p:                                             ; preds = %bb.a
  %i.ck = load i8, ptr %i.i, align 8, !tbaa !280, !noalias !6966
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.cl, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %.sroa.533.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.h, ptr %i.cm, align 8, !tbaa !1669
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.co, align 8, !tbaa !1670
  store i8 %i.ck, ptr %i.cn, align 8, !tbaa !280
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %.thread98, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = phi ptr [ %i.co, %bb.p ], [ %i.cj, %bb.o ], [ %i.ce, %bb.n ], [ %i.bz, %bb.m ], [ %i.bu, %bb.l ], [ %i.bp, %bb.k ], [ %i.bh, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %.thread98 ]
  %i.cq = phi ptr [ %i.cm, %bb.p ], [ %i.ch, %bb.o ], [ %i.cc, %bb.n ], [ %i.bx, %bb.m ], [ %i.bs, %bb.l ], [ %i.bn, %bb.k ], [ %i.bi, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %.thread98 ]
  %i.cr = phi ptr [ %i.cl, %bb.p ], [ %i.cg, %bb.o ], [ %i.cb, %bb.n ], [ %i.bw, %bb.m ], [ %i.br, %bb.l ], [ %i.bm, %bb.k ], [ %i.bj, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %.thread98 ]
  store i8 %i.k, ptr %i.cp, align 8, !tbaa !1670
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit.thread63, %.sink.split.i.i.i.i.i
  %i.cs = phi ptr [ %i.m, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit.thread63 ], [ %i.cq, %.sink.split.i.i.i.i.i ] ; 2 uses
  %i.ct = phi ptr [ %i.l, %_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit.thread63 ], [ %i.cr, %.sink.split.i.i.i.i.i ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store ptr %i.f, ptr %i.cu, align 8, !tbaa !1745
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1669
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !1670 ; 3 uses
  switch i8 %i.cz, label %bb.r [
    i8 0, label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit
    i8 1, label %bb.s
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
    i8 5, label %bb.ad
    i8 6, label %bb.ae
    i8 7, label %bb.af
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !1616 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !1619 ; 2 uses
  switch i8 %i.dd, label %bb.t [
    i8 0, label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
    i8 5, label %bb.y
    i8 6, label %bb.z
  ]

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !1572
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

bb.v:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !1572
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

bb.w:                                             ; preds = %bb.s
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !1572
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

bb.x:                                             ; preds = %bb.s
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !1621
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

bb.y:                                             ; preds = %bb.s
  %i.di = load ptr, ptr %i.db, align 8, !tbaa !1572
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

bb.z:                                             ; preds = %bb.s
  %i.dj = load i8, ptr %i.db, align 8, !tbaa !280
  %.sroa.21.32.insert.ext = zext i8 %i.dj to i64
  %i.dk = inttoptr i64 %.sroa.21.32.insert.ext to ptr
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

bb.aa:                                            ; preds = %bb.q
  %i.dl = load ptr, ptr %i.cx, align 8, !tbaa !1572
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

bb.ab:                                            ; preds = %bb.q
  %i.dm = load ptr, ptr %i.cx, align 8, !tbaa !1572
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

bb.ac:                                            ; preds = %bb.q
  %i.dn = load ptr, ptr %i.cx, align 8, !tbaa !1572
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

bb.ad:                                            ; preds = %bb.q
  %i.do = load ptr, ptr %i.cx, align 8, !tbaa !1572
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

bb.ae:                                            ; preds = %bb.q
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !1572
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

bb.af:                                            ; preds = %bb.q
  %i.dq = load i8, ptr %i.cx, align 8, !tbaa !280
  %.sroa.8.24.insert.ext = zext i8 %i.dq to i64
  %i.dr = inttoptr i64 %.sroa.8.24.insert.ext to ptr
  br label %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit

_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit: ; preds = %bb.q, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.s
  %.sroa.28.1 = phi i8 [ undef, %bb.q ], [ 1, %bb.u ], [ 2, %bb.v ], [ 3, %bb.w ], [ 4, %bb.x ], [ 5, %bb.y ], [ 6, %bb.z ], [ undef, %bb.af ], [ undef, %bb.ae ], [ undef, %bb.ad ], [ undef, %bb.ac ], [ undef, %bb.ab ], [ undef, %bb.aa ], [ %i.dd, %bb.s ] ; 2 uses
  %.sroa.21.2 = phi ptr [ undef, %bb.q ], [ %i.de, %bb.u ], [ %i.df, %bb.v ], [ %i.dg, %bb.w ], [ %i.dh, %bb.x ], [ %i.di, %bb.y ], [ %i.dk, %bb.z ], [ undef, %bb.af ], [ undef, %bb.ae ], [ undef, %bb.ad ], [ undef, %bb.ac ], [ undef, %bb.ab ], [ undef, %bb.aa ], [ undef, %bb.s ]
  %.sroa.8.1 = phi ptr [ undef, %bb.q ], [ %i.da, %bb.u ], [ %i.da, %bb.v ], [ %i.da, %bb.w ], [ %i.da, %bb.x ], [ %i.da, %bb.y ], [ %i.da, %bb.z ], [ %i.dr, %bb.af ], [ %i.dp, %bb.ae ], [ %i.do, %bb.ad ], [ %i.dn, %bb.ac ], [ %i.dm, %bb.ab ], [ %i.dl, %bb.aa ], [ %i.da, %bb.s ] ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1745
  %3 = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %4 = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 6 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = add nsw i8 %.sroa.28.1, -1
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.dy, 5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aq, %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit
  %i.dz = phi ptr [ %i.c, %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit ], [ %.pre, %bb.aq ]
  %.011 = phi i64 [ %1, %_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE3endEv.exit ], [ %i.fa, %bb.aq ] ; 4 uses
  %i.ea = icmp eq ptr %i.dz, %i.c
  br i1 %i.ea, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.eb = load ptr, ptr %3, align 8, !tbaa !1745
  %i.ec = icmp eq ptr %i.eb, %i.dt
  br i1 %i.ec, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ed = load ptr, ptr %i.cs, align 8, !tbaa !1669
  %i.ee = icmp eq ptr %i.ed, %i.cw
  br i1 %i.ee, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ef = load i8, ptr %5, align 8, !tbaa !1670
  %.not.i.i.i.i.i = icmp eq i8 %i.ef, %i.cz
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.cz, label %bb.al [
    i8 0, label %.thread48
    i8 1, label %bb.am
    i8 2, label %.split135
    i8 3, label %.split134
    i8 4, label %.split133
    i8 5, label %.split
    i8 6, label %bb.ap
    i8 7, label %.thread48
  ]

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.eg = load ptr, ptr %4, align 8, !tbaa !1616
  %i.eh = icmp eq ptr %i.eg, %.sroa.8.1
  br i1 %i.eh, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.ei = load i8, ptr %i.dv, align 8, !tbaa !1619
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ei, %.sroa.28.1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread48

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ao
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !314
  %i.ej = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.21.2
  br i1 %i.ej, label %.thread48, label %.thread

.split135:                                        ; preds = %bb.ak
  %i.ek = load ptr, ptr %4, align 8, !tbaa !1572
  %i.el = icmp eq ptr %i.ek, %.sroa.8.1
  br i1 %i.el, label %.thread48, label %.thread

.split134:                                        ; preds = %bb.ak
  %i.em = load ptr, ptr %4, align 8, !tbaa !1572
  %i.en = icmp eq ptr %i.em, %.sroa.8.1
  br i1 %i.en, label %.thread48, label %.thread

.split133:                                        ; preds = %bb.ak
  %i.eo = load ptr, ptr %4, align 8, !tbaa !1572
  %i.ep = icmp eq ptr %i.eo, %.sroa.8.1
  br i1 %i.ep, label %.thread48, label %.thread

.split:                                           ; preds = %bb.ak
  %i.eq = load ptr, ptr %4, align 8, !tbaa !1572
  %i.er = icmp eq ptr %i.eq, %.sroa.8.1
  br i1 %i.er, label %.thread48, label %.thread

bb.ap:                                            ; preds = %bb.ak
  %i.es = load ptr, ptr %4, align 8, !tbaa !1572
  %i.et = icmp eq ptr %i.es, %.sroa.8.1
  br i1 %i.et, label %.thread48, label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %.split135, %.split134, %.split133, %.split, %bb.an, %bb.am, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorppEi(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.ct, i32 noundef 0)
  %i.eu = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dw)
  %i.ev = extractvalue { ptr, i64 } %i.eu, 1
  %i.ew = load i64, ptr %i.dx, align 8, !tbaa !1906
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ew, i64 %i.ev) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.not = icmp ult i64 %spec.select.i, %.011
  br i1 %.not, label %bb.aq, label %.thread49

.thread49:                                        ; preds = %.thread
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !1931
  %i.ey = add i64 %i.ex, %.011
  store i64 %i.ey, ptr %i.a, align 8, !tbaa !1931
  %i.ez = sub i64 %.011, %spec.select.i
  store i64 %i.ez, ptr %i.b, align 8, !tbaa !1933
  br label %.thread48

bb.aq:                                            ; preds = %.thread
  %i.fa = sub nuw i64 %.011, %spec.select.i
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !1931
  %i.fc = add i64 %i.fb, %spec.select.i
  store i64 %i.fc, ptr %i.a, align 8, !tbaa !1931
  %.pre = load ptr, ptr %i.ct, align 8, !tbaa !1905
  br label %bb.ag

.thread48:                                        ; preds = %bb.ao, %bb.ak, %bb.ak, %bb.ap, %.split, %.split133, %.split134, %.split135, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %.thread49
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEEC2IJmS7_S8_RS7_S8_RKS7_S7_S8_EEENS_11optional_ns15in_place_init_tEDpOT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !277    ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #41, !noalias !6973 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  store i32 1, ptr %i.c, align 8, !tbaa !386, !noalias !6973
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !387, !noalias !6973
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5boost5beast4http6detail10chunk_size8sequenceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !271, !noalias !6973
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 49 ; 2 uses
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %bb.b, label %.preheader.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i8 48, ptr %i.g, align 8, !tbaa !280, !noalias !6973
  br label %.loopexit

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.a, %.preheader.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi i64 [ %i.l, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.e, %bb.a ]
  %i.h = and i64 %.012.i.i.i.i.i.i.i.i.i, 15
  %i.i = getelementptr inbounds nuw i8, ptr @.str.121, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !280, !noalias !6973
  %i.k = getelementptr inbounds i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !280, !noalias !6973
  %i.l = lshr i64 %.012.i.i.i.i.i.i.i.i.i, 4      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i, !llvm.loop !194

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.b
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.k, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = ptrtoint ptr %.09.i.i.i.i.i.i.i.i.i to i64
  %i.p = sub i64 %i.n, %i.o
  store ptr %.09.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !314, !noalias !6973
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !277, !noalias !6973
  store ptr %i.m, ptr %0, align 8, !tbaa !1743
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.q, align 8, !tbaa !384
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !280
  %.not.i.i.i.i.i.i.i.i.i10 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.s = load i32, ptr %i.c, align 8, !tbaa !374
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.c, align 8, !tbaa !374
  br label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.u = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !787
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !787
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !787
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !787
  %i.z = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.c, align 8, !tbaa !386
  store i32 0, ptr %i.d, align 4, !tbaa !387
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !195
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !195
  br label %_ZN5boost5beast4http6detail10chunk_sizeD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !280
  %.not.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i32 %i.ab, -1
  store i32 %i.aj, ptr %i.c, align 8, !tbaa !374
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ak = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.al, label %bb.j, label %_ZN5boost5beast4http6detail10chunk_sizeD2Ev.exit, !prof !388

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZN5boost5beast4http6detail10chunk_sizeD2Ev.exit

_ZN5boost5beast4http6detail10chunk_sizeD2Ev.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6975)
  store ptr %0, ptr %i.am, align 8, !tbaa !1707, !alias.scope !6976
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i64 1, ptr %i.ao, align 8, !alias.scope !6976
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1743, !noalias !6976 ; 2 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !1572, !alias.scope !6976
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !6976
  store ptr %i.am, ptr %9, align 8, !tbaa !1710, !noalias !6976
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !tbaa !277
  %.not.i.i.i.i11 = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i.i11, label %._crit_edge.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS4_10chunk_crlfES7_S8_S7_S7_S8_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISF_PKS7_EE5valueEiE4typeENSD_IXntsr14is_convertibleISB_SG_EE5valueEiE4typeENSD_IXntsr14is_convertibleISB_S7_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i:                              ; preds = %_ZN5boost5beast4http6detail10chunk_sizeD2Ev.exit
  store ptr %i.v, ptr %i.an, align 8, !tbaa !1572, !alias.scope !6976
  store i8 2, ptr %i.ao, align 8, !tbaa !1708, !alias.scope !6976
  invoke void @_ZN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_S6_S6_S7_EE14const_iterator9increment4nextILm2EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS4_10chunk_crlfES7_S8_S7_S7_S8_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISF_PKS7_EE5valueEiE4typeENSD_IXntsr14is_convertibleISB_SG_EE5valueEiE4typeENSD_IXntsr14is_convertibleISB_S7_EE5valueEiE4typeE.exit unwind label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #37
  unreachable

_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS4_10chunk_crlfES7_S8_S7_S7_S8_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISF_PKS7_EE5valueEiE4typeENSD_IXntsr14is_convertibleISB_SG_EE5valueEiE4typeENSD_IXntsr14is_convertibleISB_S7_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast4http6detail10chunk_sizeD2Ev.exit, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36, !noalias !6976
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.as, align 8, !tbaa !1718
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !1948, !nonnull !310, !align !313 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1690, !noalias !6983 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1691, !noalias !6983 ; 7 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS5_10chunk_crlfES8_S9_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSE_PKNS0_14mutable_bufferEEE5valueEiE4typeENSG_IXntsr14is_convertibleISH_PKS8_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_SI_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_S8_EE5valueEiE4typeE.exit.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
end_hunk_5
