Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/message_generator?download=true
inline.NumInlined: 7335
inline.NumDeleted: 3134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_:bb.a
  %i.an = icmp eq ptr %i.am, %i.aj
  br i1 %i.an, label %._crit_edge.i.i20, label %.lr.ph.i.i16, !llvm.loop !1042

._crit_edge.i.i20:                                ; preds = %bb.k, %bb.j
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !369, !noalias !1049
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !310
  store i8 4, ptr %i.ap, align 8, !tbaa !367
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.l:                                             ; preds = %bb.a
  %i.aq = load ptr, ptr %1, align 8, !tbaa !386, !nonnull !111, !align !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !369
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !164
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !369
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9increment4nextILm4EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.m:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %1, align 8, !tbaa !386, !nonnull !111, !align !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !241
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.pn.i = phi ptr [ %i.aw, %bb.m ], [ %i.bc, %bb.q ] ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  store ptr %storemerge.i, ptr %i.av, align 8, !tbaa !241
  %i.ax = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.o, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i, !prof !326

bb.o:                                             ; preds = %bb.n
  %i.az = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #33
  %.not.i.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr @.str.28, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, align 8, !tbaa !327
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 8), align 8, !tbaa !328
  %i.ba = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #33
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i

_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bb = icmp eq ptr %.pn.i, @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb
  br i1 %i.bb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !241 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.3.0.copyload.i.i22 = load i64, ptr %.sroa.3.0..sroa_idx.i.i21, align 8, !tbaa !78
  %.not.i.i23 = icmp eq i64 %.sroa.3.0.copyload.i.i22, 0
  br i1 %.not.i.i23, label %bb.n, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit, !llvm.loop !16

bb.r:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i.i
  %i.bd = load ptr, ptr %1, align 8, !tbaa !386, !nonnull !111, !align !114 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i8 0, ptr %i.be, align 8, !tbaa !384
  store i8 6, ptr %i.bf, align 8, !tbaa !367
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.34)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr @.str.30, ptr %3, align 8, !tbaa !244
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.31, ptr %i.bg, align 8, !tbaa !245
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 266, ptr %i.bh, align 8, !tbaa !246
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 59, ptr %i.bi, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #35
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit: ; preds = %bb.q, %.lr.ph.i.i16, %.lr.ph.i.i7, %.lr.ph.i.i, %bb.r, %._crit_edge.i.i20, %._crit_edge.i.i.i15, %._crit_edge.i.i11, %._crit_edge.i.i.i.i, %._crit_edge.i.i.i, %._crit_edge.i.i, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http17message_generator14generator_implILb1ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS7_EEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSF_INSI_IJNS_4asio12const_bufferESK_SK_NSA_6writer11field_rangeENS1_10chunk_crlfEEEEEESK_EEEEEEEEEEEvRNS_6system10error_codeERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %8 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %9 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %10 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %11 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %12 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %13 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %14 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %15 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %16 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %17 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %18 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %19 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %20 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %21 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %22 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %23 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %24 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %25 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %26 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>>::const_iterator", align 8 ; 8 uses
  %27 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>> &>::const_iterator", align 8 ; 11 uses
  %28 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>> &>::const_iterator", align 8 ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !321, !nonnull !111, !align !114 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 520 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.d = load ptr, ptr %2, align 8, !tbaa !1076, !noalias !1077 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !390, !noalias !1078 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !391, !noalias !1078, !nonnull !111, !align !114 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !380, !noalias !1079 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !382, !noalias !1079 ; 7 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !364, !noalias !1079 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.p = load i8, ptr %i.o, align 8, !tbaa !367, !noalias !1079 ; 2 uses
  switch i8 %i.p, label %bb.d [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit
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
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !1079
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !1079
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit

bb.g:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !1079
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit

bb.h:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !369, !noalias !1079
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit

bb.i:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !1079
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit

bb.j:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.n, align 8, !tbaa !81, !noalias !1079
  %.sroa.34.32.insert.ext = zext i8 %i.v to i64
  %i.w = inttoptr i64 %.sroa.34.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit

bb.k:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !1079
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit

bb.l:                                             ; preds = %bb.a
  %i.y = load i8, ptr %i.j, align 8, !tbaa !81, !noalias !1079
  %.sroa.19.24.insert.ext = zext i8 %i.y to i64
  %i.z = inttoptr i64 %.sroa.19.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit: ; preds = %bb.c, %bb.a, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.l, %bb.k
  %.sroa.19.2187 = phi ptr [ %i.z, %bb.l ], [ undef, %bb.a ], [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %i.m, %bb.j ], [ %i.x, %bb.k ], [ %i.m, %bb.c ] ; 8 uses
  %.sroa.34.2186 = phi ptr [ undef, %bb.l ], [ undef, %bb.a ], [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.s, %bb.g ], [ %i.t, %bb.h ], [ %i.u, %bb.i ], [ %i.w, %bb.j ], [ undef, %bb.k ], [ undef, %bb.c ] ; 8 uses
  %.sroa.52.1185 = phi i8 [ undef, %bb.l ], [ undef, %bb.a ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ undef, %bb.k ], [ %i.p, %bb.c ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !380, !noalias !1080
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !382, !noalias !1080 ; 4 uses
  switch i8 %i.ae, label %bb.m [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.n
    i8 2, label %bb.v
    i8 3, label %bb.w
  ]

bb.m:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit
  unreachable

bb.n:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !364, !noalias !1080 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !367, !noalias !1080 ; 2 uses
  switch i8 %i.ai, label %bb.o [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
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
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !241, !noalias !1080
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.q:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !241, !noalias !1080
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.r:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !241, !noalias !1080
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.s:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !369, !noalias !1080
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.t:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !241, !noalias !1080
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.u:                                             ; preds = %bb.n
  %i.ao = load i8, ptr %i.ag, align 8, !tbaa !81, !noalias !1080
  %.sroa.11.32.insert.ext = zext i8 %i.ao to i64
  %i.ap = inttoptr i64 %.sroa.11.32.insert.ext to ptr
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.v:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !241, !noalias !1080
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

bb.w:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit
  %i.ar = load i8, ptr %i.ac, align 8, !tbaa !81, !noalias !1080
  %.sroa.5.24.insert.ext = zext i8 %i.ar to i64
  %i.as = inttoptr i64 %.sroa.5.24.insert.ext to ptr
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit: ; preds = %bb.n, %bb.v, %bb.w, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit
  %.sroa.23.1 = phi i8 [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 6, %bb.u ], [ undef, %bb.w ], [ undef, %bb.v ], [ %i.ai, %bb.n ] ; 2 uses
  %.sroa.11.2 = phi ptr [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit ], [ %i.aj, %bb.p ], [ %i.ak, %bb.q ], [ %i.al, %bb.r ], [ %i.am, %bb.s ], [ %i.an, %bb.t ], [ %i.ap, %bb.u ], [ undef, %bb.w ], [ undef, %bb.v ], [ undef, %bb.n ] ; 2 uses
  %.sroa.5.1 = phi ptr [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit ], [ %i.af, %bb.p ], [ %i.af, %bb.q ], [ %i.af, %bb.r ], [ %i.af, %bb.s ], [ %i.af, %bb.t ], [ %i.af, %bb.u ], [ %i.as, %bb.w ], [ %i.aq, %bb.v ], [ %i.af, %bb.n ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !392, !noalias !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  store ptr %i.d, ptr %28, align 8
  %.sroa.0115.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  store i64 %i.f, ptr %.sroa.0115.sroa.2.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.av, align 8, !tbaa !380
  %i.aw = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 17 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 5 uses
  store i8 0, ptr %i.ax, align 8, !tbaa !382
  switch i8 %i.l, label %bb.x [
    i8 0, label %.noexc
    i8 1, label %bb.y
    i8 2, label %bb.ag
    i8 3, label %bb.ah
  ]

bb.x:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  unreachable

bb.y:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.19.2187, ptr %i.aw, align 8, !tbaa !364
  %i.ay = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 2 uses
  store i8 0, ptr %i.az, align 8, !tbaa !367
  switch i8 %.sroa.52.1185, label %bb.z [
    i8 0, label %.sink.split.i.i.i.i.i.i.i10
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
  store ptr %.sroa.34.2186, ptr %i.ay, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

bb.ab:                                            ; preds = %bb.y
  store ptr %.sroa.34.2186, ptr %i.ay, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

bb.ac:                                            ; preds = %bb.y
  store ptr %.sroa.34.2186, ptr %i.ay, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

bb.ad:                                            ; preds = %bb.y
  store ptr %.sroa.34.2186, ptr %i.ay, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

bb.ae:                                            ; preds = %bb.y
  store ptr %.sroa.34.2186, ptr %i.ay, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

bb.af:                                            ; preds = %bb.y
  %i.ba = ptrtoint ptr %.sroa.34.2186 to i64
  %.sroa.10119.32.extract.trunc = trunc i64 %i.ba to i8
  store i8 %.sroa.10119.32.extract.trunc, ptr %i.ay, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11:          ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  store i8 %.sroa.52.1185, ptr %i.az, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i.i10

bb.ag:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.19.2187, ptr %i.aw, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i10

bb.ah:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  %i.bb = ptrtoint ptr %.sroa.19.2187 to i64
  %.sroa.4117.24.extract.trunc = trunc i64 %i.bb to i8
  store i8 %.sroa.4117.24.extract.trunc, ptr %i.aw, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i10

.sink.split.i.i.i.i.i.i.i10:                      ; preds = %bb.ah, %bb.ag, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11, %bb.y
  store i8 %i.l, ptr %i.ax, align 8, !tbaa !382
  br label %.noexc

.noexc:                                           ; preds = %.sink.split.i.i.i.i.i.i.i10, %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSQ_PKNS0_14mutable_bufferEEE5valueEiE4typeENSS_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSS_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %28, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.bc, align 8, !tbaa !392
  switch i8 %i.ae, label %bb.ai [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit15
    i8 1, label %bb.aj
    i8 2, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit15
    i8 3, label %bb.al
  ]

bb.ai:                                            ; preds = %.noexc
  unreachable

bb.aj:                                            ; preds = %.noexc
  %i.bd = icmp eq i8 %.sroa.23.1, 6
  br i1 %i.bd, label %bb.ak, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit15

bb.ak:                                            ; preds = %bb.aj
  %i.be = ptrtoint ptr %.sroa.11.2 to i64
  %.sroa.12.32.insert.ext = and i64 %i.be, 255
  %i.bf = inttoptr i64 %.sroa.12.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit15

bb.al:                                            ; preds = %.noexc
  %i.bg = ptrtoint ptr %.sroa.5.1 to i64
  %.sroa.7157.24.insert.ext = and i64 %i.bg, 255
  %i.bh = inttoptr i64 %.sroa.7157.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit15

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit15: ; preds = %bb.aj, %.noexc, %.noexc, %bb.ak, %bb.al
  %.sroa.7157.1 = phi ptr [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %bb.aj ], [ %i.bh, %bb.al ], [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %bb.ak ] ; 2 uses
  %.sroa.12.2 = phi ptr [ undef, %.noexc ], [ %.sroa.11.2, %bb.aj ], [ undef, %bb.al ], [ undef, %.noexc ], [ %i.bf, %bb.ak ]
  %.sroa.19159.1 = phi i8 [ undef, %.noexc ], [ %.sroa.23.1, %bb.aj ], [ undef, %bb.al ], [ undef, %.noexc ], [ 6, %bb.ak ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 5 uses
  %i.bp = add nsw i8 %.sroa.19159.1, -6
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bp, -5
  br label %bb.am

end_hunk_0
begin_hunk_1_@_ZN5boost5beast4http17message_generator14generator_implILb1ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS7_EEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSF_INSI_IJNS_4asio12const_bufferESK_SK_NSA_6writer11field_rangeENS1_10chunk_crlfEEEEEESK_EEEEEEEEEEEvRNS_6system10error_codeERKT_:bb.a

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i: ; preds = %bb.bl, %.noexc28
  switch i8 %.pre354, label %bb.bv [
    i8 0, label %.noexc32
    i8 1, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.threadthread-pre-split
    i8 2, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread372
    i8 3, label %.noexc36
  ]

bb.bv:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i
  unreachable

.noexc32:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  store ptr @.str.30, ptr %25, align 8, !tbaa !244
  %i.fc = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr @.str.31, ptr %i.fc, align 8, !tbaa !245
  %i.fd = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 180, ptr %i.fd, align 8, !tbaa !246
  %i.fe = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 67, ptr %i.fe, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(24) %25) #35
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %.noexc32
  unreachable

bb.bx:                                            ; preds = %.noexc32
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %.body

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.threadthread-pre-split: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i26, %bb.bo
  %.pr = load i8, ptr %i.bo, align 8, !tbaa !367
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.threadthread-pre-split, %bb.bp
  %i.fg = phi i8 [ %.pr, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.threadthread-pre-split ], [ %i.ed, %bb.bp ]
  switch i8 %i.fg, label %bb.by [
    i8 0, label %.noexc64
    i8 1, label %bb.cb
    i8 2, label %bb.cc
    i8 3, label %bb.cd
    i8 4, label %bb.ce
    i8 5, label %bb.cf
    i8 6, label %.noexc67
  ]

bb.by:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread
  unreachable

.noexc64:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store ptr @.str.30, ptr %12, align 8, !tbaa !244
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.31, ptr %i.fh, align 8, !tbaa !245
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 180, ptr %i.fi, align 8, !tbaa !246
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 67, ptr %i.fj, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(24) %12) #35
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %.noexc64
  unreachable

bb.ca:                                            ; preds = %.noexc64
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %.body

bb.cb:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread
  %i.fl = load ptr, ptr %i.bn, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.sroa.2.0.copyload.i.i63 = load i64, ptr %.sroa.2.0..sroa_idx.i.i62, align 8, !tbaa !78
  br label %.noexc17

bb.cc:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread
  %i.fm = load ptr, ptr %i.bn, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.2.0.copyload.i10.i = load i64, ptr %.sroa.2.0..sroa_idx.i9.i, align 8, !tbaa !78
  br label %.noexc17

bb.cd:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread
  %i.fn = load ptr, ptr %i.bn, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.sroa.2.0.copyload.i15.i = load i64, ptr %.sroa.2.0..sroa_idx.i14.i, align 8, !tbaa !78
  br label %.noexc17

bb.ce:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread
  %i.fo = load ptr, ptr %i.bn, align 8, !tbaa !369 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !168
  %i.fr = zext i16 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 50
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !169
  %i.fu = zext i16 %i.ft to i64
  %i.fv = add nuw nsw i64 %i.fr, 2
  %i.fw = add nuw nsw i64 %i.fv, %i.fu
  br label %.noexc17

bb.cf:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread
  %i.fx = load ptr, ptr %i.bn, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.sroa.2.0.copyload.i20.i = load i64, ptr %.sroa.2.0..sroa_idx.i19.i, align 8, !tbaa !78
  br label %.noexc17

.noexc67:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.32)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store ptr @.str.30, ptr %10, align 8, !tbaa !244
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.31, ptr %i.fy, align 8, !tbaa !245
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 187, ptr %i.fz, align 8, !tbaa !246
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 64, ptr %i.ga, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) #35
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %.noexc67
  unreachable

bb.ch:                                            ; preds = %.noexc67
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %.body

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread372: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i
  %i.gc = load ptr, ptr %i.bk, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !78
  br label %.noexc17

.noexc36:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.32)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  store ptr @.str.30, ptr %23, align 8, !tbaa !244
  %i.gd = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @.str.31, ptr %i.gd, align 8, !tbaa !245
  %i.ge = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 187, ptr %i.ge, align 8, !tbaa !246
  %i.gf = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 64, ptr %i.gf, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(24) %23) #35
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %.noexc36
  unreachable

bb.cj:                                            ; preds = %.noexc36
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  br label %.body

.noexc17:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread372, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %.noexc29
  %.pre353.pre363 = phi ptr [ %.pre353.pre, %.noexc29 ], [ %.pre353.pre361, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread372 ], [ %.pre353.pre361, %bb.cf ], [ %.pre353.pre361, %bb.cb ], [ %.pre353.pre361, %bb.cc ], [ %.pre353.pre361, %bb.cd ], [ %.pre353.pre361, %bb.ce ]
  %.pre353 = phi ptr [ %.pre353.pre, %.noexc29 ], [ %.pre353355, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread372 ], [ %.pre353355, %bb.cf ], [ %.pre353355, %bb.cb ], [ %.pre353355, %bb.cc ], [ %.pre353355, %bb.cd ], [ %.pre353355, %bb.ce ]
  %.pn.i.i = phi i64 [ %i.fb, %.noexc29 ], [ %.sroa.2.0.copyload.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i.i.thread372 ], [ %.sroa.2.0.copyload.i20.i, %bb.cf ], [ %.sroa.2.0.copyload.i.i63, %bb.cb ], [ %.sroa.2.0.copyload.i10.i, %bb.cc ], [ %.sroa.2.0.copyload.i15.i, %bb.cd ], [ %i.fw, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  %i.gh = load i64, ptr %.sroa.0115.sroa.2.0..sroa_idx, align 8, !tbaa !394
  %i.gi = sub i64 %i.gh, %.pn.i.i
  store i64 %i.gi, ptr %.sroa.0115.sroa.2.0..sroa_idx, align 8, !tbaa !394
  %i.gj = add nuw nsw i64 %.0.i, 1
  %.pre = load ptr, ptr %28, align 8, !tbaa !1083
  %.pre352 = load ptr, ptr %i.bc, align 8
  %.pre354.pre = load i8, ptr %i.ax, align 8, !tbaa !382
  br label %bb.am, !llvm.loop !1074

bb.ck:                                            ; preds = %bb.an, %bb.an, %bb.aq, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorneERKSM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.0.i, i64 12) ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !241
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i64 %.sroa.speculated, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !78
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit20
    i8 1, label %bb.cl
    i8 2, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit20
    i8 3, label %bb.cn
  ]

