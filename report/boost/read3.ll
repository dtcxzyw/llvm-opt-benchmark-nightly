Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read3?download=true
inline.NumInlined: 77476
inline.NumDeleted: 23382
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_:bb.a
bb.g:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.f, align 8, !tbaa !1952
  %i.m = icmp eq ptr %i.k, %i.i
  br i1 %i.m, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !8219

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %.ptr5.i.i, ptr %i.f, align 8, !tbaa !1952
  store i8 2, ptr %i.n, align 8, !tbaa !2009
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !1319
  %.not.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.o, ptr %i.f, align 8, !tbaa !1952
  store i8 3, ptr %i.n, align 8, !tbaa !2009
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !tbaa !1319
  %.not.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1884, !noalias !8234
  store ptr %i.q, ptr %i.f, align 8, !tbaa !1866
  store i8 4, ptr %i.n, align 8, !tbaa !2009
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.h:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !2094, !nonnull !1352, !align !1356 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1952
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !1952
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !2008 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %._crit_edge.i.i11, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %bb.h, %bb.i
  %i.y = phi ptr [ %i.z, %bb.i ], [ %i.u, %bb.h ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.3.0.copyload.i.i9 = load i64, ptr %.sroa.3.0..sroa_idx.i.i8, align 8, !tbaa !1319
  %.not.i.i10 = icmp eq i64 %.sroa.3.0.copyload.i.i9, 0
  br i1 %.not.i.i10, label %bb.i, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.i:                                             ; preds = %.lr.ph.i.i7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.s, align 8, !tbaa !1952
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %._crit_edge.i.i11, label %.lr.ph.i.i7, !llvm.loop !8224

._crit_edge.i.i11:                                ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !1952
  store i8 3, ptr %i.ab, align 8, !tbaa !2009
  %.sroa.3.0..sroa_idx.i.i.i12 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.3.0.copyload.i.i.i13 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i12, align 8, !tbaa !1319
  %.not.i.i.i14 = icmp eq i64 %.sroa.3.0.copyload.i.i.i13, 0
  br i1 %.not.i.i.i14, label %._crit_edge.i.i.i15, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

._crit_edge.i.i.i15:                              ; preds = %._crit_edge.i.i11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1884, !noalias !8235
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !1866
  store i8 4, ptr %i.ab, align 8, !tbaa !2009
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !2094, !nonnull !1352, !align !1356 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1952
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !1952
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !2008
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 3 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %._crit_edge.i.i20, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %bb.j, %bb.k
  %i.al = phi ptr [ %i.am, %bb.k ], [ %i.ah, %bb.j ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i17 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.3.0.copyload.i.i18 = load i64, ptr %.sroa.3.0..sroa_idx.i.i17, align 8, !tbaa !1319
  %.not.i.i19 = icmp eq i64 %.sroa.3.0.copyload.i.i18, 0
  br i1 %.not.i.i19, label %bb.k, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.k:                                             ; preds = %.lr.ph.i.i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  store ptr %i.am, ptr %i.af, align 8, !tbaa !1952
  %i.an = icmp eq ptr %i.am, %i.aj
  br i1 %i.an, label %._crit_edge.i.i20, label %.lr.ph.i.i16, !llvm.loop !8229

._crit_edge.i.i20:                                ; preds = %bb.k, %bb.j
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !1884, !noalias !8236
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !1866
  store i8 4, ptr %i.ap, align 8, !tbaa !2009
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.l:                                             ; preds = %bb.a
  %i.aq = load ptr, ptr %1, align 8, !tbaa !2094, !nonnull !1352, !align !1356
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1884
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1455
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !1884
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.m:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %1, align 8, !tbaa !2094, !nonnull !1352, !align !1356
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1952
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.pn.i = phi ptr [ %i.aw, %bb.m ], [ %i.bc, %bb.q ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  store ptr %storemerge.i, ptr %i.av, align 8, !tbaa !1952
  %i.ax = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.o, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i, !prof !1967

bb.o:                                             ; preds = %bb.n
  %i.az = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #35
  %.not.i.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr @.str.101, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, align 8, !tbaa !1798
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 8), align 8, !tbaa !1797
  %i.ba = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #35
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i

_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bb = icmp eq ptr %.pn.i, @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb
  br i1 %i.bb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !1952 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.3.0.copyload.i.i22 = load i64, ptr %.sroa.3.0..sroa_idx.i.i21, align 8, !tbaa !1319
  %.not.i.i23 = icmp eq i64 %.sroa.3.0.copyload.i.i22, 0
  br i1 %.not.i.i23, label %bb.n, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit, !llvm.loop !54

bb.r:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i
  %i.bd = load ptr, ptr %1, align 8, !tbaa !2094, !nonnull !1352, !align !1356 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i8 0, ptr %i.be, align 8, !tbaa !2092
  store i8 6, ptr %i.bf, align 8, !tbaa !2009
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.107)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr @.str.103, ptr %3, align 8, !tbaa !1435
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.104, ptr %i.bg, align 8, !tbaa !1436
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 266, ptr %i.bh, align 8, !tbaa !1437
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 59, ptr %i.bi, align 4, !tbaa !1438
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #37
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !2097, !nonnull !1352, !align !1356 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1992, !noalias !8241 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1993, !noalias !8241 ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !1992
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !1993
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !2008, !noalias !8241 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !2009, !noalias !8241 ; 2 uses
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
  store ptr %i.e, ptr %i.p, align 8, !tbaa !1992
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !1993
  store ptr %i.l, ptr %i.q, align 8, !tbaa !2008
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !2009
  br label %.sink.split.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !1952, !noalias !8241
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.u, align 8, !tbaa !1992
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !1993
  store ptr %i.l, ptr %i.v, align 8, !tbaa !2008
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.x, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !1952, !noalias !8241
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.z, align 8, !tbaa !1992
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !1993
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !2008
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !1952, !noalias !8241
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !1992
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !1993
  store ptr %i.l, ptr %i.af, align 8, !tbaa !2008
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !1884, !noalias !8241
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !1992
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.al, align 8, !tbaa !1993
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !2008
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !1866
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !1952, !noalias !8241
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !1992
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !1993
  store ptr %i.l, ptr %i.ap, align 8, !tbaa !2008
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.m, align 8, !tbaa !1322, !noalias !8241
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.at, align 8, !tbaa !1992
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !1993
  store ptr %i.l, ptr %i.au, align 8, !tbaa !2008
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.as, ptr %i.aw, align 8, !tbaa !1322
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.av, %bb.j ], [ %i.aq, %bb.i ], [ %i.al, %bb.h ], [ %i.ag, %bb.g ], [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ay = phi ptr [ %i.au, %bb.j ], [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.af, %bb.g ], [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.az = phi ptr [ %i.at, %bb.j ], [ %i.ao, %bb.i ], [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.o, ptr %i.ba, align 8, !tbaa !2009
  br label %.sink.split.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !1952, !noalias !8241
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bc, align 8, !tbaa !1992
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !1993
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bf = load i8, ptr %i.f, align 8, !tbaa !1322, !noalias !8241
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !1992
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !1993
  store i8 %i.bf, ptr %i.bh, align 8, !tbaa !1322
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %.thread, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = phi ptr [ %i.bi, %bb.l ], [ %i.be, %bb.k ], [ %i.ax, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %.thread ] ; 2 uses
  %i.bk = phi ptr [ %i.bh, %bb.l ], [ %i.bd, %bb.k ], [ %i.ay, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.thread ]
  %i.bl = phi ptr [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.thread ]
  store i8 %i.h, ptr %i.bj, align 8, !tbaa !1993
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i.i.i.i.i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59
  %i.bm = phi ptr [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59 ], [ %i.bj, %.sink.split.i.i.i.i.i.i ] ; 2 uses
  %i.bn = phi ptr [ %i.j, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59 ], [ %i.bk, %.sink.split.i.i.i.i.i.i ] ; 3 uses
  %i.bo = phi ptr [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59 ], [ %i.bl, %.sink.split.i.i.i.i.i.i ] ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.bp, align 8, !tbaa !2098
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
  %6 = load ptr, ptr %i.bo, align 8, !tbaa !1992
  %7 = icmp eq ptr %6, %i.c
  br i1 %7, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %.pre49 = load i8, ptr %i.bm, align 8, !tbaa !1993
  %.not.i.i.i.i = icmp eq i8 %.pre49, 3
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.n, %._crit_edge, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !8242)
  %8 = load ptr, ptr %i.bo, align 8, !tbaa !1992, !noalias !8242
  store ptr %8, ptr %5, align 8, !tbaa !1992, !alias.scope !8242
  store i8 0, ptr %i.br, align 8, !tbaa !1993, !alias.scope !8242
  %9 = load i8, ptr %i.bm, align 8, !tbaa !1993, !noalias !8242 ; 3 uses
  switch i8 %9, label %bb.q [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i
    i8 1, label %bb.r
    i8 2, label %bb.z
    i8 3, label %bb.aa
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !2008, !noalias !8242
  store ptr %i.bz, ptr %i.bq, align 8, !tbaa !2008, !alias.scope !8242
  store i8 0, ptr %i.bu, align 8, !tbaa !2009, !alias.scope !8242
  %i.ca = load i8, ptr %i.bv, align 8, !tbaa !2009, !noalias !8242 ; 2 uses
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
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !1952, !noalias !8242
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !1952, !alias.scope !8242
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !1952, !noalias !8242
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !1952, !alias.scope !8242
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.bt, align 8, !tbaa !1952, !noalias !8242
  store ptr %i.cd, ptr %i.bs, align 8, !tbaa !1952, !alias.scope !8242
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !1884, !noalias !8242
  store ptr %i.ce, ptr %i.bs, align 8, !tbaa !1866, !alias.scope !8242
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.bt, align 8, !tbaa !1952, !noalias !8242
  store ptr %i.cf, ptr %i.bs, align 8, !tbaa !1952, !alias.scope !8242
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.r
  %i.cg = load i8, ptr %i.bt, align 8, !tbaa !1322, !noalias !8242
  store i8 %i.cg, ptr %i.bs, align 8, !tbaa !1322, !alias.scope !8242
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  store i8 %i.ca, ptr %i.bu, align 8, !tbaa !2009, !alias.scope !8242
  br label %.sink.split.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !1952, !noalias !8242
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !1952, !alias.scope !8242
  br label %.sink.split.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.p
  %i.ci = load i8, ptr %i.bn, align 1, !tbaa !1322, !noalias !8242
  store i8 %i.ci, ptr %i.bq, align 8, !tbaa !1322, !alias.scope !8242
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.aa, %bb.z, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r
  store i8 %9, ptr %i.br, align 8, !tbaa !1993, !alias.scope !8242
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.p
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !2098, !alias.scope !8242
  %i.cj = zext nneg i8 %9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35, !noalias !8242
  store ptr %i.bo, ptr %4, align 8, !tbaa !1995, !noalias !8242
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35, !noalias !8242
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !2098 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %5, align 8, !tbaa !1992
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !1992
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.ab, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i
  %.pre.i = load i8, ptr %i.br, align 8, !tbaa !1993
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.ab:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.cq = load i8, ptr %i.br, align 8, !tbaa !1993 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !1993
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
  %i.ct = load ptr, ptr %i.bq, align 8, !tbaa !2008
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !2008
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %bb.af, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cx = load i8, ptr %i.bu, align 8, !tbaa !2009 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !2009
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cx, %i.cz
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.da = add i8 %i.cx, -1
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.da, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ag
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !1357
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !1357
  %i.dc = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, %i.db
  br i1 %i.dc, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i: ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.bq, align 8, !tbaa !1952
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !1952
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ac, %bb.ac
  %i.dg = zext nneg i8 %i.cq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr %5, ptr %3, align 8, !tbaa !1995
  %i.dh = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.di = extractvalue { ptr, i64 } %i.dh, 1
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !2098
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !2003
  %i.dm = call i64 @llvm.usub.sat.i64(i64 %i.di, i64 %i.dl)
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.af, %bb.ae, %bb.ab, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i
  %i.dn = phi i8 [ %.pre.i, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i ], [ 1, %bb.af ], [ 1, %bb.ae ], [ %i.cq, %bb.ab ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ 2, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i ]
  %i.do = zext i8 %i.dn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr %5, ptr %2, align 8, !tbaa !1995
  %i.dp = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.do, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.dq = extractvalue { ptr, i64 } %i.dp, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
  %.pn.i = phi i64 [ %i.dm, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i ], [ %i.dq, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %.not = icmp ult i64 %.pn.i, %.011
  br i1 %.not, label %bb.ah, label %.thread36

.thread36:                                        ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !2099
  %i.ds = add i64 %i.dr, %.011
  store i64 %i.ds, ptr %i.a, align 8, !tbaa !2099
  %i.dt = sub i64 %.011, %.pn.i
  store i64 %i.dt, ptr %i.b, align 8, !tbaa !2100
  br label %.loopexit

bb.ah:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit
  %i.du = sub nuw i64 %.011, %.pn.i
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !2099
  %i.dw = add i64 %i.dv, %.pn.i
  store i64 %i.dw, ptr %i.a, align 8, !tbaa !2099
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !2098
  br label %bb.n

.loopexit:                                        ; preds = %bb.o, %.thread36
  ret void
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.106)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr @.str.103, ptr %5, align 8, !tbaa !1435
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.104, ptr %i.a, align 8, !tbaa !1436
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 205, ptr %i.b, align 8, !tbaa !1437
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 62, ptr %i.c, align 4, !tbaa !1438
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #37
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.s, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.g:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !2102, !nonnull !1352, !align !1356 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1952
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !1952
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !1992
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %i.l = phi ptr [ %i.m, %bb.h ], [ %i.h, %bb.g ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !1319
  %.not.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !1952
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !8243

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !2092
  store i8 3, ptr %i.o, align 8, !tbaa !1993
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.107)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr @.str.103, ptr %3, align 8, !tbaa !1435
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.104, ptr %i.p, align 8, !tbaa !1436
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 266, ptr %i.q, align 8, !tbaa !1437
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 59, ptr %i.r, align 4, !tbaa !1438
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #37
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %common.resume

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclESt17integral_constantImLm2EE.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2102, !nonnull !1352, !align !1356 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !2009
  %i.e = zext i8 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr %i.b, ptr %3, align 8, !tbaa !2011
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.f = load ptr, ptr %0, align 8, !tbaa !2102, !nonnull !1352, !align !1356 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !1992 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2004, !noalias !8248
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !2008
  %i.l = icmp eq ptr %i.k, %i.j
  %.pre16.i4 = load i8, ptr %i.h, align 8, !tbaa !2009 ; 2 uses
  %.not.i.i.i5 = icmp eq i8 %.pre16.i4, 6
  %or.cond.i6 = select i1 %i.l, i1 %.not.i.i.i5, i1 false
  br i1 %or.cond.i6, label %.lr.ph.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.pre16.i7 = phi i8 [ %.pre16.i, %bb.b ], [ %.pre16.i4, %bb.a ]
  %i.m = zext i8 %.pre16.i7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr %i.g, ptr %2, align 8, !tbaa !2011
  %i.n = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.o = extractvalue { ptr, i64 } %i.n, 1
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.b, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.p = load i8, ptr %i.h, align 8, !tbaa !2009
  %i.q = zext i8 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store ptr %i.g, ptr %1, align 8, !tbaa !2011
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !2102 ; 2 uses
  %i.r = load ptr, ptr %.pre.i, align 8, !tbaa !1992 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2004, !noalias !8248
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !2008
  %i.u = icmp eq ptr %i.t, %i.s
  %.pre16.i = load i8, ptr %i.h, align 8, !tbaa !2009 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.pre16.i, 6
  %or.cond.i = select i1 %i.u, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i.i, label %.lr.ph, !llvm.loop !53

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.a
  %.lcssa2 = phi ptr [ %i.f, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %.lcssa = phi ptr [ %i.i, %bb.a ], [ %i.r, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa2, i64 8 ; 3 uses
  %.ptr7.i = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa2, i64 32 ; 2 uses
  store ptr %.ptr7.i, ptr %i.v, align 8, !tbaa !1952
  store i8 2, ptr %i.w, align 8, !tbaa !1993
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !1319
  %.not.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %.ptr6.i = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  store ptr %.ptr6.i, ptr %i.v, align 8, !tbaa !1952
  store i8 0, ptr %i.v, align 8, !tbaa !2092
  store i8 3, ptr %i.w, align 8, !tbaa !1993
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit: ; preds = %.lr.ph, %.lr.ph.i.i, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextILm3EEEvSt17integral_constantImXT_EE:bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !2020
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !1952 ; 2 uses
  %i.e = icmp eq ptr %.promoted, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.g, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !1319
  %.not = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %.not, label %bb.b, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !1952
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !llvm.loop !8501

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit, !prof !1967

bb.c:                                             ; preds = %._crit_edge
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #35
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.101, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, align 8, !tbaa !1798
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 8), align 8, !tbaa !1797
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #35
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit: ; preds = %._crit_edge, %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, ptr %i.b, align 8, !tbaa !1952
  store i8 4, ptr %i.m, align 8, !tbaa !2021
  %i.n = load ptr, ptr %0, align 8, !tbaa !2133, !nonnull !1352, !align !1356
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !1952
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit
  %i.p = phi ptr [ %i.w, %bb.i ], [ %.pr.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit ]
  %i.q = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i, !prof !1967

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #35
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.101, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, align 8, !tbaa !1798
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 8), align 8, !tbaa !1797
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #35
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i

_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.u = icmp eq ptr %i.p, getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 16)
  br i1 %i.u, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !1952 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !1319
  %.not.i = icmp eq i64 %.sroa.3.0.copyload.i, 0
  br i1 %.not.i, label %bb.i, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.o, align 8, !tbaa !1952
  br label %bb.e, !llvm.loop !63

bb.j:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !2133, !nonnull !1352, !align !1356 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !2020
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !1952
  store i8 5, ptr %i.ab, align 8, !tbaa !2021
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextILm5EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE.exit: ; preds = %.lr.ph, %bb.h, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextILm5EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2133, !nonnull !1352, !align !1356 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !2020
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !1952 ; 2 uses
  %i.e = icmp eq ptr %.promoted, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.g, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !1319
  %.not = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %.not, label %bb.b, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !1952
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !llvm.loop !8502

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit, !prof !1967

bb.c:                                             ; preds = %._crit_edge
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #35
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.101, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, align 8, !tbaa !1798
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 8), align 8, !tbaa !1797
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #35
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit: ; preds = %._crit_edge, %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, ptr %i.b, align 8, !tbaa !1952
  store i8 6, ptr %i.m, align 8, !tbaa !2021
  %i.n = load ptr, ptr %0, align 8, !tbaa !2133, !nonnull !1352, !align !1356
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !1952
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit
  %i.p = phi ptr [ %i.w, %bb.i ], [ %.pr.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit ]
  %i.q = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i, !prof !1967

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #35
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.101, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, align 8, !tbaa !1798
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 8), align 8, !tbaa !1797
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #35
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i