default.unreachable:                              ; preds = %bb.co, %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.gk = icmp eq i8 %.sroa.52.1185, 6
  br i1 %i.gk, label %bb.cm, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit20

bb.cm:                                            ; preds = %bb.cl
  %i.gl = ptrtoint ptr %.sroa.34.2186 to i64
  %.sroa.10.32.insert.ext = and i64 %i.gl, 255
  %i.gm = inttoptr i64 %.sroa.10.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit20

bb.cn:                                            ; preds = %bb.ck
  %i.gn = ptrtoint ptr %.sroa.19.2187 to i64
  %.sroa.4.24.insert.ext = and i64 %i.gn, 255
  %i.go = inttoptr i64 %.sroa.4.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit20

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit20: ; preds = %bb.cl, %bb.ck, %bb.ck, %bb.cm, %bb.cn
  %.sroa.22.1 = phi i8 [ undef, %bb.ck ], [ 6, %bb.cm ], [ undef, %bb.cn ], [ undef, %bb.ck ], [ %.sroa.52.1185, %bb.cl ] ; 2 uses
  %.sroa.10.2 = phi ptr [ undef, %bb.ck ], [ %i.gm, %bb.cm ], [ undef, %bb.cn ], [ undef, %bb.ck ], [ %.sroa.34.2186, %bb.cl ] ; 6 uses
  %.sroa.4.1 = phi ptr [ %.sroa.19.2187, %bb.ck ], [ %.sroa.19.2187, %bb.cm ], [ %i.go, %bb.cn ], [ %.sroa.19.2187, %bb.ck ], [ %.sroa.19.2187, %bb.cl ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  %i.gp = icmp eq i64 %.0.i, 0
  br i1 %i.gp, label %bb.cz, label %bb.co

bb.co:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit20
  store ptr %i.d, ptr %27, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.f, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %i.i, ptr %i.gq, align 8, !tbaa !380
  %i.gr = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  store i8 0, ptr %i.gs, align 8, !tbaa !382
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit.i
    i8 1, label %bb.cp
    i8 2, label %bb.cx
    i8 3, label %bb.cy
  ]

bb.cp:                                            ; preds = %bb.co
  store ptr %.sroa.4.1, ptr %i.gr, align 8, !tbaa !364
  %i.gt = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %27, i64 40 ; 2 uses
  store i8 0, ptr %i.gu, align 8, !tbaa !367
  switch i8 %.sroa.22.1, label %bb.cq [
    i8 0, label %.sink.split.i.i.i.i.i.i.i.i
    i8 1, label %bb.cr
    i8 2, label %bb.cs
    i8 3, label %bb.ct
    i8 4, label %bb.cu
    i8 5, label %bb.cv
    i8 6, label %bb.cw
  ]

bb.cq:                                            ; preds = %bb.cp
  unreachable