_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.u = icmp eq ptr %i.p, getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 16)
  br i1 %i.u, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !1952 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !1319
  %.not.i = icmp eq i64 %.sroa.3.0.copyload.i, 0
  br i1 %.not.i, label %bb.i, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.o, align 8, !tbaa !1952
  br label %bb.e, !llvm.loop !64

bb.j:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !2133, !nonnull !1352, !align !1356 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i8 0, ptr %i.y, align 8, !tbaa !2092
  store i8 7, ptr %i.z, align 8, !tbaa !2021
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit: ; preds = %.lr.ph, %bb.h, %bb.j
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !2136, !nonnull !1352, !align !1356 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2020, !noalias !8507 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.h = load i8, ptr %i.g, align 8, !tbaa !2021, !noalias !8507 ; 2 uses
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
  store ptr %i.e, ptr %i.i, align 8, !tbaa !2020
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !2021
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !2008, !noalias !8507 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.o = load i8, ptr %i.n, align 8, !tbaa !2009, !noalias !8507 ; 2 uses
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
  store ptr %i.e, ptr %i.p, align 8, !tbaa !2020
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !2021
  store ptr %i.l, ptr %i.q, align 8, !tbaa !2008
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !2009
  br label %.sink.split.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !1952, !noalias !8507
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.u, align 8, !tbaa !2020
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !2021
  store ptr %i.l, ptr %i.v, align 8, !tbaa !2008
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.x, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !1952, !noalias !8507
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.z, align 8, !tbaa !2020
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !2021
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !2008
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !1952, !noalias !8507
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !2020
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !2021
  store ptr %i.l, ptr %i.af, align 8, !tbaa !2008
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !1884, !noalias !8507
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !2020
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.al, align 8, !tbaa !2021
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !2008
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !1866
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !1952, !noalias !8507
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !2020
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !2021
  store ptr %i.l, ptr %i.ap, align 8, !tbaa !2008
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.m, align 8, !tbaa !1322, !noalias !8507
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.at, align 8, !tbaa !2020
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !2021
  store ptr %i.l, ptr %i.au, align 8, !tbaa !2008
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.as, ptr %i.aw, align 8, !tbaa !1322
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.av, %bb.j ], [ %i.aq, %bb.i ], [ %i.al, %bb.h ], [ %i.ag, %bb.g ], [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ay = phi ptr [ %i.au, %bb.j ], [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.af, %bb.g ], [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.az = phi ptr [ %i.at, %bb.j ], [ %i.ao, %bb.i ], [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.o, ptr %i.ba, align 8, !tbaa !2009
  br label %.sink.split.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !1952, !noalias !8507
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bc, align 8, !tbaa !2020
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !2021
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !1952, !noalias !8507
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !2020
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !2021
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.a
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !1952, !noalias !8507
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bk, align 8, !tbaa !2020
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !2021
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i

bb.n:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !1952, !noalias !8507
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bo, align 8, !tbaa !2020
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bq, align 8, !tbaa !2021
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i

bb.o:                                             ; preds = %bb.a
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !1952, !noalias !8507
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bs, align 8, !tbaa !2020
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bu, align 8, !tbaa !2021
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !1952
  br label %.sink.split.i.i.i.i.i

bb.p:                                             ; preds = %bb.a
  %i.bv = load i8, ptr %i.f, align 8, !tbaa !1322, !noalias !8507
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bw, align 8, !tbaa !2020
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.by, align 8, !tbaa !2021
  store i8 %i.bv, ptr %i.bx, align 8, !tbaa !1322
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %.thread, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = phi ptr [ %i.by, %bb.p ], [ %i.bu, %bb.o ], [ %i.bq, %bb.n ], [ %i.bm, %bb.m ], [ %i.bi, %bb.l ], [ %i.be, %bb.k ], [ %i.ax, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %.thread ] ; 2 uses
  %i.ca = phi ptr [ %i.bx, %bb.p ], [ %i.bt, %bb.o ], [ %i.bp, %bb.n ], [ %i.bl, %bb.m ], [ %i.bh, %bb.l ], [ %i.bd, %bb.k ], [ %i.ay, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.thread ]
  %i.cb = phi ptr [ %i.bw, %bb.p ], [ %i.bs, %bb.o ], [ %i.bo, %bb.n ], [ %i.bk, %bb.m ], [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.thread ]
  store i8 %i.h, ptr %i.bz, align 8, !tbaa !2021
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i.i.i.i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64
  %i.cc = phi ptr [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64 ], [ %i.bz, %.sink.split.i.i.i.i.i ] ; 2 uses
  %i.cd = phi ptr [ %i.j, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64 ], [ %i.ca, %.sink.split.i.i.i.i.i ] ; 7 uses
  %i.ce = phi ptr [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64 ], [ %i.cb, %.sink.split.i.i.i.i.i ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.cf, align 8, !tbaa !2137
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
  %4 = load ptr, ptr %i.ce, align 8, !tbaa !2020
  %5 = icmp eq ptr %4, %i.c
  br i1 %5, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %.pre55 = load i8, ptr %i.cc, align 8, !tbaa !2021
  %.not.i.i.i.i = icmp eq i8 %.pre55, 7
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.r, %._crit_edge, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !8508)
  %6 = load ptr, ptr %i.ce, align 8, !tbaa !2020, !noalias !8508
  store ptr %6, ptr %3, align 8, !tbaa !2020, !alias.scope !8508
  store i8 0, ptr %i.ch, align 8, !tbaa !2021, !alias.scope !8508
  %7 = load i8, ptr %i.cc, align 8, !tbaa !2021, !noalias !8508 ; 3 uses
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
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !2008, !noalias !8508
  store ptr %i.cp, ptr %i.cg, align 8, !tbaa !2008, !alias.scope !8508
  store i8 0, ptr %i.ck, align 8, !tbaa !2009, !alias.scope !8508
  %i.cq = load i8, ptr %i.cl, align 8, !tbaa !2009, !noalias !8508 ; 2 uses
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
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !1952, !noalias !8508
  store ptr %i.cr, ptr %i.ci, align 8, !tbaa !1952, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.v
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !1952, !noalias !8508
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !1952, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !1952, !noalias !8508
  store ptr %i.ct, ptr %i.ci, align 8, !tbaa !1952, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.v
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !1884, !noalias !8508
  store ptr %i.cu, ptr %i.ci, align 8, !tbaa !1866, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.v
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !1952, !noalias !8508
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !1952, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.v
  %i.cw = load i8, ptr %i.cj, align 8, !tbaa !1322, !noalias !8508
  store i8 %i.cw, ptr %i.ci, align 8, !tbaa !1322, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  store i8 %i.cq, ptr %i.ck, align 8, !tbaa !2009, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.t
  %i.cx = load ptr, ptr %i.cd, align 8, !tbaa !1952, !noalias !8508
  store ptr %i.cx, ptr %i.cg, align 8, !tbaa !1952, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.t
  %i.cy = load ptr, ptr %i.cd, align 8, !tbaa !1952, !noalias !8508
  store ptr %i.cy, ptr %i.cg, align 8, !tbaa !1952, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cd, align 8, !tbaa !1952, !noalias !8508
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !1952, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.t
  %i.da = load ptr, ptr %i.cd, align 8, !tbaa !1952, !noalias !8508
  store ptr %i.da, ptr %i.cg, align 8, !tbaa !1952, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.t
  %i.db = load ptr, ptr %i.cd, align 8, !tbaa !1952, !noalias !8508
  store ptr %i.db, ptr %i.cg, align 8, !tbaa !1952, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.t
  %i.dc = load i8, ptr %i.cd, align 1, !tbaa !1322, !noalias !8508
  store i8 %i.dc, ptr %i.cg, align 8, !tbaa !1322, !alias.scope !8508
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  store i8 %7, ptr %i.ch, align 8, !tbaa !2021, !alias.scope !8508
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i, %bb.t
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !2137, !alias.scope !8508
  %i.dd = zext nneg i8 %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !8508
  store ptr %i.ce, ptr %2, align 8, !tbaa !2023, !noalias !8508
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !8508
  %i.de = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.df = extractvalue { ptr, i64 } %i.de, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %.not = icmp ult i64 %i.df, %.011
  br i1 %.not, label %bb.aj, label %.thread44

.thread44:                                        ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !2138
  %i.dh = add i64 %i.dg, %.011
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !2138
  %i.di = sub i64 %.011, %i.df
  store i64 %i.di, ptr %i.b, align 8, !tbaa !2139
  br label %.loopexit

bb.aj:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i
  %i.dj = sub nuw i64 %.011, %i.df
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !2138
  %i.dl = add i64 %i.dk, %i.df
  store i64 %i.dl, ptr %i.a, align 8, !tbaa !2138
  %.pre = load ptr, ptr %i.cf, align 8, !tbaa !2137
  br label %bb.r

.loopexit:                                        ; preds = %bb.s, %.thread44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2137 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %0, align 8, !tbaa !2020
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !2020
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !2021
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !2021  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !2021
  %.not.i.i = icmp eq i8 %i.j, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.c:                                             ; preds = %bb.b
  switch i8 %i.j, label %bb.d [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3
    i8 1, label %bb.e
    i8 2, label %.split4
    i8 3, label %.split
    i8 4, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit
    i8 5, label %.split6
    i8 6, label %.split5
    i8 7, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !2008
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !2008
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !2009  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.u = load i8, ptr %i.t, align 8, !tbaa !2009
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !1357
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !1357
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split4:                                          ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split:                                           ; preds = %bb.c
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split6:                                          ; preds = %bb.c
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split5:                                          ; preds = %bb.c
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit: ; preds = %bb.c
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !1952
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !1952
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.split6, %.split5, %.split4, %.split, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit
  %i.an = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr %0, ptr %2, align 8, !tbaa !2023
  %i.ao = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1      ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !2137
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.at = load i64, ptr %i.as, align 8, !tbaa !2037
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.aq) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %spec.select.i
  %i.av = sub i64 %i.aq, %spec.select.i
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.au, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.av, 1
  br label %bb.h

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread: ; preds = %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge, %bb.f, %bb.e, %bb.b, %.split6, %.split5, %.split4, %.split, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit
  %i.aw = phi i8 [ %.pre, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge ], [ 1, %bb.f ], [ 1, %bb.e ], [ %i.j, %bb.b ], [ 5, %.split6 ], [ 6, %.split5 ], [ 2, %.split4 ], [ 3, %.split ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i ], [ 4, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit ]
  %i.ax = zext i8 %i.aw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store ptr %0, ptr %1, align 8, !tbaa !2023
  %i.ay = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3 ], [ %i.ay, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
    i64 4, label %bb.j
    i64 5, label %bb.p
    i64 6, label %bb.q
    i64 7, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.106)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr @.str.103, ptr %5, align 8, !tbaa !1435
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.104, ptr %i.a, align 8, !tbaa !1436
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 205, ptr %i.b, align 8, !tbaa !1437
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 62, ptr %i.c, align 4, !tbaa !1438
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #37
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.bc, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9incrementclILm2EEEvSt17integral_constantImXT_EE.exit

bb.g:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !2133, !nonnull !1352, !align !1356 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1952 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !1952
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !2020 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
end_hunk_1