bb.cr:                                            ; preds = %bb.cp
  store ptr %.sroa.10.2, ptr %i.gt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cp
  store ptr %.sroa.10.2, ptr %i.gt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cp
  store ptr %.sroa.10.2, ptr %i.gt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cp
  store ptr %.sroa.10.2, ptr %i.gt, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cp
  store ptr %.sroa.10.2, ptr %i.gt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cp
  %i.gv = ptrtoint ptr %.sroa.10.2 to i64
  %.sroa.10.32.extract.trunc = trunc i64 %i.gv to i8
  store i8 %.sroa.10.32.extract.trunc, ptr %i.gt, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr
  store i8 %.sroa.22.1, ptr %i.gu, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.cx:                                            ; preds = %bb.co
  store ptr %.sroa.4.1, ptr %i.gr, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.cy:                                            ; preds = %bb.co
  %i.gw = ptrtoint ptr %.sroa.4.1 to i64
  %.sroa.4.24.extract.trunc = trunc i64 %i.gw to i8
  store i8 %.sroa.4.24.extract.trunc, ptr %i.gr, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.cy, %bb.cx, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cp
  store i8 %i.l, ptr %i.gs, align 8, !tbaa !382
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit.i

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.co
  %i.gx = getelementptr inbounds nuw i8, ptr %27, i64 56
  store ptr %i.g, ptr %i.gx, align 8, !tbaa !392
  %i.gy = call noundef ptr @_ZSt8__copy_nIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEE14const_iteratorEmPS8_ET1_T_T0_SP_St18input_iterator_tag(ptr noundef nonnull align 8 %27, i64 noundef %.sroa.speculated, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE14const_iteratorC2ERKSM_.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  ret void

.body:                                            ; preds = %bb.cj, %bb.bx, %bb.bk, %bb.bb, %bb.bg, %bb.be, %bb.ca, %bb.ch, %bb.bs, %bb.bu
  %.pn = phi { ptr, i32 } [ %i.fk, %bb.ca ], [ %i.cw, %bb.be ], [ %i.gb, %bb.ch ], [ %i.da, %bb.bg ], [ %i.gg, %bb.cj ], [ %i.ff, %bb.bx ], [ %i.ex, %bb.bu ], [ %i.ep, %bb.bs ], [ %i.ds, %bb.bk ], [ %i.cm, %bb.bb ]
  resume { ptr, i32 } %.pn
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !391, !nonnull !111, !align !114 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !380, !noalias !1088 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !382, !noalias !1088 ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !380
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !382
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !364, !noalias !1088 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !367, !noalias !1088 ; 2 uses
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
  store ptr %i.e, ptr %i.p, align 8, !tbaa !380
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !382
  store ptr %i.l, ptr %i.q, align 8, !tbaa !364
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !1088
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.u, align 8, !tbaa !380
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !382
  store ptr %i.l, ptr %i.v, align 8, !tbaa !364
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.x, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !1088
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.z, align 8, !tbaa !380
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !382
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !364
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !1088
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !380
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !382
  store ptr %i.l, ptr %i.af, align 8, !tbaa !364
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !369, !noalias !1088
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !380
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.al, align 8, !tbaa !382
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !364
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !1088
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !380
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !382
  store ptr %i.l, ptr %i.ap, align 8, !tbaa !364
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.m, align 8, !tbaa !81, !noalias !1088
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.at, align 8, !tbaa !380
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !382
  store ptr %i.l, ptr %i.au, align 8, !tbaa !364
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.as, ptr %i.aw, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.av, %bb.j ], [ %i.aq, %bb.i ], [ %i.al, %bb.h ], [ %i.ag, %bb.g ], [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ay = phi ptr [ %i.au, %bb.j ], [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.af, %bb.g ], [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.az = phi ptr [ %i.at, %bb.j ], [ %i.ao, %bb.i ], [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.o, ptr %i.ba, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !1088
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bc, align 8, !tbaa !380
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !382
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bf = load i8, ptr %i.f, align 8, !tbaa !81, !noalias !1088
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !380
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !382
  store i8 %i.bf, ptr %i.bh, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %.thread, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = phi ptr [ %i.bi, %bb.l ], [ %i.be, %bb.k ], [ %i.ax, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %.thread ] ; 2 uses
  %i.bk = phi ptr [ %i.bh, %bb.l ], [ %i.bd, %bb.k ], [ %i.ay, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.thread ]
  %i.bl = phi ptr [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.thread ]
  store i8 %i.h, ptr %i.bj, align 8, !tbaa !382
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59, %.sink.split.i.i.i.i.i.i
  %i.bm = phi ptr [ %i.bj, %.sink.split.i.i.i.i.i.i ], [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59 ] ; 2 uses
  %i.bn = phi ptr [ %i.bk, %.sink.split.i.i.i.i.i.i ], [ %i.j, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59 ] ; 3 uses
  %i.bo = phi ptr [ %i.bl, %.sink.split.i.i.i.i.i.i ], [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSL_PKNS0_14mutable_bufferEEE5valueEiE4typeENSN_IXntsr14is_convertibleISO_PKS7_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSN_IXntsr14is_convertibleISK_S7_EE5valueEiE4typeE.exit.thread59 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.c, ptr %i.bp, align 8, !tbaa !392
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.ah, %bb.m
  %.pre47 = phi ptr [ %i.e, %bb.m ], [ %.pre47.pre, %bb.ah ] ; 2 uses
  %i.bx = phi ptr [ %i.c, %bb.m ], [ %.pre, %bb.ah ] ; 2 uses
  %.011 = phi i64 [ %1, %bb.m ], [ %i.du, %bb.ah ] ; 4 uses
  %i.by = icmp eq ptr %i.bx, %i.c
  br i1 %i.by, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre48 = load i8, ptr %i.bm, align 8, !tbaa !382, !noalias !1089
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %6 = icmp eq ptr %.pre47, %i.c
  %.pre49 = load i8, ptr %i.bm, align 8, !tbaa !382 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.pre49, 3
  %or.cond = select i1 %6, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.o
  %7 = phi i8 [ %.pre48, %._crit_edge ], [ %.pre49, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  store ptr %.pre47, ptr %5, align 8, !tbaa !380, !alias.scope !1089
  store i8 0, ptr %i.br, align 8, !tbaa !382, !alias.scope !1089
  switch i8 %7, label %bb.q [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i
    i8 1, label %bb.r
    i8 2, label %bb.z
    i8 3, label %bb.aa
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !364, !noalias !1089
  store ptr %i.bz, ptr %i.bq, align 8, !tbaa !364, !alias.scope !1089
  store i8 0, ptr %i.bu, align 8, !tbaa !367, !alias.scope !1089
  %i.ca = load i8, ptr %i.bv, align 8, !tbaa !367, !noalias !1089 ; 2 uses
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
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !241, !noalias !1089
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !241, !alias.scope !1089
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !241, !noalias !1089
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !241, !alias.scope !1089
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.bt, align 8, !tbaa !241, !noalias !1089
  store ptr %i.cd, ptr %i.bs, align 8, !tbaa !241, !alias.scope !1089
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !369, !noalias !1089
  store ptr %i.ce, ptr %i.bs, align 8, !tbaa !310, !alias.scope !1089
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.bt, align 8, !tbaa !241, !noalias !1089
  store ptr %i.cf, ptr %i.bs, align 8, !tbaa !241, !alias.scope !1089
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.r
  %i.cg = load i8, ptr %i.bt, align 8, !tbaa !81, !noalias !1089
  store i8 %i.cg, ptr %i.bs, align 8, !tbaa !81, !alias.scope !1089
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  store i8 %i.ca, ptr %i.bu, align 8, !tbaa !367, !alias.scope !1089
  br label %.sink.split.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !241, !noalias !1089
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !241, !alias.scope !1089
  br label %.sink.split.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.p
  %i.ci = load i8, ptr %i.bn, align 1, !tbaa !81, !noalias !1089
  store i8 %i.ci, ptr %i.bq, align 8, !tbaa !81, !alias.scope !1089
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.aa, %bb.z, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r
  store i8 %7, ptr %i.br, align 8, !tbaa !382, !alias.scope !1089
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.p
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !392, !alias.scope !1089
  %i.cj = zext nneg i8 %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !1089
  store ptr %i.bo, ptr %4, align 8, !tbaa !396, !noalias !1089
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !1089
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !392 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %5, align 8, !tbaa !380
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !380
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.ab, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i
  %.pre.i = load i8, ptr %i.br, align 8, !tbaa !382
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.ab:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratorC2ERKSI_.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.cq = load i8, ptr %i.br, align 8, !tbaa !382 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !382
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
  %i.ct = load ptr, ptr %i.bq, align 8, !tbaa !364
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !364
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %bb.af, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cx = load i8, ptr %i.bu, align 8, !tbaa !367 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cx, %i.cz
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.da = add i8 %i.cx, -1
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.da, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ag
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !115
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !115
  %i.dc = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, %i.db
  br i1 %i.dc, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i: ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.bq, align 8, !tbaa !241
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !241
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ac, %bb.ac
  %i.dg = zext nneg i8 %i.cq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %5, ptr %3, align 8, !tbaa !396
  %i.dh = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.di = extractvalue { ptr, i64 } %i.dh, 1
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !392
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !360
  %i.dm = call i64 @llvm.usub.sat.i64(i64 %i.di, i64 %i.dl)
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.af, %bb.ae, %bb.ab, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i
  %i.dn = phi i8 [ %.pre.i, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge.i ], [ 1, %bb.af ], [ 1, %bb.ae ], [ %i.cq, %bb.ab ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ 2, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.i ]
  %i.do = zext i8 %i.dn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %5, ptr %2, align 8, !tbaa !396
  %i.dp = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.do, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.dq = extractvalue { ptr, i64 } %i.dp, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i
  %.pn.i = phi i64 [ %i.dm, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3.i ], [ %i.dq, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %.not = icmp ult i64 %.pn.i, %.011
  br i1 %.not, label %bb.ah, label %.thread36

.thread36:                                        ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !390
  %i.ds = add i64 %i.dr, %.011
  store i64 %i.ds, ptr %i.a, align 8, !tbaa !390
  %i.dt = sub i64 %.011, %.pn.i
  store i64 %i.dt, ptr %i.b, align 8, !tbaa !1090
  br label %.loopexit

bb.ah:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE14const_iteratordeEv.exit
  %i.du = sub nuw i64 %.011, %.pn.i
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !390
  %i.dw = add i64 %i.dv, %.pn.i
  store i64 %i.dw, ptr %i.a, align 8, !tbaa !390
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !392
  %.pre47.pre = load ptr, ptr %i.bo, align 8, !tbaa !380
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %0, align 8, !tbaa !380
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !380
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !382
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !382   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !382
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
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !364
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !364
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !367   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = load i8, ptr %i.t, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !115
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit: ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit
  %i.ab = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %0, ptr %2, align 8, !tbaa !396
  %i.ac = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !392
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !360
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ae) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %spec.select.i
  %i.aj = sub i64 %i.ae, %spec.select.i
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.ai, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.aj, 1
  br label %bb.h

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread: ; preds = %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge, %bb.f, %bb.e, %bb.b, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit
  %i.ak = phi i8 [ %.pre, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit.thread_crit_edge ], [ 1, %bb.f ], [ 1, %bb.e ], [ %i.j, %bb.b ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i ], [ 2, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iteratoreqERKSG_.exit ]
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store ptr %0, ptr %1, align 8, !tbaa !396
  %i.am = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESA_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSN_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr @.str.30, ptr %5, align 8, !tbaa !244
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.31, ptr %i.a, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 205, ptr %i.b, align 8, !tbaa !246
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 62, ptr %i.c, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #35
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.s, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.g:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !398, !nonnull !111, !align !114 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !241
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !380
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %i.l = phi ptr [ %i.m, %bb.h ], [ %i.h, %bb.g ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !78
  %.not.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !241
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !17

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !384
  store i8 3, ptr %i.o, align 8, !tbaa !382
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.34)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr @.str.30, ptr %3, align 8, !tbaa !244
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.31, ptr %i.p, align 8, !tbaa !245
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 266, ptr %i.q, align 8, !tbaa !246
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
end_hunk_1
begin_hunk_2_@_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextILm3EEEvSt17integral_constantImXT_EE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextILm5EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !441, !nonnull !111, !align !114 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !445
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !241 ; 2 uses
  %i.e = icmp eq ptr %.promoted, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.g, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !78
  %.not = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %.not, label %bb.b, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !241
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !llvm.loop !1181

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit, !prof !326

bb.c:                                             ; preds = %._crit_edge
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #33
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.28, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, align 8, !tbaa !327
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 8), align 8, !tbaa !328
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #33
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit: ; preds = %._crit_edge, %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, ptr %i.b, align 8, !tbaa !241
  store i8 6, ptr %i.m, align 8, !tbaa !446
  %i.n = load ptr, ptr %0, align 8, !tbaa !441, !nonnull !111, !align !114
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !241
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit
  %i.p = phi ptr [ %i.w, %bb.i ], [ %.pr.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit ]
  %i.q = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i, !prof !326

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #33
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.28, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, align 8, !tbaa !327
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 8), align 8, !tbaa !328
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #33
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i

_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.u = icmp eq ptr %i.p, getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 16)
  br i1 %i.u, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !241  ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !78
  %.not.i = icmp eq i64 %.sroa.3.0.copyload.i, 0
  br i1 %.not.i, label %bb.i, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.o, align 8, !tbaa !241
  br label %bb.e, !llvm.loop !26

bb.j:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !441, !nonnull !111, !align !114 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i8 0, ptr %i.y, align 8, !tbaa !384
  store i8 7, ptr %i.z, align 8, !tbaa !446
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit: ; preds = %.lr.ph, %bb.h, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http17message_generator14generator_implILb1ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEENS1_12basic_fieldsIS7_EEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSF_INSI_IJNS_4asio12const_bufferESK_SK_NSA_6writer11field_rangeENS1_10chunk_crlfEEEEEENS1_6detail10chunk_sizeESK_SN_SK_SN_EEEEEEEEEEEvRNS_6system10error_codeERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %4 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 9 uses
  %5 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 11 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !321, !nonnull !111, !align !114 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 520 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.d = load ptr, ptr %2, align 8, !tbaa !1196, !noalias !1197 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !450, !noalias !1198 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !451, !noalias !1198, !nonnull !111, !align !114 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !445, !noalias !1199 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !446, !noalias !1199 ; 7 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit
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
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !364, !noalias !1199 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.p = load i8, ptr %i.o, align 8, !tbaa !367, !noalias !1199 ; 2 uses
  switch i8 %i.p, label %bb.d [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit
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
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !1199
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !1199
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

bb.g:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !1199
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

bb.h:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !369, !noalias !1199
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

bb.i:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !1199
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

bb.j:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.n, align 8, !tbaa !81, !noalias !1199
  %.sroa.50.32.insert.ext = zext i8 %i.v to i64
  %i.w = inttoptr i64 %.sroa.50.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

bb.k:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !1199
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

bb.l:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !1199
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

bb.m:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !1199
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

bb.n:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !1199
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

bb.o:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !1199
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

bb.p:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %i.j, align 8, !tbaa !81, !noalias !1199
  %.sroa.23.24.insert.ext = zext i8 %i.ac to i64
  %i.ad = inttoptr i64 %.sroa.23.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit: ; preds = %bb.c, %bb.a, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.68.1124 = phi i8 [ undef, %bb.p ], [ undef, %bb.a ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ], [ %i.p, %bb.c ] ; 4 uses
  %.sroa.50.2123 = phi ptr [ undef, %bb.p ], [ undef, %bb.a ], [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.s, %bb.g ], [ %i.t, %bb.h ], [ %i.u, %bb.i ], [ %i.w, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ], [ undef, %bb.c ] ; 8 uses
  %.sroa.23.2122 = phi ptr [ %i.ad, %bb.p ], [ undef, %bb.a ], [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %i.m, %bb.j ], [ %i.x, %bb.k ], [ %i.y, %bb.l ], [ %i.z, %bb.m ], [ %i.aa, %bb.n ], [ %i.ab, %bb.o ], [ %i.m, %bb.c ] ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !445
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !446 ; 4 uses
  switch i8 %i.ai, label %bb.q [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.r
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.ab
    i8 5, label %bb.ac
    i8 6, label %bb.ad
    i8 7, label %bb.ae
  ]

bb.q:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit
  unreachable

bb.r:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !364 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.am = load i8, ptr %i.al, align 8, !tbaa !367 ; 2 uses
  switch i8 %i.am, label %bb.s [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
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
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.u:                                             ; preds = %bb.r
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.v:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.w:                                             ; preds = %bb.r
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !369
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.x:                                             ; preds = %bb.r
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.y:                                             ; preds = %bb.r
  %i.as = load i8, ptr %i.ak, align 8, !tbaa !81
  %.sroa.19.32.insert.ext = zext i8 %i.as to i64
  %i.at = inttoptr i64 %.sroa.19.32.insert.ext to ptr
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.z:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.aa:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.ab:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.ac:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.ad:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.ae:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit
  %i.az = load i8, ptr %i.ag, align 8, !tbaa !81
  %.sroa.5.24.insert.ext = zext i8 %i.az to i64
  %i.ba = inttoptr i64 %.sroa.5.24.insert.ext to ptr
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.r
  %.sroa.31.1 = phi i8 [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit ], [ 1, %bb.t ], [ 2, %bb.u ], [ 3, %bb.v ], [ 4, %bb.w ], [ 5, %bb.x ], [ 6, %bb.y ], [ undef, %bb.ae ], [ undef, %bb.ad ], [ undef, %bb.ac ], [ undef, %bb.ab ], [ undef, %bb.aa ], [ undef, %bb.z ], [ %i.am, %bb.r ] ; 2 uses
  %.sroa.19.2 = phi ptr [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit ], [ %i.an, %bb.t ], [ %i.ao, %bb.u ], [ %i.ap, %bb.v ], [ %i.aq, %bb.w ], [ %i.ar, %bb.x ], [ %i.at, %bb.y ], [ undef, %bb.ae ], [ undef, %bb.ad ], [ undef, %bb.ac ], [ undef, %bb.ab ], [ undef, %bb.aa ], [ undef, %bb.z ], [ undef, %bb.r ] ; 2 uses
  %.sroa.5.1 = phi ptr [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit ], [ %i.aj, %bb.t ], [ %i.aj, %bb.u ], [ %i.aj, %bb.v ], [ %i.aj, %bb.w ], [ %i.aj, %bb.x ], [ %i.aj, %bb.y ], [ %i.ba, %bb.ae ], [ %i.ay, %bb.ad ], [ %i.ax, %bb.ac ], [ %i.aw, %bb.ab ], [ %i.av, %bb.aa ], [ %i.au, %bb.z ], [ %i.aj, %bb.r ] ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.d, ptr %6, align 8
  %.sroa.054.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.f, ptr %.sroa.054.sroa.2.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.bd, align 8, !tbaa !445
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 20 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  store i8 0, ptr %i.bf, align 8, !tbaa !446
  switch i8 %i.l, label %bb.af [
    i8 0, label %.noexc
    i8 1, label %bb.ag
    i8 2, label %bb.ao
    i8 3, label %bb.ap
    i8 4, label %bb.aq
    i8 5, label %bb.ar
    i8 6, label %bb.as
    i8 7, label %bb.at
  ]

bb.af:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  unreachable

bb.ag:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !364
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i8 0, ptr %i.bh, align 8, !tbaa !367
  switch i8 %.sroa.68.1124, label %bb.ah [
    i8 0, label %.sink.split.i.i.i.i.i.i10
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
  store ptr %.sroa.50.2123, ptr %i.bg, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

bb.aj:                                            ; preds = %bb.ag
  store ptr %.sroa.50.2123, ptr %i.bg, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

bb.ak:                                            ; preds = %bb.ag
  store ptr %.sroa.50.2123, ptr %i.bg, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

bb.al:                                            ; preds = %bb.ag
  store ptr %.sroa.50.2123, ptr %i.bg, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

bb.am:                                            ; preds = %bb.ag
  store ptr %.sroa.50.2123, ptr %i.bg, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

bb.an:                                            ; preds = %bb.ag
  %i.bi = ptrtoint ptr %.sroa.50.2123 to i64
  %.sroa.1862.32.extract.trunc = trunc i64 %i.bi to i8
  store i8 %.sroa.1862.32.extract.trunc, ptr %i.bg, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11:            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  store i8 %.sroa.68.1124, ptr %i.bh, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i10

bb.ao:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i10

bb.ap:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i10

bb.aq:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i10

bb.ar:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i10

bb.as:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i10

bb.at:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.bj = ptrtoint ptr %.sroa.23.2122 to i64
  %.sroa.456.24.extract.trunc = trunc i64 %i.bj to i8
  store i8 %.sroa.456.24.extract.trunc, ptr %i.be, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i10

.sink.split.i.i.i.i.i.i10:                        ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11, %bb.ag
  store i8 %i.l, ptr %i.bf, align 8, !tbaa !446
  br label %.noexc

.noexc:                                           ; preds = %.sink.split.i.i.i.i.i.i10, %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.bk, align 8, !tbaa !452
  switch i8 %i.ai, label %bb.au [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15
    i8 1, label %bb.av
    i8 2, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15
    i8 3, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15
    i8 4, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15
    i8 5, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15
    i8 6, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15
    i8 7, label %bb.ax
  ]

bb.au:                                            ; preds = %.noexc
  unreachable

bb.av:                                            ; preds = %.noexc
  %i.bl = icmp eq i8 %.sroa.31.1, 6
  br i1 %i.bl, label %bb.aw, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15

bb.aw:                                            ; preds = %bb.av
  %i.bm = ptrtoint ptr %.sroa.19.2 to i64
  %.sroa.20.32.insert.ext = and i64 %i.bm, 255
  %i.bn = inttoptr i64 %.sroa.20.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15

bb.ax:                                            ; preds = %.noexc
  %i.bo = ptrtoint ptr %.sroa.5.1 to i64
  %.sroa.7108.24.insert.ext = and i64 %i.bo, 255
  %i.bp = inttoptr i64 %.sroa.7108.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15: ; preds = %bb.av, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %bb.aw, %bb.ax
  %.sroa.7108.1 = phi ptr [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %bb.av ], [ %i.bp, %bb.ax ], [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %bb.aw ], [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %.noexc ] ; 6 uses
  %.sroa.20.2 = phi ptr [ undef, %.noexc ], [ %.sroa.19.2, %bb.av ], [ undef, %bb.ax ], [ undef, %.noexc ], [ %i.bn, %bb.aw ], [ undef, %.noexc ], [ undef, %.noexc ], [ undef, %.noexc ], [ undef, %.noexc ]
  %.sroa.27.1 = phi i8 [ undef, %.noexc ], [ %.sroa.31.1, %bb.av ], [ undef, %bb.ax ], [ undef, %.noexc ], [ 6, %bb.aw ], [ undef, %.noexc ], [ undef, %.noexc ], [ undef, %.noexc ], [ undef, %.noexc ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bx = add nsw i8 %.sroa.27.1, -6
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bx, -5
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorppEi.exit.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15
  %.pre211 = phi i8 [ %i.l, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15 ], [ %.pre211.pre, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorppEi.exit.i ] ; 4 uses
  %i.by = phi ptr [ %i.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15 ], [ %.pre210, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorppEi.exit.i ] ; 2 uses
  %i.bz = phi ptr [ %i.g, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15 ], [ %.pre209, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorppEi.exit.i ] ; 2 uses
  %i.ca = phi ptr [ %i.d, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15 ], [ %.pre, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorppEi.exit.i ]
  %.0.i = phi i64 [ 0, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit15 ], [ %i.dl, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorppEi.exit.i ] ; 3 uses
  %i.cb = icmp eq ptr %i.ca, %i.d
  %i.cc = icmp eq ptr %i.bz, %i.bc
  %or.cond = select i1 %i.cb, i1 %i.cc, i1 false
  %i.cd = icmp eq ptr %i.by, %i.af
  %or.cond201 = select i1 %or.cond, i1 %i.cd, i1 false
  %.not.i.i.i.i.i.i = icmp eq i8 %.pre211, %i.ai
  %or.cond217.a = select i1 %or.cond201, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond217.a, label %bb.az, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i

bb.az:                                            ; preds = %bb.ay
  switch i8 %i.ai, label %bb.ba [
    i8 0, label %bb.bs
    i8 1, label %bb.bb
    i8 2, label %.split10.i
    i8 3, label %.split9.i
    i8 4, label %.split8.i
    i8 5, label %.split.i
    i8 6, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.i
    i8 7, label %bb.bs
  ]

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ce = load ptr, ptr %i.be, align 8, !tbaa !364
  %i.cf = icmp eq ptr %i.ce, %.sroa.7108.1
  %i.cg = load i8, ptr %i.br, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cg, %.sroa.27.1
  %or.cond218 = select i1 %i.cf, i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond218, label %bb.bc, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i

bb.bc:                                            ; preds = %bb.bb
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8
  %i.ch = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.20.2
  %or.cond202 = select i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.ch
  br i1 %or.cond202, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i

.split10.i:                                       ; preds = %bb.az
  %i.ci = load ptr, ptr %i.be, align 8, !tbaa !241
  %i.cj = icmp eq ptr %i.ci, %.sroa.7108.1
  br i1 %i.cj, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i

.split9.i:                                        ; preds = %bb.az
  %i.ck = load ptr, ptr %i.be, align 8, !tbaa !241
  %i.cl = icmp eq ptr %i.ck, %.sroa.7108.1
  br i1 %i.cl, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i

.split8.i:                                        ; preds = %bb.az
  %i.cm = load ptr, ptr %i.be, align 8, !tbaa !241
  %i.cn = icmp eq ptr %i.cm, %.sroa.7108.1
  br i1 %i.cn, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i

.split.i:                                         ; preds = %bb.az
  %i.co = load ptr, ptr %i.be, align 8, !tbaa !241
  %i.cp = icmp eq ptr %i.co, %.sroa.7108.1
  br i1 %i.cp, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.i: ; preds = %bb.az
  %i.cq = load ptr, ptr %i.be, align 8, !tbaa !241
  %i.cr = icmp eq ptr %i.cq, %.sroa.7108.1
  br i1 %i.cr, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i: ; preds = %bb.bc, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.i, %.split.i, %.split8.i, %.split9.i, %.split10.i, %bb.bb, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  store ptr %i.by, ptr %4, align 8, !tbaa !445, !alias.scope !1200
  store i8 0, ptr %i.bt, align 8, !tbaa !446, !alias.scope !1200
  switch i8 %.pre211, label %bb.bd [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorppEi.exit.i
    i8 1, label %bb.be
    i8 2, label %bb.bm
    i8 3, label %bb.bn
    i8 4, label %bb.bo
    i8 5, label %bb.bp
    i8 6, label %bb.bq
    i8 7, label %bb.br
  ]

bb.bd:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i
  unreachable

bb.be:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i
  %i.cs = load ptr, ptr %i.be, align 8, !tbaa !364, !noalias !1200
  store ptr %i.cs, ptr %i.bs, align 8, !tbaa !364, !alias.scope !1200
  store i8 0, ptr %i.bv, align 8, !tbaa !367, !alias.scope !1200
  %i.ct = load i8, ptr %i.br, align 8, !tbaa !367, !noalias !1200 ; 2 uses
  switch i8 %i.ct, label %bb.bf [
    i8 0, label %.sink.split.i.i.i.i.i.i.i27
    i8 1, label %bb.bg
    i8 2, label %bb.bh
    i8 3, label %bb.bi
    i8 4, label %bb.bj
    i8 5, label %bb.bk
    i8 6, label %bb.bl
  ]

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.cu = load ptr, ptr %i.bq, align 8, !tbaa !241, !noalias !1200
  store ptr %i.cu, ptr %i.bu, align 8, !tbaa !241, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

bb.bh:                                            ; preds = %bb.be
  %i.cv = load ptr, ptr %i.bq, align 8, !tbaa !241, !noalias !1200
  store ptr %i.cv, ptr %i.bu, align 8, !tbaa !241, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

bb.bi:                                            ; preds = %bb.be
  %i.cw = load ptr, ptr %i.bq, align 8, !tbaa !241, !noalias !1200
  store ptr %i.cw, ptr %i.bu, align 8, !tbaa !241, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

bb.bj:                                            ; preds = %bb.be
  %i.cx = load ptr, ptr %i.bq, align 8, !tbaa !369, !noalias !1200
  store ptr %i.cx, ptr %i.bu, align 8, !tbaa !310, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

bb.bk:                                            ; preds = %bb.be
  %i.cy = load ptr, ptr %i.bq, align 8, !tbaa !241, !noalias !1200
  store ptr %i.cy, ptr %i.bu, align 8, !tbaa !241, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

bb.bl:                                            ; preds = %bb.be
  %i.cz = load i8, ptr %i.bq, align 8, !tbaa !81, !noalias !1200
  store i8 %i.cz, ptr %i.bu, align 8, !tbaa !81, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28:          ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  store i8 %i.ct, ptr %i.bv, align 8, !tbaa !367, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i27

bb.bm:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i
  %i.da = load ptr, ptr %i.be, align 8, !tbaa !241, !noalias !1200
  store ptr %i.da, ptr %i.bs, align 8, !tbaa !241, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i27

bb.bn:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i
  %i.db = load ptr, ptr %i.be, align 8, !tbaa !241, !noalias !1200
  store ptr %i.db, ptr %i.bs, align 8, !tbaa !241, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i27

bb.bo:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i
  %i.dc = load ptr, ptr %i.be, align 8, !tbaa !241, !noalias !1200
  store ptr %i.dc, ptr %i.bs, align 8, !tbaa !241, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i27

bb.bp:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i
  %i.dd = load ptr, ptr %i.be, align 8, !tbaa !241, !noalias !1200
  store ptr %i.dd, ptr %i.bs, align 8, !tbaa !241, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i27

bb.bq:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i
  %i.de = load ptr, ptr %i.be, align 8, !tbaa !241, !noalias !1200
  store ptr %i.de, ptr %i.bs, align 8, !tbaa !241, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i27

bb.br:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i
  %i.df = load i8, ptr %i.be, align 8, !tbaa !81, !noalias !1200
  store i8 %i.df, ptr %i.bs, align 8, !tbaa !81, !alias.scope !1200
  br label %.sink.split.i.i.i.i.i.i.i27

.sink.split.i.i.i.i.i.i.i27:                      ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28, %bb.be
  store i8 %.pre211, ptr %i.bt, align 8, !tbaa !446, !alias.scope !1200
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorppEi.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorppEi.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i27, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.thread.i
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !452, !alias.scope !1200
  %i.dg = zext nneg i8 %.pre211 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !1200
  store ptr %i.bd, ptr %3, align 8, !tbaa !453, !noalias !1200
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !1200
  %i.dh = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.di = extractvalue { ptr, i64 } %i.dh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.dj = load i64, ptr %.sroa.054.sroa.2.0..sroa_idx, align 8, !tbaa !455
  %i.dk = sub i64 %i.dj, %i.di
  store i64 %i.dk, ptr %.sroa.054.sroa.2.0..sroa_idx, align 8, !tbaa !455
  %i.dl = add nuw nsw i64 %.0.i, 1
  %.pre = load ptr, ptr %6, align 8, !tbaa !1201
  %.pre209 = load ptr, ptr %i.bk, align 8
  %.pre210 = load ptr, ptr %i.bd, align 8
  %.pre211.pre = load i8, ptr %i.bf, align 8, !tbaa !446
  br label %bb.ay, !llvm.loop !1194

bb.bs:                                            ; preds = %bb.az, %bb.az, %bb.bc, %.split10.i, %.split9.i, %.split8.i, %.split.i, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorneERKSO_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.0.i, i64 12) ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !241
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i64 %.sroa.speculated, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !78
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19
    i8 1, label %bb.bt
    i8 2, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19
    i8 3, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19
    i8 4, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19
    i8 5, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19
    i8 6, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19
    i8 7, label %bb.bv
  ]

default.unreachable:                              ; preds = %bb.bw, %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bs
  %i.dm = icmp eq i8 %.sroa.68.1124, 6
  br i1 %i.dm, label %bb.bu, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19

bb.bu:                                            ; preds = %bb.bt
  %i.dn = ptrtoint ptr %.sroa.50.2123 to i64
  %.sroa.18.32.insert.ext = and i64 %i.dn, 255
  %i.do = inttoptr i64 %.sroa.18.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19

bb.bv:                                            ; preds = %bb.bs
  %i.dp = ptrtoint ptr %.sroa.23.2122 to i64
  %.sroa.4.24.insert.ext = and i64 %i.dp, 255
  %i.dq = inttoptr i64 %.sroa.4.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19: ; preds = %bb.bt, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bu, %bb.bv
  %.sroa.30.1 = phi i8 [ undef, %bb.bs ], [ 6, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bs ], [ %.sroa.68.1124, %bb.bt ], [ undef, %bb.bs ], [ undef, %bb.bs ], [ undef, %bb.bs ], [ undef, %bb.bs ] ; 2 uses
  %.sroa.18.2 = phi ptr [ undef, %bb.bs ], [ %i.do, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bs ], [ %.sroa.50.2123, %bb.bt ], [ undef, %bb.bs ], [ undef, %bb.bs ], [ undef, %bb.bs ], [ undef, %bb.bs ] ; 6 uses
  %.sroa.4.1 = phi ptr [ %.sroa.23.2122, %bb.bs ], [ %.sroa.23.2122, %bb.bu ], [ %i.dq, %bb.bv ], [ %.sroa.23.2122, %bb.bs ], [ %.sroa.23.2122, %bb.bt ], [ %.sroa.23.2122, %bb.bs ], [ %.sroa.23.2122, %bb.bs ], [ %.sroa.23.2122, %bb.bs ], [ %.sroa.23.2122, %bb.bs ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.dr = icmp eq i64 %.0.i, 0
  br i1 %i.dr, label %bb.cl, label %bb.bw

bb.bw:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19
  store ptr %i.d, ptr %5, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.f, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.i, ptr %i.ds, align 8, !tbaa !445
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i8 0, ptr %i.du, align 8, !tbaa !446
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit.i
    i8 1, label %bb.bx
    i8 2, label %bb.cf
    i8 3, label %bb.cg
    i8 4, label %bb.ch
    i8 5, label %bb.ci
    i8 6, label %bb.cj
    i8 7, label %bb.ck
  ]

bb.bx:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !364
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i8 0, ptr %i.dw, align 8, !tbaa !367
  switch i8 %.sroa.30.1, label %bb.by [
    i8 0, label %.sink.split.i.i.i.i.i.i.i
    i8 1, label %bb.bz
    i8 2, label %bb.ca
    i8 3, label %bb.cb
    i8 4, label %bb.cc
    i8 5, label %bb.cd
    i8 6, label %bb.ce
  ]

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %bb.bx
  store ptr %.sroa.18.2, ptr %i.dv, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

bb.ca:                                            ; preds = %bb.bx
  store ptr %.sroa.18.2, ptr %i.dv, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

bb.cb:                                            ; preds = %bb.bx
  store ptr %.sroa.18.2, ptr %i.dv, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

bb.cc:                                            ; preds = %bb.bx
  store ptr %.sroa.18.2, ptr %i.dv, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

bb.cd:                                            ; preds = %bb.bx
  store ptr %.sroa.18.2, ptr %i.dv, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

bb.ce:                                            ; preds = %bb.bx
  %i.dx = ptrtoint ptr %.sroa.18.2 to i64
  %.sroa.18.32.extract.trunc = trunc i64 %i.dx to i8
  store i8 %.sroa.18.32.extract.trunc, ptr %i.dv, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21:          ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz
  store i8 %.sroa.30.1, ptr %i.dw, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.bw
  %i.dy = ptrtoint ptr %.sroa.4.1 to i64
  %.sroa.4.24.extract.trunc = trunc i64 %i.dy to i8
  store i8 %.sroa.4.24.extract.trunc, ptr %i.dt, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21, %bb.bx
  store i8 %i.l, ptr %i.du, align 8, !tbaa !446
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit.i

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.bw
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.g, ptr %i.dz, align 8, !tbaa !452
  %i.ea = call noundef ptr @_ZSt8__copy_nIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEE14const_iteratorEmPS8_ET1_T_T0_SR_St18input_iterator_tag(ptr noundef nonnull align 8 %5, i64 noundef %.sroa.speculated, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE14const_iteratorC2ERKSO_.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !451, !nonnull !111, !align !114 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !445, !noalias !1206 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.h = load i8, ptr %i.g, align 8, !tbaa !446, !noalias !1206 ; 2 uses
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
  store ptr %i.e, ptr %i.i, align 8, !tbaa !445
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !446
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !364, !noalias !1206 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.o = load i8, ptr %i.n, align 8, !tbaa !367, !noalias !1206 ; 2 uses
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
  store ptr %i.e, ptr %i.p, align 8, !tbaa !445
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !446
  store ptr %i.l, ptr %i.q, align 8, !tbaa !364
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !1206
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.u, align 8, !tbaa !445
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !446
  store ptr %i.l, ptr %i.v, align 8, !tbaa !364
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.x, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !1206
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.z, align 8, !tbaa !445
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !446
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !364
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !1206
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !445
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !446
  store ptr %i.l, ptr %i.af, align 8, !tbaa !364
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !369, !noalias !1206
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !445
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.al, align 8, !tbaa !446
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !364
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !1206
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !445
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !446
  store ptr %i.l, ptr %i.ap, align 8, !tbaa !364
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.m, align 8, !tbaa !81, !noalias !1206
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.at, align 8, !tbaa !445
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !446
  store ptr %i.l, ptr %i.au, align 8, !tbaa !364
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.as, ptr %i.aw, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.av, %bb.j ], [ %i.aq, %bb.i ], [ %i.al, %bb.h ], [ %i.ag, %bb.g ], [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ay = phi ptr [ %i.au, %bb.j ], [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.af, %bb.g ], [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.az = phi ptr [ %i.at, %bb.j ], [ %i.ao, %bb.i ], [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.o, ptr %i.ba, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !1206
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bc, align 8, !tbaa !445
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !446
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !1206
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !445
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !446
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.a
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !1206
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bk, align 8, !tbaa !445
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !446
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i

bb.n:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !1206
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bo, align 8, !tbaa !445
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bq, align 8, !tbaa !446
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i

bb.o:                                             ; preds = %bb.a
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !1206
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bs, align 8, !tbaa !445
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bu, align 8, !tbaa !446
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i

bb.p:                                             ; preds = %bb.a
  %i.bv = load i8, ptr %i.f, align 8, !tbaa !81, !noalias !1206
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bw, align 8, !tbaa !445
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.by, align 8, !tbaa !446
  store i8 %i.bv, ptr %i.bx, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %.thread, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = phi ptr [ %i.by, %bb.p ], [ %i.bu, %bb.o ], [ %i.bq, %bb.n ], [ %i.bm, %bb.m ], [ %i.bi, %bb.l ], [ %i.be, %bb.k ], [ %i.ax, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %.thread ] ; 2 uses
  %i.ca = phi ptr [ %i.bx, %bb.p ], [ %i.bt, %bb.o ], [ %i.bp, %bb.n ], [ %i.bl, %bb.m ], [ %i.bh, %bb.l ], [ %i.bd, %bb.k ], [ %i.ay, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.thread ]
  %i.cb = phi ptr [ %i.bw, %bb.p ], [ %i.bs, %bb.o ], [ %i.bo, %bb.n ], [ %i.bk, %bb.m ], [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.thread ]
  store i8 %i.h, ptr %i.bz, align 8, !tbaa !446
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64, %.sink.split.i.i.i.i.i
  %i.cc = phi ptr [ %i.bz, %.sink.split.i.i.i.i.i ], [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64 ] ; 2 uses
  %i.cd = phi ptr [ %i.ca, %.sink.split.i.i.i.i.i ], [ %i.j, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64 ] ; 7 uses
  %i.ce = phi ptr [ %i.cb, %.sink.split.i.i.i.i.i ], [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread64 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.c, ptr %i.cf, align 8, !tbaa !452
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.r

bb.r:                                             ; preds = %bb.aj, %bb.q
  %.pre53 = phi ptr [ %i.e, %bb.q ], [ %.pre53.pre, %bb.aj ] ; 2 uses
  %i.cn = phi ptr [ %i.c, %bb.q ], [ %.pre, %bb.aj ] ; 2 uses
  %.011 = phi i64 [ %1, %bb.q ], [ %i.dj, %bb.aj ] ; 4 uses
  %i.co = icmp eq ptr %i.cn, %i.c
  br i1 %i.co, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre54 = load i8, ptr %i.cc, align 8, !tbaa !446, !noalias !1207
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %4 = icmp eq ptr %.pre53, %i.c
  %.pre55 = load i8, ptr %i.cc, align 8, !tbaa !446 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.pre55, 7
  %or.cond = select i1 %4, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %5 = phi i8 [ %.pre54, %._crit_edge ], [ %.pre55, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  store ptr %.pre53, ptr %3, align 8, !tbaa !445, !alias.scope !1207
  store i8 0, ptr %i.ch, align 8, !tbaa !446, !alias.scope !1207
  switch i8 %5, label %bb.u [
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
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !364, !noalias !1207
  store ptr %i.cp, ptr %i.cg, align 8, !tbaa !364, !alias.scope !1207
  store i8 0, ptr %i.ck, align 8, !tbaa !367, !alias.scope !1207
  %i.cq = load i8, ptr %i.cl, align 8, !tbaa !367, !noalias !1207 ; 2 uses
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
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !241, !noalias !1207
  store ptr %i.cr, ptr %i.ci, align 8, !tbaa !241, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.v
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !241, !noalias !1207
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !241, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !241, !noalias !1207
  store ptr %i.ct, ptr %i.ci, align 8, !tbaa !241, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.v
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !369, !noalias !1207
  store ptr %i.cu, ptr %i.ci, align 8, !tbaa !310, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.v
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !241, !noalias !1207
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !241, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.v
  %i.cw = load i8, ptr %i.cj, align 8, !tbaa !81, !noalias !1207
  store i8 %i.cw, ptr %i.ci, align 8, !tbaa !81, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  store i8 %i.cq, ptr %i.ck, align 8, !tbaa !367, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.t
  %i.cx = load ptr, ptr %i.cd, align 8, !tbaa !241, !noalias !1207
  store ptr %i.cx, ptr %i.cg, align 8, !tbaa !241, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.t
  %i.cy = load ptr, ptr %i.cd, align 8, !tbaa !241, !noalias !1207
  store ptr %i.cy, ptr %i.cg, align 8, !tbaa !241, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cd, align 8, !tbaa !241, !noalias !1207
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !241, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.t
  %i.da = load ptr, ptr %i.cd, align 8, !tbaa !241, !noalias !1207
  store ptr %i.da, ptr %i.cg, align 8, !tbaa !241, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.t
  %i.db = load ptr, ptr %i.cd, align 8, !tbaa !241, !noalias !1207
  store ptr %i.db, ptr %i.cg, align 8, !tbaa !241, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.t
  %i.dc = load i8, ptr %i.cd, align 1, !tbaa !81, !noalias !1207
  store i8 %i.dc, ptr %i.cg, align 8, !tbaa !81, !alias.scope !1207
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  store i8 %5, ptr %i.ch, align 8, !tbaa !446, !alias.scope !1207
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i, %bb.t
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !452, !alias.scope !1207
  %i.dd = zext nneg i8 %5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !1207
  store ptr %i.ce, ptr %2, align 8, !tbaa !453, !noalias !1207
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !1207
  %i.de = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.df = extractvalue { ptr, i64 } %i.de, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.not = icmp ult i64 %i.df, %.011
  br i1 %.not, label %bb.aj, label %.thread44

.thread44:                                        ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !450
  %i.dh = add i64 %i.dg, %.011
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !450
  %i.di = sub i64 %.011, %i.df
  store i64 %i.di, ptr %i.b, align 8, !tbaa !1208
  br label %.loopexit

bb.aj:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE14const_iteratorC2ERKSK_.exit.i
  %i.dj = sub nuw i64 %.011, %i.df
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !450
  %i.dl = add i64 %i.dk, %i.df
  store i64 %i.dl, ptr %i.a, align 8, !tbaa !450
  %.pre = load ptr, ptr %i.cf, align 8, !tbaa !452
  %.pre53.pre = load ptr, ptr %i.ce, align 8, !tbaa !445
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !452  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %0, align 8, !tbaa !445
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !445
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !446
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !446   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !446
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
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !364
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !364
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !367   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.u = load i8, ptr %i.t, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !115
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split4:                                          ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split:                                           ; preds = %bb.c
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split6:                                          ; preds = %bb.c
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

.split5:                                          ; preds = %bb.c
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit: ; preds = %bb.c
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.split6, %.split5, %.split4, %.split, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit
  %i.an = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %0, ptr %2, align 8, !tbaa !453
  %i.ao = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1      ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !452
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.at = load i64, ptr %i.as, align 8, !tbaa !460
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.aq) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %spec.select.i
  %i.av = sub i64 %i.aq, %spec.select.i
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.au, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.av, 1
  br label %bb.h

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread: ; preds = %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge, %bb.f, %bb.e, %bb.b, %.split6, %.split5, %.split4, %.split, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit
  %i.aw = phi i8 [ %.pre, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit.thread_crit_edge ], [ 1, %bb.f ], [ 1, %bb.e ], [ %i.j, %bb.b ], [ 5, %.split6 ], [ 6, %.split5 ], [ 2, %.split4 ], [ 3, %.split ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i ], [ 4, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratoreqERKSI_.exit ]
  %i.ax = zext i8 %i.aw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store ptr %0, ptr %1, align 8, !tbaa !453
  %i.ay = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_SA_SH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr @.str.30, ptr %5, align 8, !tbaa !244
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.31, ptr %i.a, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 205, ptr %i.b, align 8, !tbaa !246
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 62, ptr %i.c, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #35
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.bc, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9incrementclILm2EEEvSt17integral_constantImXT_EE.exit

bb.g:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !441, !nonnull !111, !align !114 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !241  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !241
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !445  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
end_hunk_2
begin_hunk_3_@_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratorC2ERKNS2_5tupleIJSE_SG_EEESt17integral_constantIbLb0EE:bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !366
  %i.ap = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %.noexc3, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

.noexc3:                                          ; preds = %.noexc
  %i.ar = load i8, ptr %i.an, align 8, !tbaa !367
  %i.as = zext i8 %i.ar to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %i.a, ptr %2, align 8, !tbaa !366
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.at = load ptr, ptr %0, align 8, !tbaa !640   ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !381, !noalias !2116
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !364
  %i.aw = icmp eq ptr %i.av, %i.au
  %.pre16.i = load i8, ptr %i.an, align 8, !tbaa !367 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.pre16.i, 6
  %or.cond.i = select i1 %i.aw, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i, label %._crit_edge, label %.noexc, !llvm.loop !48

._crit_edge:                                      ; preds = %.noexc3, %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit
  %.lcssa = phi ptr [ %i.ak, %_ZN5boost5beast6detail7variantIJNS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEE14const_iteratorEPKS5_NS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm1EJSE_EEEvDpOT0_.exit ], [ %i.at, %.noexc3 ] ; 11 uses
  %.ptr7.i = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  store ptr %.ptr7.i, ptr %i.a, align 8, !tbaa !241
  store i8 2, ptr %i.b, align 8, !tbaa !382
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %._crit_edge
  %.idx.i = phi i64 [ 8, %._crit_edge ], [ %.add.i.4, %bb.j ] ; 6 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.idx.i
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !78
  %.not.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %.add.i = add nuw nsw i64 %.idx.i, 16           ; 2 uses
  %.ptr6.i = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.add.i
  store ptr %.ptr6.i, ptr %i.a, align 8, !tbaa !241
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.add.i
  %.sroa.3.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.ptr.i.1, i64 8
  %.sroa.3.0.copyload.i.i.1 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.1, align 8, !tbaa !78
  %.not.i.i.1 = icmp eq i64 %.sroa.3.0.copyload.i.i.1, 0
  br i1 %.not.i.i.1, label %.lr.ph.i.i.2, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %.add.i.1 = add nuw nsw i64 %.idx.i, 32         ; 2 uses
  %.ptr6.i.1 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.add.i.1
  store ptr %.ptr6.i.1, ptr %i.a, align 8, !tbaa !241
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.add.i.1
  %.sroa.3.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.ptr.i.2, i64 8
  %.sroa.3.0.copyload.i.i.2 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.2, align 8, !tbaa !78
  %.not.i.i.2 = icmp eq i64 %.sroa.3.0.copyload.i.i.2, 0
  br i1 %.not.i.i.2, label %.lr.ph.i.i.3, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %.add.i.2 = add nuw nsw i64 %.idx.i, 48         ; 2 uses
  %.ptr6.i.2 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.add.i.2
  store ptr %.ptr6.i.2, ptr %i.a, align 8, !tbaa !241
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.add.i.2
  %.sroa.3.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.ptr.i.3, i64 8
  %.sroa.3.0.copyload.i.i.3 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.3, align 8, !tbaa !78
  %.not.i.i.3 = icmp eq i64 %.sroa.3.0.copyload.i.i.3, 0
  br i1 %.not.i.i.3, label %.lr.ph.i.i.4, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %.add.i.3 = add nuw nsw i64 %.idx.i, 64         ; 2 uses
  %.ptr6.i.3 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.add.i.3
  store ptr %.ptr6.i.3, ptr %i.a, align 8, !tbaa !241
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.add.i.3
  %.sroa.3.0..sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.ptr.i.4, i64 8
  %.sroa.3.0.copyload.i.i.4 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.4, align 8, !tbaa !78
  %.not.i.i.4 = icmp eq i64 %.sroa.3.0.copyload.i.i.4, 0
  br i1 %.not.i.i.4, label %bb.j, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

bb.j:                                             ; preds = %.lr.ph.i.i.4
  %.add.i.4 = add nuw nsw i64 %.idx.i, 80         ; 3 uses
  %.ptr6.i.4 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.add.i.4
  store ptr %.ptr6.i.4, ptr %i.a, align 8, !tbaa !241
  %i.ax = icmp eq i64 %.add.i.4, 1048
  br i1 %i.ax, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !49

._crit_edge.i.i:                                  ; preds = %bb.j
  store i8 0, ptr %i.a, align 8, !tbaa !384
  store i8 3, ptr %i.b, align 8, !tbaa !382
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE.exit: ; preds = %.noexc, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http17message_generator14generator_implILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSD_INSG_IJNS_4asio12const_bufferESI_SI_NS8_6writer11field_rangeENS1_10chunk_crlfEEEEEESt5arrayISI_Lm65EEEEEEEEEEEEEvRNS_6system10error_codeERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %8 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %9 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %10 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %11 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %12 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %13 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %14 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %15 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %16 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %17 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %18 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %19 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %20 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %21 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %22 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %23 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %24 = alloca %"class.std::logic_error", align 8 ; 5 uses
  %25 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %26 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, std::array<boost::asio::const_buffer, 65>>>::const_iterator", align 8 ; 8 uses
  %27 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, std::array<boost::asio::const_buffer, 65>>> &>::const_iterator", align 8 ; 11 uses
  %28 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, std::array<boost::asio::const_buffer, 65>>> &>::const_iterator", align 8 ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !627, !nonnull !111, !align !114 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1544 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1736
  %i.d = load ptr, ptr %2, align 8, !tbaa !2143, !noalias !2144 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !644, !noalias !2145 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !645, !noalias !2145, !nonnull !111, !align !114 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1048
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !640, !noalias !2146 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1056 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1080
  %i.l = load i8, ptr %i.k, align 8, !tbaa !382, !noalias !2146 ; 7 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !364, !noalias !2146 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1064 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 1072
  %i.p = load i8, ptr %i.o, align 8, !tbaa !367, !noalias !2146 ; 2 uses
  switch i8 %i.p, label %bb.d [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit
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
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !2146
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !2146
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit

bb.g:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !2146
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit

bb.h:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !369, !noalias !2146
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit

bb.i:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !2146
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit

bb.j:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.n, align 8, !tbaa !81, !noalias !2146
  %.sroa.34.32.insert.ext = zext i8 %i.v to i64
  %i.w = inttoptr i64 %.sroa.34.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit

bb.k:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !2146
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit

bb.l:                                             ; preds = %bb.a
  %i.y = load i8, ptr %i.j, align 8, !tbaa !81, !noalias !2146
  %.sroa.19.24.insert.ext = zext i8 %i.y to i64
  %i.z = inttoptr i64 %.sroa.19.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit: ; preds = %bb.c, %bb.a, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.l, %bb.k
  %.sroa.19.2187 = phi ptr [ %i.z, %bb.l ], [ undef, %bb.a ], [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %i.m, %bb.j ], [ %i.x, %bb.k ], [ %i.m, %bb.c ] ; 8 uses
  %.sroa.34.2186 = phi ptr [ undef, %bb.l ], [ undef, %bb.a ], [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.s, %bb.g ], [ %i.t, %bb.h ], [ %i.u, %bb.i ], [ %i.w, %bb.j ], [ undef, %bb.k ], [ undef, %bb.c ] ; 8 uses
  %.sroa.52.1185 = phi i8 [ undef, %bb.l ], [ undef, %bb.a ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ undef, %bb.k ], [ %i.p, %bb.c ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !640, !noalias !2147
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !382, !noalias !2147 ; 4 uses
  switch i8 %i.ae, label %bb.m [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.n
    i8 2, label %bb.v
    i8 3, label %bb.w
  ]

bb.m:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit
  unreachable

bb.n:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !364, !noalias !2147 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !367, !noalias !2147 ; 2 uses
  switch i8 %i.ai, label %bb.o [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
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
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !241, !noalias !2147
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.q:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !241, !noalias !2147
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.r:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !241, !noalias !2147
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.s:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !369, !noalias !2147
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.t:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !241, !noalias !2147
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.u:                                             ; preds = %bb.n
  %i.ao = load i8, ptr %i.ag, align 8, !tbaa !81, !noalias !2147
  %.sroa.11.32.insert.ext = zext i8 %i.ao to i64
  %i.ap = inttoptr i64 %.sroa.11.32.insert.ext to ptr
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.v:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !241, !noalias !2147
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

bb.w:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit
  %i.ar = load i8, ptr %i.ac, align 8, !tbaa !81, !noalias !2147
  %.sroa.5.24.insert.ext = zext i8 %i.ar to i64
  %i.as = inttoptr i64 %.sroa.5.24.insert.ext to ptr
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit: ; preds = %bb.n, %bb.v, %bb.w, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit
  %.sroa.23.1 = phi i8 [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 6, %bb.u ], [ undef, %bb.w ], [ undef, %bb.v ], [ %i.ai, %bb.n ] ; 2 uses
  %.sroa.11.2 = phi ptr [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit ], [ %i.aj, %bb.p ], [ %i.ak, %bb.q ], [ %i.al, %bb.r ], [ %i.am, %bb.s ], [ %i.an, %bb.t ], [ %i.ap, %bb.u ], [ undef, %bb.w ], [ undef, %bb.v ], [ undef, %bb.n ] ; 2 uses
  %.sroa.5.1 = phi ptr [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit ], [ %i.af, %bb.p ], [ %i.af, %bb.q ], [ %i.af, %bb.r ], [ %i.af, %bb.s ], [ %i.af, %bb.t ], [ %i.af, %bb.u ], [ %i.as, %bb.w ], [ %i.aq, %bb.v ], [ %i.af, %bb.n ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !646, !noalias !2147
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  store ptr %i.d, ptr %28, align 8
  %.sroa.0115.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  store i64 %i.f, ptr %.sroa.0115.sroa.2.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.av, align 8, !tbaa !640
  %i.aw = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 21 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 5 uses
  store i8 0, ptr %i.ax, align 8, !tbaa !382
  switch i8 %i.l, label %bb.x [
    i8 0, label %.noexc
    i8 1, label %bb.y
    i8 2, label %bb.ag
    i8 3, label %bb.ah
  ]

bb.x:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  unreachable

bb.y:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.19.2187, ptr %i.aw, align 8, !tbaa !364
  %i.ay = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 2 uses
  store i8 0, ptr %i.az, align 8, !tbaa !367
  switch i8 %.sroa.52.1185, label %bb.z [
    i8 0, label %.sink.split.i.i.i.i.i.i.i10
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
  store ptr %.sroa.34.2186, ptr %i.ay, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

bb.ab:                                            ; preds = %bb.y
  store ptr %.sroa.34.2186, ptr %i.ay, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

bb.ac:                                            ; preds = %bb.y
  store ptr %.sroa.34.2186, ptr %i.ay, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

bb.ad:                                            ; preds = %bb.y
  store ptr %.sroa.34.2186, ptr %i.ay, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

bb.ae:                                            ; preds = %bb.y
  store ptr %.sroa.34.2186, ptr %i.ay, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

bb.af:                                            ; preds = %bb.y
  %i.ba = ptrtoint ptr %.sroa.34.2186 to i64
  %.sroa.10119.32.extract.trunc = trunc i64 %i.ba to i8
  store i8 %.sroa.10119.32.extract.trunc, ptr %i.ay, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11:          ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  store i8 %.sroa.52.1185, ptr %i.az, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i.i10

bb.ag:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.19.2187, ptr %i.aw, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i10

bb.ah:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.bb = ptrtoint ptr %.sroa.19.2187 to i64
  %.sroa.4117.24.extract.trunc = trunc i64 %i.bb to i8
  store i8 %.sroa.4117.24.extract.trunc, ptr %i.aw, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i10

.sink.split.i.i.i.i.i.i.i10:                      ; preds = %bb.ah, %bb.ag, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i11, %bb.y
  store i8 %i.l, ptr %i.ax, align 8, !tbaa !382
  br label %.noexc

.noexc:                                           ; preds = %.sink.split.i.i.i.i.i.i.i10, %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSS_PKNS0_14mutable_bufferEEE5valueEiE4typeENSU_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENSU_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %28, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.bc, align 8, !tbaa !646
  switch i8 %i.ae, label %bb.ai [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit15
    i8 1, label %bb.aj
    i8 2, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit15
    i8 3, label %bb.al
  ]

bb.ai:                                            ; preds = %.noexc
  unreachable

bb.aj:                                            ; preds = %.noexc
  %i.bd = icmp eq i8 %.sroa.23.1, 6
  br i1 %i.bd, label %bb.ak, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit15

bb.ak:                                            ; preds = %bb.aj
  %i.be = ptrtoint ptr %.sroa.11.2 to i64
  %.sroa.12.32.insert.ext = and i64 %i.be, 255
  %i.bf = inttoptr i64 %.sroa.12.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit15

bb.al:                                            ; preds = %.noexc
  %i.bg = ptrtoint ptr %.sroa.5.1 to i64
  %.sroa.7157.24.insert.ext = and i64 %i.bg, 255
  %i.bh = inttoptr i64 %.sroa.7157.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit15

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit15: ; preds = %bb.aj, %.noexc, %.noexc, %bb.ak, %bb.al
  %.sroa.7157.1 = phi ptr [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %bb.aj ], [ %i.bh, %bb.al ], [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %bb.ak ] ; 2 uses
  %.sroa.12.2 = phi ptr [ undef, %.noexc ], [ %.sroa.11.2, %bb.aj ], [ undef, %bb.al ], [ undef, %.noexc ], [ %i.bf, %bb.ak ]
  %.sroa.19159.1 = phi i8 [ undef, %.noexc ], [ %.sroa.23.1, %bb.aj ], [ undef, %bb.al ], [ undef, %.noexc ], [ 6, %bb.ak ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 5 uses
  %i.bp = add nsw i8 %.sroa.19159.1, -6
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bp, -5
  br label %bb.am

end_hunk_3
begin_hunk_4_@_ZN5boost5beast4http17message_generator14generator_implILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSD_INSG_IJNS_4asio12const_bufferESI_SI_NS8_6writer11field_rangeENS1_10chunk_crlfEEEEEESt5arrayISI_Lm65EEEEEEEEEEEEEvRNS_6system10error_codeERKT_:bb.a

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i: ; preds = %bb.bm, %.noexc28
  switch i8 %.pre356, label %bb.bw [
    i8 0, label %.noexc32
    i8 1, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.threadthread-pre-split
    i8 2, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread374
    i8 3, label %.noexc36
  ]

bb.bw:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i
  unreachable

.noexc32:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  store ptr @.str.30, ptr %25, align 8, !tbaa !244
  %i.fd = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr @.str.31, ptr %i.fd, align 8, !tbaa !245
  %i.fe = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 180, ptr %i.fe, align 8, !tbaa !246
  %i.ff = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 67, ptr %i.ff, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(24) %25) #35
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %.noexc32
  unreachable

bb.by:                                            ; preds = %.noexc32
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %.body

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.threadthread-pre-split: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i.i26, %bb.bp
  %.pr = load i8, ptr %i.bo, align 8, !tbaa !367
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.threadthread-pre-split, %bb.bq
  %i.fh = phi i8 [ %.pr, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.threadthread-pre-split ], [ %i.ee, %bb.bq ]
  switch i8 %i.fh, label %bb.bz [
    i8 0, label %.noexc64
    i8 1, label %bb.cc
    i8 2, label %bb.cd
    i8 3, label %bb.ce
    i8 4, label %bb.cf
    i8 5, label %bb.cg
    i8 6, label %.noexc67
  ]

bb.bz:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread
  unreachable

.noexc64:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store ptr @.str.30, ptr %12, align 8, !tbaa !244
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.31, ptr %i.fi, align 8, !tbaa !245
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 180, ptr %i.fj, align 8, !tbaa !246
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 67, ptr %i.fk, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(24) %12) #35
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %.noexc64
  unreachable

bb.cb:                                            ; preds = %.noexc64
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %.body

bb.cc:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread
  %i.fm = load ptr, ptr %i.bn, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.2.0.copyload.i.i63 = load i64, ptr %.sroa.2.0..sroa_idx.i.i62, align 8, !tbaa !78
  br label %.noexc17

bb.cd:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread
  %i.fn = load ptr, ptr %i.bn, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.sroa.2.0.copyload.i10.i = load i64, ptr %.sroa.2.0..sroa_idx.i9.i, align 8, !tbaa !78
  br label %.noexc17

bb.ce:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread
  %i.fo = load ptr, ptr %i.bn, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.2.0.copyload.i15.i = load i64, ptr %.sroa.2.0..sroa_idx.i14.i, align 8, !tbaa !78
  br label %.noexc17

bb.cf:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread
  %i.fp = load ptr, ptr %i.bn, align 8, !tbaa !369 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !168
  %i.fs = zext i16 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 50
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !169
  %i.fv = zext i16 %i.fu to i64
  %i.fw = add nuw nsw i64 %i.fs, 2
  %i.fx = add nuw nsw i64 %i.fw, %i.fv
  br label %.noexc17

bb.cg:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread
  %i.fy = load ptr, ptr %i.bn, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.2.0.copyload.i20.i = load i64, ptr %.sroa.2.0..sroa_idx.i19.i, align 8, !tbaa !78
  br label %.noexc17

.noexc67:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.32)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store ptr @.str.30, ptr %10, align 8, !tbaa !244
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.31, ptr %i.fz, align 8, !tbaa !245
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 187, ptr %i.ga, align 8, !tbaa !246
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 64, ptr %i.gb, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) #35
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %.noexc67
  unreachable

bb.ci:                                            ; preds = %.noexc67
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %.body

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread374: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i
  %i.gd = load ptr, ptr %i.bk, align 8, !tbaa !241
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !78
  br label %.noexc17

.noexc36:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.32)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  store ptr @.str.30, ptr %23, align 8, !tbaa !244
  %i.ge = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @.str.31, ptr %i.ge, align 8, !tbaa !245
  %i.gf = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 187, ptr %i.gf, align 8, !tbaa !246
  %i.gg = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 64, ptr %i.gg, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(24) %23) #35
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %.noexc36
  unreachable

bb.ck:                                            ; preds = %.noexc36
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  br label %.body

.noexc17:                                         ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread374, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %.noexc29
  %.pre355.pre365 = phi ptr [ %.pre355.pre, %.noexc29 ], [ %.pre355.pre363, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread374 ], [ %.pre355.pre363, %bb.cg ], [ %.pre355.pre363, %bb.cc ], [ %.pre355.pre363, %bb.cd ], [ %.pre355.pre363, %bb.ce ], [ %.pre355.pre363, %bb.cf ]
  %.pre355 = phi ptr [ %.pre355.pre, %.noexc29 ], [ %.pre355357, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread374 ], [ %.pre355357, %bb.cg ], [ %.pre355357, %bb.cc ], [ %.pre355357, %bb.cd ], [ %.pre355357, %bb.ce ], [ %.pre355357, %bb.cf ]
  %.pn.i.i = phi i64 [ %i.fc, %.noexc29 ], [ %.sroa.2.0.copyload.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i.i.thread374 ], [ %.sroa.2.0.copyload.i20.i, %bb.cg ], [ %.sroa.2.0.copyload.i.i63, %bb.cc ], [ %.sroa.2.0.copyload.i10.i, %bb.cd ], [ %.sroa.2.0.copyload.i15.i, %bb.ce ], [ %i.fx, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  %i.gi = load i64, ptr %.sroa.0115.sroa.2.0..sroa_idx, align 8, !tbaa !648
  %i.gj = sub i64 %i.gi, %.pn.i.i
  store i64 %i.gj, ptr %.sroa.0115.sroa.2.0..sroa_idx, align 8, !tbaa !648
  %i.gk = add nuw nsw i64 %.0.i, 1
  %.pre = load ptr, ptr %28, align 8, !tbaa !2150
  %.pre354 = load ptr, ptr %i.bc, align 8
  %.pre356.pre = load i8, ptr %i.ax, align 8, !tbaa !382
  br label %bb.am, !llvm.loop !2141

bb.cl:                                            ; preds = %bb.an, %bb.an, %bb.aq, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorneERKSO_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.0.i, i64 12) ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !241
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1744
  store i64 %.sroa.speculated, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !78
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit20
    i8 1, label %bb.cm
    i8 2, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit20
    i8 3, label %bb.co
  ]

default.unreachable:                              ; preds = %bb.cp, %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %i.gl = icmp eq i8 %.sroa.52.1185, 6
  br i1 %i.gl, label %bb.cn, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit20

bb.cn:                                            ; preds = %bb.cm
  %i.gm = ptrtoint ptr %.sroa.34.2186 to i64
  %.sroa.10.32.insert.ext = and i64 %i.gm, 255
  %i.gn = inttoptr i64 %.sroa.10.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit20

bb.co:                                            ; preds = %bb.cl
  %i.go = ptrtoint ptr %.sroa.19.2187 to i64
  %.sroa.4.24.insert.ext = and i64 %i.go, 255
  %i.gp = inttoptr i64 %.sroa.4.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit20

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit20: ; preds = %bb.cm, %bb.cl, %bb.cl, %bb.cn, %bb.co
  %.sroa.22.1 = phi i8 [ undef, %bb.cl ], [ 6, %bb.cn ], [ undef, %bb.co ], [ undef, %bb.cl ], [ %.sroa.52.1185, %bb.cm ] ; 2 uses
  %.sroa.10.2 = phi ptr [ undef, %bb.cl ], [ %i.gn, %bb.cn ], [ undef, %bb.co ], [ undef, %bb.cl ], [ %.sroa.34.2186, %bb.cm ] ; 6 uses
  %.sroa.4.1 = phi ptr [ %.sroa.19.2187, %bb.cl ], [ %.sroa.19.2187, %bb.cn ], [ %i.gp, %bb.co ], [ %.sroa.19.2187, %bb.cl ], [ %.sroa.19.2187, %bb.cm ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  %i.gq = icmp eq i64 %.0.i, 0
  br i1 %i.gq, label %bb.da, label %bb.cp

bb.cp:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit20
  store ptr %i.d, ptr %27, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.f, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %i.i, ptr %i.gr, align 8, !tbaa !640
  %i.gs = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  store i8 0, ptr %i.gt, align 8, !tbaa !382
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit.i
    i8 1, label %bb.cq
    i8 2, label %bb.cy
    i8 3, label %bb.cz
  ]

bb.cq:                                            ; preds = %bb.cp
  store ptr %.sroa.4.1, ptr %i.gs, align 8, !tbaa !364
  %i.gu = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %27, i64 40 ; 2 uses
  store i8 0, ptr %i.gv, align 8, !tbaa !367
  switch i8 %.sroa.22.1, label %bb.cr [
    i8 0, label %.sink.split.i.i.i.i.i.i.i.i
    i8 1, label %bb.cs
    i8 2, label %bb.ct
    i8 3, label %bb.cu
    i8 4, label %bb.cv
    i8 5, label %bb.cw
    i8 6, label %bb.cx
  ]

bb.cr:                                            ; preds = %bb.cq
  unreachable

bb.cs:                                            ; preds = %bb.cq
  store ptr %.sroa.10.2, ptr %i.gu, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cq
  store ptr %.sroa.10.2, ptr %i.gu, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cq
  store ptr %.sroa.10.2, ptr %i.gu, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cq
  store ptr %.sroa.10.2, ptr %i.gu, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cq
  store ptr %.sroa.10.2, ptr %i.gu, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cq
  %i.gw = ptrtoint ptr %.sroa.10.2 to i64
  %.sroa.10.32.extract.trunc = trunc i64 %i.gw to i8
  store i8 %.sroa.10.32.extract.trunc, ptr %i.gu, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs
  store i8 %.sroa.22.1, ptr %i.gv, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cp
  store ptr %.sroa.4.1, ptr %i.gs, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cp
  %i.gx = ptrtoint ptr %.sroa.4.1 to i64
  %.sroa.4.24.extract.trunc = trunc i64 %i.gx to i8
  store i8 %.sroa.4.24.extract.trunc, ptr %i.gs, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.cz, %bb.cy, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cq
  store i8 %i.l, ptr %i.gt, align 8, !tbaa !382
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit.i

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.cp
  %i.gy = getelementptr inbounds nuw i8, ptr %27, i64 56
  store ptr %i.g, ptr %i.gy, align 8, !tbaa !646
  %i.gz = call noundef ptr @_ZSt8__copy_nIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEESt5arrayIS8_Lm65EEEEEEEE14const_iteratorEmPS8_ET1_T_T0_SR_St18input_iterator_tag(ptr noundef nonnull align 8 %27, i64 noundef %.sroa.speculated, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE14const_iteratorC2ERKSO_.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  ret void

.body:                                            ; preds = %bb.ck, %bb.by, %bb.bl, %bb.bb, %bb.bg, %bb.be, %bb.cb, %bb.ci, %bb.bt, %bb.bv
  %.pn = phi { ptr, i32 } [ %i.fl, %bb.cb ], [ %i.cw, %bb.be ], [ %i.gc, %bb.ci ], [ %i.da, %bb.bg ], [ %i.gh, %bb.ck ], [ %i.fg, %bb.by ], [ %i.ey, %bb.bv ], [ %i.eq, %bb.bt ], [ %i.dt, %bb.bl ], [ %i.cm, %bb.bb ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, std::array<boost::asio::const_buffer, 65>>::const_iterator::dereference", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, std::array<boost::asio::const_buffer, 65>>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, std::array<boost::asio::const_buffer, 65>>::const_iterator::increment", align 8 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, std::array<boost::asio::const_buffer, 65>>>::const_iterator", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !111, !align !114 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1048
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !640, !noalias !2155 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1056 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1080
  %i.h = load i8, ptr %i.g, align 8, !tbaa !382, !noalias !2155 ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread59
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread59: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !640
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !382
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !364, !noalias !2155 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1064 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1072
  %i.o = load i8, ptr %i.n, align 8, !tbaa !367, !noalias !2155 ; 2 uses
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
  store ptr %i.e, ptr %i.p, align 8, !tbaa !640
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !382
  store ptr %i.l, ptr %i.q, align 8, !tbaa !364
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !2155
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.u, align 8, !tbaa !640
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !382
  store ptr %i.l, ptr %i.v, align 8, !tbaa !364
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.x, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !2155
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.z, align 8, !tbaa !640
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !382
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !364
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !2155
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !640
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !382
  store ptr %i.l, ptr %i.af, align 8, !tbaa !364
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !369, !noalias !2155
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !640
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.al, align 8, !tbaa !382
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !364
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !2155
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !640
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !382
  store ptr %i.l, ptr %i.ap, align 8, !tbaa !364
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.m, align 8, !tbaa !81, !noalias !2155
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.at, align 8, !tbaa !640
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !382
  store ptr %i.l, ptr %i.au, align 8, !tbaa !364
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.as, ptr %i.aw, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.av, %bb.j ], [ %i.aq, %bb.i ], [ %i.al, %bb.h ], [ %i.ag, %bb.g ], [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ay = phi ptr [ %i.au, %bb.j ], [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.af, %bb.g ], [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.az = phi ptr [ %i.at, %bb.j ], [ %i.ao, %bb.i ], [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.o, ptr %i.ba, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !2155
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bc, align 8, !tbaa !640
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !382
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bf = load i8, ptr %i.f, align 8, !tbaa !81, !noalias !2155
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !640
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !382
  store i8 %i.bf, ptr %i.bh, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %.thread, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = phi ptr [ %i.bi, %bb.l ], [ %i.be, %bb.k ], [ %i.ax, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %.thread ] ; 2 uses
  %i.bk = phi ptr [ %i.bh, %bb.l ], [ %i.bd, %bb.k ], [ %i.ay, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.thread ]
  %i.bl = phi ptr [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.thread ]
  store i8 %i.h, ptr %i.bj, align 8, !tbaa !382
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread59, %.sink.split.i.i.i.i.i.i
  %i.bm = phi ptr [ %i.bj, %.sink.split.i.i.i.i.i.i ], [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread59 ] ; 2 uses
  %i.bn = phi ptr [ %i.bk, %.sink.split.i.i.i.i.i.i ], [ %i.j, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread59 ] ; 3 uses
  %i.bo = phi ptr [ %i.bl, %.sink.split.i.i.i.i.i.i ], [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEESt5arrayIS7_Lm65EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSN_PKNS0_14mutable_bufferEEE5valueEiE4typeENSP_IXntsr14is_convertibleISQ_PKS7_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_SR_EE5valueEiE4typeENSP_IXntsr14is_convertibleISM_S7_EE5valueEiE4typeE.exit.thread59 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.c, ptr %i.bp, align 8, !tbaa !646
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.ah, %bb.m
  %.pre47 = phi ptr [ %i.e, %bb.m ], [ %.pre47.pre, %bb.ah ] ; 2 uses
  %i.bx = phi ptr [ %i.c, %bb.m ], [ %.pre, %bb.ah ] ; 2 uses
  %.011 = phi i64 [ %1, %bb.m ], [ %i.du, %bb.ah ] ; 4 uses
  %i.by = icmp eq ptr %i.bx, %i.c
  br i1 %i.by, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre48 = load i8, ptr %i.bm, align 8, !tbaa !382, !noalias !2156
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %6 = icmp eq ptr %.pre47, %i.c
  %.pre49 = load i8, ptr %i.bm, align 8, !tbaa !382 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.pre49, 3
  %or.cond = select i1 %6, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.o
  %7 = phi i8 [ %.pre48, %._crit_edge ], [ %.pre49, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  store ptr %.pre47, ptr %5, align 8, !tbaa !640, !alias.scope !2156
  store i8 0, ptr %i.br, align 8, !tbaa !382, !alias.scope !2156
  switch i8 %7, label %bb.q [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEESt5arrayIS6_Lm65EEEEEE14const_iteratorC2ERKSK_.exit.i
    i8 1, label %bb.r
    i8 2, label %bb.z
    i8 3, label %bb.aa
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !364, !noalias !2156
  store ptr %i.bz, ptr %i.bq, align 8, !tbaa !364, !alias.scope !2156
  store i8 0, ptr %i.bu, align 8, !tbaa !367, !alias.scope !2156
  %i.ca = load i8, ptr %i.bv, align 8, !tbaa !367, !noalias !2156 ; 2 uses
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
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !241, !noalias !2156
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !241, !alias.scope !2156
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !241, !noalias !2156
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !241, !alias.scope !2156
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.bt, align 8, !tbaa !241, !noalias !2156
  store ptr %i.cd, ptr %i.bs, align 8, !tbaa !241, !alias.scope !2156
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !369, !noalias !2156
  store ptr %i.ce, ptr %i.bs, align 8, !tbaa !310, !alias.scope !2156
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.bt, align 8, !tbaa !241, !noalias !2156
  store ptr %i.cf, ptr %i.bs, align 8, !tbaa !241, !alias.scope !2156
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.r
  %i.cg = load i8, ptr %i.bt, align 8, !tbaa !81, !noalias !2156
  store i8 %i.cg, ptr %i.bs, align 8, !tbaa !81, !alias.scope !2156
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  store i8 %i.ca, ptr %i.bu, align 8, !tbaa !367, !alias.scope !2156
  br label %.sink.split.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !241, !noalias !2156
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !241, !alias.scope !2156
  br label %.sink.split.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.p
  %i.ci = load i8, ptr %i.bn, align 1, !tbaa !81, !noalias !2156
  store i8 %i.ci, ptr %i.bq, align 8, !tbaa !81, !alias.scope !2156
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.aa, %bb.z, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r
  store i8 %7, ptr %i.br, align 8, !tbaa !382, !alias.scope !2156
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEESt5arrayIS6_Lm65EEEEEE14const_iteratorC2ERKSK_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEESt5arrayIS6_Lm65EEEEEE14const_iteratorC2ERKSK_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.p
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !646, !alias.scope !2156
  %i.cj = zext nneg i8 %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !2156
  store ptr %i.bo, ptr %4, align 8, !tbaa !650, !noalias !2156
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESt5arrayISA_Lm65EEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !2156
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !646 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1048
  %i.cm = load ptr, ptr %5, align 8, !tbaa !640
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !640
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.ab, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread_crit_edge.i

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread_crit_edge.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEESt5arrayIS6_Lm65EEEEEE14const_iteratorC2ERKSK_.exit.i
  %.pre.i = load i8, ptr %i.br, align 8, !tbaa !382
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i

bb.ab:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEESt5arrayIS6_Lm65EEEEEE14const_iteratorC2ERKSK_.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 1056 ; 2 uses
  %i.cq = load i8, ptr %i.br, align 8, !tbaa !382 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 1080
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !382
  %.not.i.i.i = icmp eq i8 %i.cq, %i.cs
  br i1 %.not.i.i.i, label %bb.ac, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i

bb.ac:                                            ; preds = %bb.ab
  switch i8 %i.cq, label %bb.ad [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3.i
    i8 1, label %bb.ae
    i8 2, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.i
    i8 3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3.i
  ]

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.bq, align 8, !tbaa !364
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !364
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %bb.af, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 1064
  %i.cx = load i8, ptr %i.bu, align 8, !tbaa !367 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 1072
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cx, %i.cz
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.da = add i8 %i.cx, -1
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.da, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ag
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !115
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !115
  %i.dc = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, %i.db
  br i1 %i.dc, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.i: ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.bq, align 8, !tbaa !241
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !241
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ac, %bb.ac
  %i.dg = zext nneg i8 %i.cq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %5, ptr %3, align 8, !tbaa !650
  %i.dh = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESt5arrayISA_Lm65EEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.di = extractvalue { ptr, i64 } %i.dh, 1
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !646
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1088
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !639
  %i.dm = call i64 @llvm.usub.sat.i64(i64 %i.di, i64 %i.dl)
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEESt5arrayIS6_Lm65EEEEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.af, %bb.ae, %bb.ab, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread_crit_edge.i
  %i.dn = phi i8 [ %.pre.i, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread_crit_edge.i ], [ 1, %bb.af ], [ 1, %bb.ae ], [ %i.cq, %bb.ab ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ 2, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.i ]
  %i.do = zext i8 %i.dn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %5, ptr %2, align 8, !tbaa !650
  %i.dp = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESt5arrayISA_Lm65EEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.do, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.dq = extractvalue { ptr, i64 } %i.dp, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEESt5arrayIS6_Lm65EEEEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEESt5arrayIS6_Lm65EEEEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3.i
  %.pn.i = phi i64 [ %i.dm, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3.i ], [ %i.dq, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %.not = icmp ult i64 %.pn.i, %.011
  br i1 %.not, label %bb.ah, label %.thread36

.thread36:                                        ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEESt5arrayIS6_Lm65EEEEEE14const_iteratordeEv.exit
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !644
  %i.ds = add i64 %i.dr, %.011
  store i64 %i.ds, ptr %i.a, align 8, !tbaa !644
  %i.dt = sub i64 %.011, %.pn.i
  store i64 %i.dt, ptr %i.b, align 8, !tbaa !2157
  br label %.loopexit

bb.ah:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEESt5arrayIS6_Lm65EEEEEE14const_iteratordeEv.exit
  %i.du = sub nuw i64 %.011, %.pn.i
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !644
  %i.dw = add i64 %i.dv, %.pn.i
  store i64 %i.dw, ptr %i.a, align 8, !tbaa !644
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !646
  %.pre47.pre = load ptr, ptr %i.bo, align 8, !tbaa !640
  br label %bb.n

.loopexit:                                        ; preds = %bb.o, %.thread36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEESt5arrayIS6_Lm65EEEEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, std::array<boost::asio::const_buffer, 65>>::const_iterator::dereference", align 8 ; 4 uses
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, std::array<boost::asio::const_buffer, 65>>::const_iterator::dereference", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !646  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1048
  %i.d = load ptr, ptr %0, align 8, !tbaa !640
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !640
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !382
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1056 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !382   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  %i.l = load i8, ptr %i.k, align 8, !tbaa !382
  %.not.i.i = icmp eq i8 %i.j, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread

bb.c:                                             ; preds = %bb.b
  switch i8 %i.j, label %bb.d [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3
    i8 1, label %bb.e
    i8 2, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit
    i8 3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !364
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !364
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !367   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1072
  %i.u = load i8, ptr %i.t, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !115
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit: ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit
  %i.ab = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %0, ptr %2, align 8, !tbaa !650
  %i.ac = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESt5arrayISA_Lm65EEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !646
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1088
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !639
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ae) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %spec.select.i
  %i.aj = sub i64 %i.ae, %spec.select.i
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.ai, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.aj, 1
  br label %bb.h

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread: ; preds = %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread_crit_edge, %bb.f, %bb.e, %bb.b, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit
  %i.ak = phi i8 [ %.pre, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread_crit_edge ], [ 1, %bb.f ], [ 1, %bb.e ], [ %i.j, %bb.b ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i ], [ 2, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit ]
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store ptr %0, ptr %1, align 8, !tbaa !650
  %i.am = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESt5arrayISA_Lm65EEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread3 ], [ %i.am, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iteratoreqERKSI_.exit.thread ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEESt5arrayISA_Lm65EEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSP_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr @.str.30, ptr %5, align 8, !tbaa !244
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.31, ptr %i.a, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 205, ptr %i.b, align 8, !tbaa !246
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 62, ptr %i.c, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #35
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.s, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.g:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !652, !nonnull !111, !align !114 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !241
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !640
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1048 ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %i.l = phi ptr [ %i.m, %bb.h ], [ %i.h, %bb.g ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !78
  %.not.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !241
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !49

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !384
  store i8 3, ptr %i.o, align 8, !tbaa !382
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEESt5arrayIS5_Lm65EEEE14const_iterator9incrementclESt17integral_constantImLm2EE.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.34)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr @.str.30, ptr %3, align 8, !tbaa !244
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.31, ptr %i.p, align 8, !tbaa !245
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 266, ptr %i.q, align 8, !tbaa !246
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
end_hunk_4
begin_hunk_5_@_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iterator9increment4nextILm3EEEvSt17integral_constantImXT_EE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iterator9increment4nextILm5EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !677, !nonnull !111, !align !114 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !673
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1088 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !241 ; 2 uses
  %i.e = icmp eq ptr %.promoted, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.g, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !78
  %.not = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %.not, label %bb.b, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !241
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !llvm.loop !2256

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit, !prof !326

bb.c:                                             ; preds = %._crit_edge
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #33
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.28, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, align 8, !tbaa !327
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 8), align 8, !tbaa !328
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #33
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit: ; preds = %._crit_edge, %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, ptr %i.b, align 8, !tbaa !241
  store i8 6, ptr %i.m, align 8, !tbaa !446
  %i.n = load ptr, ptr %0, align 8, !tbaa !677, !nonnull !111, !align !114
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !241
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit
  %i.p = phi ptr [ %i.w, %bb.i ], [ %.pr.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast4http10chunk_crlfEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit ]
  %i.q = load atomic i8, ptr @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i, !prof !326

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #33
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.28, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, align 8, !tbaa !327
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 8), align 8, !tbaa !328
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost5beast4http10chunk_crlf5beginEvE2cb) #33
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i

_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.u = icmp eq ptr %i.p, getelementptr inbounds nuw (i8, ptr @_ZZNK5boost5beast4http10chunk_crlf5beginEvE2cb, i64 16)
  br i1 %i.u, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !241  ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !78
  %.not.i = icmp eq i64 %.sroa.3.0.copyload.i, 0
  br i1 %.not.i, label %bb.i, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.o, align 8, !tbaa !241
  br label %bb.e, !llvm.loop !56

bb.j:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast4http10chunk_crlfEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISA_PKNS0_12const_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SB_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS6_SG_EE5valueEiE4typeE.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !677, !nonnull !111, !align !114 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i8 0, ptr %i.y, align 8, !tbaa !384
  store i8 7, ptr %i.z, align 8, !tbaa !446
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iterator9increment4nextESt17integral_constantImLm6EE.exit: ; preds = %.lr.ph, %bb.h, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http17message_generator14generator_implILb0ENS1_6detail20fragmented_test_bodyENS1_12basic_fieldsISaIcEEEE5visitclINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNSD_INSG_IJNS_4asio12const_bufferESI_SI_NS8_6writer11field_rangeENS1_10chunk_crlfEEEEEENS4_10chunk_sizeESI_SL_St5arrayISI_Lm65EESL_EEEEEEEEEEEvRNS_6system10error_codeERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %4 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 9 uses
  %5 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 11 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !627, !nonnull !111, !align !114 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1544 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1736
  %i.d = load ptr, ptr %2, align 8, !tbaa !2271, !noalias !2272 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !681, !noalias !2273 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !682, !noalias !2273, !nonnull !111, !align !114 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1096
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !673, !noalias !2274 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1104 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !446, !noalias !2274 ; 7 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit
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
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !364, !noalias !2274 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1112 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 1120
  %i.p = load i8, ptr %i.o, align 8, !tbaa !367, !noalias !2274 ; 2 uses
  switch i8 %i.p, label %bb.d [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit
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
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !2274
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !2274
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

bb.g:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !2274
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

bb.h:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !369, !noalias !2274
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

bb.i:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !241, !noalias !2274
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

bb.j:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.n, align 8, !tbaa !81, !noalias !2274
  %.sroa.50.32.insert.ext = zext i8 %i.v to i64
  %i.w = inttoptr i64 %.sroa.50.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

bb.k:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !2274
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

bb.l:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !2274
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

bb.m:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !2274
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

bb.n:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !2274
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

bb.o:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !241, !noalias !2274
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

bb.p:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %i.j, align 8, !tbaa !81, !noalias !2274
  %.sroa.23.24.insert.ext = zext i8 %i.ac to i64
  %i.ad = inttoptr i64 %.sroa.23.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit: ; preds = %bb.c, %bb.a, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.68.1124 = phi i8 [ undef, %bb.p ], [ undef, %bb.a ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ], [ %i.p, %bb.c ] ; 4 uses
  %.sroa.50.2123 = phi ptr [ undef, %bb.p ], [ undef, %bb.a ], [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.s, %bb.g ], [ %i.t, %bb.h ], [ %i.u, %bb.i ], [ %i.w, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ], [ undef, %bb.c ] ; 8 uses
  %.sroa.23.2122 = phi ptr [ %i.ad, %bb.p ], [ undef, %bb.a ], [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %i.m, %bb.j ], [ %i.x, %bb.k ], [ %i.y, %bb.l ], [ %i.z, %bb.m ], [ %i.aa, %bb.n ], [ %i.ab, %bb.o ], [ %i.m, %bb.c ] ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !673
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !446 ; 4 uses
  switch i8 %i.ai, label %bb.q [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
    i8 1, label %bb.r
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.ab
    i8 5, label %bb.ac
    i8 6, label %bb.ad
    i8 7, label %bb.ae
  ]

bb.q:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit
  unreachable

bb.r:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !364 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.am = load i8, ptr %i.al, align 8, !tbaa !367 ; 2 uses
  switch i8 %i.am, label %bb.s [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
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
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

bb.u:                                             ; preds = %bb.r
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

bb.v:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

bb.w:                                             ; preds = %bb.r
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !369
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

bb.x:                                             ; preds = %bb.r
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

bb.y:                                             ; preds = %bb.r
  %i.as = load i8, ptr %i.ak, align 8, !tbaa !81
  %.sroa.19.32.insert.ext = zext i8 %i.as to i64
  %i.at = inttoptr i64 %.sroa.19.32.insert.ext to ptr
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

bb.z:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

bb.aa:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

bb.ab:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

bb.ac:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

bb.ad:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !241
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

bb.ae:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit
  %i.az = load i8, ptr %i.ag, align 8, !tbaa !81
  %.sroa.5.24.insert.ext = zext i8 %i.az to i64
  %i.ba = inttoptr i64 %.sroa.5.24.insert.ext to ptr
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit

_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.r
  %.sroa.31.1 = phi i8 [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit ], [ 1, %bb.t ], [ 2, %bb.u ], [ 3, %bb.v ], [ 4, %bb.w ], [ 5, %bb.x ], [ 6, %bb.y ], [ undef, %bb.ae ], [ undef, %bb.ad ], [ undef, %bb.ac ], [ undef, %bb.ab ], [ undef, %bb.aa ], [ undef, %bb.z ], [ %i.am, %bb.r ] ; 2 uses
  %.sroa.19.2 = phi ptr [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit ], [ %i.an, %bb.t ], [ %i.ao, %bb.u ], [ %i.ap, %bb.v ], [ %i.aq, %bb.w ], [ %i.ar, %bb.x ], [ %i.at, %bb.y ], [ undef, %bb.ae ], [ undef, %bb.ad ], [ undef, %bb.ac ], [ undef, %bb.ab ], [ undef, %bb.aa ], [ undef, %bb.z ], [ undef, %bb.r ] ; 2 uses
  %.sroa.5.1 = phi ptr [ undef, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit ], [ %i.aj, %bb.t ], [ %i.aj, %bb.u ], [ %i.aj, %bb.v ], [ %i.aj, %bb.w ], [ %i.aj, %bb.x ], [ %i.aj, %bb.y ], [ %i.ba, %bb.ae ], [ %i.ay, %bb.ad ], [ %i.ax, %bb.ac ], [ %i.aw, %bb.ab ], [ %i.av, %bb.aa ], [ %i.au, %bb.z ], [ %i.aj, %bb.r ] ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !683
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.d, ptr %6, align 8
  %.sroa.054.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.f, ptr %.sroa.054.sroa.2.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.bd, align 8, !tbaa !673
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 20 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  store i8 0, ptr %i.bf, align 8, !tbaa !446
  switch i8 %i.l, label %bb.af [
    i8 0, label %.noexc
    i8 1, label %bb.ag
    i8 2, label %bb.ao
    i8 3, label %bb.ap
    i8 4, label %bb.aq
    i8 5, label %bb.ar
    i8 6, label %bb.as
    i8 7, label %bb.at
  ]

bb.af:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  unreachable

bb.ag:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !364
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i8 0, ptr %i.bh, align 8, !tbaa !367
  switch i8 %.sroa.68.1124, label %bb.ah [
    i8 0, label %.sink.split.i.i.i.i.i.i10
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
  store ptr %.sroa.50.2123, ptr %i.bg, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

bb.aj:                                            ; preds = %bb.ag
  store ptr %.sroa.50.2123, ptr %i.bg, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

bb.ak:                                            ; preds = %bb.ag
  store ptr %.sroa.50.2123, ptr %i.bg, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

bb.al:                                            ; preds = %bb.ag
  store ptr %.sroa.50.2123, ptr %i.bg, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

bb.am:                                            ; preds = %bb.ag
  store ptr %.sroa.50.2123, ptr %i.bg, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

bb.an:                                            ; preds = %bb.ag
  %i.bi = ptrtoint ptr %.sroa.50.2123 to i64
  %.sroa.1862.32.extract.trunc = trunc i64 %i.bi to i8
  store i8 %.sroa.1862.32.extract.trunc, ptr %i.bg, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11:            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  store i8 %.sroa.68.1124, ptr %i.bh, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i10

bb.ao:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i10

bb.ap:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i10

bb.aq:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i10

bb.ar:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i10

bb.as:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  store ptr %.sroa.23.2122, ptr %i.be, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i10

bb.at:                                            ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  %i.bj = ptrtoint ptr %.sroa.23.2122 to i64
  %.sroa.456.24.extract.trunc = trunc i64 %i.bj to i8
  store i8 %.sroa.456.24.extract.trunc, ptr %i.be, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i10

.sink.split.i.i.i.i.i.i10:                        ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i11, %bb.ag
  store i8 %i.l, ptr %i.bf, align 8, !tbaa !446
  br label %.noexc

.noexc:                                           ; preds = %.sink.split.i.i.i.i.i.i10, %_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSU_PKNS0_14mutable_bufferEEE5valueEiE4typeENSW_IXntsr14is_convertibleISX_PKS8_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_SY_EE5valueEiE4typeENSW_IXntsr14is_convertibleIST_S8_EE5valueEiE4typeE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.bk, align 8, !tbaa !683
  switch i8 %i.ai, label %bb.au [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15
    i8 1, label %bb.av
    i8 2, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15
    i8 3, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15
    i8 4, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15
    i8 5, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15
    i8 6, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15
    i8 7, label %bb.ax
  ]

bb.au:                                            ; preds = %.noexc
  unreachable

bb.av:                                            ; preds = %.noexc
  %i.bl = icmp eq i8 %.sroa.31.1, 6
  br i1 %i.bl, label %bb.aw, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15

bb.aw:                                            ; preds = %bb.av
  %i.bm = ptrtoint ptr %.sroa.19.2 to i64
  %.sroa.20.32.insert.ext = and i64 %i.bm, 255
  %i.bn = inttoptr i64 %.sroa.20.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15

bb.ax:                                            ; preds = %.noexc
  %i.bo = ptrtoint ptr %.sroa.5.1 to i64
  %.sroa.7108.24.insert.ext = and i64 %i.bo, 255
  %i.bp = inttoptr i64 %.sroa.7108.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15: ; preds = %bb.av, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %bb.aw, %bb.ax
  %.sroa.7108.1 = phi ptr [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %bb.av ], [ %i.bp, %bb.ax ], [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %bb.aw ], [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %.noexc ], [ %.sroa.5.1, %.noexc ] ; 6 uses
  %.sroa.20.2 = phi ptr [ undef, %.noexc ], [ %.sroa.19.2, %bb.av ], [ undef, %bb.ax ], [ undef, %.noexc ], [ %i.bn, %bb.aw ], [ undef, %.noexc ], [ undef, %.noexc ], [ undef, %.noexc ], [ undef, %.noexc ]
  %.sroa.27.1 = phi i8 [ undef, %.noexc ], [ %.sroa.31.1, %bb.av ], [ undef, %bb.ax ], [ undef, %.noexc ], [ 6, %bb.aw ], [ undef, %.noexc ], [ undef, %.noexc ], [ undef, %.noexc ], [ undef, %.noexc ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bx = add nsw i8 %.sroa.27.1, -6
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bx, -5
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorppEi.exit.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15
  %.pre211 = phi i8 [ %i.l, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15 ], [ %.pre211.pre, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorppEi.exit.i ] ; 4 uses
  %i.by = phi ptr [ %i.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15 ], [ %.pre210, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorppEi.exit.i ] ; 2 uses
  %i.bz = phi ptr [ %i.g, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15 ], [ %.pre209, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorppEi.exit.i ] ; 2 uses
  %i.ca = phi ptr [ %i.d, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15 ], [ %.pre, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorppEi.exit.i ]
  %.0.i = phi i64 [ 0, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit15 ], [ %i.dl, %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorppEi.exit.i ] ; 3 uses
  %i.cb = icmp eq ptr %i.ca, %i.d
  %i.cc = icmp eq ptr %i.bz, %i.bc
  %or.cond = select i1 %i.cb, i1 %i.cc, i1 false
  %i.cd = icmp eq ptr %i.by, %i.af
  %or.cond201 = select i1 %or.cond, i1 %i.cd, i1 false
  %.not.i.i.i.i.i.i = icmp eq i8 %.pre211, %i.ai
  %or.cond217.a = select i1 %or.cond201, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond217.a, label %bb.az, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i

bb.az:                                            ; preds = %bb.ay
  switch i8 %i.ai, label %bb.ba [
    i8 0, label %bb.bs
    i8 1, label %bb.bb
    i8 2, label %.split10.i
    i8 3, label %.split9.i
    i8 4, label %.split8.i
    i8 5, label %.split.i
    i8 6, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.i
    i8 7, label %bb.bs
  ]

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ce = load ptr, ptr %i.be, align 8, !tbaa !364
  %i.cf = icmp eq ptr %i.ce, %.sroa.7108.1
  %i.cg = load i8, ptr %i.br, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cg, %.sroa.27.1
  %or.cond218 = select i1 %i.cf, i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond218, label %bb.bc, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i

bb.bc:                                            ; preds = %bb.bb
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8
  %i.ch = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.20.2
  %or.cond202 = select i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.ch
  br i1 %or.cond202, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i

.split10.i:                                       ; preds = %bb.az
  %i.ci = load ptr, ptr %i.be, align 8, !tbaa !241
  %i.cj = icmp eq ptr %i.ci, %.sroa.7108.1
  br i1 %i.cj, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i

.split9.i:                                        ; preds = %bb.az
  %i.ck = load ptr, ptr %i.be, align 8, !tbaa !241
  %i.cl = icmp eq ptr %i.ck, %.sroa.7108.1
  br i1 %i.cl, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i

.split8.i:                                        ; preds = %bb.az
  %i.cm = load ptr, ptr %i.be, align 8, !tbaa !241
  %i.cn = icmp eq ptr %i.cm, %.sroa.7108.1
  br i1 %i.cn, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i

.split.i:                                         ; preds = %bb.az
  %i.co = load ptr, ptr %i.be, align 8, !tbaa !241
  %i.cp = icmp eq ptr %i.co, %.sroa.7108.1
  br i1 %i.cp, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.i: ; preds = %bb.az
  %i.cq = load ptr, ptr %i.be, align 8, !tbaa !241
  %i.cr = icmp eq ptr %i.cq, %.sroa.7108.1
  br i1 %i.cr, label %bb.bs, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i: ; preds = %bb.bc, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.i, %.split.i, %.split8.i, %.split9.i, %.split10.i, %bb.bb, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  store ptr %i.by, ptr %4, align 8, !tbaa !673, !alias.scope !2275
  store i8 0, ptr %i.bt, align 8, !tbaa !446, !alias.scope !2275
  switch i8 %.pre211, label %bb.bd [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorppEi.exit.i
    i8 1, label %bb.be
    i8 2, label %bb.bm
    i8 3, label %bb.bn
    i8 4, label %bb.bo
    i8 5, label %bb.bp
    i8 6, label %bb.bq
    i8 7, label %bb.br
  ]

bb.bd:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i
  unreachable

bb.be:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i
  %i.cs = load ptr, ptr %i.be, align 8, !tbaa !364, !noalias !2275
  store ptr %i.cs, ptr %i.bs, align 8, !tbaa !364, !alias.scope !2275
  store i8 0, ptr %i.bv, align 8, !tbaa !367, !alias.scope !2275
  %i.ct = load i8, ptr %i.br, align 8, !tbaa !367, !noalias !2275 ; 2 uses
  switch i8 %i.ct, label %bb.bf [
    i8 0, label %.sink.split.i.i.i.i.i.i.i27
    i8 1, label %bb.bg
    i8 2, label %bb.bh
    i8 3, label %bb.bi
    i8 4, label %bb.bj
    i8 5, label %bb.bk
    i8 6, label %bb.bl
  ]

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.cu = load ptr, ptr %i.bq, align 8, !tbaa !241, !noalias !2275
  store ptr %i.cu, ptr %i.bu, align 8, !tbaa !241, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

bb.bh:                                            ; preds = %bb.be
  %i.cv = load ptr, ptr %i.bq, align 8, !tbaa !241, !noalias !2275
  store ptr %i.cv, ptr %i.bu, align 8, !tbaa !241, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

bb.bi:                                            ; preds = %bb.be
  %i.cw = load ptr, ptr %i.bq, align 8, !tbaa !241, !noalias !2275
  store ptr %i.cw, ptr %i.bu, align 8, !tbaa !241, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

bb.bj:                                            ; preds = %bb.be
  %i.cx = load ptr, ptr %i.bq, align 8, !tbaa !369, !noalias !2275
  store ptr %i.cx, ptr %i.bu, align 8, !tbaa !310, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

bb.bk:                                            ; preds = %bb.be
  %i.cy = load ptr, ptr %i.bq, align 8, !tbaa !241, !noalias !2275
  store ptr %i.cy, ptr %i.bu, align 8, !tbaa !241, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

bb.bl:                                            ; preds = %bb.be
  %i.cz = load i8, ptr %i.bq, align 8, !tbaa !81, !noalias !2275
  store i8 %i.cz, ptr %i.bu, align 8, !tbaa !81, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28:          ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  store i8 %i.ct, ptr %i.bv, align 8, !tbaa !367, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i27

bb.bm:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i
  %i.da = load ptr, ptr %i.be, align 8, !tbaa !241, !noalias !2275
  store ptr %i.da, ptr %i.bs, align 8, !tbaa !241, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i27

bb.bn:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i
  %i.db = load ptr, ptr %i.be, align 8, !tbaa !241, !noalias !2275
  store ptr %i.db, ptr %i.bs, align 8, !tbaa !241, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i27

bb.bo:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i
  %i.dc = load ptr, ptr %i.be, align 8, !tbaa !241, !noalias !2275
  store ptr %i.dc, ptr %i.bs, align 8, !tbaa !241, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i27

bb.bp:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i
  %i.dd = load ptr, ptr %i.be, align 8, !tbaa !241, !noalias !2275
  store ptr %i.dd, ptr %i.bs, align 8, !tbaa !241, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i27

bb.bq:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i
  %i.de = load ptr, ptr %i.be, align 8, !tbaa !241, !noalias !2275
  store ptr %i.de, ptr %i.bs, align 8, !tbaa !241, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i27

bb.br:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i
  %i.df = load i8, ptr %i.be, align 8, !tbaa !81, !noalias !2275
  store i8 %i.df, ptr %i.bs, align 8, !tbaa !81, !alias.scope !2275
  br label %.sink.split.i.i.i.i.i.i.i27

.sink.split.i.i.i.i.i.i.i27:                      ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i28, %bb.be
  store i8 %.pre211, ptr %i.bt, align 8, !tbaa !446, !alias.scope !2275
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorppEi.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorppEi.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i27, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.thread.i
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !683, !alias.scope !2275
  %i.dg = zext nneg i8 %.pre211 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !2275
  store ptr %i.bd, ptr %3, align 8, !tbaa !675, !noalias !2275
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_St5arrayISA_Lm65EESH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !2275
  %i.dh = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.di = extractvalue { ptr, i64 } %i.dh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.dj = load i64, ptr %.sroa.054.sroa.2.0..sroa_idx, align 8, !tbaa !685
  %i.dk = sub i64 %i.dj, %i.di
  store i64 %i.dk, ptr %.sroa.054.sroa.2.0..sroa_idx, align 8, !tbaa !685
  %i.dl = add nuw nsw i64 %.0.i, 1
  %.pre = load ptr, ptr %6, align 8, !tbaa !2276
  %.pre209 = load ptr, ptr %i.bk, align 8
  %.pre210 = load ptr, ptr %i.bd, align 8
  %.pre211.pre = load i8, ptr %i.bf, align 8, !tbaa !446
  br label %bb.ay, !llvm.loop !2269

bb.bs:                                            ; preds = %bb.az, %bb.az, %bb.bc, %.split10.i, %.split9.i, %.split8.i, %.split.i, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorneERKSQ_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.0.i, i64 12) ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !241
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1744
  store i64 %.sroa.speculated, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !78
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19
    i8 1, label %bb.bt
    i8 2, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19
    i8 3, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19
    i8 4, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19
    i8 5, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19
    i8 6, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19
    i8 7, label %bb.bv
  ]

default.unreachable:                              ; preds = %bb.bw, %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bs
  %i.dm = icmp eq i8 %.sroa.68.1124, 6
  br i1 %i.dm, label %bb.bu, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19

bb.bu:                                            ; preds = %bb.bt
  %i.dn = ptrtoint ptr %.sroa.50.2123 to i64
  %.sroa.18.32.insert.ext = and i64 %i.dn, 255
  %i.do = inttoptr i64 %.sroa.18.32.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19

bb.bv:                                            ; preds = %bb.bs
  %i.dp = ptrtoint ptr %.sroa.23.2122 to i64
  %.sroa.4.24.insert.ext = and i64 %i.dp, 255
  %i.dq = inttoptr i64 %.sroa.4.24.insert.ext to ptr
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19: ; preds = %bb.bt, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bu, %bb.bv
  %.sroa.30.1 = phi i8 [ undef, %bb.bs ], [ 6, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bs ], [ %.sroa.68.1124, %bb.bt ], [ undef, %bb.bs ], [ undef, %bb.bs ], [ undef, %bb.bs ], [ undef, %bb.bs ] ; 2 uses
  %.sroa.18.2 = phi ptr [ undef, %bb.bs ], [ %i.do, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bs ], [ %.sroa.50.2123, %bb.bt ], [ undef, %bb.bs ], [ undef, %bb.bs ], [ undef, %bb.bs ], [ undef, %bb.bs ] ; 6 uses
  %.sroa.4.1 = phi ptr [ %.sroa.23.2122, %bb.bs ], [ %.sroa.23.2122, %bb.bu ], [ %i.dq, %bb.bv ], [ %.sroa.23.2122, %bb.bs ], [ %.sroa.23.2122, %bb.bt ], [ %.sroa.23.2122, %bb.bs ], [ %.sroa.23.2122, %bb.bs ], [ %.sroa.23.2122, %bb.bs ], [ %.sroa.23.2122, %bb.bs ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.dr = icmp eq i64 %.0.i, 0
  br i1 %i.dr, label %bb.cl, label %bb.bw

bb.bw:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19
  store ptr %i.d, ptr %5, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.f, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.i, ptr %i.ds, align 8, !tbaa !673
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i8 0, ptr %i.du, align 8, !tbaa !446
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit.i
    i8 1, label %bb.bx
    i8 2, label %bb.cf
    i8 3, label %bb.cg
    i8 4, label %bb.ch
    i8 5, label %bb.ci
    i8 6, label %bb.cj
    i8 7, label %bb.ck
  ]

bb.bx:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !364
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i8 0, ptr %i.dw, align 8, !tbaa !367
  switch i8 %.sroa.30.1, label %bb.by [
    i8 0, label %.sink.split.i.i.i.i.i.i.i
    i8 1, label %bb.bz
    i8 2, label %bb.ca
    i8 3, label %bb.cb
    i8 4, label %bb.cc
    i8 5, label %bb.cd
    i8 6, label %bb.ce
  ]

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %bb.bx
  store ptr %.sroa.18.2, ptr %i.dv, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

bb.ca:                                            ; preds = %bb.bx
  store ptr %.sroa.18.2, ptr %i.dv, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

bb.cb:                                            ; preds = %bb.bx
  store ptr %.sroa.18.2, ptr %i.dv, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

bb.cc:                                            ; preds = %bb.bx
  store ptr %.sroa.18.2, ptr %i.dv, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

bb.cd:                                            ; preds = %bb.bx
  store ptr %.sroa.18.2, ptr %i.dv, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

bb.ce:                                            ; preds = %bb.bx
  %i.dx = ptrtoint ptr %.sroa.18.2 to i64
  %.sroa.18.32.extract.trunc = trunc i64 %i.dx to i8
  store i8 %.sroa.18.32.extract.trunc, ptr %i.dv, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21:          ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz
  store i8 %.sroa.30.1, ptr %i.dw, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.bw
  store ptr %.sroa.4.1, ptr %i.dt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.bw
  %i.dy = ptrtoint ptr %.sroa.4.1 to i64
  %.sroa.4.24.extract.trunc = trunc i64 %i.dy to i8
  store i8 %.sroa.4.24.extract.trunc, ptr %i.dt, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i21, %bb.bx
  store i8 %i.l, ptr %i.du, align 8, !tbaa !446
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit.i

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.bw
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.g, ptr %i.dz, align 8, !tbaa !683
  %i.ea = call noundef ptr @_ZSt8__copy_nIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS1_16buffers_cat_viewIJNS1_6detail11buffers_refINS4_IJNS0_4asio12const_bufferES8_S8_NS1_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_St5arrayIS8_Lm65EESF_EEEEEE14const_iteratorEmPS8_ET1_T_T0_ST_St18input_iterator_tag(ptr noundef nonnull align 8 %5, i64 noundef %.sroa.speculated, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE14const_iteratorC2ERKSQ_.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>>::const_iterator", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !682, !nonnull !111, !align !114 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1096
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !673, !noalias !2281 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1104 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1128
  %i.h = load i8, ptr %i.g, align 8, !tbaa !446, !noalias !2281 ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread64
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread64: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !673
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !446
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !364, !noalias !2281 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1112 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1120
  %i.o = load i8, ptr %i.n, align 8, !tbaa !367, !noalias !2281 ; 2 uses
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
  store ptr %i.e, ptr %i.p, align 8, !tbaa !673
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !446
  store ptr %i.l, ptr %i.q, align 8, !tbaa !364
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.s, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !2281
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.u, align 8, !tbaa !673
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !446
  store ptr %i.l, ptr %i.v, align 8, !tbaa !364
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %i.x, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !2281
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.z, align 8, !tbaa !673
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !446
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !364
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !2281
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !673
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !446
  store ptr %i.l, ptr %i.af, align 8, !tbaa !364
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !369, !noalias !2281
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !673
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.al, align 8, !tbaa !446
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !364
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !310
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !241, !noalias !2281
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !673
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !446
  store ptr %i.l, ptr %i.ap, align 8, !tbaa !364
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.m, align 8, !tbaa !81, !noalias !2281
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.at, align 8, !tbaa !673
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !446
  store ptr %i.l, ptr %i.au, align 8, !tbaa !364
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.as, ptr %i.aw, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.av, %bb.j ], [ %i.aq, %bb.i ], [ %i.al, %bb.h ], [ %i.ag, %bb.g ], [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ay = phi ptr [ %i.au, %bb.j ], [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.af, %bb.g ], [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.az = phi ptr [ %i.at, %bb.j ], [ %i.ao, %bb.i ], [ %i.aj, %bb.h ], [ %i.ae, %bb.g ], [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.o, ptr %i.ba, align 8, !tbaa !367
  br label %.sink.split.i.i.i.i.i

bb.k:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !2281
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bc, align 8, !tbaa !673
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !446
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i

bb.l:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !2281
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !673
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !446
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.a
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !2281
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bk, align 8, !tbaa !673
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !446
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i

bb.n:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !2281
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bo, align 8, !tbaa !673
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bq, align 8, !tbaa !446
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i

bb.o:                                             ; preds = %bb.a
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !2281
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bs, align 8, !tbaa !673
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.bu, align 8, !tbaa !446
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !241
  br label %.sink.split.i.i.i.i.i

bb.p:                                             ; preds = %bb.a
  %i.bv = load i8, ptr %i.f, align 8, !tbaa !81, !noalias !2281
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.bw, align 8, !tbaa !673
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.by, align 8, !tbaa !446
  store i8 %i.bv, ptr %i.bx, align 8, !tbaa !81
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %.thread, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = phi ptr [ %i.by, %bb.p ], [ %i.bu, %bb.o ], [ %i.bq, %bb.n ], [ %i.bm, %bb.m ], [ %i.bi, %bb.l ], [ %i.be, %bb.k ], [ %i.ax, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %.thread ] ; 2 uses
  %i.ca = phi ptr [ %i.bx, %bb.p ], [ %i.bt, %bb.o ], [ %i.bp, %bb.n ], [ %i.bl, %bb.m ], [ %i.bh, %bb.l ], [ %i.bd, %bb.k ], [ %i.ay, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.thread ]
  %i.cb = phi ptr [ %i.bw, %bb.p ], [ %i.bs, %bb.o ], [ %i.bo, %bb.n ], [ %i.bk, %bb.m ], [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.p, %.thread ]
  store i8 %i.h, ptr %i.bz, align 8, !tbaa !446
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread64, %.sink.split.i.i.i.i.i
  %i.cc = phi ptr [ %i.bz, %.sink.split.i.i.i.i.i ], [ %i.k, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread64 ] ; 2 uses
  %i.cd = phi ptr [ %i.ca, %.sink.split.i.i.i.i.i ], [ %i.j, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread64 ] ; 7 uses
  %i.ce = phi ptr [ %i.cb, %.sink.split.i.i.i.i.i ], [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS4_IJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_St5arrayIS7_Lm65EESE_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS7_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S7_EE5valueEiE4typeE.exit.thread64 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.c, ptr %i.cf, align 8, !tbaa !683
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.r

bb.r:                                             ; preds = %bb.aj, %bb.q
  %.pre53 = phi ptr [ %i.e, %bb.q ], [ %.pre53.pre, %bb.aj ] ; 2 uses
  %i.cn = phi ptr [ %i.c, %bb.q ], [ %.pre, %bb.aj ] ; 2 uses
  %.011 = phi i64 [ %1, %bb.q ], [ %i.dj, %bb.aj ] ; 4 uses
  %i.co = icmp eq ptr %i.cn, %i.c
  br i1 %i.co, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre54 = load i8, ptr %i.cc, align 8, !tbaa !446, !noalias !2282
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %4 = icmp eq ptr %.pre53, %i.c
  %.pre55 = load i8, ptr %i.cc, align 8, !tbaa !446 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.pre55, 7
  %or.cond = select i1 %4, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %5 = phi i8 [ %.pre54, %._crit_edge ], [ %.pre55, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  store ptr %.pre53, ptr %3, align 8, !tbaa !673, !alias.scope !2282
  store i8 0, ptr %i.ch, align 8, !tbaa !446, !alias.scope !2282
  switch i8 %5, label %bb.u [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorC2ERKSM_.exit.i
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
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !364, !noalias !2282
  store ptr %i.cp, ptr %i.cg, align 8, !tbaa !364, !alias.scope !2282
  store i8 0, ptr %i.ck, align 8, !tbaa !367, !alias.scope !2282
  %i.cq = load i8, ptr %i.cl, align 8, !tbaa !367, !noalias !2282 ; 2 uses
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
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !241, !noalias !2282
  store ptr %i.cr, ptr %i.ci, align 8, !tbaa !241, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.v
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !241, !noalias !2282
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !241, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !241, !noalias !2282
  store ptr %i.ct, ptr %i.ci, align 8, !tbaa !241, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.v
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !369, !noalias !2282
  store ptr %i.cu, ptr %i.ci, align 8, !tbaa !310, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.v
  %i.cv = load ptr, ptr %i.cj, align 8, !tbaa !241, !noalias !2282
  store ptr %i.cv, ptr %i.ci, align 8, !tbaa !241, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.v
  %i.cw = load i8, ptr %i.cj, align 8, !tbaa !81, !noalias !2282
  store i8 %i.cw, ptr %i.ci, align 8, !tbaa !81, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  store i8 %i.cq, ptr %i.ck, align 8, !tbaa !367, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.t
  %i.cx = load ptr, ptr %i.cd, align 8, !tbaa !241, !noalias !2282
  store ptr %i.cx, ptr %i.cg, align 8, !tbaa !241, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.t
  %i.cy = load ptr, ptr %i.cd, align 8, !tbaa !241, !noalias !2282
  store ptr %i.cy, ptr %i.cg, align 8, !tbaa !241, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cd, align 8, !tbaa !241, !noalias !2282
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !241, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.t
  %i.da = load ptr, ptr %i.cd, align 8, !tbaa !241, !noalias !2282
  store ptr %i.da, ptr %i.cg, align 8, !tbaa !241, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.t
  %i.db = load ptr, ptr %i.cd, align 8, !tbaa !241, !noalias !2282
  store ptr %i.db, ptr %i.cg, align 8, !tbaa !241, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.t
  %i.dc = load i8, ptr %i.cd, align 1, !tbaa !81, !noalias !2282
  store i8 %i.dc, ptr %i.cg, align 8, !tbaa !81, !alias.scope !2282
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  store i8 %5, ptr %i.ch, align 8, !tbaa !446, !alias.scope !2282
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorC2ERKSM_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorC2ERKSM_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i, %bb.t
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !683, !alias.scope !2282
  %i.dd = zext nneg i8 %5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !2282
  store ptr %i.ce, ptr %2, align 8, !tbaa !675, !noalias !2282
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_St5arrayISA_Lm65EESH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !2282
  %i.de = call { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.df = extractvalue { ptr, i64 } %i.de, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.not = icmp ult i64 %i.df, %.011
  br i1 %.not, label %bb.aj, label %.thread44

.thread44:                                        ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorC2ERKSM_.exit.i
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !681
  %i.dh = add i64 %i.dg, %.011
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !681
  %i.di = sub i64 %.011, %i.df
  store i64 %i.di, ptr %i.b, align 8, !tbaa !2283
  br label %.loopexit

bb.aj:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratorC2ERKSM_.exit.i
  %i.dj = sub nuw i64 %.011, %i.df
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !681
  %i.dl = add i64 %i.dk, %i.df
  store i64 %i.dl, ptr %i.a, align 8, !tbaa !681
  %.pre = load ptr, ptr %i.cf, align 8, !tbaa !683
  %.pre53.pre = load ptr, ptr %i.ce, align 8, !tbaa !673
  br label %bb.r

.loopexit:                                        ; preds = %bb.s, %.thread44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_St5arrayIS6_Lm65EESD_EEEE14const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, std::array<boost::asio::const_buffer, 65>, boost::beast::http::chunk_crlf>::const_iterator::dereference", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !683  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.d = load ptr, ptr %0, align 8, !tbaa !673
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !673
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread_crit_edge

._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !446
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1104 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !446   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !446
  %.not.i.i = icmp eq i8 %i.j, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread

bb.c:                                             ; preds = %bb.b
  switch i8 %i.j, label %bb.d [
    i8 0, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3
    i8 1, label %bb.e
    i8 2, label %.split4
    i8 3, label %.split
    i8 4, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit
    i8 5, label %.split6
    i8 6, label %.split5
    i8 7, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !364
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !364
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !367   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  %i.u = load i8, ptr %i.t, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = add i8 %i.s, -1
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.v, 5
  br i1 %switch.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.g
  %.sink.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !115
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.x = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i, %i.w
  br i1 %i.x, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread

.split4:                                          ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread

.split:                                           ; preds = %bb.c
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread

.split6:                                          ; preds = %bb.c
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread

.split5:                                          ; preds = %bb.c
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit: ; preds = %bb.c
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !241
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3, label %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3: ; preds = %bb.g, %bb.c, %bb.c, %.split6, %.split5, %.split4, %.split, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit
  %i.an = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %0, ptr %2, align 8, !tbaa !675
  %i.ao = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_St5arrayISA_Lm65EESH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1      ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !683
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1136
  %i.at = load i64, ptr %i.as, align 8, !tbaa !672
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.aq) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %spec.select.i
  %i.av = sub i64 %i.aq, %spec.select.i
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.au, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.av, 1
  br label %bb.h

_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread: ; preds = %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread_crit_edge, %bb.f, %bb.e, %bb.b, %.split6, %.split5, %.split4, %.split, %.sink.split.i.i.i.i.i.i.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit
  %i.aw = phi i8 [ %.pre, %._ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread_crit_edge ], [ 1, %bb.f ], [ 1, %bb.e ], [ %i.j, %bb.b ], [ 5, %.split6 ], [ 6, %.split5 ], [ 2, %.split4 ], [ 3, %.split ], [ 1, %.sink.split.i.i.i.i.i.i.i.i.i ], [ 4, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit ]
  %i.ax = zext i8 %i.aw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store ptr %0, ptr %1, align 8, !tbaa !675
  %i.ay = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_St5arrayISA_Lm65EESH_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread3 ], [ %i.ay, %_ZNK5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iteratoreqERKSK_.exit.thread ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4mp116detail19mp_with_index_impl_ILm8EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_6detail11buffers_refINS6_IJNS_4asio12const_bufferESA_SA_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENSB_10chunk_crlfEEEEEENSB_6detail10chunk_sizeESA_SH_St5arrayISA_Lm65EESH_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSR_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr @.str.30, ptr %5, align 8, !tbaa !244
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.31, ptr %i.a, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 205, ptr %i.b, align 8, !tbaa !246
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 62, ptr %i.c, align 4, !tbaa !247
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #35
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.bc, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_St5arrayIS5_Lm65EESC_EE14const_iterator9incrementclILm2EEEvSt17integral_constantImXT_EE.exit

bb.g:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !677, !nonnull !111, !align !114 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !241  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !241
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !673  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
end_hunk_5
